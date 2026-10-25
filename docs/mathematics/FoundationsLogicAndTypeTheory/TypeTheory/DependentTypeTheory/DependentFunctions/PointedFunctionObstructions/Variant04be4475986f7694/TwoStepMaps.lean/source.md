# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.PointedFunctionObstructions.Variant04be4475986f7694.TwoStepMaps

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6b121cbcd277f936960b91d71f68d2dbdae6c0d` · SHA-256 `d0bdaf7a41fe12f9ebe66933be92b36f7596a2fd348f01b0e6137b963c18af75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
TwoStepMaps — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a
Organized SHA-256: c6e5919d85ba9e19bb5b9997372650b13bba53566855c457ced5a75827a9bf3d
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The entire four-field TwoStepComplex and Closed1/Exact1/H1Trivial predicates, identity-to-zero example and actual proof form elementary pointed-type function data. No additive group, differential linearity, quotient cohomology or cyclic/bicomplex theorem is supplied. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Correct guarantees for permutation networks

This module separates properties that are often conflated:

* totality is supplied by an ordinary Lean function;
* bijectivity is supplied structurally by `Equiv` and is preserved by
  composition;
* deterministic linear activity is measured by branch number;
* SAC balance and differential concentration are the aggregate invariants from
  `BitMatrix.Dynamics.Avalanche` and do not follow from bijectivity.

The counterexamples below make the boundary explicit.  A cyclic coordinate
rotation is bijective and preserves Hamming weight, but merely relocates a
one-bit difference and has zero SAC positivity scores.  A state-dependent XOR
correction can collapse even the identity permutation.  Trivial first
cohomology in the elementary complex used here means only that every closed
degree-one element is exact; it says nothing about injectivity of an unrelated
state transformation.

The square-zero theorem is likewise deliberately elementary.  Connes' `B`
operator is degree-changing in the cyclic complex.  If such an operator is
totalized as a square-zero endomorphism, square-zero obstructs invertibility on
a nontrivial state space.  The theorem here does not formalize the full cyclic
module or bicomplex construction.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694

universe u

namespace BitMatrix.Network.Permutation

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open scoped BigOperators

/-! ## Elementary two-step cohomology -/

/-- A minimal two-step cochain interface, sufficient for the counterexample. -/
structure TwoStepComplex (A : Type u) where
  zero : A
  d₀ : A → A
  d₁ : A → A
  d_sq : ∀ x, d₁ (d₀ x) = zero

/-- A degree-one element is closed when its next differential is zero. -/
def TwoStepComplex.Closed₁ {A : Type u} (C : TwoStepComplex A) (ω : A) : Prop :=
  C.d₁ ω = C.zero

/-- A degree-one element is exact when it lies in the image of `d₀`. -/
def TwoStepComplex.Exact₁ {A : Type u} (C : TwoStepComplex A) (ω : A) : Prop :=
  ∃ η, C.d₀ η = ω

/-- `H¹` is trivial here precisely when every closed degree-one element is exact. -/
def TwoStepComplex.H1Trivial {A : Type u} (C : TwoStepComplex A) : Prop :=
  ∀ ω, C.Closed₁ ω → C.Exact₁ ω

/-- The elementary complex `A --id--> A --0--> A`. -/
def identityZeroComplex (A : Type u) (zero : A) : TwoStepComplex A where
  zero := zero
  d₀ := id
  d₁ := fun _ => zero
  d_sq := by
    intro x
    rfl

/-- The identity-to-zero complex has trivial first cohomology. -/
theorem identityZeroComplex_h1Trivial (A : Type u) (zero : A) :
    (identityZeroComplex A zero).H1Trivial := by
  intro ω _
  exact ⟨ω, rfl⟩

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
```
