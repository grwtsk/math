# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant260d671f2639f412.EffectiveMemoryFactor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b4b0dd949240f3ff95d79a4de27c7b28525728a` · SHA-256 `63d28810b65e3dfb965c29d1d36cccdb1b75a615cf2f2fb873449010bbbf799a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EffectiveMemoryFactor — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962
Organized SHA-256: 2206834a934a04d495fa1be69d1c14dbae99411013add88ab0f2898210608834
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole realized-memory image and uniquely specified quotient factor; equivalence requires the complete Exact kernel premise. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.CausalState
import Mathlib.Data.Fintype.Card
import Mathlib.SetTheory.Cardinal.Finite
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Variant260d671f2639f412.PredictiveRepresentationDynamics

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

namespace PredictiveRepresentation

variable {M : System Input State Resolution}
variable (R : PredictiveRepresentation M)

/-! ## Executing represented memory -/

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

end PredictiveRepresentation

end ObservableRecursion

```
