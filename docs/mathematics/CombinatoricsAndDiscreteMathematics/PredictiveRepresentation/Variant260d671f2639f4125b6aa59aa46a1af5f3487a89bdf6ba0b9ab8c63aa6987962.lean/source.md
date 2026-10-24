# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PredictiveRepresentation.Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db071a14662a4192c3a2779b9f8ce5eb411bdec3` · SHA-256 `260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Causal.CausalState
import Mathlib.Data.Fintype.Card
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Predictive representations and causal-state minimality

A predictive representation stores a memory value that evolves under every
input and reproduces every current observation.  Equality of represented
memories therefore implies equality of all future observed behavior, but the
converse is deliberately not asserted without an explicit exactness
hypothesis.

Restricting memory to the encoder image yields a canonical surjective factor
onto causal observational state.  This factor commutes with every transition
and read operation, is unique on the realized image, and gives the finite
information bound

`card CausalState ≤ card EffectiveMemory ≤ card Memory`.

An exact representation is precisely one whose kernel is causal equivalence;
only then does the universal factor become an equivalence.
-/

namespace ObservableRecursion

universe uI uS uR uO uM

variable {Input : Type uI}
variable {State : Type uS}
variable {Resolution : Type uR}

/--
A memory implementation that simulates every system input and reproduces each
declared observation on encoded states.
-/
structure PredictiveRepresentation
    (M : System Input State Resolution) where
  Memory : Type uM
  encode : State → Memory
  step : Input → Memory → Memory
  read : ∀ ρ, Memory → M.Observation ρ
  encode_step : ∀ a x, encode (M.step a x) = step a (encode x)
  read_encode : ∀ ρ x, read ρ (encode x) = M.observe ρ x

namespace PredictiveRepresentation

variable {M : System Input State Resolution}
variable (R : PredictiveRepresentation M)

/-! ## Executing represented memory -/

/-- Execute a finite input word using the representation's local transition. -/
def run : List Input → R.Memory → R.Memory
  | [], memory => memory
  | a :: inputs, memory => run inputs (R.step a memory)

@[simp]
theorem run_nil (memory : R.Memory) : R.run [] memory = memory :=
  rfl

@[simp]
theorem run_cons (a : Input) (inputs : List Input) (memory : R.Memory) :
    R.run (a :: inputs) memory = R.run inputs (R.step a memory) :=
  rfl

/-- Encoding intertwines execution of every finite input word. -/
theorem encode_run (inputs : List Input) (x : State) :
    R.encode (M.run inputs x) = R.run inputs (R.encode x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons a inputs ih =>
      rw [System.run_cons, R.run_cons, ← R.encode_step]
      exact ih (M.step a x)

/-- Reading represented execution agrees with the system's future observation. -/
theorem read_run_encode
    (inputs : List Input)
    (ρ : Resolution)
    (x : State) :
    R.read ρ (R.run inputs (R.encode x)) =
      M.observe ρ (M.run inputs x) := by
  rw [← R.encode_run]
  exact R.read_encode ρ (M.run inputs x)

/-! ## The representation kernel -/

/-- Equal encoded memories necessarily have identical future behavior. -/
theorem encode_eq_implies_causalEquivalent
    {x y : State}
    (h : R.encode x = R.encode y) :
    M.CausalEquivalent x y := by
  intro inputs ρ
  rw [← R.read_run_encode inputs ρ x,
    ← R.read_run_encode inputs ρ y, h]

/-! ## Effective memory -/

/-- The realized image of the representation encoder. -/
def EffectiveMemory :=
  {memory : R.Memory // ∃ x, R.encode x = memory}

/-- Encode a system state together with its image witness. -/
def toEffectiveMemory (x : State) : R.EffectiveMemory :=
  ⟨R.encode x, ⟨x, rfl⟩⟩

/-- Every effective memory is represented by an encoded system state. -/
theorem toEffectiveMemory_surjective :
    Function.Surjective R.toEffectiveMemory := by
  rintro ⟨memory, x, hx⟩
  refine ⟨x, ?_⟩
  apply Subtype.ext
  exact hx

/-- The realized memory image is closed under every represented transition. -/
def effectiveStep (a : Input) (memory : R.EffectiveMemory) :
    R.EffectiveMemory := by
  refine ⟨R.step a memory.1, ?_⟩
  rcases memory.property with ⟨x, hx⟩
  refine ⟨M.step a x, ?_⟩
  rw [R.encode_step, hx]

/-- Read an observation directly from a realized memory value. -/
def effectiveRead (ρ : Resolution) (memory : R.EffectiveMemory) :
    M.Observation ρ :=
  R.read ρ memory.1

@[simp]
theorem effectiveStep_toEffectiveMemory (a : Input) (x : State) :
    R.effectiveStep a (R.toEffectiveMemory x) =
      R.toEffectiveMemory (M.step a x) := by
  apply Subtype.ext
  exact (R.encode_step a x).symm

@[simp]
theorem effectiveRead_toEffectiveMemory (ρ : Resolution) (x : State) :
    R.effectiveRead ρ (R.toEffectiveMemory x) = M.observe ρ x :=
  R.read_encode ρ x

/-! ## Universal factor to causal state -/

/--
Send a realized memory to the causal class of any state realizing it.  The
kernel theorem above proves that the resulting causal class is independent of
the classically selected witness.
-/
noncomputable def effectiveToCausal
    (memory : R.EffectiveMemory) :
    M.CausalState :=
  M.toCausal (Classical.choose memory.property)

@[simp]
theorem effectiveToCausal_toEffectiveMemory (x : State) :
    R.effectiveToCausal (R.toEffectiveMemory x) = M.toCausal x := by
  apply (System.toCausal_eq_iff M _ _).2
  apply R.encode_eq_implies_causalEquivalent
  exact (Classical.choose_spec
    ((R.toEffectiveMemory x).property)).trans rfl

/-- Every causal state is reached from a realized memory value. -/
theorem effectiveToCausal_surjective :
    Function.Surjective R.effectiveToCausal := by
  intro causal
  refine Quotient.inductionOn causal ?_
  intro x
  exact ⟨R.toEffectiveMemory x,
    R.effectiveToCausal_toEffectiveMemory x⟩

/-- The universal factor commutes with each input transition. -/
theorem effectiveToCausal_step
    (a : Input)
    (memory : R.EffectiveMemory) :
    R.effectiveToCausal (R.effectiveStep a memory) =
      M.causalStep a (R.effectiveToCausal memory) := by
  rcases R.toEffectiveMemory_surjective memory with ⟨x, rfl⟩
  simp

/-- The universal factor preserves every represented observation. -/
theorem effectiveToCausal_read
    (ρ : Resolution)
    (memory : R.EffectiveMemory) :
    M.causalObserve ρ (R.effectiveToCausal memory) =
      R.effectiveRead ρ memory := by
  rcases R.toEffectiveMemory_surjective memory with ⟨x, rfl⟩
  simp

/--
Any map agreeing with `toCausal` on encoded states is the universal factor on
the whole effective image.
-/
theorem effectiveToCausal_unique
    (f : R.EffectiveMemory → M.CausalState)
    (hf : ∀ x, f (R.toEffectiveMemory x) = M.toCausal x) :
    f = R.effectiveToCausal := by
  funext memory
  rcases R.toEffectiveMemory_surjective memory with ⟨x, rfl⟩
  rw [hf]
  exact (R.effectiveToCausal_toEffectiveMemory x).symm

/-- The causal state is terminal among factor maps from realized memory. -/
theorem causalState_terminal :
    ∃! f : R.EffectiveMemory → M.CausalState,
      ∀ x, f (R.toEffectiveMemory x) = M.toCausal x := by
  refine ⟨R.effectiveToCausal,
    R.effectiveToCausal_toEffectiveMemory, ?_⟩
  intro f hf
  exact R.effectiveToCausal_unique f hf

/-! ## Exact representations -/

/-- A representation is exact when its kernel is precisely causal equivalence. -/
def Exact : Prop :=
  ∀ x y, R.encode x = R.encode y ↔ M.CausalEquivalent x y

/-- Exactness makes the universal causal factor injective. -/
theorem effectiveToCausal_injective_of_exact
    (h : R.Exact) :
    Function.Injective R.effectiveToCausal := by
  intro memory₁ memory₂ hcausal
  rcases R.toEffectiveMemory_surjective memory₁ with ⟨x, rfl⟩
  rcases R.toEffectiveMemory_surjective memory₂ with ⟨y, rfl⟩
  apply Subtype.ext
  apply (h x y).2
  apply (System.toCausal_eq_iff M _ _).1
  simpa using hcausal

/-- Exact effective memory is equivalent to the minimal causal state. -/
noncomputable def effectiveMemoryEquivCausalState
    (h : R.Exact) :
    R.EffectiveMemory ≃ M.CausalState :=
  Equiv.ofBijective R.effectiveToCausal
    ⟨R.effectiveToCausal_injective_of_exact h,
      R.effectiveToCausal_surjective⟩

/-! ## Finite information bounds -/

/-- A surjective effective-memory factor bounds the number of causal states. -/
theorem card_causalState_le_effectiveMemory
    [Fintype (EffectiveMemory R)]
    [Fintype (System.CausalState M)] :
    Fintype.card (System.CausalState M) ≤
      Fintype.card (EffectiveMemory R) :=
  Fintype.card_le_of_surjective R.effectiveToCausal
    R.effectiveToCausal_surjective

/-- The realized memory image has no more elements than the ambient memory. -/
theorem card_effectiveMemory_le_memory
    [Fintype (PredictiveRepresentation.Memory R)]
    [Fintype (EffectiveMemory R)] :
    Fintype.card (EffectiveMemory R) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  Fintype.card_le_of_injective Subtype.val Subtype.val_injective

/-- Every finite predictive memory has at least as many states as causal state. -/
theorem card_causalState_le_memory
    [Fintype (PredictiveRepresentation.Memory R)]
    [Fintype (EffectiveMemory R)]
    [Fintype (System.CausalState M)] :
    Fintype.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  (R.card_causalState_le_effectiveMemory).trans
    R.card_effectiveMemory_le_memory

/--
Finite ambient memory alone suffices to instantiate the image and quotient
cardinalities: the effective image embeds into memory and surjects onto causal
state.  The concrete state type itself need not be finite.
-/
theorem card_causalState_le_memory_of_finite_memory
    [Fintype (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) := by
  letI : Finite (EffectiveMemory R) :=
    Finite.of_injective Subtype.val Subtype.val_injective
  letI : Finite (System.CausalState M) :=
    Finite.of_surjective R.effectiveToCausal
      R.effectiveToCausal_surjective
  letI : Fintype (EffectiveMemory R) :=
    Fintype.ofFinite (EffectiveMemory R)
  letI : Fintype (System.CausalState M) :=
    Fintype.ofFinite (System.CausalState M)
  rw [Nat.card_eq_fintype_card]
  exact R.card_causalState_le_memory

/-- Finite-state specialization when concrete state is also finite. -/
theorem card_causalState_le_memory_of_finite_state
    [Finite State]
    [Fintype (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  R.card_causalState_le_memory_of_finite_memory

/--
Instance-light form of the same theorem: finite memory induces finite
image/quotient types automatically, so no chosen `Fintype` enumeration of
either quotient and no finiteness assumption on concrete state is required.
-/
theorem natCard_causalState_le_memory
    [Finite (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Nat.card (PredictiveRepresentation.Memory R) := by
  letI : Finite R.EffectiveMemory :=
    Finite.of_injective Subtype.val Subtype.val_injective
  letI : Finite M.CausalState :=
    Finite.of_surjective R.effectiveToCausal
      R.effectiveToCausal_surjective
  exact
    (Nat.card_le_card_of_surjective R.effectiveToCausal
        R.effectiveToCausal_surjective).trans
      (Nat.card_le_card_of_injective Subtype.val Subtype.val_injective)

end PredictiveRepresentation

end ObservableRecursion

/-! Public aliases matching the project-wide representation API. -/

export ObservableRecursion (PredictiveRepresentation)

namespace PredictiveRepresentation

export ObservableRecursion.PredictiveRepresentation
  (EffectiveMemory
   toEffectiveMemory
   effectiveStep
   effectiveRead
   effectiveToCausal
   effectiveToCausal_toEffectiveMemory
   effectiveToCausal_surjective
   effectiveToCausal_step
   effectiveToCausal_read
   effectiveToCausal_unique
   causalState_terminal
   Exact
   effectiveToCausal_injective_of_exact
   effectiveMemoryEquivCausalState
   card_causalState_le_effectiveMemory
   card_effectiveMemory_le_memory
   card_causalState_le_memory
   card_causalState_le_memory_of_finite_memory
   card_causalState_le_memory_of_finite_state
   natCard_causalState_le_memory)

end PredictiveRepresentation
```
