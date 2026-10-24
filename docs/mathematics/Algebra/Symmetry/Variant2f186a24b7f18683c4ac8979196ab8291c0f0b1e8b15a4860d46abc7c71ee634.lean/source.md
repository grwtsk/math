# Complete source: GRWTSK.Algebra.Symmetry.Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da9611ccbb419b3dfd0f0629058f4387d0db54e1` · SHA-256 `2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.PermutationNetwork
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Finite symmetries of Boolean state spaces

This module separates the group theory of finite state permutations from the
avalanche statistics defined in `BinaryMatrix.Avalanche`.  Since `Bits n` has
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

namespace Symmetry

open SATReduction
open Avalanche
open PermutationNetwork
open scoped BigOperators

/-- The full permutation group of the `n`-bit state space. -/
abbrev BitPerm (n : Nat) := Equiv.Perm (Bits n)

/-- Promote a function whose bijectivity has been proved to a state permutation. -/
noncomputable def BitPerm.ofBijective {n : Nat}
    (H : Bits n → Bits n)
    (hH : Function.Bijective H) :
    BitPerm n :=
  Equiv.ofBijective H hH

@[simp]
theorem BitPerm.ofBijective_apply {n : Nat}
    (H : Bits n → Bits n)
    (hH : Function.Bijective H)
    (x : Bits n) :
    BitPerm.ofBijective H hH x = H x :=
  rfl

/-! ## An explicit XOR group

`Bits n` remains the project's plain function type.  The distinct wrapper
below supplies the group structure needed for translations without installing
global algebraic instances on `Bits n` itself.
-/

/-- Bit vectors regarded as the elementary abelian XOR group. -/
def XorGroup (n : Nat) := Bits n

namespace XorGroup

instance {n : Nat} : One (XorGroup n) :=
  ⟨zeroBits n⟩

instance {n : Nat} : Mul (XorGroup n) :=
  ⟨xorBits⟩

instance {n : Nat} : Inv (XorGroup n) :=
  ⟨id⟩

instance {n : Nat} : CommGroup (XorGroup n) where
  mul_assoc := xorBits_assoc
  one_mul := xorBits_zero_left
  mul_one := xorBits_zero_right
  inv_mul_cancel x := xorBits_self x
  mul_comm := xorBits_comm

/-- Forget the explicit group wrapper. -/
def toBits {n : Nat} : XorGroup n ≃ Bits n :=
  Equiv.refl _

@[simp]
theorem one_toBits {n : Nat} :
    toBits (1 : XorGroup n) = zeroBits n :=
  rfl

@[simp]
theorem mul_toBits {n : Nat} (x y : XorGroup n) :
    toBits (x * y) = xorBits (toBits x) (toBits y) :=
  rfl

@[simp]
theorem inv_eq {n : Nat} (x : XorGroup n) : x⁻¹ = x :=
  rfl

end XorGroup

/-!
The pinned Mathlib release has no bundled `M ↪* N` type.  This minimal
wrapper packages a monoid homomorphism together with its faithfulness proof.
-/

/-- A monoid homomorphism bundled with a proof that it is injective. -/
structure MonoidEmbedding (M N : Type*) [MulOne M] [MulOne N]
    extends M →* N where
  injective' : Function.Injective toFun

infixr:25 " ↪* " => MonoidEmbedding

namespace MonoidEmbedding

instance {M N : Type*} [MulOne M] [MulOne N] :
    CoeFun (M ↪* N) (fun _ => M → N) :=
  ⟨fun f => f.toFun⟩

/-- Every bundled monoid embedding is faithful. -/
theorem injective {M N : Type*} [MulOne M] [MulOne N]
    (f : M ↪* N) : Function.Injective f :=
  f.injective'

end MonoidEmbedding

/-! ## Translation subgroup -/

@[simp]
theorem translation_mul_apply {n : Nat}
    (δ γ : XorGroup n)
    (x : Bits n) :
    (xorTranslation (XorGroup.toBits δ) *
      xorTranslation (XorGroup.toBits γ)) x =
    xorTranslation (XorGroup.toBits (δ * γ)) x := by
  simp only [Equiv.Perm.mul_apply, xorTranslation_apply,
    XorGroup.mul_toBits]
  rw [xorBits_assoc, xorBits_comm (XorGroup.toBits γ)]

/-- XOR translations as a group homomorphism into all state permutations. -/
def translationHom {n : Nat} : XorGroup n →* BitPerm n :=
  MonoidHom.mk'
    (fun δ => xorTranslation (XorGroup.toBits δ))
    (fun δ γ => by
      apply Equiv.Perm.ext
      intro x
      exact (translation_mul_apply δ γ x).symm)

@[simp]
theorem translationHom_apply {n : Nat}
    (δ : XorGroup n)
    (x : Bits n) :
    translationHom δ x = xorBits x (XorGroup.toBits δ) :=
  rfl

/-- Distinct XOR offsets induce distinct state permutations. -/
theorem translationHom_injective {n : Nat} :
    Function.Injective (translationHom (n := n)) := by
  intro δ γ h
  apply XorGroup.toBits.injective
  have hx := congrArg (fun p : BitPerm n => p (zeroBits n)) h
  simpa using hx

/-- The translation subgroup as a faithful embedded copy of `C₂^n`. -/
def translationEmbedding {n : Nat} : XorGroup n ↪* BitPerm n where
  toMonoidHom := translationHom
  injective' := translationHom_injective

@[simp]
theorem translationHom_one {n : Nat} :
    translationHom (1 : XorGroup n) = 1 :=
  map_one translationHom

theorem translation_comm {n : Nat} (δ γ : XorGroup n) :
    translationHom δ * translationHom γ =
      translationHom γ * translationHom δ := by
  rw [← map_mul, mul_comm, map_mul]

theorem translation_order_two {n : Nat} (δ : XorGroup n) :
    translationHom δ * translationHom δ = 1 := by
  rw [← map_mul]
  have hself : δ * δ = (1 : XorGroup n) := by
    apply XorGroup.toBits.injective
    simp [XorGroup.mul_toBits]
  rw [hself, map_one]

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

/-! ## Fixed points

Cycle data begins with fixed points of iterates.  Conjugacy transports these
points bijectively, so their counts are invariant even when avalanche data is
not.
-/

/-- States fixed by the `r`-th iterate. -/
def fixedPoints {n : Nat} (H : BitPerm n) (r : Nat) : Finset (Bits n) :=
  Finset.univ.filter fun x => (H ^ r) x = x

/-- Number of states fixed by the `r`-th iterate. -/
def fixedPointCount {n : Nat} (H : BitPerm n) (r : Nat) : Nat :=
  (fixedPoints H r).card

theorem mem_fixedPoints_iff {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    x ∈ fixedPoints H r ↔ (H ^ r) x = x := by
  simp [fixedPoints]

@[simp]
theorem fixedPoints_zero {n : Nat} (H : BitPerm n) :
    fixedPoints H 0 = Finset.univ := by
  ext x
  simp [fixedPoints]

@[simp]
theorem fixedPointCount_zero {n : Nat} (H : BitPerm n) :
    fixedPointCount H 0 = 2 ^ n := by
  simp [fixedPointCount]

/-- An iterate cannot fix more states than the whole Boolean state space. -/
theorem fixedPointCount_le {n : Nat} (H : BitPerm n) (r : Nat) :
    fixedPointCount H r ≤ 2 ^ n := by
  rw [← Avalanche.card_bits n, ← Finset.card_univ]
  exact Finset.card_le_card (Finset.filter_subset _ _)

/-- Conjugate state permutations have the same fixed-point counts at every time. -/
theorem fixedPointCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    fixedPointCount (conjugate g H) r = fixedPointCount H r := by
  classical
  unfold fixedPointCount
  apply Finset.card_equiv g.symm
  intro x
  simp only [mem_fixedPoints_iff]
  rw [conjugate_pow, conjugate_apply]
  constructor
  · intro hx
    apply g.injective
    simpa using hx
  · intro hx
    simpa using congrArg g hx

@[simp]
theorem fixedPointCount_identity {n : Nat} (r : Nat) :
    fixedPointCount (1 : BitPerm n) r = 2 ^ n := by
  simp [fixedPointCount, fixedPoints]

end Symmetry
```
