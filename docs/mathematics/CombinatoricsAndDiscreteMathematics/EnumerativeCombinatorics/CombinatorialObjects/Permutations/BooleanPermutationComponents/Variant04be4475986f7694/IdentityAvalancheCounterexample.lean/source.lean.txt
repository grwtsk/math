/-
IdentityAvalancheCounterexample — exact individually reviewed original source
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

/- Whole four-field permutation rounds, XOR translations, all inverse equations and head-first list composition remain exact equivalences; the field named linear is only an equivalence here, with no invented linearity premise. The identity round supplies an exact zero-avalanche counterexample only under 0<n. -/

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

/-! ## Bijectivity without avalanche -/

/-- The round with zero keys and identity substitution and linear layers. -/
def identityRound (n : Nat) : Round n where
  preKey := zeroBits n
  substitution := Equiv.refl _
  linear := Equiv.refl _
  postKey := zeroBits n

@[simp]
theorem identityRound_run {n : Nat} (x : Bits n) :
    (identityRound n).run x = x := by
  simp [Round.run, Round.toEquiv, identityRound]

theorem identityRound_sacScore {n : Nat} (hn : 0 < n) :
    sacScore (identityRound n).run = 0 := by
  have hrun : (identityRound n).run = (id : Bits n → Bits n) := by
    funext x
    exact identityRound_run x
  rw [hrun]
  exact identity_sacScore hn

theorem identityRound_varianceScore {n : Nat} (hn : 0 < n) :
    varianceScore (identityRound n).run = 0 := by
  have hrun : (identityRound n).run = (id : Bits n → Bits n) := by
    funext x
    exact identityRound_run x
  rw [hrun]
  exact identity_varianceScore hn

/--
Compositional bijectivity makes no SAC claim: an explicit bijective round can
have both avalanche positivity scores equal to zero.
-/
theorem exists_bijective_round_with_zero_avalanche {n : Nat} (hn : 0 < n) :
    ∃ R : Round n,
      Function.Bijective R.run ∧
      sacScore R.run = 0 ∧
      varianceScore R.run = 0 := by
  exact ⟨identityRound n, (identityRound n).run_bijective,
    identityRound_sacScore hn, identityRound_varianceScore hn⟩

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
