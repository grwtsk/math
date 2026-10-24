# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Energy.Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3c7352210ae1a5ee1b522f4947c198c0bf37251` · SHA-256 `1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Surgery.Operation
public import Mathlib.Data.List.MinMax

/-!
# Structural repair energy and bounded deterministic annealing

Hard validation fields precede all edit-size and uncertainty fields in the
lexicographic vector.  Consequently no small diff can compensate for a hard
violation.  Search is finite-fuel or exhaustive over an explicit finite list;
no global optimum outside that list is claimed.
-/

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport Surface.Refactor.Syntax DyckStep

@[expose] def openingCount (word : BinaryLogicMatrix) : Nat := word.count U
@[expose] def closingCount (word : BinaryLogicMatrix) : Nat := word.count D

@[simp] private theorem openingCount_append
    (left right : BinaryLogicMatrix) :
    openingCount (left ++ right) = openingCount left + openingCount right := by
  simp [openingCount]

@[simp] private theorem closingCount_append
    (left right : BinaryLogicMatrix) :
    closingCount (left ++ right) = closingCount left + closingCount right := by
  simp [closingCount]

@[simp] private theorem count_close_replicate_open (count : Nat) :
    closingCount (List.replicate count U) = 0 := by
  rw [closingCount, List.count_eq_zero]
  simp

@[simp] private theorem count_open_replicate_open (count : Nat) :
    openingCount (List.replicate count U) = count := by
  simp [openingCount]

@[simp] private theorem count_open_replicate_close (count : Nat) :
    openingCount (List.replicate count D) = 0 := by
  rw [openingCount, List.count_eq_zero]
  simp

@[simp] private theorem count_close_replicate_close (count : Nat) :
    closingCount (List.replicate count D) = count := by
  simp [closingCount]

/-- `allowance` opens are sufficient in front of every prefix. -/
@[expose] def PrefixSafeWith (word : BinaryLogicMatrix) (allowance : Nat) : Prop :=
  ∀ prefixLength,
    closingCount (word.take prefixLength) ≤
      allowance + openingCount (word.take prefixLength)

theorem prefixAllowance_exists (word : BinaryLogicMatrix) :
    ∃ allowance, PrefixSafeWith word allowance := by
  refine ⟨word.length, ?_⟩
  intro prefixLength
  have countBound : closingCount (word.take prefixLength) ≤
      (word.take prefixLength).length := List.count_le_length
  have lengthBound : (word.take prefixLength).length ≤ word.length := by
    simp only [List.length_take]
    exact Nat.min_le_right ..
  omega

/-- The least number of opens needed before the word to protect every prefix. -/
@[expose] noncomputable def prefixDeficit (word : BinaryLogicMatrix) : Nat :=
  by
    classical
    exact Nat.find (prefixAllowance_exists word)

@[surface_novel, surface_published]
theorem prefixDeficit_is_prefixSafe (word : BinaryLogicMatrix) :
    PrefixSafeWith word (prefixDeficit word) :=
  by
    classical
    exact Nat.find_spec (prefixAllowance_exists word)

@[surface_novel, surface_published]
theorem prefixDeficit_is_minimal (word : BinaryLogicMatrix) (allowance : Nat)
    (safe : PrefixSafeWith word allowance) :
    prefixDeficit word ≤ allowance :=
  by
    classical
    exact Nat.find_min' (prefixAllowance_exists word) safe

/-- Minimum signed prefix, represented exactly by its nonpositive deficit. -/
@[expose] noncomputable def minimumPrefix (word : BinaryLogicMatrix) : Int :=
  -Int.ofNat (prefixDeficit word)

@[surface_novel, surface_published]
theorem prefixDeficit_eq_max_zero_neg_minimumPrefix (word : BinaryLogicMatrix) :
    Int.toNat (max 0 (-minimumPrefix word)) = prefixDeficit word := by
  simp [minimumPrefix]

/-- Remaining opens after the least protective prefix has been added. -/
@[expose] noncomputable def terminalSurplus (word : BinaryLogicMatrix) : Nat :=
  prefixDeficit word + openingCount word - closingCount word

@[surface_novel, surface_published]
theorem terminalSurplus_eq_finalBalance_add_prefixDeficit
    (word : BinaryLogicMatrix) :
    Int.ofNat (terminalSurplus word) =
      finalBalance word + Int.ofNat (prefixDeficit word) := by
  have safe := prefixDeficit_is_prefixSafe word word.length
  simp [openingCount, closingCount] at safe
  simp [terminalSurplus, finalBalance, prefixBalance, openingCount, closingCount]
  omega

@[expose] noncomputable def canonicalEndpointCompletion
    (word : BinaryLogicMatrix) : BinaryLogicMatrix :=
  List.replicate (prefixDeficit word) U ++ word ++
    List.replicate (terminalSurplus word) D

private theorem prepended_prefix_safe (word : BinaryLogicMatrix) :
    PrefixSafeWith
      (List.replicate (prefixDeficit word) U ++ word) 0 := by
  intro prefixLength
  have safe := prefixDeficit_is_prefixSafe word
  by_cases insidePrefix : prefixLength ≤ prefixDeficit word
  · simp [List.take_append, insidePrefix]
  · have safeTail := safe (prefixLength - prefixDeficit word)
    have deficitLe : prefixDeficit word ≤ prefixLength := Nat.le_of_not_ge insidePrefix
    simpa [List.take_append, deficitLe] using safeTail

private theorem append_closes_preserves_prefix_safe
    (word : BinaryLogicMatrix) (safe : PrefixSafeWith word 0) :
    PrefixSafeWith
      (word ++ List.replicate (openingCount word - closingCount word) D) 0 := by
  intro prefixLength
  by_cases insideWord : prefixLength ≤ word.length
  · simpa [List.take_append, insideWord] using
      safe prefixLength
  · have wholeSafe := safe word.length
    have wordLengthLe : word.length ≤ prefixLength := Nat.le_of_not_ge insideWord
    have takeWhole : word.take prefixLength = word :=
      List.take_of_length_le wordLengthLe
    have appendedBound :
        (prefixLength - word.length).min
            (openingCount word - closingCount word) ≤
          openingCount word - closingCount word := Nat.min_le_right ..
    simp [List.take_append, takeWhole] at wholeSafe ⊢
    omega

private theorem completed_counts_equal (word : BinaryLogicMatrix) :
    closingCount (canonicalEndpointCompletion word) =
      openingCount (canonicalEndpointCompletion word) := by
  have safe := prefixDeficit_is_prefixSafe word word.length
  have safeCounts :
      closingCount word ≤ prefixDeficit word + openingCount word := by
    simpa using safe
  simp only [canonicalEndpointCompletion, closingCount_append,
    openingCount_append, count_close_replicate_open,
    count_open_replicate_open, count_close_replicate_close,
    count_open_replicate_close, zero_add, add_zero]
  unfold terminalSurplus
  exact Nat.add_sub_of_le safeCounts

@[surface_novel, surface_published]
theorem canonicalEndpointCompletion_is_balanced (word : BinaryLogicMatrix) :
    BalancedBracketProjection (canonicalEndpointCompletion word) := by
  have paddedSafe := prepended_prefix_safe word
  have completedSafe := append_closes_preserves_prefix_safe
    (List.replicate (prefixDeficit word) U ++ word) paddedSafe
  have surplusIdentity :
      openingCount (List.replicate (prefixDeficit word) U ++ word) -
          closingCount (List.replicate (prefixDeficit word) U ++ word) =
        terminalSurplus word := by
    simp [terminalSurplus]
  constructor
  · unfold finalBalance prefixBalance
    simp only [List.take_length]
    rw [Int.sub_eq_zero]
    exact congrArg Int.ofNat (completed_counts_equal word).symm
  · intro prefixLength
    have safePrefix := completedSafe prefixLength
    rw [surplusIdentity] at safePrefix
    have safePrefix' :
        closingCount ((canonicalEndpointCompletion word).take prefixLength) ≤
          openingCount ((canonicalEndpointCompletion word).take prefixLength) := by
      simpa [canonicalEndpointCompletion] using safePrefix
    change 0 ≤ Int.ofNat
        (openingCount ((canonicalEndpointCompletion word).take prefixLength)) -
          Int.ofNat
            (closingCount ((canonicalEndpointCompletion word).take prefixLength))
    exact sub_nonneg.mpr (Int.ofNat_le.mpr safePrefix')

/-! ## Lexicographic structural energy -/

@[surface_novel]
structure StructuralEnergy where
  hardPolicyViolations : Nat
  staleSnapshotViolations : Nat
  parseErrors : Nat
  unsupportedRecoveryCount : Nat
  unresolvedReferenceCount : Nat
  importCycleCount : Nat
  compilerErrorCount : Nat
  leanUnsolvedGoalCount : Nat
  theoremStatementChangeCount : Nat
  publicApiChangeCount : Nat
  axiomGrowthCount : Nat
  exactRoundTripFailureCount : Nat
  delimiterBalanceCost : Nat
  changedFileCount : Nat
  editCount : Nat
  changedByteCount : Nat
  newImportCount : Nat
  modelUncertainty : Nat
deriving DecidableEq, Repr

@[expose] def StructuralEnergy.hardVector (energy : StructuralEnergy) : List Nat :=
  [energy.hardPolicyViolations, energy.staleSnapshotViolations,
    energy.parseErrors, energy.unsupportedRecoveryCount,
    energy.unresolvedReferenceCount, energy.importCycleCount,
    energy.compilerErrorCount, energy.leanUnsolvedGoalCount,
    energy.theoremStatementChangeCount, energy.publicApiChangeCount,
    energy.axiomGrowthCount, energy.exactRoundTripFailureCount]

@[expose] def StructuralEnergy.vector (energy : StructuralEnergy) : List Nat :=
  energy.hardVector ++
    [energy.delimiterBalanceCost, energy.changedFileCount, energy.editCount,
      energy.changedByteCount, energy.newImportCount, energy.modelUncertainty]

@[expose] def StructuralEnergy.HardAdmissible (energy : StructuralEnergy) : Prop :=
  ∀ count ∈ energy.hardVector, count = 0

@[expose] def StructuralEnergy.Less (left right : StructuralEnergy) : Prop :=
  List.Lex Nat.lt left.vector right.vector

@[surface_novel]
inductive AnnealDecision where
  | strictEnergyDecrease
  | permittedPlateau
  | hardViolation
  | noDecrease
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure AnnealStep where
  beforeSnapshotHash : Hash256
  afterSnapshotHash : Hash256
  operation : SurgeryOperation
  beforeEnergy : StructuralEnergy
  afterEnergy : StructuralEnergy
  beforeSecondaryBudget : Nat
  afterSecondaryBudget : Nat
  accepted : Bool
  reason : AnnealDecision
deriving DecidableEq, Repr

@[expose] def AnnealStep.measureBefore (step : AnnealStep) : List Nat :=
  step.beforeEnergy.vector ++ [step.beforeSecondaryBudget]

@[expose] def AnnealStep.measureAfter (step : AnnealStep) : List Nat :=
  step.afterEnergy.vector ++ [step.afterSecondaryBudget]

@[expose] def AnnealStep.Valid (step : AnnealStep) : Prop :=
  step.accepted = true →
    step.afterEnergy.HardAdmissible ∧
      List.Lex Nat.lt step.measureAfter step.measureBefore ∧
      (step.reason = .strictEnergyDecrease ∨
        (step.reason = .permittedPlateau ∧
          step.afterEnergy = step.beforeEnergy ∧
          step.afterSecondaryBudget < step.beforeSecondaryBudget))

@[surface_novel, surface_published]
theorem acceptedAnnealStep_decreases_measure
    (step : AnnealStep) (valid : step.Valid) (accepted : step.accepted = true) :
    List.Lex Nat.lt step.measureAfter step.measureBefore :=
  (valid accepted).2.1

/-- At most one transition is recorded per unit of fuel. -/
@[expose] def annealTrace {State : Type}
    (next : State → Option State) : Nat → State → List State
  | 0, _ => []
  | fuel + 1, state =>
      match next state with
      | none => []
      | some successor => successor :: annealTrace next fuel successor

@[surface_novel, surface_published]
theorem annealTrace_length_le_fuel {State : Type}
    (next : State → Option State) (fuel : Nat) (state : State) :
    (annealTrace next fuel state).length ≤ fuel := by
  induction fuel generalizing state with
  | zero => simp [annealTrace]
  | succ fuel induction =>
      simp only [annealTrace]
      split <;> simp_all

@[surface_novel, surface_published]
theorem annealTrace_terminates {State : Type}
    (next : State → Option State) (fuel : Nat) (state : State) :
    (annealTrace next fuel state).length < fuel + 1 := by
  exact Nat.lt_succ_of_le (annealTrace_length_le_fuel next fuel state)

/-- A selected candidate together with its exact finite-domain minimality. -/
@[surface_novel]
structure EnumeratedAnnealMinimum {Candidate : Type}
    (energy : Candidate → List Nat) (candidates : List Candidate) where
  chosen : Candidate
  chosenEnumerated : chosen ∈ candidates
  minimal : ∀ candidate ∈ candidates, energy chosen ≤ energy candidate

/-- Deterministic first-minimum selection over exactly the supplied candidates. -/
@[expose] noncomputable def exhaustiveAnnealResult {Candidate : Type}
    (energy : Candidate → List Nat) (candidates : List Candidate) :
    Option (EnumeratedAnnealMinimum energy candidates) := by
  letI : DecidableLT (List Nat) := LinearOrder.toDecidableLT
  match result : candidates.argmin energy with
  | none => exact none
  | some chosen =>
      have chosenIn : chosen ∈ candidates.argmin energy := by
        rw [result]
        simp
      exact some {
        chosen
        chosenEnumerated := List.argmin_mem chosenIn
        minimal := by
          intro candidate enumerated
          exact List.le_of_mem_argmin enumerated chosenIn }

@[surface_novel, surface_published]
theorem exhaustiveAnnealResult_minimal_on_enumerated_candidates
    {Candidate : Type} (energy : Candidate → List Nat)
    (candidates : List Candidate)
    (chosen : EnumeratedAnnealMinimum energy candidates) (candidate : Candidate)
    (_chosenResult : exhaustiveAnnealResult energy candidates = some chosen)
    (enumerated : candidate ∈ candidates) :
    energy chosen.chosen ≤ energy candidate :=
  chosen.minimal candidate enumerated

end Surface.Refactor.Surgery
```
