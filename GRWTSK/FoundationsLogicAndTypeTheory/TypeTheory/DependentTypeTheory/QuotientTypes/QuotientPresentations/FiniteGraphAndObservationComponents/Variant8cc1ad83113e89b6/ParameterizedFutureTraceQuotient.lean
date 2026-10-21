/-
ParameterizedFutureTraceQuotient - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7
Organized SHA-256: a03607a4971b1b6b11455260e403e30a7638c9e76f885a93c4e0036d4795d1d4
PMD: 510.0.070.020.080.010 quotient presentations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Complete future-trace quotient core (first9 source declarations). Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal.ObservableRecursion
import Mathlib.Data.Quot
import Mathlib.Logic.Equiv.Defs

/-!
# Causal states and realized future behaviors

Two states are causally equivalent when every future input word produces the
same observation at every resolution.  This is a future-trace equivalence, not
merely equality of the current observation.  It is stable under every input
transition, so both transition and observation descend to the quotient.

The quotient is equivalent to the **image** of the behavior map: only future
behaviors actually realized by a state occur.  It need not be equivalent to
the unrestricted dependent function space of all possible traces.  These
causal classes are relative to the selected observer family: adding another
observer may refine the quotient.  Causal equivalence does not imply equality
of the underlying states, and equality of only the current observation is
sufficient only when its kernel is stable under every transition.  These
results do not assert reversibility, finite cardinality, minimal executable
representations, observer-factor relationships, homological structure, or
diffusion properties.
-/

namespace ObservableRecursion

universe uI uS uR uO

namespace System

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-- Equality of all resolution-indexed observations after all future input words. -/
def CausalEquivalent
    (M : System Input State Resolution)
    (x y : State) : Prop :=
  ∀ (inputs : List Input) (ρ : Resolution),
    M.observe ρ (M.run inputs x) =
      M.observe ρ (M.run inputs y)

theorem causalEquivalent_refl
    (M : System Input State Resolution)
    (x : State) :
    M.CausalEquivalent x x := by
  intro inputs ρ
  rfl

theorem causalEquivalent_symm
    (M : System Input State Resolution)
    {x y : State}
    (h : M.CausalEquivalent x y) :
    M.CausalEquivalent y x := by
  intro inputs ρ
  exact (h inputs ρ).symm

theorem causalEquivalent_trans
    (M : System Input State Resolution)
    {x y z : State}
    (hxy : M.CausalEquivalent x y)
    (hyz : M.CausalEquivalent y z) :
    M.CausalEquivalent x z := by
  intro inputs ρ
  exact (hxy inputs ρ).trans (hyz inputs ρ)

/-- The setoid induced by equality of every future observation trace. -/
def causalSetoid
    (M : System Input State Resolution) : Setoid State where
  r := M.CausalEquivalent
  iseqv := {
    refl := fun x => M.causalEquivalent_refl x
    symm := fun h => M.causalEquivalent_symm h
    trans := fun hxy hyz => M.causalEquivalent_trans hxy hyz
  }

/-- Predictive states obtained by quotienting concrete states by future behavior. -/
def CausalState
    (M : System Input State Resolution) :=
  Quotient M.causalSetoid

/-- Send a concrete state to its causal equivalence class. -/
def toCausal
    (M : System Input State Resolution)
    (x : State) : M.CausalState :=
  Quotient.mk M.causalSetoid x

/-- Every causal class has a concrete representative. -/
theorem toCausal_surjective
    (M : System Input State Resolution) :
    Function.Surjective M.toCausal := by
  intro causal
  refine Quotient.inductionOn causal ?_
  intro x
  exact ⟨x, rfl⟩

@[simp]
theorem toCausal_eq_iff
    (M : System Input State Resolution)
    (x y : State) :
    M.toCausal x = M.toCausal y ↔
      M.CausalEquivalent x y := by
  constructor
  · exact Quotient.exact
  · intro h
    apply Quotient.sound
    exact h

end System

end ObservableRecursion

/-!
The public `CausalObservation` namespace re-exports the same declarations for
the stable, topic-oriented API.  These are namespace aliases, not a second
quotient construction; method notation such as `M.CausalState` continues to
refer to `ObservableRecursion.System.CausalState`.
-/
