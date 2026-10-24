/-
StateDependentCorrections — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a
Organized SHA-256: c6e5919d85ba9e19bb5b9997372650b13bba53566855c457ced5a75827a9bf3d
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- State-dependent XOR of the identity with itself collapses positive-width inputs; constant translation preserves an already bijective map. The exact existential witness and every premise are retained. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.Order.BigOperators.Group.Finset

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.RoundComposition

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

/-! ## State-dependent corrections -/

/-- Add a state-dependent correction pointwise by Boolean XOR. -/
def addCorrection {n : Nat} (D ω : Bits n → Bits n) : Bits n → Bits n :=
  fun x => xorBits (D x) (ω x)

@[simp]
theorem identity_add_identity_correction {n : Nat} (x : Bits n) :
    addCorrection
        (id : Bits n → Bits n)
        (id : Bits n → Bits n)
        x =
      zeroBits n := by
  exact xorBits_self x

/-- At positive width the identity correction collapses all inputs to zero. -/
theorem identity_add_identity_not_injective {n : Nat} (hn : 0 < n) :
    ¬ Function.Injective
        (addCorrection
          (id : Bits n → Bits n)
          (id : Bits n → Bits n)) := by
  intro hinjective
  let i : Fin n := ⟨0, hn⟩
  have heq : basisBit i = zeroBits n := by
    apply hinjective
    simp
  exact basisBit_ne_zero i heq

/-- A state-dependent correction can destroy the bijectivity of its base map. -/
theorem state_dependent_correction_can_destroy_bijectivity
    {n : Nat} (hn : 0 < n) :
    ∃ D ω : Bits n → Bits n,
      Function.Bijective D ∧
      ¬ Function.Injective (addCorrection D ω) := by
  refine ⟨id, id, Function.bijective_id, ?_⟩
  exact identity_add_identity_not_injective hn

/-- Unlike a state-dependent correction, a constant XOR translation is an equivalence. -/
theorem constant_translation_preserves_bijectivity
    {n : Nat} (D : Bits n → Bits n) (hD : Function.Bijective D)
    (c : Bits n) :
    Function.Bijective (fun x => xorBits (D x) c) := by
  simpa [Function.comp_def] using (xorTranslation c).bijective.comp hD

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
