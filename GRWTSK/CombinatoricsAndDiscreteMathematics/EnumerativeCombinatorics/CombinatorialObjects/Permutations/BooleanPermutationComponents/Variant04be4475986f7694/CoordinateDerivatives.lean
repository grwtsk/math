/-
CoordinateDerivatives — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: R.A. Jacob Martone.
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

/- Complete coordinate permutations, XOR/Hamming preservation, deterministic derivatives, exact one-hot counts and both positive-width zero-score proofs remain together with both private helper theorems and every caller. -/

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

/-! ## Coordinate permutations and rotation -/

/--
Permute coordinates so that input coordinate `i` moves to output coordinate
`π i`; hence output `j` reads input `π⁻¹ j`.
-/
def coordinatePermutation {n : Nat} (π : Equiv.Perm (Fin n)) :
    Bits n ≃ Bits n where
  toFun x j := x (π.symm j)
  invFun x j := x (π j)
  left_inv x := by
    funext j
    simp
  right_inv x := by
    funext j
    simp

@[simp]
theorem coordinatePermutation_apply {n : Nat} (π : Equiv.Perm (Fin n))
    (x : Bits n) (j : Fin n) :
    coordinatePermutation π x j = x (π.symm j) :=
  rfl

/-- Coordinate permutations preserve pointwise XOR. -/
theorem coordinatePermutation_xor {n : Nat} (π : Equiv.Perm (Fin n))
    (x y : Bits n) :
    coordinatePermutation π (xorBits x y) =
      xorBits (coordinatePermutation π x) (coordinatePermutation π y) :=
  rfl

/-- Coordinate permutations preserve Hamming weight exactly. -/
theorem hammingWeight_coordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) (x : Bits n) :
    hammingWeight (coordinatePermutation π x) = hammingWeight x := by
  classical
  unfold hammingWeight
  apply Finset.card_equiv π.symm
  intro j
  constructor
  · intro h
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, (Finset.mem_filter.mp h).2⟩
  · intro h
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, (Finset.mem_filter.mp h).2⟩

/-- A coordinate permutation has the deterministic derivative `π(δ)`. -/
theorem coordinatePermutation_derivative {n : Nat}
    (π : Equiv.Perm (Fin n)) (δ x : Bits n) :
    derivative (coordinatePermutation π) δ x =
      coordinatePermutation π δ := by
  rw [derivative, coordinatePermutation_xor, ← xorBits_assoc,
    xorBits_self, xorBits_zero_left]

private theorem coordinatePermutation_basisBit {n : Nat}
    (π : Equiv.Perm (Fin n)) (i : Fin n) :
    coordinatePermutation π (basisBit i) = basisBit (π i) := by
  funext j
  simp only [coordinatePermutation_apply, basisBit]
  apply (decide_eq_decide).2
  exact Equiv.symm_apply_eq π

/-- A one-bit derivative stays one-bit and moves from `i` to `π i`. -/
theorem coordinatePermutation_bitDerivative {n : Nat}
    (π : Equiv.Perm (Fin n)) (i : Fin n) (x : Bits n) :
    bitDerivative (coordinatePermutation π) i x = basisBit (π i) := by
  rw [bitDerivative, coordinatePermutation_derivative,
    coordinatePermutation_basisBit]

/-- Exact SAC counts of a coordinate permutation: one full entry per row. -/
theorem coordinatePermutation_sacCount {n : Nat}
    (π : Equiv.Perm (Fin n)) (i j : Fin n) :
    sacCount (coordinatePermutation π) i j =
      if π i = j then 2 ^ n else 0 := by
  classical
  simp only [sacCount, derivativeBit, coordinatePermutation_bitDerivative]
  by_cases hij : π i = j
  · subst j
    simp [basisBit]
  · have hji : j ≠ π i := Ne.symm hij
    simp [basisBit, hij, hji]

private theorem coordinatePermutation_sacEntry {n : Nat}
    (π : Equiv.Perm (Fin n)) (i j : Fin n) :
    sacEntry (coordinatePermutation π) i j =
      if π i = j then 1 else 0 := by
  rw [sacEntry, coordinatePermutation_sacCount]
  split_ifs
  · norm_num
  · simp

/-- Every positive-width coordinate permutation has zero absolute-bias score. -/
theorem coordinatePermutation_sacScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    sacScore (coordinatePermutation π) = 0 := by
  have hterm (i j : Fin n) :
      |2 * sacEntry (coordinatePermutation π) i j - 1| = 1 := by
    rw [coordinatePermutation_sacEntry]
    by_cases hij : π i = j
    · rw [if_pos hij]
      norm_num
    · rw [if_neg hij]
      norm_num
  rw [sacScore, if_neg (Nat.ne_of_gt hn)]
  simp [hterm, Nat.ne_of_gt hn]

/-- Every positive-width coordinate permutation has zero variance score. -/
theorem coordinatePermutation_varianceScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    varianceScore (coordinatePermutation π) = 0 := by
  rw [varianceScore, if_neg (Nat.ne_of_gt hn)]
  simp [coordinatePermutation_sacEntry]

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
