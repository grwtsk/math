# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variantd017e5c17eee8065.FullFutureTraceQuotient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9640a3cf3f67c18cf479dcabae15608bed6f22a2` · SHA-256 `dff0bb8f569be5557d787db0e0c1b16e00cd9bbd31a1a614ca9eb1aacdbb6cf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FullFutureTraceQuotient - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7
Organized SHA-256: fe450d31190664564f2ec2d55aee30b3d4c1f5de37cb59f7e80b737e6e58c770
PMD: 510.0.070.020.080.010 quotient presentations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Complete future-trace equivalence relation, setoid, quotient, canonical projection and actual proofs. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.System
import Mathlib.Data.List.Basic
import Mathlib.Data.Set.Operations

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

/-- Equality of all future observations under every finite input trace. -/
def CausalEquivalent (M : System) (x y : M.State) : Prop :=
  ∀ (inputs : List M.Input) (r : M.Resolution),
    M.observe r (M.run inputs x) =
      M.observe r (M.run inputs y)

theorem causalEquivalent_refl (M : System) (x : M.State) :
    M.CausalEquivalent x x := by
  intro inputs r
  rfl

theorem causalEquivalent_symm
    (M : System)
    {x y : M.State}
    (h : M.CausalEquivalent x y) :
    M.CausalEquivalent y x := by
  intro inputs r
  exact (h inputs r).symm

theorem causalEquivalent_trans
    (M : System)
    {x y z : M.State}
    (hxy : M.CausalEquivalent x y)
    (hyz : M.CausalEquivalent y z) :
    M.CausalEquivalent x z := by
  intro inputs r
  exact (hxy inputs r).trans (hyz inputs r)

/-- The setoid of complete observable-future equality. -/
def causalSetoid (M : System) : Setoid M.State where
  r := M.CausalEquivalent
  iseqv := {
    refl := M.causalEquivalent_refl
    symm := fun h => M.causalEquivalent_symm h
    trans := fun hxy hyz => M.causalEquivalent_trans hxy hyz
  }

/-- The minimal causal observational state space. -/
def CausalState (M : System) :=
  Quotient M.causalSetoid

/-- Send a state to its causal class. -/
def toCausal (M : System) (x : M.State) : M.CausalState :=
  Quotient.mk M.causalSetoid x

theorem toCausal_surjective (M : System) :
    Function.Surjective M.toCausal := by
  intro q
  refine Quotient.inductionOn q ?_
  intro x
  exact ⟨x, rfl⟩

@[simp]
theorem toCausal_eq_iff (M : System) (x y : M.State) :
    M.toCausal x = M.toCausal y ↔ M.CausalEquivalent x y := by
  constructor
  · exact Quotient.exact
  · intro h
    apply Quotient.sound
    exact h

/-! ## Homomorphism and factor transport -/

namespace Hom

end Hom

namespace Factor

end Factor

/-! ## Isomorphism transport -/

namespace Iso

end Iso

/-! ## Predictive representations -/

end System

end DAF
```
