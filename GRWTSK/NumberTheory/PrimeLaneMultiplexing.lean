/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.OrderedPrimeGroupAddress
import Mathlib.Computability.StateTransition
import Mathlib.Data.Fin.Embedding
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Set

set_option autoImplicit false

/-!
# Exact prime-lane multiplexing

The observations in this model are a physical lane and a phase in a fixed frame.
For (n) control states, (l) lanes, and (p) observed phases there is an exact
encoding iff (n ≤ l p). A decoder forces the observation to be injective.
Conversely, place each source index in the first (n) row-major slots and decode
by quotient/remainder indexing, rejecting unused slots. This class keeps the
payload separately and permits one control-state readout at its chosen phase in
each frame. The frame number is independent of the control state.

At (n=95), one observed phase requires 95 lanes. One prime lane with 95
observed phases and five prime lanes with 19 phases both suffice. The five-lane
layout loses distinctions when either coordinate is erased. The ordinary
prime labels come from the canonical enumeration in `OrderedPrimeGroupAddress`'s
dependencies. Its factor axes give a second 95-element carrier with radices
5 and 19. The radices and the physical lane labels play different roles.

Conjugating any partial transition function by a control-state equivalence
extended by the identity on the full payload preserves each successful step and
the exact terminal configuration. The payload can retain an entire Turing tape
and head position. This proves preservation under decoding the timed address
and retaining the source step function. An implementation would still have to
realize these boundary steps at the scheduled phases. Heat, a smaller Turing
table, and factorization of the source transition rule are outside this result.
-/

namespace GRWTSK.NumberTheory.PrimeLaneMultiplexing

open BitMatrix.Carrier.SequentialPrimeSpecification
open OrderedPrimeGroupAddress

/-- The complete observation at one scheduled boundary. -/
abbrev Slot (lanes phases : ℕ) := Fin lanes × Fin phases

/-- Place the control index in the row-major enumeration of the observed slots. -/
def encodeSlot {states lanes phases : ℕ} (capacity : states ≤ lanes * phases) :
    Fin states ↪ Slot lanes phases :=
  (Fin.castLEEmb capacity).trans finProdFinEquiv.symm.toEmbedding

/-- Decode a slot by its row-major index, rejecting slots that have no source state. -/
def decodeSlot (states : ℕ) {lanes phases : ℕ} (slot : Slot lanes phases) :
    Option (Fin states) :=
  let index := finProdFinEquiv slot
  if inRange : index.val < states then some ⟨index.val, inRange⟩ else none

@[simp]
theorem decodeSlot_encodeSlot {states lanes phases : ℕ}
    (capacity : states ≤ lanes * phases) (state : Fin states) :
    decodeSlot states (encodeSlot capacity state) = some state := by
  change decodeSlot states (finProdFinEquiv.symm (Fin.castLE capacity state)) = some state
  unfold decodeSlot
  rw [Equiv.apply_symm_apply]
  simp [state.isLt]

/-- A fixed-frame observation has enough capacity exactly at the product bound. -/
theorem exactSlotEncoding_iff (states lanes phases : ℕ) :
    (∃ encode : Fin states → Slot lanes phases,
      ∃ decode : Slot lanes phases → Option (Fin states),
        ∀ state, decode (encode state) = some state) ↔ states ≤ lanes * phases := by
  constructor
  · rintro ⟨encode, decode, exactDecode⟩
    have injective : Function.Injective encode := by
      intro left right same
      exact Option.some.inj ((exactDecode left).symm.trans
        ((congrArg decode same).trans (exactDecode right)))
    simpa using Fintype.card_le_of_injective encode injective
  · intro capacity
    exact ⟨encodeSlot capacity, decodeSlot states, decodeSlot_encodeSlot capacity⟩

/-- With only one observable phase, each control state requires its own lane. -/
theorem onePhase95_iff (lanes : ℕ) :
    (∃ encode : Fin 95 → Slot lanes 1,
      ∃ decode : Slot lanes 1 → Option (Fin 95),
        ∀ state, decode (encode state) = some state) ↔ 95 ≤ lanes := by
  simpa using exactSlotEncoding_iff 95 lanes 1

/-- With only one lane, phases alone carry the source control index. -/
theorem oneLane95_iff (phases : ℕ) :
    (∃ encode : Fin 95 → Slot 1 phases,
      ∃ decode : Slot 1 phases → Option (Fin 95),
        ∀ state, decode (encode state) = some state) ↔ 95 ≤ phases := by
  simpa using exactSlotEncoding_iff 95 1 phases

/-- The absolute tick occupied by a phase of a frame. -/
def scheduledTick {phases : ℕ} (frame : ℕ) (phase : Fin phases) : ℕ :=
  frame * phases + phase.val

/-- A synchronized observer recovers the phase from the tick modulo frame length. -/
theorem scheduledTick_mod {phases : ℕ} (frame : ℕ) (phase : Fin phases) :
    scheduledTick frame phase % phases = phase.val := by
  simp [scheduledTick, Nat.add_mod, Nat.mod_eq_of_lt phase.isLt]

/-- Each phase in the next frame occurs after every phase in the current frame. -/
theorem scheduledTick_lt_nextFrame {phases : ℕ} (frame : ℕ)
    (current next : Fin phases) :
    scheduledTick frame current < scheduledTick (frame + 1) next := by
  unfold scheduledTick
  rw [Nat.add_mul, Nat.one_mul]
  have beforeBoundary := Nat.add_lt_add_left current.isLt (frame * phases)
  omega

/-- The physical lane at index `lane` is the corresponding ordinary prime.
`offset` counts indices from the start of the canonical enumeration. -/
noncomputable def primeLane (offset : ℕ) {lanes : ℕ} (lane : Fin lanes) :
    PrimeIndex :=
  ⟨canonicalPrimeEnumeration.value (offset + lane.val),
    canonicalPrimeEnumeration.prime (offset + lane.val)⟩

theorem primeLane_injective (offset lanes : ℕ) :
    Function.Injective (primeLane offset : Fin lanes → PrimeIndex) := by
  intro left right same
  apply Fin.ext
  have eqIndex := canonicalPrimeEnumeration.strictlyIncreasing.injective
    (congrArg Subtype.val same)
  exact Nat.add_left_cancel eqIndex

/-- The actual physical labels comprise an ordered window of distinct primes. -/
noncomputable def primeWindowEquiv (offset lanes : ℕ) :
    Fin lanes ≃ Set.range (primeLane offset : Fin lanes → PrimeIndex) :=
  Equiv.ofInjective _ (primeLane_injective offset lanes)

theorem card_primeWindow (offset lanes : ℕ) :
    Nat.card (Set.range (primeLane offset : Fin lanes → PrimeIndex)) = lanes := by
  rw [← Nat.card_congr (primeWindowEquiv offset lanes)]
  simp

/-- When every slot is used, quotient and remainder give the two coordinates. -/
def fullSlotEquiv (lanes phases : ℕ) : Fin (lanes * phases) ≃ Slot lanes phases :=
  finProdFinEquiv.symm

/-- Five lane indices and 19 phases encode all 95 source labels bijectively. -/
def fiveByNineteen : Fin 95 ≃ Slot 5 19 :=
  fullSlotEquiv 5 19

/-- A 95-state source can be labeled by just one actual prime and 95 phases. -/
noncomputable def onePrimeLane95 (offset : ℕ) :
    Fin 95 ≃ Set.range (primeLane offset : Fin 1 → PrimeIndex) × Fin 95 :=
  (fullSlotEquiv 1 95).trans ((primeWindowEquiv offset 1).prodCongr (Equiv.refl _))

/-- The five-lane layout uses five actual prime labels and 19 observed phases. -/
noncomputable def fivePrimeLanes95 (offset : ℕ) :
    Fin 95 ≃ Set.range (primeLane offset : Fin 5 → PrimeIndex) × Fin 19 :=
  fiveByNineteen.trans ((primeWindowEquiv offset 5).prodCongr (Equiv.refl _))

/-- With no phase distinctions, the 95-prime address window labels the states. -/
noncomputable def unsharedPrimeLanes95 (offset : ℕ) :
    Fin 95 ≃ Set.range (primeLane offset : Fin 95 → PrimeIndex) :=
  primeWindowEquiv offset 95

/-- States 0 and 1 occupy the same physical lane in the five-lane layout. -/
theorem fiveByNineteen_lane_collision :
    ∃ left right : Fin 95, left ≠ right ∧
      (fiveByNineteen left).1 = (fiveByNineteen right).1 := by
  exact ⟨0, 1, by decide, by decide⟩

/-- States 0 and 19 occupy the same phase in the five-lane layout. -/
theorem fiveByNineteen_phase_collision :
    ∃ left right : Fin 95, left ≠ right ∧
      (fiveByNineteen left).2 = (fiveByNineteen right).2 := by
  exact ⟨0, 19, by decide, by decide⟩

/-- The canonical prime-factor carrier uses the two radices 5 and 19. -/
theorem factorAxes95_primeOrder :
    (OrderedPrimeAxes.factorAxes 95).primeOrder = [5, 19] := by
  rw [OrderedPrimeAxes.factorAxes_primeOrder]
  have primeFactors : ∀ prime ∈ ([5, 19] : List ℕ), Nat.Prime prime := by
    simp only [List.mem_cons, List.not_mem_nil, or_false]
    rintro prime (rfl | rfl) <;> decide
  have factors := Nat.primeFactorsList_unique (n := 95) (by decide) primeFactors
  exact (List.Perm.eq_of_sortedLE (by simp [List.sortedLE_iff_pairwise])
    (Nat.primeFactorsList_sorted 95) factors).symm

/-- The factor-axes address type is also a 95-element control-state index. -/
noncomputable def factorAddress95 :
    Fin 95 ≃ (OrderedPrimeAxes.factorAxes 95).Address :=
  (Fintype.equivFinOfCardEq (OrderedPrimeAxes.card_factorAddress (by decide))).symm

universe u v w

/-- Carry the entire payload through a change of control-state address. -/
def configEquiv {Control : Type u} {Address : Type v} {Payload : Type w}
    (layout : Control ≃ Address) : Control × Payload ≃ Address × Payload :=
  layout.prodCongr (Equiv.refl Payload)

@[simp]
theorem configEquiv_payload {Control : Type u} {Address : Type v} {Payload : Type w}
    (layout : Control ≃ Address) (config : Control × Payload) :
    (configEquiv layout config).2 = config.2 :=
  rfl

/-- Transport the actual source step by first decoding and then re-encoding
the result when the source step succeeds. -/
def transportedStep {Control : Type u} {Address : Type v} {Payload : Type w}
    (layout : Control ≃ Address) (step : Control × Payload → Option (Control × Payload)) :
    Address × Payload → Option (Address × Payload) :=
  fun config => (step ((configEquiv layout).symm config)).map (configEquiv layout)

@[simp]
theorem transportedStep_apply {Control : Type u} {Address : Type v} {Payload : Type w}
    (layout : Control ≃ Address) (step : Control × Payload → Option (Control × Payload))
    (config : Control × Payload) :
    transportedStep layout step (configEquiv layout config) =
      (step config).map (configEquiv layout) := by
  simp [transportedStep]

/-- A step between encoded configurations holds exactly when the source takes
the corresponding step. -/
theorem transportedStep_next_iff {Control : Type u} {Address : Type v} {Payload : Type w}
    (layout : Control ≃ Address) (step : Control × Payload → Option (Control × Payload))
    (config next : Control × Payload) :
    transportedStep layout step (configEquiv layout config) = some (configEquiv layout next) ↔
      step config = some next := by
  rw [transportedStep_apply, Option.map_eq_some_iff]
  simp

/-- Every evaluation result is exactly the encoding of the source result. -/
theorem transportedStep_eval {Control Address : Type u} {Payload : Type w}
    (layout : Control ≃ Address) (step : Control × Payload → Option (Control × Payload))
    (start : Control × Payload) :
    StateTransition.eval (transportedStep layout step) (configEquiv layout start) =
      (StateTransition.eval step start).map (configEquiv layout) := by
  apply StateTransition.tr_eval' step (transportedStep layout step) (configEquiv layout)
  apply StateTransition.fun_respects.mpr
  intro config
  cases result : step config with
  | none =>
    simp [StateTransition.FRespects, result]
  | some next =>
    exact Relation.TransGen.single (by simp [result])

/-- The timed-layout boundary machine terminates iff the source does. -/
theorem transportedStep_halts_iff {Control Address : Type u} {Payload : Type w}
    (layout : Control ≃ Address) (step : Control × Payload → Option (Control × Payload))
    (start : Control × Payload) :
    (StateTransition.eval (transportedStep layout step) (configEquiv layout start)).Dom ↔
      (StateTransition.eval step start).Dom := by
  rw [transportedStep_eval]
  rfl

end GRWTSK.NumberTheory.PrimeLaneMultiplexing
