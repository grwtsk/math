/-
BranchNumber — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a
Organized SHA-256: c6e5919d85ba9e19bb5b9997372650b13bba53566855c457ced5a75827a9bf3d
PMD: 510.1.070 linear algebra (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete XOR-preserving equivalence and deterministic minimum input/output Hamming activity retain the width-zero convention and every positive-width/nonzero-input premise. All four private activity/Hamming helpers and callers stay in one file. This proves no SAC or multi-round avalanche guarantee. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.Order.BigOperators.Group.Finset

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.CoordinateDerivatives

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

/-! ## XOR-linear equivalences and branch number -/

/-- An invertible Boolean-linear layer, expressed through preservation of XOR. -/
structure XorLinearEquiv (n : Nat) extends Bits n ≃ Bits n where
  map_xor : ∀ x y,
    toFun (xorBits x y) = xorBits (toFun x) (toFun y)

/-- Every coordinate permutation is an XOR-linear equivalence. -/
def XorLinearEquiv.ofCoordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) : XorLinearEquiv n where
  toEquiv := coordinatePermutation π
  map_xor := coordinatePermutation_xor π

/-- An XOR-linear equivalence maps zero to zero. -/
@[simp]
theorem XorLinearEquiv.map_zero {n : Nat} (L : XorLinearEquiv n) :
    L.toFun (zeroBits n) = zeroBits n := by
  have h := L.map_xor (zeroBits n) (zeroBits n)
  simpa using h

private def activities {n : Nat} (L : XorLinearEquiv n) : Finset Nat :=
  ((Finset.univ.filter fun v : Bits n => v ≠ zeroBits n).image fun v =>
    hammingWeight v + hammingWeight (L.toFun v))

private theorem activities_nonempty {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) : (activities L).Nonempty := by
  classical
  rw [activities, Finset.image_nonempty]
  refine ⟨basisBit ⟨0, hn⟩, ?_⟩
  simp [basisBit_ne_zero]

/--
Minimum nonzero input/output activity. At width zero the defining set is empty,
so the branch number is defined by convention to be zero. This is a
deterministic one-layer activity guarantee, not a SAC or multi-round avalanche
theorem.
-/
def branchNumber {n : Nat} (L : XorLinearEquiv n) : Nat :=
  if hn : n = 0 then
    0
  else
    (activities L).min' (activities_nonempty L (Nat.pos_of_ne_zero hn))

/-- The documented empty-width convention. -/
@[simp]
theorem branchNumber_zero (L : XorLinearEquiv 0) : branchNumber L = 0 := by
  simp [branchNumber]

/-- Every nonzero input activity is bounded below by the branch number. -/
theorem branchNumber_le_activity {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) {v : Bits n} (hv : v ≠ zeroBits n) :
    branchNumber L ≤ hammingWeight v + hammingWeight (L.toFun v) := by
  classical
  rw [branchNumber, dif_neg (Nat.ne_of_gt hn)]
  apply Finset.min'_le
  exact Finset.mem_image.mpr ⟨v, by simp [hv], rfl⟩

private theorem hammingWeight_basisBit {n : Nat} (i : Fin n) :
    hammingWeight (basisBit i) = 1 := by
  have hfilter :
      (Finset.univ.filter fun j : Fin n => basisBit i j = true) = {i} := by
    ext j
    simp [basisBit]
  rw [hammingWeight, hfilter]
  simp

private theorem two_le_branchNumber {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) : 2 ≤ branchNumber L := by
  classical
  rw [branchNumber, dif_neg (Nat.ne_of_gt hn)]
  have hmem := Finset.min'_mem (activities L) (activities_nonempty L hn)
  rcases Finset.mem_image.mp hmem with ⟨v, hv, hactivity⟩
  rw [← hactivity]
  have hv0 : v ≠ zeroBits n :=
    (Finset.mem_filter.mp hv).2
  have hout0 : L.toFun v ≠ zeroBits n := by
    intro hout
    apply hv0
    exact L.toEquiv.injective (hout.trans L.map_zero.symm)
  have hvpos : 0 < hammingWeight v := by
    apply Nat.pos_of_ne_zero
    intro h
    exact hv0 ((hammingWeight_eq_zero_iff v).mp h)
  have houtpos : 0 < hammingWeight (L.toFun v) := by
    apply Nat.pos_of_ne_zero
    intro h
    exact hout0 ((hammingWeight_eq_zero_iff (L.toFun v)).mp h)
  omega

/-- A coordinate permutation has the minimal possible positive branch number `2`. -/
theorem branchNumber_coordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    branchNumber (XorLinearEquiv.ofCoordinatePermutation π) = 2 := by
  apply Nat.le_antisymm
  · let i : Fin n := ⟨0, hn⟩
    calc
      branchNumber (XorLinearEquiv.ofCoordinatePermutation π) ≤
          hammingWeight (basisBit i) +
            hammingWeight
              ((XorLinearEquiv.ofCoordinatePermutation π).toFun
                (basisBit i)) :=
        branchNumber_le_activity _ hn (basisBit_ne_zero i)
      _ = 2 := by
        change hammingWeight (basisBit i) +
          hammingWeight (coordinatePermutation π (basisBit i)) = 2
        rw [hammingWeight_coordinatePermutation]
        simp [hammingWeight_basisBit]
  · exact two_le_branchNumber _ hn

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
