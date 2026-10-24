# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCubical.Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de0c1b052e0bf9d9d5572d55fd6ec74c0a471ad2` · SHA-256 `03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Oracle.Naming.Suture
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Nat.Totient
import Mathlib.Data.ZMod.Basic

/-!
# Cyclic cubical naming data

This module keeps four structures distinct:

* Boolean coordinate rotation on `BitField n`;
* the face poset and its `ZMod 2` cubical chains;
* normed-space signals used for quantitative residuals;
* cyclic characters used to resolve turn frequencies.

The combinatorial declarations in this file quantify over arbitrary finite
dimension.  A turn is an element of `ZMod n`, so the cyclic-action sections
carry `[NeZero n]`.
-/

namespace Mathematics.Oracle.Naming

open scoped BigOperators
open Finset

/-- A Boolean point of the `n`-cube.  This is not a Banach vector. -/
abbrev BitField (n : Nat) := Fin n → Bool

/-- A face address in `{0,1,*}^n`; `none` is the free coordinate `*`. -/
abbrev FaceAddress (n : Nat) := Fin n → Option Bool

namespace FaceAddress

/-- The free coordinates of a cubical face. -/
def freeCoordinates {n : Nat} (face : FaceAddress n) : Finset (Fin n) :=
  Finset.univ.filter fun i ↦ face i = none

/-- Cubical dimension, namely the number of free coordinates. -/
def dimension {n : Nat} (face : FaceAddress n) : Nat :=
  face.freeCoordinates.card

/-- `lower` is a subface of `upper`. -/
def IsSubface {n : Nat} (lower upper : FaceAddress n) : Prop :=
  ∀ i b, upper i = some b → lower i = some b

/-- `lower` is a codimension-one subface of `upper`. -/
def IsFacet {n : Nat} (lower upper : FaceAddress n) : Prop :=
  lower.IsSubface upper ∧ lower.dimension + 1 = upper.dimension

/-- A vertex is incident to a face when it satisfies every fixed coordinate. -/
def Incident {n : Nat} (point : BitField n) (face : FaceAddress n) : Prop :=
  ∀ i b, face i = some b → point i = b

end FaceAddress

/-- The type of `k`-faces represented by face addresses. -/
abbrev CubicalFace (n k : Nat) :=
  {face : FaceAddress n // face.dimension = k}

/-- The number of `k`-faces in the `n`-cube. -/
def faceCount (n k : Nat) : Nat :=
  2 ^ (n - k) * Nat.choose n k

private abbrev FaceEncoding (n k : Nat) :=
  Σ free : {s : Finset (Fin n) // s.card = k},
    ({i : Fin n // i ∉ free.1} → Bool)

private noncomputable def faceEncodingEquiv (n k : Nat) :
    CubicalFace n k ≃ FaceEncoding n k where
  toFun face :=
    ⟨⟨face.1.freeCoordinates, by
        simpa [FaceAddress.dimension] using face.2⟩,
      fun i ↦ (face.1 i.1).getD false⟩
  invFun encoded :=
    ⟨fun i ↦
        if h : i ∈ encoded.1.1 then none
        else some (encoded.2 ⟨i, h⟩),
      by
        change
          (Finset.univ.filter fun i ↦
            (if h : i ∈ encoded.1.1 then none
              else some (encoded.2 ⟨i, h⟩)) = none).card = k
        have hfree :
            (Finset.univ.filter fun i ↦
              (if h : i ∈ encoded.1.1 then none
                else some (encoded.2 ⟨i, h⟩)) = none) = encoded.1.1 := by
          ext i
          by_cases hi : i ∈ encoded.1.1 <;> simp [hi]
        rw [hfree, encoded.1.2]⟩
  left_inv face := by
    apply Subtype.ext
    funext i
    cases hface : face.1 i with
    | none =>
        simp [FaceAddress.freeCoordinates, hface]
    | some bit =>
        simp [FaceAddress.freeCoordinates, hface]
  right_inv encoded := by
    rcases encoded with ⟨⟨free, hcard⟩, fixed⟩
    let rebuilt : FaceAddress n :=
      fun i ↦ if h : i ∈ free then none else some (fixed ⟨i, h⟩)
    have hrebuilt : rebuilt.freeCoordinates = free := by
      ext i
      simp [rebuilt, FaceAddress.freeCoordinates]
    have hfree :
        (⟨rebuilt.freeCoordinates, by simpa [hrebuilt] using hcard⟩ :
          {s : Finset (Fin n) // s.card = k}) = ⟨free, hcard⟩ := by
      apply Subtype.ext
      exact hrebuilt
    apply Sigma.ext hfree
    apply Function.hfunext
    · exact congrArg
        (fun s : {s : Finset (Fin n) // s.card = k} ↦
          {i : Fin n // i ∉ s.1}) hfree
    · intro i j hij
      have hp : ∀ x : Fin n,
          x ∉ rebuilt.freeCoordinates ↔ x ∉ free := by
        intro x
        rw [hrebuilt]
      have hval : i.1 = j.1 := (Subtype.heq_iff_coe_eq hp).1 hij
      rcases i with ⟨i, hi⟩
      rcases j with ⟨j, hj⟩
      simp only at hval
      subst j
      simp [hj]

private theorem card_free_coordinate_sets (n k : Nat) :
    Fintype.card {s : Finset (Fin n) // s.card = k} = Nat.choose n k := by
  classical
  rw [Fintype.card_subtype]
  change (Finset.univ.filter fun s : Finset (Fin n) ↦ s.card = k).card =
    Nat.choose n k
  rw [show (Finset.univ : Finset (Finset (Fin n))) =
      (Finset.univ : Finset (Fin n)).powerset by ext; simp]
  rw [← Finset.powersetCard_eq_filter]
  simp

private theorem card_fixed_assignments
    (n k : Nat) (free : {s : Finset (Fin n) // s.card = k}) :
    Fintype.card ({i : Fin n // i ∉ free.1} → Bool) = 2 ^ (n - k) := by
  classical
  rw [Fintype.card_fun]
  simp only [Fintype.card_bool, Fintype.card_subtype_compl, Fintype.card_fin,
    Fintype.card_coe, free.2]

/-- Exact cardinality of the address representation of `k`-faces. -/
theorem card_faces_eq_faceCount (n k : Nat) :
    Fintype.card (CubicalFace n k) = faceCount n k := by
  classical
  rw [Fintype.card_congr (faceEncodingEquiv n k), Fintype.card_sigma]
  simp_rw [card_fixed_assignments n k]
  rw [Finset.sum_const, Finset.card_univ, card_free_coordinate_sets]
  simp [faceCount, Nat.mul_comm]

/-- Summing the face vector gives the `3^n` face addresses. -/
theorem sum_faceCount_eq_three_pow (n : Nat) :
    ∑ k ∈ Finset.range (n + 1), faceCount n k = 3 ^ n := by
  simpa [faceCount, Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using
    (add_pow (1 : Nat) 2 n).symm

section Rotation

variable {n : Nat} [NeZero n]

/-- The coordinate permutation `i ↦ i+r` on `Fin n`. -/
noncomputable def cyclicCoordinateEquiv (r : ZMod n) : Equiv.Perm (Fin n) where
  toFun i := (ZMod.finEquiv n).symm ((ZMod.finEquiv n i) + r)
  invFun i := (ZMod.finEquiv n).symm ((ZMod.finEquiv n i) - r)
  left_inv i := by simp
  right_inv i := by simp

@[simp] theorem cyclicCoordinateEquiv_zero (i : Fin n) :
    cyclicCoordinateEquiv (0 : ZMod n) i = i := by
  simp [cyclicCoordinateEquiv]

@[simp] theorem cyclicCoordinateEquiv_symm_zero (i : Fin n) :
    (cyclicCoordinateEquiv (0 : ZMod n)).symm i = i := by
  apply (cyclicCoordinateEquiv (0 : ZMod n)).injective
  simp

theorem cyclicCoordinateEquiv_symm (r : ZMod n) :
    (cyclicCoordinateEquiv r).symm = cyclicCoordinateEquiv (-r) := by
  ext i
  simp [cyclicCoordinateEquiv, sub_eq_add_neg]

theorem cyclicCoordinateEquiv_add (r s : ZMod n) :
    cyclicCoordinateEquiv (r + s) =
      (cyclicCoordinateEquiv s).trans (cyclicCoordinateEquiv r) := by
  ext i
  simp [cyclicCoordinateEquiv, add_assoc, add_comm r s]

/-- Pullback action `(ρ_r x)_i = x_{i-r}`. -/
noncomputable def rotateBitField (r : ZMod n) (point : BitField n) : BitField n :=
  point ∘ (cyclicCoordinateEquiv r).symm

/-- The same coordinate pullback on `{0,1,*}` face addresses. -/
noncomputable def rotateFace (r : ZMod n) (face : FaceAddress n) : FaceAddress n :=
  face ∘ (cyclicCoordinateEquiv r).symm

@[simp] theorem rotateBitField_zero (point : BitField n) :
    rotateBitField (0 : ZMod n) point = point := by
  funext i
  simp [rotateBitField]

@[simp] theorem rotateFace_zero (face : FaceAddress n) :
    rotateFace (0 : ZMod n) face = face := by
  funext i
  simp [rotateFace]

theorem rotateBitField_add (r s : ZMod n) (point : BitField n) :
    rotateBitField (r + s) point =
      rotateBitField r (rotateBitField s point) := by
  funext i
  simp [rotateBitField, cyclicCoordinateEquiv_add, Function.comp_apply]

theorem rotateFace_add (r s : ZMod n) (face : FaceAddress n) :
    rotateFace (r + s) face = rotateFace r (rotateFace s face) := by
  funext i
  simp [rotateFace, cyclicCoordinateEquiv_add, Function.comp_apply]

@[simp] theorem rotateBitField_neg_rotateBitField
    (r : ZMod n) (point : BitField n) :
    rotateBitField (-r) (rotateBitField r point) = point := by
  rw [← rotateBitField_add]
  simp

@[simp] theorem rotateFace_neg_rotateFace
    (r : ZMod n) (face : FaceAddress n) :
    rotateFace (-r) (rotateFace r face) = face := by
  rw [← rotateFace_add]
  simp

/-- Rotation preserves face dimension. -/
theorem rotateFace_dimension (r : ZMod n) (face : FaceAddress n) :
    (rotateFace r face).dimension = face.dimension := by
  classical
  unfold FaceAddress.dimension FaceAddress.freeCoordinates
  let e := cyclicCoordinateEquiv r
  have hmap :
      (Finset.univ.filter fun i ↦ rotateFace r face i = none).map e.symm.toEmbedding =
        Finset.univ.filter fun i ↦ face i = none := by
    ext i
    constructor
    · intro hi
      obtain ⟨j, hj, rfl⟩ := Finset.mem_map.1 hi
      simpa [rotateFace, e] using (Finset.mem_filter.1 hj).2
    · intro hi
      refine Finset.mem_map.2 ⟨e i, ?_, by simp⟩
      exact Finset.mem_filter.2 ⟨Finset.mem_univ _, by
        simpa [rotateFace, e] using (Finset.mem_filter.1 hi).2⟩
  rw [← hmap, Finset.card_map]

/-- Rotation is an automorphism of the cubical face-inclusion relation. -/
theorem rotateFace_inclusion (r : ZMod n)
    (lower upper : FaceAddress n) :
    (rotateFace r lower).IsSubface (rotateFace r upper) ↔
      lower.IsSubface upper := by
  constructor
  · intro h i b hi
    have hrot := h (cyclicCoordinateEquiv r i) b
    simpa [rotateFace] using hrot (by simpa [rotateFace] using hi)
  · intro h i b hi
    exact h ((cyclicCoordinateEquiv r).symm i) b hi

/-- Rotation preserves the immediate cubical boundary relation. -/
theorem rotateFace_boundaryRelation (r : ZMod n)
    (lower upper : FaceAddress n) :
    (rotateFace r lower).IsFacet (rotateFace r upper) ↔
      lower.IsFacet upper := by
  simp only [FaceAddress.IsFacet, rotateFace_inclusion, rotateFace_dimension]

/-- Rotation preserves vertex-face incidence. -/
theorem rotateFace_incidence (r : ZMod n)
    (point : BitField n) (face : FaceAddress n) :
    FaceAddress.Incident (rotateBitField r point) (rotateFace r face) ↔
      FaceAddress.Incident point face := by
  constructor
  · intro h i b hi
    have hrot := h (cyclicCoordinateEquiv r i) b
    simpa [rotateBitField, rotateFace] using hrot (by simpa [rotateFace] using hi)
  · intro h i b hi
    exact h ((cyclicCoordinateEquiv r).symm i) b hi

/--
Rotation preserves the common vertex set of two faces, hence their
intersection whenever it is nonempty.
-/
theorem rotateFace_commonIncidence (r : ZMod n)
    (point : BitField n) (left right : FaceAddress n) :
    (FaceAddress.Incident (rotateBitField r point) (rotateFace r left) ∧
        FaceAddress.Incident (rotateBitField r point) (rotateFace r right)) ↔
      (FaceAddress.Incident point left ∧
        FaceAddress.Incident point right) := by
  simp only [rotateFace_incidence]

/-- F₂-valued chains on all nonempty cubical faces. -/
abbrev CubicalChain (n : Nat) := FaceAddress n → ZMod 2

/-- Rotation of a chain by inverse pullback. -/
noncomputable def rotate_chainMap (r : ZMod n) (chain : CubicalChain n) :
    CubicalChain n :=
  fun face ↦ chain (rotateFace (-r) face)

/-- The F₂ cubical boundary operator, expressed by immediate face incidence. -/
noncomputable def cubicalBoundary (chain : CubicalChain n) : CubicalChain n :=
  by
    classical
    exact fun lower ↦
      ∑ upper : FaceAddress n,
        if lower.IsFacet upper then chain upper else 0

/-- Coordinate rotation is a chain map: `∂ R_r = R_r ∂`. -/
theorem boundary_rotate (r : ZMod n) (chain : CubicalChain n) :
    cubicalBoundary (rotate_chainMap r chain) =
      rotate_chainMap r (cubicalBoundary chain) := by
  funext lower
  classical
  unfold cubicalBoundary rotate_chainMap
  let e : FaceAddress n ≃ FaceAddress n :=
    { toFun := rotateFace (-r)
      invFun := rotateFace r
      left_inv := by
        intro face
        simpa using rotateFace_neg_rotateFace (-r) face
      right_inv := by
        intro face
        exact rotateFace_neg_rotateFace r face }
  exact Fintype.sum_equiv e _ _ (fun upper ↦ by
    rw [show rotateFace (-r) upper = e upper by rfl]
    by_cases h : lower.IsFacet upper
    · have h' : (rotateFace (-r) lower).IsFacet (e upper) := by
        simpa [e] using (rotateFace_boundaryRelation (-r) lower upper).2 h
      simp [h, h']
    · have h' : ¬(rotateFace (-r) lower).IsFacet (e upper) := by
        intro hrot
        exact h ((rotateFace_boundaryRelation (-r) lower upper).1
          (by simpa [e] using hrot))
      simp [h, h'])

/-- Rotational equivalence uses one global cyclic turn. -/
def rotationEquivalent (left right : BitField n) : Prop :=
  ∃ r : ZMod n, right = rotateBitField r left

private def toy1010 : BitField 4
  | ⟨0, _⟩ => true
  | ⟨1, _⟩ => false
  | ⟨2, _⟩ => true
  | _ => false

private def toy0101 : BitField 4
  | ⟨0, _⟩ => false
  | ⟨1, _⟩ => true
  | ⟨2, _⟩ => false
  | _ => true

/-- The review fixture: `1010` turns to `0101` by one coordinate. -/
theorem toy_1010_rotates_to_0101 :
    rotateBitField (1 : ZMod 4) toy1010 = toy0101 := by
  decide

end Rotation

/-- Arithmetic Burnside evaluation for binary necklaces. -/
def rotationOrbitCount (n : Nat) : Nat :=
  if n = 0 then 1
  else (∑ d ∈ n.divisors, Nat.totient d * 2 ^ (n / d)) / n

/-- Arithmetic Burnside evaluation for rotational classes of `k`-faces. -/
def rotationKFaceOrbitCount (n k : Nat) : Nat :=
  if n = 0 then if k = 0 then 1 else 0
  else
    (∑ d ∈ (Nat.gcd n k).divisors,
      Nat.totient d * Nat.choose (n / d) (k / d) * 2 ^ ((n - k) / d)) / n

/-- The explicit Burnside formula used by `rotationKFaceOrbitCount`. -/
theorem rotationKFaceOrbitCount_burnside
    (n k : Nat) (hn : n ≠ 0) :
    rotationKFaceOrbitCount n k =
      (∑ d ∈ (Nat.gcd n k).divisors,
        Nat.totient d * Nat.choose (n / d) (k / d) * 2 ^ ((n - k) / d)) / n := by
  simp [rotationKFaceOrbitCount, hn]

end Mathematics.Oracle.Naming
```
