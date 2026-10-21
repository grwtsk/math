/-
SurjectiveInputAndIsoCausalTransport - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7
Organized SHA-256: fe450d31190664564f2ec2d55aee30b3d4c1f5de37cb59f7e80b737e6e58c770
PMD: 510.0.070.020.080.020 quotient elimination (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Hom/Factor transport with explicit input-surjectivity, and whole Iso induced equivalence retaining both embedded inverse proofs. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.System
import Mathlib.Data.List.Basic
import Mathlib.Data.Set.Operations
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variantd017e5c17eee8065.FullFutureTraceQuotient

/-!
# Causal observational state

Two states are causally equivalent when every future input word gives equal
observations at every resolution.  The quotient is therefore the minimal
object retaining the selected system's entire observable future.

There is one necessary variance condition for transport.  A general system
homomorphism maps source inputs into target inputs; causal equivalence in the
target quantifies over *all* target input words.  Consequently forward causal
transport requires the input map to be surjective.  This hypothesis is
explicit below.  A system isomorphism supplies it from its inverse laws.

A predictive representation need only identify states that are causally
equivalent.  Its realized encoder image—not the whole representation type—has
a unique map to causal state agreeing with the quotient map.
-/

universe uP

namespace DAF

namespace System

variable {M N : System}

/-! ## Causal quotient -/

namespace Hom

/--
A homomorphism with a surjective input translation preserves causal
equivalence.  Surjectivity is essential because the target relation quantifies
over every target input word, including words not otherwise in the image.
-/
theorem map_causalEquivalent
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput)
    {x y : M.State}
    (hxy : M.CausalEquivalent x y) :
    N.CausalEquivalent (F.mapState x) (F.mapState y) := by
  intro targetInputs r
  rcases hInput.list_map targetInputs with ⟨sourceInputs, hsource⟩
  subst targetInputs
  rw [← F.map_run sourceInputs x, ← F.map_run sourceInputs y]
  rw [← F.observe_natural r (M.run sourceInputs x),
    ← F.observe_natural r (M.run sourceInputs y)]
  exact congrArg (F.mapObservation r)
    (hxy sourceInputs (F.pullResolution r))

/-- A causality-preserving homomorphism descends to causal-state quotients. -/
def causalStateMap
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput) :
    M.CausalState → N.CausalState :=
  Quotient.map F.mapState
    (fun _ _ h => F.map_causalEquivalent hInput h)

@[simp]
theorem causalStateMap_toCausal
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput)
    (x : M.State) :
    F.causalStateMap hInput (M.toCausal x) =
      N.toCausal (F.mapState x) :=
  rfl

end Hom

namespace Factor

/--
A state-surjective factor induces a surjection on causal states whenever its
input translation is also surjective.
-/
theorem causalStateMap_surjective
    (F : M.Factor N)
    (hInput : Function.Surjective F.toHom.mapInput) :
    Function.Surjective (F.toHom.causalStateMap hInput) := by
  intro target
  refine Quotient.inductionOn target ?_
  intro y
  rcases F.state_surjective y with ⟨x, hx⟩
  refine ⟨M.toCausal x, ?_⟩
  rw [Hom.causalStateMap_toCausal]
  exact congrArg N.toCausal hx

end Factor

/-! ## Isomorphism transport -/

namespace Iso

/-- Structural isomorphisms preserve and reflect complete future behavior. -/
theorem causalEquivalent_iff
    (F : M.Iso N)
    {x y : M.State} :
    M.CausalEquivalent x y ↔
      N.CausalEquivalent (F.hom.mapState x) (F.hom.mapState y) := by
  constructor
  · exact F.hom.map_causalEquivalent F.hom_input_bijective.2
  · intro h
    have pulled :=
      F.inv.map_causalEquivalent F.symm.hom_input_bijective.2 h
    simpa only [F.hom_inv_state x, F.hom_inv_state y] using pulled

/-- A structural system isomorphism descends to an equivalence of causal states. -/
noncomputable def causalStateEquiv (F : M.Iso N) :
    M.CausalState ≃ N.CausalState where
  toFun := F.hom.causalStateMap F.hom_input_bijective.2
  invFun := F.inv.causalStateMap F.symm.hom_input_bijective.2
  left_inv := by
    intro q
    refine Quotient.inductionOn q ?_
    intro x
    change M.toCausal (F.inv.mapState (F.hom.mapState x)) = M.toCausal x
    rw [F.hom_inv_state]
  right_inv := by
    intro q
    refine Quotient.inductionOn q ?_
    intro x
    change N.toCausal (F.hom.mapState (F.inv.mapState x)) = N.toCausal x
    rw [F.inv_hom_state]

@[simp]
theorem causalStateEquiv_toCausal (F : M.Iso N) (x : M.State) :
    F.causalStateEquiv (M.toCausal x) =
      N.toCausal (F.hom.mapState x) :=
  rfl

end Iso

/-! ## Predictive representations -/

end System

end DAF
