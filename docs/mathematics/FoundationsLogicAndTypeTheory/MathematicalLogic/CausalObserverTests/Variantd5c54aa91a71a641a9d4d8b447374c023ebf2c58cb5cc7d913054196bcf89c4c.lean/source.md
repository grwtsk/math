# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CausalObserverTests.Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76a0ddece0c93ce1373d1ebc624fe40f22e0e73b` · SHA-256 `d5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Causal.PredictiveRepresentation
import DAF.Causal.QuantizerTower
import DAF.ObserverDynamics.Spectral
import BitMatrix.Runtime.RingBuffer
import FilesystemDynamics.ObserverLoop
import DAF.Runtime.ReducerIR
import DAF.RustCodegen.Manifest
import Mathlib.Tactic

/-!
# Concrete tests for causal observational state

This first section exercises the generic causal core.  It separates equality
of present observations from equality of complete future behavior, computes a
strict finite causal compression, realizes that compression by an exact local
memory, and checks that controlled recursion quantifies over every input word.

Additional integration tests are appended in later, separately marked
sections of this shared module.
-/

namespace DAF.Integration

namespace CausalObserverTests

open ObservableRecursion

/-! ## Core tests 13.1–13.4 -/

/-! ### Present equality is not causal equality -/

/-- The autonomous transition `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 2`. -/
def threeStep (x : Fin 3) : Fin 3 :=
  if x = 0 then 1 else 2

/-- Only the terminal state `2` is presently visible. -/
def threeObserve (x : Fin 3) : Bool :=
  decide (x = 2)

/-- Three-state autonomous example, represented through the primary `PUnit` input API. -/
def threeStateSystem : System PUnit (Fin 3) PUnit :=
  System.autonomous threeStep (fun _ => Bool) (fun _ => threeObserve)

/-- States `0` and `1` have the same current observation. -/
example :
    threeStateSystem.observe PUnit.unit 0 =
      threeStateSystem.observe PUnit.unit 1 := by
  change threeObserve 0 = threeObserve 1
  native_decide

/-- One future transition distinguishes states `0` and `1`. -/
example :
    ¬ threeStateSystem.CausalEquivalent 0 1 := by
  intro h
  have hfuture := h [PUnit.unit] PUnit.unit
  change threeObserve (threeStep 0) =
    threeObserve (threeStep 1) at hfuture
  have : False := by
    exact Bool.noConfusion hfuture
  exact this.elim

/-! ### Strict causal compression for cyclic parity -/

/-- Cyclic successor on `Fin 4`. -/
def fin4Succ (x : Fin 4) : Fin 4 :=
  x + 1

/-- The parity bit of a state in `Fin 4`. -/
def fin4Parity (x : Fin 4) : Bool :=
  decide (x.val % 2 = 1)

theorem fin4Parity_succ (x : Fin 4) :
    fin4Parity (fin4Succ x) = !fin4Parity x := by
  fin_cases x <;> native_decide

/-- Cyclic successor observed only through parity. -/
def paritySystem : System PUnit (Fin 4) PUnit :=
  System.autonomous fin4Succ (fun _ => Bool) (fun _ => fin4Parity)

/-- Full state is a valid but over-refined predictive representation. -/
def fin4FullRepresentation : PredictiveRepresentation paritySystem where
  Memory := Fin 4
  encode := id
  step := fun _ => fin4Succ
  read := fun _ => fin4Parity
  encode_step := by
    intro _ _
    rfl
  read_encode := by
    intro _ _
    rfl

/-- The two-state parity memory evolves by Boolean negation. -/
def parityRepresentation : PredictiveRepresentation paritySystem where
  Memory := Bool
  encode := fin4Parity
  step := fun _ parity => !parity
  read := fun _ parity => parity
  encode_step := by
    intro _ x
    exact fin4Parity_succ x
  read_encode := by
    intro _ _
    rfl

/-- The parity representation identifies exactly the causal classes. -/
theorem parityRepresentation_exact : parityRepresentation.Exact := by
  intro x y
  constructor
  · intro h
    exact parityRepresentation.encode_eq_implies_causalEquivalent h
  · intro h
    change fin4Parity x = fin4Parity y
    have hobserve :=
      paritySystem.causalEquivalent_observe h PUnit.unit
    change fin4Parity x = fin4Parity y at hobserve
    exact hobserve

example : paritySystem.CausalEquivalent 0 2 := by
  apply parityRepresentation.encode_eq_implies_causalEquivalent
  change fin4Parity 0 = fin4Parity 2
  native_decide

example : paritySystem.CausalEquivalent 1 3 := by
  apply parityRepresentation.encode_eq_implies_causalEquivalent
  change fin4Parity 1 = fin4Parity 3
  native_decide

/-- Every Boolean parity value is realized by a `Fin 4` state. -/
def boolEquivParityEffective :
    Bool ≃ parityRepresentation.EffectiveMemory where
  toFun
    | false => ⟨false, ⟨(0 : Fin 4), by
        change fin4Parity 0 = false
        native_decide⟩⟩
    | true => ⟨true, ⟨(1 : Fin 4), by
        change fin4Parity 1 = true
        native_decide⟩⟩
  invFun memory := memory.1
  left_inv := by
    intro parity
    cases parity <;> rfl
  right_inv := by
    rintro ⟨parity, hparity⟩
    apply Subtype.ext
    cases parity <;> rfl

/-- The explicit two-state model composed with causal minimality. -/
noncomputable def boolEquivParityCausal :
    Bool ≃ paritySystem.CausalState :=
  boolEquivParityEffective.trans
    (parityRepresentation.effectiveMemoryEquivCausalState
      parityRepresentation_exact)

noncomputable instance instFintypeParityCausalState :
    Fintype paritySystem.CausalState :=
  Fintype.ofEquiv Bool boolEquivParityCausal

/-- The parity-observed successor system has exactly two causal states. -/
theorem card_paritySystem_causalState :
    Fintype.card paritySystem.CausalState = 2 := by
  simpa using (Fintype.card_congr boolEquivParityCausal).symm

noncomputable instance instFintypeFin4FullMemory :
    Fintype (PredictiveRepresentation.Memory fin4FullRepresentation) := by
  change Fintype (Fin 4)
  infer_instance

def fin4FullMemoryEquiv :
    PredictiveRepresentation.Memory fin4FullRepresentation ≃ Fin 4 :=
  Equiv.refl (Fin 4)

/-- Full four-state memory is strictly larger than the causal state. -/
example :
    Fintype.card paritySystem.CausalState <
      Fintype.card
        (PredictiveRepresentation.Memory fin4FullRepresentation) := by
  rw [card_paritySystem_causalState]
  rw [Fintype.card_congr fin4FullMemoryEquiv]
  decide

/-! ### Exact predictive representation -/

example : parityRepresentation.Exact :=
  parityRepresentation_exact

/-- The general exactness theorem constructs the requested image/causal equivalence. -/
noncomputable def parityEffectiveEquivCausal :
    parityRepresentation.EffectiveMemory ≃ paritySystem.CausalState :=
  parityRepresentation.effectiveMemoryEquivCausalState
    parityRepresentation_exact

example : Function.Bijective parityEffectiveEquivCausal :=
  parityEffectiveEquivCausal.bijective

/-! ### Controlled recursion quantifies over arbitrary future words -/

/-- `true` advances the three-state chain and `false` leaves it unchanged. -/
def controlledStep (input : Bool) (x : Fin 3) : Fin 3 :=
  match input with
  | false => x
  | true => threeStep x

def controlledSystem : System Bool (Fin 3) PUnit where
  Observation := fun _ => Bool
  step := controlledStep
  observe := fun _ => threeObserve

/-- A selected non-advancing trace does not distinguish the two states. -/
example :
    controlledSystem.observe PUnit.unit
        (controlledSystem.run [false] 0) =
      controlledSystem.observe PUnit.unit
        (controlledSystem.run [false] 1) := by
  change threeObserve 0 = threeObserve 1
  native_decide

/-- Another permitted trace does distinguish them, so they are not causally equal. -/
example :
    ¬ controlledSystem.CausalEquivalent 0 1 := by
  intro h
  have hfuture := h [true] PUnit.unit
  change threeObserve (threeStep 0) =
    threeObserve (threeStep 1) at hfuture
  have : False := by
    exact Bool.noConfusion hfuture
  exact this.elim

/-! End of the core tests 13.1–13.4.  Later sections may be appended below. -/

end CausalObserverTests

namespace CausalObserverTests

noncomputable section

open ObservableRecursion
open ObserverFactor
open ReversibleCausal
open ObserverSpectral

/-! ## Observer towers and reversible local spectra (tests 13.5–13.8) -/

/-!
The Boolean resolution order supplies a two-level tower: `false` observes only
parity, while the top resolution `true` observes the complete `Fin 4` state.
The examples below use the generic quotient maps, so their surjectivity and
commuting transition squares are theorem-level facts rather than enumeration.
-/

def towerObservation : Bool → Type
  | false => Bool
  | true => Fin 4

def towerNext4 : Fin 4 → Fin 4 :=
  fun x => ⟨(x.val + 1) % 4, Nat.mod_lt _ (by decide)⟩

def towerObserve : (resolution : Bool) → Fin 4 → towerObservation resolution
  | false => fun x => decide (x.val % 2 = 1)
  | true => id

def towerSystem : System PUnit (Fin 4) Bool where
  Observation := towerObservation
  step := fun _ => towerNext4
  observe := towerObserve

def towerProject {coarse fine : Bool} (h : coarse ≤ fine) :
    towerObservation fine → towerObservation coarse := by
  cases coarse <;> cases fine
  · exact id
  · exact fun x => decide (x.val % 2 = 1)
  · exact False.elim (not_le_of_gt (show false < true by decide) h)
  · exact id

def observerTower : QuantizerTower towerSystem where
  project := towerProject
  project_refl := by
    intro resolution observation
    cases resolution <;> rfl
  project_trans := by
    intro coarse middle fine hcm hmf observation
    cases coarse <;> cases middle <;> cases fine
    all_goals try rfl
    all_goals
      exact False.elim
        (not_le_of_gt (show false < true by decide)
          (by assumption))
  observe_project := by
    intro coarse fine h x
    cases coarse <;> cases fine
    · rfl
    · rfl
    · exact False.elim (not_le_of_gt (show false < true by decide) h)
    · rfl

example : Function.Surjective (causalToLocal towerSystem false) :=
  causalToLocal_surjective towerSystem false

example : Function.Surjective (causalToLocal towerSystem true) :=
  causalToLocal_surjective towerSystem true

example : Function.Surjective
    (observerTower.localProject (show false ≤ true by decide)) :=
  observerTower.localProject_surjective (show false ≤ true by decide)

example (c : towerSystem.CausalState) :
    observerTower.localProject (show false ≤ true by decide)
        (causalToLocal towerSystem true c) =
      causalToLocal towerSystem false c :=
  observerTower.causalToLocal_naturality (show false ≤ true by decide) c

example (c : LocalCausalState towerSystem true) :
    observerTower.localProject (show false ≤ true by decide)
        (localCausalStep towerSystem true PUnit.unit c) =
      localCausalStep towerSystem false PUnit.unit
        (observerTower.localProject (show false ≤ true by decide) c) :=
  observerTower.localProject_step
    (show false ≤ true by decide) PUnit.unit c

/-! The top observer sees every distinction selected by the whole tower. -/
example : towerSystem.CausalState ≃ LocalCausalState towerSystem true :=
  observerTower.causalStateEquivFinestLocal

/-!
The next fixture is one six-cycle observed modulo three.  Its reversible local
factor is a three-cycle: exact local phase and cycle data therefore retain the
local periodicity but intentionally forget which half of the global cycle a
state occupies.
-/

def observerCycle6 : Equiv.Perm (Fin 6) where
  toFun i := ⟨(i.val + 1) % 6, Nat.mod_lt _ (by decide)⟩
  invFun i := ⟨(i.val + 5) % 6, Nat.mod_lt _ (by decide)⟩
  left_inv i := by fin_cases i <;> rfl
  right_inv i := by fin_cases i <;> rfl

def observerCycle3 : Equiv.Perm (Fin 3) where
  toFun i := ⟨(i.val + 1) % 3, Nat.mod_lt _ (by decide)⟩
  invFun i := ⟨(i.val + 2) % 3, Nat.mod_lt _ (by decide)⟩
  left_inv i := by fin_cases i <;> rfl
  right_inv i := by fin_cases i <;> rfl

def observerModThree (x : Fin 6) : Fin 3 :=
  ⟨x.val % 3, Nat.mod_lt _ (by decide)⟩

def observerCycleGlobal : ReversibleSystem (Fin 6) PUnit where
  Observation := fun _ => Fin 3
  step := observerCycle6
  observe := fun _ => observerModThree

def observerCycleReducer :
    PermutationObserverReducer observerCycleGlobal PUnit.unit where
  Local := Fin 3
  localFintype := inferInstance
  localDecidableEq := inferInstance
  reduce := observerModThree
  reduce_surjective := by
    intro y
    refine ⟨⟨y.val, Nat.lt_trans y.isLt (by decide)⟩, ?_⟩
    apply Fin.ext
    simp [observerModThree, Nat.mod_eq_of_lt y.isLt]
  localStep := observerCycle3
  localObserve := id
  step_commute := by
    intro x
    fin_cases x <;> apply Fin.ext <;>
      norm_num [observerCycleGlobal, observerCycle6,
        observerCycle3, observerModThree]
  observe_commute := by
    intro x
    rfl

theorem observerCycle3_order : orderOf observerCycle3 = 3 := by
  apply orderOf_eq_prime
  · ext x
    fin_cases x <;> rfl
  · intro h
    have hx := congrArg (fun p : Equiv.Perm (Fin 3) => p 0) h
    norm_num [observerCycle3] at hx

theorem observerCycle6_order : orderOf observerCycle6 = 6 := by
  rw [orderOf_eq_iff (by decide)]
  constructor
  · ext x
    fin_cases x <;> rfl
  · intro m hm hpos
    have hm_cases : m = 1 ∨ m = 2 ∨ m = 3 ∨ m = 4 ∨ m = 5 := by
      omega
    rcases hm_cases with rfl | rfl | rfl | rfl | rfl <;>
      intro h <;>
      have hx := congrArg (fun p : Equiv.Perm (Fin 6) => p 0) h <;>
      norm_num [pow_succ, Equiv.Perm.mul_apply, observerCycle6] at hx

example : observerCycleReducer.localOrder = 3 :=
  observerCycle3_order

example :
    ObserverSpectral.PermutationObserverReducer.globalOrder
      observerCycleGlobal = 6 :=
  observerCycle6_order

/-! Local-order divisibility is supplied by the general surjective-factor theorem. -/
example : observerCycleReducer.localOrder ∣
    ObserverSpectral.PermutationObserverReducer.globalOrder
      observerCycleGlobal :=
  observerCycleReducer.localOrder_dvd_globalOrder

example :
    (observerCycleReducer.exactSpectralDatum).cycleData 3 = 1 := by
  rw [(observerCycleReducer.exactSpectralDatum).cycleData_correct]
  native_decide

example : observerCycleReducer.localPhase 4 =
    observerCycleReducer.localPhase 1 := by
  unfold ObserverSpectral.PermutationObserverReducer.localPhase
    ObserverSpectral.PermutationObserverReducer.localOrder
  rw [ZMod.natCast_eq_natCast_iff']
  change 4 % orderOf observerCycle3 = 1 % orderOf observerCycle3
  rw [observerCycle3_order]

theorem observerCycleReducer_local_period_zero :
    Function.minimalPeriod observerCycleReducer.localStep
      (observerCycleReducer.reduce 0) = 3 := by
  apply (FinitePermutationDynamics.hasExactPeriod_iff_minimalPeriod_eq _ _ _).mp
  native_decide

theorem observerCycleGlobal_period_zero :
    Function.minimalPeriod observerCycleGlobal.step 0 = 6 := by
  apply (FinitePermutationDynamics.hasExactPeriod_iff_minimalPeriod_eq _ _ _).mp
  native_decide

/-! The general period theorem detects the divisibility of the collapsed orbit. -/
example :
    Function.minimalPeriod observerCycleReducer.localStep
        (observerCycleReducer.reduce 0) ∣
      Function.minimalPeriod observerCycleGlobal.step 0 :=
  observerCycleReducer.minimalPeriod_reduce_dvd 0

/-! This particular factor collapses the six-cycle to the proper divisor three. -/
example :
    Function.minimalPeriod observerCycleReducer.localStep
        (observerCycleReducer.reduce 0) <
      Function.minimalPeriod observerCycleGlobal.step 0 := by
  rw [observerCycleReducer_local_period_zero,
    observerCycleGlobal_period_zero]
  decide

example : FiniteDynamics.cycleCount observerCycleReducer.localStep 3 = 1 := by
  native_decide

example : FiniteDynamics.cycleCount observerCycleGlobal.step 6 = 1 := by
  native_decide

example : FiniteDynamics.cycleCount observerCycleReducer.localStep 6 = 0 := by
  native_decide

theorem observerCycle_local_cycle_count_ne_global :
    FiniteDynamics.cycleCount observerCycleReducer.localStep 6 ≠
      FiniteDynamics.cycleCount observerCycleGlobal.step 6 := by
  native_decide

/-! End tests 13.5–13.8. -/

end


end CausalObserverTests

namespace CausalObserverTests

open ObservableRecursion
open ObserverFactor
open DAF.Runtime
open BitMatrix.Runtime
open FilesystemCodec
open FilesystemObserverLoop
open DAF.RustCodegen

/-! ## Shared ring, filesystem framing, and reducer artifacts (tests 13.9–13.11) -/

/-! ### Capacity-three ring execution and latest-observer compression -/

def ringInitial : RingState 3 Nat :=
  ⟨fun _ => 0, 0⟩

def ringAfterFour : RingState 3 Nat :=
  ((((ringInitial.push (by decide) 1).push (by decide) 2).push
    (by decide) 3).push (by decide) 4)

example : ringAfterFour.sequence = 4 := by
  native_decide

example : ringAfterFour.count = 3 := by
  native_decide

/-- The fourth push overwrites physical slot zero. -/
example : ringAfterFour.slots 0 = 4 := by
  native_decide

example : ringAfterFour.slots 1 = 2 := by
  native_decide

example : ringAfterFour.slots 2 = 3 := by
  native_decide

example : Function.Injective
    (fullObservation : RingState 3 Nat → (Fin 3 → Nat) × Nat) :=
  fullObservation_injective

/-- Two different rings with the same latest entry. -/
def latestCollisionLeft : RingState 3 Nat :=
  ⟨fun i => if i = 0 then 7 else 0, 1⟩

def latestCollisionRight : RingState 3 Nat :=
  ⟨fun i => if i = 0 then 7 else if i = 1 then 9 else 0, 1⟩

example : latestCollisionLeft ≠ latestCollisionRight := by
  intro h
  have hslot := congrArg (fun state => state.slots (1 : Fin 3)) h
  change 0 = 9 at hslot
  omega

example :
    (latestObserverReducer 3 (by decide) Nat).reduce latestCollisionLeft =
      (latestObserverReducer 3 (by decide) Nat).reduce latestCollisionRight := by
  rfl

/-- The certified latest-entry factor causally identifies that pair locally. -/
example :
    LocalCausalEquivalent
      (observedRingSystem 3 (by decide) Nat) RingResolution.latest
      latestCollisionLeft latestCollisionRight :=
  (latestObserverReducer 3 (by decide) Nat)
    |>.reduce_eq_implies_localCausalEquivalent (by rfl)

/-! ### Framed zero payloads versus a matrix-only observer -/

/-- One zero bit and two zero bits have different payload boundaries. -/
def observedZeroPayloadOne : BitString :=
  BitString.ofBits fun _ : Fin 1 => false

def observedZeroPayloadTwo : BitString :=
  BitString.ofBits fun _ : Fin 2 => false

/-- The exact reversible blocking codec, used as a tiny filesystem model. -/
def bitStringPacketCodec : FilesystemMatrixCodec BitString 2 where
  encode := block (r := 2) (by decide)
  decode packet := some (unblock packet)
  decode_encode payload := by simp

def validZeroPacketOne : bitStringPacketCodec.ValidPacketType :=
  ⟨block (r := 2) (by decide) observedZeroPayloadOne,
    ⟨observedZeroPayloadOne, rfl⟩⟩

def validZeroPacketTwo : bitStringPacketCodec.ValidPacketType :=
  ⟨block (r := 2) (by decide) observedZeroPayloadTwo,
    ⟨observedZeroPayloadTwo, rfl⟩⟩

theorem validZeroPackets_ne :
    validZeroPacketOne ≠ validZeroPacketTwo := by
  intro h
  have hlength := congrArg
    (fun packet : bitStringPacketCodec.ValidPacketType =>
      packet.1.payloadBits) h
  change 1 = 2 at hlength
  omega

/-- Dropping framing yields the same one-row zero matrix. -/
example :
    validZeroPacketOne.1.toVariableMatrix =
      validZeroPacketTwo.1.toVariableMatrix := by
  native_decide

/-- Matrix-only identity observation causally collapses the two packets. -/
example :
    (matrixOnlyPacketSystem bitStringPacketCodec).CausalEquivalent
      validZeroPacketOne validZeroPacketTwo :=
  (matrixOnly_causalEquivalent_iff bitStringPacketCodec _ _).2
    (by native_decide)

/-- Full packet observation distinguishes their exact payload boundaries. -/
example :
    ¬ (fullPacketSystem bitStringPacketCodec).CausalEquivalent
      validZeroPacketOne validZeroPacketTwo := by
  intro h
  exact validZeroPackets_ne
    ((fullPacket_causalEquivalent_iff_eq bitStringPacketCodec _ _).mp h)

/-! ### Total reducer evaluation and emitted Rust artifact data -/

def evalModuloThree (input : Nat) : Nat :=
  (DAF.Runtime.ReducerIR.sequenceModulo 3 :
    DAF.Runtime.ReducerIR .natural .natural).eval input

example : evalModuloThree 8 = 2 := by
  native_decide

/-- A complete manifest for the shared-sequence modulo-three reducer. -/
def moduloThreeManifest : Manifest where
  formatVersion := 1
  globalStateRepresentationId := "shared-sequence-u64"
  observerResolutionId := "modulo-three-phase"
  inputShape := [1]
  outputShape := [1]
  payloadFramingRequirements := ["none"]
  reducerIR := "sequenceModulo(3)"
  kernel := .sequenceModulo 3
  localTransitionId := "shared-sequence-derived"
  localOrder := 3
  cycleEulerFactorData := [(3, 1)]
  globalModelEpoch := 7
  leanModule := "DAF.Integration.CausalObserverTests"
  leanTheoremNames :=
    ["DAF.Runtime.ReducerIR.eval", "ObserverReducer.toCanonicalLocal_step"]
  conformanceVectorDigest := "fixture-mod3-v1"
  authorityClassification := "Lean theorem authority; Rust conformance target"
  conformanceVectors := makeConformanceVectors (.sequenceModulo 3) [0, 1, 2, 3, 8]

example : moduloThreeManifest.conformanceVectors =
    [⟨0, 0⟩, ⟨1, 1⟩, ⟨2, 2⟩, ⟨3, 0⟩, ⟨8, 2⟩] := by
  native_decide

example : emitRustManifest moduloThreeManifest ≠ "" := by
  native_decide

example : emitConformanceVectors moduloThreeManifest =
    "[{\"input\":0,\"output\":0},{\"input\":1,\"output\":1},{\"input\":2,\"output\":2},{\"input\":3,\"output\":0},{\"input\":8,\"output\":2}]" := by
  native_decide

/-- Checked-in Rust fixture text, kept byte-for-byte equal to the Lean emitter. -/
def moduloThreeRustFixture : String := String.join [
  "// Generated reducer conformance fixture.\n",
  "pub const FORMAT_VERSION: u64 = 1u64;\n",
  "pub const INPUT_LENGTH: usize = 1usize;\n",
  "pub const OUTPUT_LENGTH: usize = 1usize;\n",
  "\n",
  "pub fn check_version_and_shape(version: u64, input_length: usize, output_length: usize) -> bool {\n",
  "    version == FORMAT_VERSION && input_length == INPUT_LENGTH && output_length == OUTPUT_LENGTH\n",
  "}\n\n",
  "pub fn reduce(input: u64) -> u64 {\n",
  "    input % 3u64\n",
  "}\n\n",
  "pub fn phase(sequence: u64) -> u64 {\n",
  "    sequence % 3u64\n",
  "}\n\n",
  "pub fn local_step(input: u64, shared_sequence: u64) -> (u64, u64) {\n",
  "    (reduce(input), phase(shared_sequence))\n",
  "}\n\n",
  "fn main() {\n",
  "    assert!(check_version_and_shape(FORMAT_VERSION, INPUT_LENGTH, OUTPUT_LENGTH));\n",
  "    assert_eq!(reduce(0u64), 0u64);\n",
  "    assert_eq!(reduce(1u64), 1u64);\n",
  "    assert_eq!(reduce(2u64), 2u64);\n",
  "    assert_eq!(reduce(3u64), 0u64);\n",
  "    assert_eq!(reduce(8u64), 2u64);\n",
  "}\n"
]

example : emitRustSource moduloThreeManifest = moduloThreeRustFixture := by
  native_decide

/-! End tests 13.9–13.11. -/

end CausalObserverTests

end DAF.Integration
```
