/- Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Mathematical source comparison: Levent Alpöge and Ralph Furman (2026),
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637. Independent formal source: Anthropic,
anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011,
`zeta23/Zeta23/FinalMult.lean`.

The external development proves asymptotic epsilon-form lower bounds for the
simple critical-line count and the distinct count. This local file does not
import that development. It proves the exact orientation of those propositions
against GRWTSK's canonical zero divisor and supplies consumer contracts for a
genuine prismatic-cohomology comparison.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.TwoThirdsCanonicalMultiplicityBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.HorizontalDefectGlobalTraceOperator
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Proposition orientation for the two-thirds and prismatic routes

The multiplicity-aware Anthropic/Alpöge--Furman result has the favorable-side
orientation

```text
(2/3 - epsilon) * N(T,2T) <= N0simple(T,2T).
```

After the exact source partition, this gives an upper budget

```text
residual simple-line mass <= (1/3 + epsilon) * N(T,2T),
```

and hence the same upper budget for off-line multiplicity. The separate
five-sixths distinct result gives

```text
multiplicity excess <= (1/6 + epsilon) * N(T,2T).
```

Neither upper budget is a vanishing theorem. Prismatic cohomology can close the
off-line sector only in the following direction: nonzero source classes for
off-line multiplicity copies map INJECTIVELY to prismatic cohomology, and the
target prismatic cohomology vanishes. Surjectivity points in the opposite
direction and is insufficient to kill source classes.

The module also records the scalar trace orientation needed by the previously
constructed global horizontal-defect operator. A valid comparison must bound
SOURCE trace by prismatic trace plus a retained loss. Vanishing of the target and
loss then forces the nonnegative source trace to vanish. The reverse inequality
is explicitly shown insufficient.

`DyadicPrismaticCohomologyGate` and `PrismaticTraceReturnContract` are consumer
contracts. They are not prisms, delta-rings, complexes, chain maps,
quasi-isomorphisms, or constructions of prismatic cohomology. A genuine supplier
must derive these fields from an actual prism and differential-compatible
comparison without assuming the desired source vanishing.

Analytical disposition:

* actual source: the canonical positive-height dyadic zero head and analytic
  multiplicity from `CanonicalZeroDivisor`;
* imported paper mathematics: no external theorem is imported into this build;
  the epsilon-form propositions are explicit premises matching the independent
  formal source;
* exact local advances: favorable/residual partitions, one-third and one-sixth
  proposition orientations, off-line multiplicity fibres, map-direction lemmas,
  hostile surjectivity and reverse-inequality controls, and RH consumers;
* unresolved supplier: a genuine prism, source and target complexes, chain map,
  induced cohomology comparison, injectivity or quasi-isomorphism, off-line
  nonzero-class theorem, and prismatic vanishing or trace identity;
* nonclaim: the two-thirds theorem alone does not prove RH, and this file does
  not prove the missing prismatic premises or the separate arithmetic endpoint
  estimate.

SOURCE_ONLY / STATIC_SOURCE_REVIEW_ONLY / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.TwoThirdsPrismaticOrientationGate

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open TwoThirdsCanonicalMultiplicityBridge
open scoped BigOperators

noncomputable section

/-- Reuse the exact source point type and analytic multiplicity. -/
abbrev ZeroPoint := CanonicalZeroDivisor.ZeroPoint

/-- The favorable atom in the multiplicity-aware two-thirds theorem. -/
def simpleLinePred (z : ZeroPoint) : Prop :=
  z.1.re = 1 / 2 ∧ multiplicity z = 1

/-- The actual simple critical-line points in the paper's dyadic window. -/
def dyadicSimpleLineHead (T : ℝ) : Finset ZeroPoint := by
  classical
  exact (dyadicHead T).filter simpleLinePred

/-- Every dyadic point not already certified simple and on the critical line. -/
def dyadicResidualHead (T : ℝ) : Finset ZeroPoint := by
  classical
  exact (dyadicHead T).filter (fun z => ¬ simpleLinePred z)

/-- The off-critical-line points in the same source dyadic window. -/
def dyadicOffLineHead (T : ℝ) : Finset ZeroPoint := by
  classical
  exact (dyadicHead T).filter (fun z => z.1.re ≠ 1 / 2)

/-- Favorable mass, retaining the source multiplicity before proving that it is one. -/
def dyadicSimpleLineMass (T : ℝ) : ℕ :=
  ∑ z ∈ dyadicSimpleLineHead T, multiplicity z

/-- Complete mass outside the simple critical-line sector. -/
def dyadicResidualMass (T : ℝ) : ℕ :=
  ∑ z ∈ dyadicResidualHead T, multiplicity z

/-- Complete off-line multiplicity mass in the dyadic window. -/
def dyadicOffLineMass (T : ℝ) : ℕ :=
  ∑ z ∈ dyadicOffLineHead T, multiplicity z

/-- On the favorable head the multiplicity-weighted mass is exactly its point
count, because simplicity is part of the membership predicate. -/
theorem dyadicSimpleLineMass_eq_count (T : ℝ) :
    dyadicSimpleLineMass T = dyadicSimpleLineCount T := by
  classical
  change
    (∑ z ∈ (dyadicHead T).filter simpleLinePred, multiplicity z) =
      dyadicSimpleLineCount T
  calc
    (∑ z ∈ (dyadicHead T).filter simpleLinePred, multiplicity z) =
        ∑ z ∈ (dyadicHead T).filter simpleLinePred, 1 := by
          apply Finset.sum_congr rfl
          intro z hz
          have hp : z.1.re = 1 / 2 ∧ multiplicity z = 1 := by
            simpa only [simpleLinePred] using (Finset.mem_filter.mp hz).2
          exact hp.2
    _ = ((dyadicHead T).filter simpleLinePred).card := by simp
    _ = dyadicSimpleLineCount T := by
      simp [dyadicSimpleLineCount, simpleLinePred]

/-- Exact favorable/residual partition of the multiplicity-weighted source. -/
theorem dyadicCount_eq_simpleLineMass_add_residualMass (T : ℝ) :
    dyadicCount T = dyadicSimpleLineMass T + dyadicResidualMass T := by
  classical
  unfold dyadicCount dyadicSimpleLineMass dyadicResidualMass
  simp only [dyadicSimpleLineHead, dyadicResidualHead]
  exact
    (Finset.sum_filter_add_sum_filter_not
      (dyadicHead T) simpleLinePred multiplicity).symm

/-- Every off-line atom belongs to the residual sector; multiple on-line zeros
may also belong to the residual sector. -/
theorem dyadicOffLineHead_subset_residualHead (T : ℝ) :
    dyadicOffLineHead T ⊆ dyadicResidualHead T := by
  classical
  intro z hz
  rcases Finset.mem_filter.mp hz with ⟨hhead, hoff⟩
  apply Finset.mem_filter.mpr
  refine ⟨hhead, ?_⟩
  intro hsimple
  exact hoff hsimple.1

/-- Off-line multiplicity is at most the complete residual mass. -/
theorem dyadicOffLineMass_le_residualMass (T : ℝ) :
    dyadicOffLineMass T ≤ dyadicResidualMass T := by
  classical
  unfold dyadicOffLineMass dyadicResidualMass
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (dyadicOffLineHead_subset_residualHead T)
    (fun z _ _ => Nat.zero_le (multiplicity z))

/-- Exact integer orientation of a finite two-thirds favorable lower bound:
the complementary residual consumes at most one third of total multiplicity. -/
theorem three_mul_residualMass_le_dyadicCount (T : ℝ)
    (hSimple : 2 * dyadicCount T ≤ 3 * dyadicSimpleLineCount T) :
    3 * dyadicResidualMass T ≤ dyadicCount T := by
  have hpartition := dyadicCount_eq_simpleLineMass_add_residualMass T
  have hsimpleMass := dyadicSimpleLineMass_eq_count T
  rw [hpartition, hsimpleMass] at hSimple ⊢
  omega

/-- The same two-thirds premise gives the one-third upper budget on off-line
multiplicity, but not its vanishing. -/
theorem three_mul_offLineMass_le_dyadicCount (T : ℝ)
    (hSimple : 2 * dyadicCount T ≤ 3 * dyadicSimpleLineCount T) :
    3 * dyadicOffLineMass T ≤ dyadicCount T := by
  have hoff := dyadicOffLineMass_le_residualMass T
  have hres := three_mul_residualMass_le_dyadicCount T hSimple
  omega

/-- Local epsilon-form matching the multiplicity-aware external two-thirds
statement. It is a proposition interface, not a locally proved analytic input. -/
def TwoThirdsSimpleLineEpsilonForm : Prop :=
  ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
    ((2 / 3 : ℝ) - ε) * (dyadicCount T : ℝ) ≤
      (dyadicSimpleLineCount T : ℝ)

/-- Local epsilon-form matching the external five-sixths distinct statement. -/
def FiveSixthsDistinctEpsilonForm : Prop :=
  ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
    ((5 / 6 : ℝ) - ε) * (dyadicCount T : ℝ) ≤
      (dyadicDistinctCount T : ℝ)

/-- Pointwise real orientation of the two-thirds theorem to a residual upper
budget. The quantifier order is unchanged. -/
theorem residualMass_cast_le_of_twoThirdsAt (T ε : ℝ)
    (hSimple :
      ((2 / 3 : ℝ) - ε) * (dyadicCount T : ℝ) ≤
        (dyadicSimpleLineCount T : ℝ)) :
    (dyadicResidualMass T : ℝ) ≤
      ((1 / 3 : ℝ) + ε) * (dyadicCount T : ℝ) := by
  have hpartitionNat := dyadicCount_eq_simpleLineMass_add_residualMass T
  have hpartition :
      (dyadicCount T : ℝ) =
        (dyadicSimpleLineMass T : ℝ) + (dyadicResidualMass T : ℝ) := by
    exact_mod_cast hpartitionNat
  rw [dyadicSimpleLineMass_eq_count T] at hpartition
  linarith

/-- The external two-thirds orientation also bounds the smaller off-line sector. -/
theorem offLineMass_cast_le_of_twoThirdsAt (T ε : ℝ)
    (hSimple :
      ((2 / 3 : ℝ) - ε) * (dyadicCount T : ℝ) ≤
        (dyadicSimpleLineCount T : ℝ)) :
    (dyadicOffLineMass T : ℝ) ≤
      ((1 / 3 : ℝ) + ε) * (dyadicCount T : ℝ) := by
  have hoff :
      (dyadicOffLineMass T : ℝ) ≤ (dyadicResidualMass T : ℝ) := by
    exact_mod_cast dyadicOffLineMass_le_residualMass T
  exact hoff.trans (residualMass_cast_le_of_twoThirdsAt T ε hSimple)

/-- Preserve the external epsilon and height quantifiers while reversing the
favorable lower bound into an off-line upper budget. -/
theorem twoThirds_orients_to_offLine_upper
    (hTwoThirds : TwoThirdsSimpleLineEpsilonForm) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (dyadicOffLineMass T : ℝ) ≤
        ((1 / 3 : ℝ) + ε) * (dyadicCount T : ℝ) := by
  intro ε hε
  obtain ⟨T₀, hT₀⟩ := hTwoThirds ε hε
  refine ⟨T₀, ?_⟩
  intro T hT
  exact offLineMass_cast_le_of_twoThirdsAt T ε (hT₀ T hT)

/-- Pointwise real orientation of the five-sixths distinct theorem to the
one-sixth upper budget on multiplicity excess. -/
theorem multiplicityExcess_cast_le_of_fiveSixthsAt (T ε : ℝ)
    (hDistinct :
      ((5 / 6 : ℝ) - ε) * (dyadicCount T : ℝ) ≤
        (dyadicDistinctCount T : ℝ)) :
    (dyadicMultiplicityExcess T : ℝ) ≤
      ((1 / 6 : ℝ) + ε) * (dyadicCount T : ℝ) := by
  have hpartitionNat := dyadicCount_eq_distinct_add_excess T
  have hpartition :
      (dyadicCount T : ℝ) =
        (dyadicDistinctCount T : ℝ) +
          (dyadicMultiplicityExcess T : ℝ) := by
    exact_mod_cast hpartitionNat
  linarith

/-- Preserve the external epsilon and height quantifiers for the multiplicity
excess orientation. -/
theorem fiveSixths_orients_to_multiplicityExcess_upper
    (hFiveSixths : FiveSixthsDistinctEpsilonForm) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (dyadicMultiplicityExcess T : ℝ) ≤
        ((1 / 6 : ℝ) + ε) * (dyadicCount T : ℝ) := by
  intro ε hε
  obtain ⟨T₀, hT₀⟩ := hFiveSixths ε hε
  refine ⟨T₀, ?_⟩
  intro T hT
  exact multiplicityExcess_cast_le_of_fiveSixthsAt T ε (hT₀ T hT)

/-! ## The exact off-line multiplicity type -/

/-- An actual off-line zero in the positive-height dyadic source window. -/
abbrev DyadicOffLineZero (T : ℝ) :=
  {z : ZeroPoint // z ∈ dyadicOffLineHead T}

/-- One coordinate for each analytic-multiplicity copy of every off-line point. -/
abbrev DyadicOffLineMultiplicityIndex (T : ℝ) :=
  Sigma fun z : DyadicOffLineZero T =>
    HorizontalDefectBlockTrace.MultiplicityIndex z.1

/-- The off-line multiplicity type has exactly the source off-line mass. -/
theorem dyadicOffLineMultiplicityIndex_card (T : ℝ) :
    Fintype.card (DyadicOffLineMultiplicityIndex T) =
      dyadicOffLineMass T := by
  classical
  change
    Fintype.card
        (Sigma fun z : DyadicOffLineZero T =>
          HorizontalDefectBlockTrace.MultiplicityIndex z.1) =
      dyadicOffLineMass T
  rw [Fintype.card_sigma]
  simp_rw [HorizontalDefectBlockTrace.multiplicityIndex_card]
  unfold dyadicOffLineMass
  simpa [DyadicOffLineZero, Finset.attach_eq_univ] using
    (Finset.sum_attach (dyadicOffLineHead T)
      (fun z : ZeroPoint => multiplicity z))

/-- Every actual off-line point has at least one multiplicity copy. -/
def firstDyadicOffLineCopy {T : ℝ} (z : DyadicOffLineZero T) :
    DyadicOffLineMultiplicityIndex T :=
  ⟨z, ⟨0, multiplicity_pos z.1⟩⟩

/-! ## Cohomology-map orientation -/

/-- Correct pullback orientation: if source cohomology maps injectively to a
vanishing target, then the source vanishes. -/
theorem source_vanishes_of_injective_comparison
    {SourceH PrismH : Type*}
    (sourceZero : SourceH) (prismZero : PrismH)
    (comparison : SourceH → PrismH)
    (comparison_zero : comparison sourceZero = prismZero)
    (comparison_injective : Function.Injective comparison)
    (prism_vanishing : ∀ y : PrismH, y = prismZero) :
    ∀ x : SourceH, x = sourceZero := by
  intro x
  apply comparison_injective
  calc
    comparison x = prismZero := prism_vanishing (comparison x)
    _ = comparison sourceZero := comparison_zero.symm

/-- Correct pushforward orientation: if the source vanishes and the comparison
is surjective, then the target vanishes. This is the opposite implication. -/
theorem target_vanishes_of_surjective_comparison
    {SourceH PrismH : Type*}
    (sourceZero : SourceH) (prismZero : PrismH)
    (comparison : SourceH → PrismH)
    (comparison_zero : comparison sourceZero = prismZero)
    (source_vanishing : ∀ x : SourceH, x = sourceZero)
    (comparison_surjective : Function.Surjective comparison) :
    ∀ y : PrismH, y = prismZero := by
  intro y
  obtain ⟨x, rfl⟩ := comparison_surjective y
  rw [source_vanishing x, comparison_zero]

/-- Hostile fixture: a surjection to a zero-dimensional target does not make the
source map injective and therefore cannot kill source classes. -/
def collapseBoolToUnit : Bool → Unit := fun _ => ()

theorem collapseBoolToUnit_surjective :
    Function.Surjective collapseBoolToUnit := by
  intro y
  cases y
  exact ⟨false, rfl⟩

theorem collapseBoolToUnit_not_injective :
    ¬ Function.Injective collapseBoolToUnit := by
  intro h
  have hfalseTrue : (false : Bool) = true := h rfl
  exact Bool.false_ne_true hfalseTrue

/-- Downstream cohomological consequence required from a genuine prismatic
construction at one dyadic window.

A supplier must construct the two cohomologies and comparison from an actual
prism, complexes, and chain map. The fields below expose only the exact
consequences consumed by the zero-divisor return. -/
structure DyadicPrismaticCohomologyGate (T : ℝ) where
  SourceH : Type
  PrismH : Type
  sourceZero : SourceH
  prismZero : PrismH
  comparison : SourceH → PrismH
  comparison_zero : comparison sourceZero = prismZero
  comparison_injective : Function.Injective comparison
  prism_vanishing : ∀ y : PrismH, y = prismZero
  offLineClass : DyadicOffLineMultiplicityIndex T → SourceH
  offLineClass_ne_zero : ∀ i, offLineClass i ≠ sourceZero

/-- Injective comparison into vanishing prismatic cohomology annihilates every
source cohomology class. -/
theorem gate_source_vanishing {T : ℝ}
    (gate : DyadicPrismaticCohomologyGate T) :
    ∀ x : gate.SourceH, x = gate.sourceZero :=
  source_vanishes_of_injective_comparison
    gate.sourceZero gate.prismZero gate.comparison gate.comparison_zero
    gate.comparison_injective gate.prism_vanishing

/-- A genuine gate leaves no off-line multiplicity copy. -/
theorem isEmpty_dyadicOffLineMultiplicityIndex_of_gate {T : ℝ}
    (gate : DyadicPrismaticCohomologyGate T) :
    IsEmpty (DyadicOffLineMultiplicityIndex T) := by
  constructor
  intro i
  exact gate.offLineClass_ne_zero i
    (gate_source_vanishing gate (gate.offLineClass i))

/-- Therefore the actual off-line finite head is empty. -/
theorem dyadicOffLineHead_eq_empty_of_gate {T : ℝ}
    (gate : DyadicPrismaticCohomologyGate T) :
    dyadicOffLineHead T = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro z hz
  have hEmpty := isEmpty_dyadicOffLineMultiplicityIndex_of_gate gate
  exact hEmpty.false (firstDyadicOffLineCopy ⟨z, hz⟩)

/-- The off-line multiplicity mass vanishes at the supplied dyadic window. -/
theorem dyadicOffLineMass_eq_zero_of_gate {T : ℝ}
    (gate : DyadicPrismaticCohomologyGate T) :
    dyadicOffLineMass T = 0 := by
  unfold dyadicOffLineMass
  rw [dyadicOffLineHead_eq_empty_of_gate gate]
  simp

/-- Every actual zero in the dyadic source window lies on the critical line. -/
theorem all_on_line_in_dyadicHead_of_gate {T : ℝ}
    (gate : DyadicPrismaticCohomologyGate T) :
    ∀ z ∈ dyadicHead T, z.1.re = 1 / 2 := by
  intro z hz
  by_contra hoff
  have hmem : z ∈ dyadicOffLineHead T := by
    classical
    exact Finset.mem_filter.mpr ⟨hz, hoff⟩
  have hempty := dyadicOffLineHead_eq_empty_of_gate gate
  simpa [hempty] using hmem

/-- The two-thirds theorem supplies the quantitative residual budget; the
prismatic gate supplies exact off-line annihilation. The roles are conjunctive
and must not be exchanged. -/
theorem twoThirds_budget_and_prismatic_vanishing {T : ℝ}
    (hSimple : 2 * dyadicCount T ≤ 3 * dyadicSimpleLineCount T)
    (gate : DyadicPrismaticCohomologyGate T) :
    3 * dyadicResidualMass T ≤ dyadicCount T ∧
      dyadicOffLineMass T = 0 :=
  ⟨three_mul_residualMass_le_dyadicCount T hSimple,
    dyadicOffLineMass_eq_zero_of_gate gate⟩

/-! ## Scalar trace-return orientation -/

/-- Correct inequality orientation: a nonnegative SOURCE bounded above by a
vanishing target plus vanishing loss must itself vanish. -/
theorem sourceTrace_eq_zero_of_forward_upper
    {sourceTrace prismTrace loss : ℝ}
    (source_nonneg : 0 ≤ sourceTrace)
    (source_le : sourceTrace ≤ prismTrace + loss)
    (prism_zero : prismTrace = 0)
    (loss_zero : loss = 0) :
    sourceTrace = 0 := by
  linarith

/-- Hostile fixture: the reverse inequality does not force source vanishing. -/
theorem reverse_trace_inequality_not_enough :
    ∃ sourceTrace prismTrace loss : ℝ,
      0 ≤ sourceTrace ∧
      prismTrace ≤ sourceTrace + loss ∧
      prismTrace = 0 ∧ loss = 0 ∧ sourceTrace ≠ 0 := by
  refine ⟨1, 0, 0, ?_⟩
  norm_num

/-- Source-specific downstream contract for a prismatic trace comparison with
the complete absolute-height horizontal-defect operator.

The contract has no independent strength until its fields are derived from an
actual prismatic complex without assuming source trace vanishing. -/
structure PrismaticTraceReturnContract (T : ℝ) where
  prismTrace : ℝ
  comparisonLoss : ℝ
  source_le :
    Matrix.trace
        (HorizontalDefectGlobalTraceOperator.unitHorizontalEnergyOperator T) ≤
      prismTrace + comparisonLoss
  prismTrace_zero : prismTrace = 0
  comparisonLoss_zero : comparisonLoss = 0

/-- A valid forward trace return annihilates the exact global horizontal defect. -/
theorem operatorTrace_eq_zero_of_prismaticTraceReturn {T : ℝ}
    (contract : PrismaticTraceReturnContract T) :
    Matrix.trace
        (HorizontalDefectGlobalTraceOperator.unitHorizontalEnergyOperator T) = 0 := by
  exact sourceTrace_eq_zero_of_forward_upper
    (HorizontalDefectGlobalTraceOperator.trace_unitHorizontalEnergyOperator_nonneg T)
    contract.source_le contract.prismTrace_zero contract.comparisonLoss_zero

/-- The degenerate constructor is retained to expose logical strength; it is not
a prismatic construction. -/
def prismaticTraceReturnContract_of_operatorTrace_eq_zero {T : ℝ}
    (zeroTrace :
      Matrix.trace
          (HorizontalDefectGlobalTraceOperator.unitHorizontalEnergyOperator T) = 0) :
    PrismaticTraceReturnContract T where
  prismTrace := 0
  comparisonLoss := 0
  source_le := by simpa [zeroTrace]
  prismTrace_zero := rfl
  comparisonLoss_zero := rfl

/-- The abstract scalar contract is equivalent to source trace vanishing. A
substantive prismatic advance must construct it independently. -/
theorem nonempty_prismaticTraceReturnContract_iff (T : ℝ) :
    Nonempty (PrismaticTraceReturnContract T) ↔
      Matrix.trace
          (HorizontalDefectGlobalTraceOperator.unitHorizontalEnergyOperator T) = 0 := by
  constructor
  · rintro ⟨contract⟩
    exact operatorTrace_eq_zero_of_prismaticTraceReturn contract
  · intro zeroTrace
    exact ⟨prismaticTraceReturnContract_of_operatorTrace_eq_zero zeroTrace⟩

/-- Cofinal independently constructed prismatic trace returns imply canonical
RH through the unchanged global horizontal-defect operator. -/
theorem riemannHypothesis_of_cofinal_prismaticTraceReturns
    (cutoff : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (contracts : ∀ n : ℕ, PrismaticTraceReturnContract (cutoff n)) :
    _root_.RiemannHypothesis :=
  HorizontalDefectGlobalTraceOperator.riemannHypothesis_of_cofinal_operatorTrace_zero
    cutoff cofinal
    (fun n => operatorTrace_eq_zero_of_prismaticTraceReturn (contracts n))

/-! ## Dyadic-window coverage return -/

/-- A family of paper-normalized windows covers every positive ordinate. -/
def CoversPositiveHeights (lower : ℕ → ℝ) : Prop :=
  ∀ y : ℝ, 0 < y → ∃ n : ℕ, lower n < y ∧ y ≤ 2 * lower n

/-- Prismatic gates on a covering family of positive dyadic windows imply the
canonical RH proposition. Positive ordinates are covered directly; negative
ordinates are transported by exact conjugation; the sourced Mellin theorem
excludes height zero. -/
theorem riemannHypothesis_of_dyadic_prismatic_cover
    (lower : ℕ → ℝ)
    (cover : CoversPositiveHeights lower)
    (gates : ∀ n : ℕ, DyadicPrismaticCohomologyGate (lower n)) :
    _root_.RiemannHypothesis := by
  intro s hs htrivial hpole
  let z : ZeroPoint := ⟨s, ⟨hs, htrivial, hpole⟩⟩
  have him_ne : z.1.im ≠ 0 :=
    CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2
  by_cases hpos : 0 < z.1.im
  · obtain ⟨n, hlower, hupper⟩ := cover z.1.im hpos
    have hzmem : z ∈ dyadicHead (lower n) :=
      (mem_dyadicHead (lower n) z).mpr ⟨hpos, hupper, hlower⟩
    exact all_on_line_in_dyadicHead_of_gate (gates n) z hzmem
  · have hneg : z.1.im < 0 :=
      lt_of_le_of_ne (le_of_not_gt hpos) him_ne
    have hcpos : 0 < (conjugated z).1.im := by
      simpa using (neg_pos.mpr hneg)
    obtain ⟨n, hlower, hupper⟩ := cover (conjugated z).1.im hcpos
    have hcmem : conjugated z ∈ dyadicHead (lower n) :=
      (mem_dyadicHead (lower n) (conjugated z)).mpr
        ⟨hcpos, hupper, hlower⟩
    have hline := all_on_line_in_dyadicHead_of_gate (gates n)
      (conjugated z) hcmem
    simpa [z] using hline

end

end GRWTSK.RiemannHypothesis.TwoThirdsPrismaticOrientationGate
