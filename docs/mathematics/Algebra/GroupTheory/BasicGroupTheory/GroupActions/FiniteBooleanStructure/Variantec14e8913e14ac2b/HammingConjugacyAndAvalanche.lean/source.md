# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FiniteBooleanStructure.Variantec14e8913e14ac2b.HammingConjugacyAndAvalanche

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `939839c3e9609bb3d0795c633e28ae2b2098cbad` · SHA-256 `8723f46262938ed32c9b2ae2160a352e4b86d9bd410b34a8aa17668d5d1dfae3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
HammingConjugacyAndAvalanche — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d
Organized SHA-256: 2c83986545ea905b5af2fb1f20f153ca1b09a8214a0cee94703f84f2808d19ee
PMD: 510.1.030.010.050 group actions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Coordinate subgroup and HammingIso keep every coordinate, offset, equivalence and injectivity premise. All ten private helpers and their callers remain in one component, including the coordinate helper reused by derivative proofs. Whole explicit Hamming conjugacy and exact SAC table/score proofs remain there. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Network.Permutation
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.FiniteBooleanStructure.Variantec14e8913e14ac2b.XorTranslationEmbedding

/-!
# Finite symmetries of Boolean state spaces

This module separates the group theory of finite state permutations from the
avalanche statistics defined in `BitMatrix.Dynamics.Avalanche`.  Since `Bits n` has
`2 ^ n` elements, `BitPerm n` is the symmetric group on those Boolean states.
XOR translations embed an elementary abelian `2`-group `C₂^n`, while
coordinate relabelings embed a copy of the coordinate symmetric group `Sₙ`.
Their affine combinations form the explicit family `HammingIso`; no
classification of all Hamming isometries is claimed here.

Conjugation by an arbitrary state permutation preserves iteration and fixed
point counts, and therefore preserves the complete finite cycle structure.
Cycle structure alone implies neither SAC, derivative-bit independence, nor
low differential concentration.  Conjugation by one of the explicit Hamming
isometries additionally preserves SAC, because it only relabels inputs, input
directions, and output coordinates.
-/

namespace BitMatrix.Algebra.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Network.Permutation
open scoped BigOperators

/-! ## Coordinate-permutation subgroup -/

/-- Coordinate relabelings as a homomorphism of permutation groups. -/
def coordinatePermutationHom {n : Nat} :
    Equiv.Perm (Fin n) →* BitPerm n :=
  MonoidHom.mk'
    coordinatePermutation
    (fun π σ => by
      ext x j
      simp [Equiv.Perm.mul_def])

@[simp]
theorem coordinatePermutationHom_apply {n : Nat}
    (π : Equiv.Perm (Fin n))
    (x : Bits n)
    (j : Fin n) :
    coordinatePermutationHom π x j = x (π.symm j) :=
  rfl

private theorem coordinatePermutation_basisBit {n : Nat}
    (π : Equiv.Perm (Fin n))
    (i : Fin n) :
    coordinatePermutation π (basisBit i) = basisBit (π i) := by
  funext j
  simp only [coordinatePermutation_apply, basisBit]
  apply (decide_eq_decide).2
  exact Equiv.symm_apply_eq π

private theorem basisBit_injective {n : Nat} :
    Function.Injective (basisBit : Fin n → Bits n) := by
  intro i j h
  by_contra hij
  have hi := congrFun h i
  simp [basisBit, hij] at hi

/-- Coordinate permutations act faithfully, including at width zero. -/
theorem coordinatePermutationHom_injective {n : Nat} :
    Function.Injective (coordinatePermutationHom (n := n)) := by
  intro π σ h
  apply Equiv.Perm.ext
  intro i
  apply basisBit_injective
  calc
    basisBit (π i) = coordinatePermutation π (basisBit i) :=
      (coordinatePermutation_basisBit π i).symm
    _ = coordinatePermutation σ (basisBit i) := by
      exact congrArg (fun p : BitPerm n => p (basisBit i)) h
    _ = basisBit (σ i) := coordinatePermutation_basisBit σ i

/-- The faithfully embedded coordinate-permutation subgroup. -/
def coordinatePermutationEmbedding {n : Nat} :
    Equiv.Perm (Fin n) ↪* BitPerm n where
  toMonoidHom := coordinatePermutationHom
  injective' := coordinatePermutationHom_injective

/-! ## Hamming distance and explicit affine Hamming isometries -/

/-- Hamming distance is the weight of the XOR difference. -/
def hammingDistance {n : Nat} (x y : Bits n) : Nat :=
  hammingWeight (xorBits x y)

@[simp]
theorem hammingDistance_self {n : Nat} (x : Bits n) :
    hammingDistance x x = 0 := by
  simp [hammingDistance, hammingWeight, zeroBits]

theorem hammingDistance_comm {n : Nat} (x y : Bits n) :
    hammingDistance x y = hammingDistance y x := by
  rw [hammingDistance, hammingDistance, xorBits_comm]

theorem hammingDistance_eq_zero_iff {n : Nat} (x y : Bits n) :
    hammingDistance x y = 0 ↔ x = y := by
  rw [hammingDistance, hammingWeight_eq_zero_iff, xorBits_eq_zero_iff]

/-- A coordinate relabeling followed by an XOR translation. -/
@[ext]
structure HammingIso (n : Nat) where
  offset : Bits n
  coordinates : Equiv.Perm (Fin n)

/-- The state permutation represented by an explicit Hamming isometry. -/
def HammingIso.toPerm {n : Nat} (g : HammingIso n) : BitPerm n :=
  (coordinatePermutation g.coordinates).trans (xorTranslation g.offset)

@[simp]
theorem HammingIso.toPerm_apply {n : Nat}
    (g : HammingIso n)
    (x : Bits n) :
    g.toPerm x =
      xorBits (coordinatePermutation g.coordinates x) g.offset :=
  rfl

private theorem xorBits_cancel_both_right {n : Nat}
    (x y z : Bits n) :
    xorBits (xorBits x z) (xorBits y z) = xorBits x y := by
  funext j
  cases hx : x j <;> cases hy : y j <;> cases hz : z j <;>
    simp [xorBits, hx, hy, hz]

private theorem coordinatePermutation_zero {n : Nat}
    (π : Equiv.Perm (Fin n)) :
    coordinatePermutation π (zeroBits n) = zeroBits n := by
  funext j
  rfl

/-- Every explicit `HammingIso` preserves Hamming distance. -/
theorem HammingIso.hammingDistance_toPerm {n : Nat}
    (g : HammingIso n)
    (x y : Bits n) :
    hammingDistance (g.toPerm x) (g.toPerm y) =
      hammingDistance x y := by
  rw [hammingDistance, g.toPerm_apply, g.toPerm_apply,
    xorBits_cancel_both_right, ← coordinatePermutation_xor,
    hammingWeight_coordinatePermutation]
  rfl

/-- Offset and coordinate parameters determine an explicit Hamming isometry uniquely. -/
theorem HammingIso.toPerm_injective {n : Nat} :
    Function.Injective (HammingIso.toPerm : HammingIso n → BitPerm n) := by
  intro g h hperm
  have hoffset : g.offset = h.offset := by
    have hz := congrArg (fun p : BitPerm n => p (zeroBits n)) hperm
    simpa [HammingIso.toPerm_apply, coordinatePermutation_zero] using hz
  have hcoordinates : g.coordinates = h.coordinates := by
    apply coordinatePermutationHom_injective
    apply Equiv.Perm.ext
    intro x
    have hx := congrArg (fun p : BitPerm n => p x) hperm
    simp only [HammingIso.toPerm_apply] at hx
    rw [hoffset] at hx
    exact (xorBits_cancel_right _ _ h.offset).mp hx
  exact HammingIso.ext hoffset hcoordinates

/-! ## Conjugation -/

/-- Conjugation in explicit function order: `x ↦ g (H (g⁻¹ x))`. -/
def conjugate {n : Nat} (g H : BitPerm n) : BitPerm n :=
  (g.symm.trans H).trans g

@[simp]
theorem conjugate_apply {n : Nat}
    (g H : BitPerm n)
    (x : Bits n) :
    conjugate g H x = g (H (g.symm x)) :=
  rfl

@[simp]
theorem conjugate_one {n : Nat} (g : BitPerm n) :
    conjugate g 1 = 1 := by
  ext x
  simp

@[simp]
theorem conjugate_self {n : Nat} (H : BitPerm n) :
    conjugate 1 H = H := by
  apply Equiv.Perm.ext
  intro x
  simp [conjugate, Equiv.Perm.one_def]

/-- Conjugation commutes with every finite iterate. -/
theorem conjugate_pow {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    (conjugate g H) ^ r = conjugate g (H ^ r) := by
  induction r with
  | zero => simp
  | succ r ih =>
      ext x
      simp only [pow_succ, Equiv.Perm.mul_apply, ih, conjugate_apply]
      simp

/-! ## Avalanche statistics under Hamming-isometric conjugacy

An affine Hamming isometry sends a one-coordinate edge to another
one-coordinate edge.  Its translation cancels in the output difference, so
conjugation merely relabels the derivative table.  This is the special reason
SAC is invariant here; arbitrary conjugacy has no such guarantee.
-/

private theorem HammingIso.toPerm_symm_apply {n : Nat}
    (g : HammingIso n)
    (x : Bits n) :
    g.toPerm.symm x =
      coordinatePermutation g.coordinates.symm (xorBits x g.offset) := by
  rfl

private theorem HammingIso.toPerm_symm_xor_basis {n : Nat}
    (g : HammingIso n)
    (i : Fin n)
    (x : Bits n) :
    g.toPerm.symm (xorBits x (basisBit i)) =
      xorBits (g.toPerm.symm x) (basisBit (g.coordinates.symm i)) := by
  rw [HammingIso.toPerm_symm_apply, HammingIso.toPerm_symm_apply]
  simp only [coordinatePermutation_xor, coordinatePermutation_basisBit]
  rw [xorBits_assoc, xorBits_assoc]
  congr 1
  exact xorBits_comm _ _

private theorem HammingIso.toPerm_xor_cancel {n : Nat}
    (g : HammingIso n)
    (x y : Bits n) :
    xorBits (g.toPerm x) (g.toPerm y) =
      coordinatePermutation g.coordinates (xorBits x y) := by
  rw [HammingIso.toPerm_apply, HammingIso.toPerm_apply,
    xorBits_assoc, ← xorBits_assoc g.offset,
    xorBits_comm g.offset, xorBits_assoc,
    xorBits_self, xorBits_zero_right,
    coordinatePermutation_xor]

/-- A Hamming-isometric conjugacy relabels input and output derivative coordinates. -/
theorem bitDerivative_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i : Fin n)
    (x : Bits n) :
    bitDerivative (conjugate g.toPerm H) i x =
      coordinatePermutation g.coordinates
        (bitDerivative H (g.coordinates.symm i) (g.toPerm.symm x)) := by
  rw [bitDerivative, derivative]
  rw [conjugate_apply, conjugate_apply]
  rw [HammingIso.toPerm_symm_xor_basis]
  rw [HammingIso.toPerm_xor_cancel]
  rfl

private theorem derivativeBit_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i j : Fin n)
    (x : Bits n) :
    derivativeBit (conjugate g.toPerm H) i j x =
      derivativeBit H (g.coordinates.symm i) (g.coordinates.symm j)
        (g.toPerm.symm x) := by
  rw [derivativeBit, bitDerivative_conjugate_hammingIso]
  rfl

/-- SAC counts are invariant up to simultaneous coordinate relabeling. -/
theorem sacCount_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i j : Fin n) :
    sacCount (conjugate g.toPerm H) i j =
      sacCount H (g.coordinates.symm i) (g.coordinates.symm j) := by
  classical
  unfold sacCount
  apply Finset.card_equiv g.toPerm.symm
  intro x
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rw [derivativeBit_conjugate_hammingIso]

/-- Strict SAC is invariant under explicit Hamming-isometric conjugacy. -/
theorem strictSAC_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n) :
    StrictSAC (conjugate g.toPerm H) ↔ StrictSAC H := by
  constructor
  · intro h i j
    have hij := h (g.coordinates i) (g.coordinates j)
    simpa [sacCount_conjugate_hammingIso] using hij
  · intro h i j
    rw [sacCount_conjugate_hammingIso]
    exact h _ _

private theorem sacEntry_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i j : Fin n) :
    sacEntry (conjugate g.toPerm H) i j =
      sacEntry H (g.coordinates.symm i) (g.coordinates.symm j) := by
  simp only [sacEntry, sacCount_conjugate_hammingIso]

private theorem sum_sacEntry_relabel {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (f : ℚ → ℚ) :
    (∑ i : Fin n, ∑ j : Fin n,
      f (sacEntry (conjugate g.toPerm H) i j)) =
    ∑ i : Fin n, ∑ j : Fin n, f (sacEntry H i j) := by
  simp_rw [sacEntry_conjugate_hammingIso]
  calc
    (∑ i : Fin n, ∑ j : Fin n,
      f (sacEntry H (g.coordinates.symm i) (g.coordinates.symm j))) =
        ∑ i : Fin n,
          (fun a => ∑ j : Fin n,
            f (sacEntry H a (g.coordinates.symm j)))
            (g.coordinates.symm i) := rfl
    _ = ∑ a : Fin n, ∑ j : Fin n,
          f (sacEntry H a (g.coordinates.symm j)) :=
      Equiv.sum_comp g.coordinates.symm
        (fun a : Fin n => ∑ j : Fin n,
          f (sacEntry H a (g.coordinates.symm j)))
    _ = ∑ a : Fin n, ∑ j : Fin n, f (sacEntry H a j) := by
      apply Finset.sum_congr rfl
      intro a _
      exact Equiv.sum_comp g.coordinates.symm
        (fun j : Fin n => f (sacEntry H a j))

/-- The absolute-bias SAC score is invariant under Hamming-isometric conjugacy. -/
theorem sacScore_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n) :
    sacScore (conjugate g.toPerm H) = sacScore H := by
  by_cases hn : n = 0
  · simp [sacScore, hn]
  · rw [sacScore, if_neg hn, sacScore, if_neg hn]
    rw [sum_sacEntry_relabel g H (fun s => |2 * s - 1|)]

/-- The variance SAC score is invariant under Hamming-isometric conjugacy. -/
theorem varianceScore_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n) :
    varianceScore (conjugate g.toPerm H) = varianceScore H := by
  by_cases hn : n = 0
  · simp [varianceScore, hn]
  · rw [varianceScore, if_neg hn, varianceScore, if_neg hn]
    rw [sum_sacEntry_relabel g H (fun s => 4 * s * (1 - s))]

end BitMatrix.Algebra.Symmetry
```
