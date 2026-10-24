# Complete source: GRWTSK.Algebra.LinearAlgebra.CyclicPrimeWalk.Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `788ce4bb18ec18c19f5c3e76a884f0beff5552e8` · SHA-256 `18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
module

public meta import Surface.Core.Classification
public import Surface.Core.CyclicFiberHop
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
public import Mathlib.Algebra.Module.Submodule.Equiv
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.ToLin
public import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

/-!
# The exact two-dimensional algebra of the residue-six `S₃` walk

This file isolates the finite-dimensional calculation suggested by assigning
the two reduced prime residue classes modulo six to the two adjacent
transpositions in the permutation representation of `S₃`.

The permutation representation on `Fiber3 = ℝ³` splits into the fixed line
spanned by `(1, 1, 1)` and the standard plane `x + y + z = 0`.  In an
orthonormal coordinate system on that plane adapted to the first reflection,
the two reflection matrices are

```
M₁ = [ 1       0     ]      M₅ = [ -1/2   √3/2 ]
     [ 0      -1     ]           [  √3/2   1/2 ] .
```

Their fixed axes have unit representatives `(1, 0)` and `(1/2, √3/2)`.
Thus the axes are separated by `π/3`, not `2π/3`; the *product* of the two
reflections is the rotation through `2π/3` (up to composition orientation).

Each reflection and every product of reflections preserves Euclidean norm.
The arithmetic mean is not a group action: it contracts the standard plane
by the factor `1/2`.  Its displayed eigenvectors have eigenvalues `1/2` and
`-1/2`.

The assignment `1 mod 6 ↦ adjacentSwap01`, `5 mod 6 ↦ adjacentSwap12` is a
modeling convention, not canonical arithmetic structure.  The empirical
average also forgets the order of the input word and is not `streamTransport`
or monodromy.  On the finite group, the corresponding non-lazy walk generated
only by transpositions remains parity-periodic (even and odd permutations
alternate), even though its expected vector on the standard summand contracts.

For an empirical residue-one weight `q`, the discrepancy from the fair
average is exactly

```
(q - 1/2) • (M₁ - M₅).
```

Its trace is always zero, while its determinant and squared norm depend only
on `(q - 1/2)²`.  Those observables therefore lose the sign of a finite-sample
bias.  The signed observable defined below uses the `(0,0)` matrix entry and
recovers `q - 1/2` exactly.

The residue selector deliberately returns no matrix for `2` or `3`; those
primes are not units modulo six and must be excluded before forming the two-
class empirical weight.  This module proves no prime-number theorem, no
Chebyshev-bias theorem, no zero-free region, and no GRH equivalence.  Such
analytic statements would require separately formalized estimates connecting
prime counts to `q`; the matrix identities here remain an exact conditional
translation once such a weight is supplied.
-/

public section

namespace Surface.Core.CyclicPrimeWalk

noncomputable section

open Surface.Core.CyclicFiberHop

/-- The exact radical appearing in the orthonormal coordinate presentation. -/
@[expose]
def sqrtThree : ℝ :=
  Real.sqrt 3

@[surface_novel, surface_published]
theorem sqrtThree_sq : sqrtThree ^ 2 = 3 := by
  unfold sqrtThree
  exact Real.sq_sqrt (by norm_num)

@[surface_novel, surface_published]
theorem sqrtThree_mul_self : sqrtThree * sqrtThree = 3 := by
  simpa [pow_two] using sqrtThree_sq

/-! ## The invariant summands inside the existing three-fiber -/

/-- Coordinates on the two-dimensional standard summand of the `S₃` fiber. -/
abbrev StandardCoord := Fin 2 → ℝ

/-- Real two-by-two matrices acting on standard-plane coordinates. -/
abbrev StandardMatrix := Matrix (Fin 2) (Fin 2) ℝ

/-- The fixed vector spanning the trivial summand of the permutation
representation. -/
@[expose]
def trivialFiberVector : Fiber3 :=
  ![1, 1, 1]

/-- Membership in the standard plane `x + y + z = 0`. -/
@[expose]
def InStandardPlane (x : Fiber3) : Prop :=
  x 0 + x 1 + x 2 = 0

/-- The coordinate-sum functional.  Its kernel, rather than a manually
assembled carrier proof, is the authoritative standard `S₃` summand. -/
@[expose]
def coordinateSum : Fiber3 →ₗ[ℝ] ℝ where
  toFun x := ∑ i, x i
  map_add' x y := by simp [Finset.sum_add_distrib]
  map_smul' c x := by simp [Finset.mul_sum]

/-- The invariant standard plane as the kernel of the coordinate sum. -/
@[expose]
def zeroSumSubspace : Submodule ℝ Fiber3 :=
  LinearMap.ker coordinateSum

@[surface_novel, surface_published, simp]
theorem mem_zeroSumSubspace_iff (x : Fiber3) :
    x ∈ zeroSumSubspace ↔ InStandardPlane x := by
  simp [zeroSumSubspace, coordinateSum, InStandardPlane, Fin.sum_univ_three]

/-- Reindexing coordinates by any permutation preserves their sum. -/
@[surface_novel, surface_published]
theorem coordinateSum_permutationRepresentation (σ : Equiv.Perm (Fin 3))
    (x : Fiber3) :
    coordinateSum (permutationRepresentation σ x) = coordinateSum x := by
  change (∑ i, x (σ.symm i)) = ∑ i, x i
  exact σ.symm.sum_comp x

/-- The entire permutation representation, not only its adjacent
generators, preserves the standard plane. -/
@[surface_novel, surface_published]
theorem permutationRepresentation_preserves_zeroSum
    (σ : Equiv.Perm (Fin 3)) (x : Fiber3) (hx : x ∈ zeroSumSubspace) :
    permutationRepresentation σ x ∈ zeroSumSubspace := by
  change coordinateSum (permutationRepresentation σ x) = 0
  change coordinateSum x = 0 at hx
  rw [coordinateSum_permutationRepresentation]
  exact hx

@[surface_novel, surface_published]
theorem permutationRepresentation_symm (σ : Equiv.Perm (Fin 3)) :
    (permutationRepresentation σ).symm = permutationRepresentation σ.symm := by
  apply LinearEquiv.ext
  intro x
  funext i
  rfl

/-- A permutation maps the standard plane onto itself, not merely into it. -/
@[surface_novel, surface_published]
theorem zeroSumSubspace_map_permutationRepresentation
    (σ : Equiv.Perm (Fin 3)) :
    zeroSumSubspace.map (permutationRepresentation σ : Fiber3 →ₗ[ℝ] Fiber3) =
      zeroSumSubspace := by
  apply le_antisymm
  · rintro y ⟨x, hx, rfl⟩
    exact permutationRepresentation_preserves_zeroSum σ x hx
  · intro x hx
    refine ⟨(permutationRepresentation σ).symm x, ?_, ?_⟩
    · rw [permutationRepresentation_symm]
      exact permutationRepresentation_preserves_zeroSum σ.symm x hx
    · exact (permutationRepresentation σ).apply_symm_apply x

/-- Restriction of a coordinate permutation to the standard two-dimensional
summand.  The construction uses `submoduleMap` through
`LinearEquiv.ofSubmodules`; no coordinates are chosen here. -/
@[expose]
def restrictedPermutation (σ : Equiv.Perm (Fin 3)) :
    zeroSumSubspace ≃ₗ[ℝ] zeroSumSubspace :=
  (permutationRepresentation σ).ofSubmodules zeroSumSubspace zeroSumSubspace
    (zeroSumSubspace_map_permutationRepresentation σ)

@[surface_novel, surface_published, simp]
theorem restrictedPermutation_coe (σ : Equiv.Perm (Fin 3))
    (x : zeroSumSubspace) :
    ((restrictedPermutation σ x : zeroSumSubspace) : Fiber3) =
      permutationRepresentation σ x :=
  rfl

/-- The coordinate-free standard representation as a genuine group-valued
monoid homomorphism. -/
@[expose]
def standardPermutationRepresentation :
    Equiv.Perm (Fin 3) →* (zeroSumSubspace ≃ₗ[ℝ] zeroSumSubspace) where
  toFun := restrictedPermutation
  map_one' := by
    apply LinearEquiv.ext
    intro x
    apply Subtype.ext
    simp
  map_mul' σ τ := by
    apply LinearEquiv.ext
    intro x
    apply Subtype.ext
    simp

/-- First standard-plane basis vector before the common normalization by
`√6`. -/
@[expose]
def standardBasisU : Fiber3 :=
  ![1, 1, -2]

/-- Second standard-plane basis vector before the common normalization by
`√6`.  It equals `√3 • (1,-1,0)`, so common normalization gives
`(1,-1,0)/√2`. -/
@[expose]
def standardBasisV : Fiber3 :=
  ![sqrtThree, -sqrtThree, 0]

@[surface_novel, surface_published]
theorem adjacentSwaps_fix_trivialFiberVector :
    permutationRepresentation adjacentSwap01 trivialFiberVector =
        trivialFiberVector ∧
      permutationRepresentation adjacentSwap12 trivialFiberVector =
        trivialFiberVector := by
  constructor <;> funext i <;> fin_cases i <;>
    rfl

@[surface_novel, surface_published]
theorem standardBasisU_mem : InStandardPlane standardBasisU := by
  norm_num [InStandardPlane, standardBasisU, Matrix.cons_val_two]

@[surface_novel, surface_published]
theorem standardBasisV_mem : InStandardPlane standardBasisV := by
  simp [InStandardPlane, standardBasisV]

/--
Every vector in the standard plane has explicit coordinates in `(u,v)`.
Together with the two membership lemmas, this proves that the displayed pair
spans the invariant two-dimensional summand rather than merely lying in it.
-/
@[surface_novel, surface_published]
theorem standardPlane_coordinates (x : Fiber3) (hx : InStandardPlane x) :
    x = (-x 2 / 2 : ℝ) • standardBasisU +
      (((x 0 - x 1) * sqrtThree / 6 : ℝ) • standardBasisV) := by
  unfold InStandardPlane at hx
  have hscale (a : ℝ) : a * sqrtThree / 6 * sqrtThree = a / 2 := by
    calc
      a * sqrtThree / 6 * sqrtThree = a * (sqrtThree * sqrtThree) / 6 := by ring
      _ = a * 3 / 6 := by rw [sqrtThree_mul_self]
      _ = a / 2 := by ring
  funext i
  fin_cases i
  · simp [standardBasisU, standardBasisV]
    rw [hscale]
    exact (eq_of_sub_eq_zero (by linarith [hx])).symm
  · simp [standardBasisU, standardBasisV]
    rw [hscale]
    linarith [hx]
  · simp [standardBasisU, standardBasisV]

@[surface_novel, surface_published]
theorem standardBasisU_mem_zeroSum : standardBasisU ∈ zeroSumSubspace := by
  rw [mem_zeroSumSubspace_iff]
  exact standardBasisU_mem

@[surface_novel, surface_published]
theorem standardBasisV_mem_zeroSum : standardBasisV ∈ zeroSumSubspace := by
  rw [mem_zeroSumSubspace_iff]
  exact standardBasisV_mem

/-- Coordinate synthesis and analysis for the ordered algebraic basis
`u = (1,1,-2)`, `v = (√3,-√3,0)`.  Both vectors have squared Euclidean
length six, so the common normalization by `√6` produces precisely the
ordered orthonormal vectors stated in the manuscript while leaving every
matrix below unchanged. -/
@[expose]
def standardPlaneEquiv : StandardCoord ≃ₗ[ℝ] zeroSumSubspace where
  toFun c :=
    ⟨c 0 • standardBasisU + c 1 • standardBasisV, by
      exact zeroSumSubspace.add_mem
        (zeroSumSubspace.smul_mem (c 0) standardBasisU_mem_zeroSum)
        (zeroSumSubspace.smul_mem (c 1) standardBasisV_mem_zeroSum)⟩
  invFun x :=
    ![-x.1 2 / 2, (x.1 0 - x.1 1) * sqrtThree / 6]
  left_inv c := by
    funext i
    fin_cases i
    · simp [standardBasisU, standardBasisV, Matrix.cons_val_two]
    · simp [standardBasisU, standardBasisV, Matrix.cons_val_two]
      calc
        (c 1 * sqrtThree + c 1 * sqrtThree) * sqrtThree / 6 =
            c 1 * (sqrtThree * sqrtThree) / 3 := by ring
        _ = c 1 := by rw [sqrtThree_mul_self]; ring
  right_inv x := by
    apply Subtype.ext
    exact (standardPlane_coordinates x.1
      ((mem_zeroSumSubspace_iff x.1).mp x.2)).symm
  map_add' x y := by
    apply Subtype.ext
    change (x 0 + y 0) • standardBasisU + (x 1 + y 1) • standardBasisV =
      (x 0 • standardBasisU + x 1 • standardBasisV) +
        (y 0 • standardBasisU + y 1 • standardBasisV)
    module
  map_smul' c x := by
    apply Subtype.ext
    change (c * x 0) • standardBasisU + (c * x 1) • standardBasisV =
      c • (x 0 • standardBasisU + x 1 • standardBasisV)
    module

/-- A genuine `Fin 2`-indexed basis of the kernel-defined standard plane. -/
@[expose]
def standardPlaneBasis : Module.Basis (Fin 2) ℝ zeroSumSubspace :=
  Module.Basis.ofEquivFun standardPlaneEquiv.symm

@[surface_novel, surface_published]
theorem standardPlaneBasis_zero :
    ((standardPlaneBasis 0 : zeroSumSubspace) : Fiber3) = standardBasisU := by
  funext i
  fin_cases i <;>
    simp [standardPlaneBasis, standardPlaneEquiv, standardBasisU]

@[surface_novel, surface_published]
theorem standardPlaneBasis_one :
    ((standardPlaneBasis 1 : zeroSumSubspace) : Fiber3) = standardBasisV := by
  funext i
  fin_cases i <;>
    simp [standardPlaneBasis, standardPlaneEquiv, standardBasisV]

/-- The `1 mod 6` modeling generator fixes `u`. -/
@[surface_novel, surface_published]
theorem adjacentSwap01_standardBasisU :
    permutationRepresentation adjacentSwap01 standardBasisU = standardBasisU := by
  funext i
  fin_cases i <;> rfl

/-- The `1 mod 6` modeling generator negates `v`. -/
@[surface_novel, surface_published]
theorem adjacentSwap01_standardBasisV :
    permutationRepresentation adjacentSwap01 standardBasisV = -standardBasisV := by
  funext i
  fin_cases i <;> simp [permutationRepresentation, permuteFiber,
    adjacentSwap01, standardBasisV, Equiv.swap_apply_def,
    Matrix.cons_val_two]

/-- First column of the `5 mod 6` reflection matrix in the `(u,v)` basis. -/
@[surface_novel, surface_published]
theorem adjacentSwap12_standardBasisU :
    permutationRepresentation adjacentSwap12 standardBasisU =
      (-1 / 2 : ℝ) • standardBasisU + (sqrtThree / 2) • standardBasisV := by
  funext i
  fin_cases i <;>
    simp [permutationRepresentation, permuteFiber, adjacentSwap12,
      standardBasisU, standardBasisV, Equiv.swap_apply_def,
      Matrix.cons_val_two] <;> nlinarith [sqrtThree_sq]

/-- Second column of the `5 mod 6` reflection matrix in the `(u,v)` basis. -/
@[surface_novel, surface_published]
theorem adjacentSwap12_standardBasisV :
    permutationRepresentation adjacentSwap12 standardBasisV =
      (sqrtThree / 2) • standardBasisU + (1 / 2 : ℝ) • standardBasisV := by
  funext i
  fin_cases i <;>
    simp [permutationRepresentation, permuteFiber, adjacentSwap12,
      standardBasisU, standardBasisV, Equiv.swap_apply_def,
      Matrix.cons_val_two] <;> nlinarith [sqrtThree_sq]

/-- The reflection assigned to the residue class `1 mod 6`. -/
@[expose]
def residueOneReflection : StandardMatrix :=
  !![1, 0;
     0, -1]

/-- The reflection assigned to the residue class `5 mod 6`. -/
@[expose]
def residueFiveReflection : StandardMatrix :=
  !![-1 / 2, sqrtThree / 2;
      sqrtThree / 2, 1 / 2]

/-- The first adjacent transposition restricted to the kernel-defined
standard plane. -/
@[expose]
def restrictedSwap01 : zeroSumSubspace ≃ₗ[ℝ] zeroSumSubspace :=
  restrictedPermutation adjacentSwap01

/-- The second adjacent transposition restricted to the kernel-defined
standard plane. -/
@[expose]
def restrictedSwap12 : zeroSumSubspace ≃ₗ[ℝ] zeroSumSubspace :=
  restrictedPermutation adjacentSwap12

/-- Exact matrix extraction from the coordinate-free restricted action. -/
@[surface_novel, surface_published]
theorem restrictedSwap01_toMatrix :
    LinearMap.toMatrix standardPlaneBasis standardPlaneBasis
        restrictedSwap01.toLinearMap =
      residueOneReflection := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [LinearMap.toMatrix_apply, restrictedSwap01, restrictedPermutation,
      standardPlaneBasis, standardPlaneEquiv, residueOneReflection,
      permutationRepresentation, permuteFiber, adjacentSwap01,
      standardBasisU, standardBasisV, Equiv.swap_apply_def,
      Matrix.cons_val_two]
  all_goals nlinarith [sqrtThree_sq]

/-- Exact matrix extraction from the coordinate-free restricted action. -/
@[surface_novel, surface_published]
theorem restrictedSwap12_toMatrix :
    LinearMap.toMatrix standardPlaneBasis standardPlaneBasis
        restrictedSwap12.toLinearMap =
      residueFiveReflection := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [LinearMap.toMatrix_apply, restrictedSwap12, restrictedPermutation,
      standardPlaneBasis, standardPlaneEquiv, residueFiveReflection,
      permutationRepresentation, permuteFiber, adjacentSwap12,
      standardBasisU, standardBasisV, Equiv.swap_apply_def,
      Matrix.cons_val_two]
  all_goals nlinarith [sqrtThree_sq]

/-- Squared Euclidean norm in standard-plane coordinates. -/
@[expose]
def coordNormSq (v : StandardCoord) : ℝ :=
  v 0 ^ 2 + v 1 ^ 2

/-- Euclidean inner product in standard-plane coordinates. -/
@[expose]
def coordInner (v w : StandardCoord) : ℝ :=
  v 0 * w 0 + v 1 * w 1

/-- A unit vector spanning the fixed axis of `residueOneReflection`. -/
@[expose]
def residueOneAxis : StandardCoord :=
  ![1, 0]

/-- A unit vector spanning the fixed axis of `residueFiveReflection`. -/
@[expose]
def residueFiveAxis : StandardCoord :=
  ![1 / 2, sqrtThree / 2]

@[surface_novel, surface_published]
theorem residueOneAxis_unit : coordNormSq residueOneAxis = 1 := by
  norm_num [coordNormSq, residueOneAxis]

@[surface_novel, surface_published]
theorem residueFiveAxis_unit : coordNormSq residueFiveAxis = 1 := by
  simp [coordNormSq, residueFiveAxis]
  nlinarith [sqrtThree_sq]

/-- The exact cosine `1/2` records an axis separation of `π/3`. -/
@[surface_novel, surface_published]
theorem reflectionAxes_inner :
    coordInner residueOneAxis residueFiveAxis = 1 / 2 := by
  norm_num [coordInner, residueOneAxis, residueFiveAxis]

/-- The fixed-axis inner product is exactly `cos (π / 3)`. -/
@[surface_novel, surface_published]
theorem reflectionAxes_inner_eq_cos_pi_div_three :
    coordInner residueOneAxis residueFiveAxis = Real.cos (Real.pi / 3) := by
  rw [reflectionAxes_inner, Real.cos_pi_div_three]

@[surface_novel, surface_published]
theorem residueOne_fixes_axis :
    Matrix.mulVec residueOneReflection residueOneAxis = residueOneAxis := by
  funext i
  fin_cases i <;>
    norm_num [residueOneReflection, residueOneAxis, Matrix.mulVec,
      dotProduct, Fin.sum_univ_two]

@[surface_novel, surface_published]
theorem residueFive_fixes_axis :
    Matrix.mulVec residueFiveReflection residueFiveAxis = residueFiveAxis := by
  funext i
  fin_cases i <;>
    simp [residueFiveReflection, residueFiveAxis, Matrix.mulVec,
      dotProduct, Fin.sum_univ_two] <;> nlinarith [sqrtThree_sq]

/-- Each residue-class generator is an involutive reflection. -/
@[surface_novel, surface_published]
theorem residueOneReflection_sq :
    residueOneReflection * residueOneReflection = (1 : StandardMatrix) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [residueOneReflection, Matrix.mul_apply, Fin.sum_univ_two]

/-- Each residue-class generator is an involutive reflection. -/
@[surface_novel, surface_published]
theorem residueFiveReflection_sq :
    residueFiveReflection * residueFiveReflection = (1 : StandardMatrix) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [residueFiveReflection, Matrix.mul_apply, Fin.sum_univ_two] <;>
    nlinarith [sqrtThree_sq]

@[surface_novel, surface_published]
theorem residueOneReflection_det :
    Matrix.det residueOneReflection = -1 := by
  rw [Matrix.det_fin_two]
  norm_num [residueOneReflection]

@[surface_novel, surface_published]
theorem residueFiveReflection_det :
    Matrix.det residueFiveReflection = -1 := by
  rw [Matrix.det_fin_two]
  simp [residueFiveReflection]
  nlinarith [sqrtThree_sq]

/-- The first reflection preserves squared Euclidean norm exactly. -/
@[surface_novel, surface_published]
theorem residueOneReflection_normSq (v : StandardCoord) :
    coordNormSq (Matrix.mulVec residueOneReflection v) = coordNormSq v := by
  simp [coordNormSq, residueOneReflection, Matrix.mulVec, dotProduct,
    Fin.sum_univ_two]

/-- The second reflection preserves squared Euclidean norm exactly. -/
@[surface_novel, surface_published]
theorem residueFiveReflection_normSq (v : StandardCoord) :
    coordNormSq (Matrix.mulVec residueFiveReflection v) = coordNormSq v := by
  simp [coordNormSq, residueFiveReflection, Matrix.mulVec, dotProduct,
    Fin.sum_univ_two]
  nlinarith [sqrtThree_sq]

/-- Select either of the two reflection generators. -/
@[expose]
def chosenReflection (chooseOne : Bool) : StandardMatrix :=
  if chooseOne then residueOneReflection else residueFiveReflection

@[surface_novel, surface_published]
theorem chosenReflection_normSq (chooseOne : Bool) (v : StandardCoord) :
    coordNormSq (Matrix.mulVec (chosenReflection chooseOne) v) = coordNormSq v := by
  cases chooseOne <;>
    simp [chosenReflection, residueOneReflection_normSq,
      residueFiveReflection_normSq]

@[surface_novel, surface_published]
theorem chosenReflection_det (chooseOne : Bool) :
    Matrix.det (chosenReflection chooseOne) = -1 := by
  cases chooseOne <;>
    simp [chosenReflection, residueOneReflection_det,
      residueFiveReflection_det]

/-- Chronological product of a finite choice word.  This is an actual product
of reflections, unlike `empiricalTransition`, which is their average. -/
@[expose]
def reflectionProduct (choice : ℕ → Bool) : ℕ → StandardMatrix
  | 0 => 1
  | n + 1 => chosenReflection (choice n) * reflectionProduct choice n

/-- Every finite reflection word preserves squared norm. -/
@[surface_novel, surface_published]
theorem reflectionProduct_normSq (choice : ℕ → Bool) (n : ℕ)
    (v : StandardCoord) :
    coordNormSq (Matrix.mulVec (reflectionProduct choice n) v) = coordNormSq v := by
  induction n with
  | zero => simp [reflectionProduct]
  | succ n ih =>
      rw [reflectionProduct, ← Matrix.mulVec_mulVec]
      rw [chosenReflection_normSq, ih]

/-- A word of `n` transpositions has determinant `(-1)^n`; this is the exact
algebraic parity obstruction behind the non-lazy walk's period two. -/
@[surface_novel, surface_published]
theorem reflectionProduct_det (choice : ℕ → Bool) (n : ℕ) :
    Matrix.det (reflectionProduct choice n) = (-1 : ℝ) ^ n := by
  induction n with
  | zero => simp [reflectionProduct]
  | succ n ih =>
      rw [reflectionProduct, Matrix.det_mul, chosenReflection_det, ih,
        pow_succ]
      ring

/-- The exact fair-coin average of the two residue-class reflections. -/
@[expose]
def idealTransition : StandardMatrix :=
  (1 / 2 : ℝ) • (residueOneReflection + residueFiveReflection)

@[surface_novel, surface_published]
theorem idealTransition_entries :
    idealTransition =
      !![1 / 4, sqrtThree / 4;
         sqrtThree / 4, -1 / 4] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [idealTransition, residueOneReflection, residueFiveReflection] <;>
    ring

/-- A concrete eigenvector for the eigenvalue `1/2`. -/
@[expose]
def idealPositiveEigenvector : StandardCoord :=
  ![sqrtThree, 1]

/-- A concrete eigenvector for the eigenvalue `-1/2`. -/
@[expose]
def idealNegativeEigenvector : StandardCoord :=
  ![1, -sqrtThree]

@[surface_novel, surface_published]
theorem idealPositiveEigenvector_ne_zero :
    idealPositiveEigenvector ≠ 0 := by
  intro h
  have := congrFun h 1
  norm_num [idealPositiveEigenvector] at this

@[surface_novel, surface_published]
theorem idealNegativeEigenvector_ne_zero :
    idealNegativeEigenvector ≠ 0 := by
  intro h
  have := congrFun h 0
  norm_num [idealNegativeEigenvector] at this

/-- The ideal average has the displayed nonzero eigenvector at `1/2`. -/
@[surface_novel, surface_published]
theorem idealTransition_positive_eigenvector :
    Matrix.mulVec idealTransition idealPositiveEigenvector =
      (1 / 2 : ℝ) • idealPositiveEigenvector := by
  rw [idealTransition_entries]
  funext i
  fin_cases i <;>
    simp [idealPositiveEigenvector, Matrix.mulVec, dotProduct,
      Fin.sum_univ_two] <;> nlinarith [sqrtThree_sq]

/-- The ideal average has the displayed nonzero eigenvector at `-1/2`. -/
@[surface_novel, surface_published]
theorem idealTransition_negative_eigenvector :
    Matrix.mulVec idealTransition idealNegativeEigenvector =
      (-1 / 2 : ℝ) • idealNegativeEigenvector := by
  rw [idealTransition_entries]
  funext i
  fin_cases i <;>
    simp [idealNegativeEigenvector, Matrix.mulVec, dotProduct,
      Fin.sum_univ_two] <;> nlinarith [sqrtThree_sq]

/-- Squaring the ideal average gives exactly one quarter of the identity. -/
@[surface_novel, surface_published]
theorem idealTransition_sq :
    idealTransition * idealTransition =
      (1 / 4 : ℝ) • (1 : StandardMatrix) := by
  rw [idealTransition_entries]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.mul_apply, Fin.sum_univ_two] <;>
    nlinarith [sqrtThree_sq]

/-- The ideal averaged operator contracts squared norm by exactly `1/4`. -/
@[surface_novel, surface_published]
theorem idealTransition_normSq (v : StandardCoord) :
    coordNormSq (Matrix.mulVec idealTransition v) =
      (1 / 4 : ℝ) * coordNormSq v := by
  rw [idealTransition_entries]
  simp [coordNormSq, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
  nlinarith [sqrtThree_sq]

/-- Absolute spectral gap on the standard two-dimensional summand only. -/
@[expose]
def idealStandardSpectralGap : ℝ :=
  1 - 1 / 2

@[surface_novel, surface_published, simp]
theorem idealStandardSpectralGap_eq_half :
    idealStandardSpectralGap = 1 / 2 := by
  norm_num [idealStandardSpectralGap]

/-- The empirical average with residue-one frequency `q` and residue-five
frequency `1 - q`.  The algebra is valid for every real `q`; an empirical
probability additionally satisfies `0 ≤ q ≤ 1`. -/
@[expose]
def empiricalTransition (q : ℝ) : StandardMatrix :=
  q • residueOneReflection + (1 - q) • residueFiveReflection

/-- Signed residue-one excess over the fair weight. -/
@[expose]
def centeredWeight (q : ℝ) : ℝ :=
  q - 1 / 2

/-- Entrywise empirical transition in terms of the signed centered weight. -/
@[surface_novel, surface_published]
theorem empiricalTransition_entries (q : ℝ) :
    empiricalTransition q =
      !![1 / 4 + 3 * centeredWeight q / 2,
          sqrtThree / 4 - sqrtThree * centeredWeight q / 2;
         sqrtThree / 4 - sqrtThree * centeredWeight q / 2,
         -(1 / 4 + 3 * centeredWeight q / 2)] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [empiricalTransition, centeredWeight, residueOneReflection,
      residueFiveReflection] <;> ring

/-- Exact algebraic spectral statement for the empirical average.  It avoids
any unproved analytic-number-theory input: the square is a scalar matrix. -/
@[surface_novel, surface_published]
theorem empiricalTransition_sq (q : ℝ) :
    empiricalTransition q * empiricalTransition q =
      ((1 / 4 : ℝ) + 3 * centeredWeight q ^ 2) • (1 : StandardMatrix) := by
  rw [empiricalTransition_entries]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.mul_apply, Fin.sum_univ_two] <;>
    ring_nf <;> rw [sqrtThree_sq] <;> ring

/-! ## Normalization by eligible residue counts

The denominator is the number of observations in the two reduced residue
classes, not the number of all primes examined.  In particular, the
exceptional primes `2` and `3` do not enter either count.
-/

/-- Residue-one empirical weight formed from the two eligible counts. -/
@[expose]
def empiricalWeightFromCounts (oneCount fiveCount : ℕ) : ℝ :=
  (oneCount : ℝ) / ((oneCount + fiveCount : ℕ) : ℝ)

/-- Empirical averaged transition formed from the two eligible counts. -/
@[expose]
def empiricalTransitionFromCounts (oneCount fiveCount : ℕ) : StandardMatrix :=
  empiricalTransition (empiricalWeightFromCounts oneCount fiveCount)

/-- Once at least one eligible residue has been observed, the complementary
weight is exactly the residue-five count divided by the eligible total. -/
@[surface_novel, surface_published]
theorem one_sub_empiricalWeightFromCounts (oneCount fiveCount : ℕ)
    (h : 0 < oneCount + fiveCount) :
    1 - empiricalWeightFromCounts oneCount fiveCount =
      (fiveCount : ℝ) / ((oneCount + fiveCount : ℕ) : ℝ) := by
  have hneNat : oneCount + fiveCount ≠ 0 := Nat.ne_of_gt h
  have hne : (((oneCount + fiveCount : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast hneNat
  unfold empiricalWeightFromCounts
  field_simp [hne]
  push_cast
  ring

/-- The exact signed count imbalance.  Natural subtraction is intentionally
avoided: the numerator lives in `ℝ` so a residue-five lead remains negative. -/
@[surface_novel, surface_published]
theorem centeredWeightFromCounts (oneCount fiveCount : ℕ)
    (h : 0 < oneCount + fiveCount) :
    centeredWeight (empiricalWeightFromCounts oneCount fiveCount) =
      ((oneCount : ℝ) - (fiveCount : ℝ)) /
        (2 * ((oneCount + fiveCount : ℕ) : ℝ)) := by
  have hneNat : oneCount + fiveCount ≠ 0 := Nat.ne_of_gt h
  have hne : (((oneCount + fiveCount : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast hneNat
  unfold centeredWeight empiricalWeightFromCounts
  field_simp [hne]
  push_cast
  ring

/-- Difference between the empirical and ideal averaged operators. -/
@[expose]
def discrepancy (q : ℝ) : StandardMatrix :=
  empiricalTransition q - idealTransition

/-- The discrepancy is exactly the signed weight times the generator
difference. -/
@[surface_novel, surface_published]
theorem discrepancy_eq_centered_smul_difference (q : ℝ) :
    discrepancy q =
      centeredWeight q • (residueOneReflection - residueFiveReflection) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [discrepancy, empiricalTransition, idealTransition, centeredWeight,
      residueOneReflection, residueFiveReflection] <;> ring

@[surface_novel, surface_published]
theorem generatorDifference_entries :
    residueOneReflection - residueFiveReflection =
      !![3 / 2, -sqrtThree / 2;
         -sqrtThree / 2, -3 / 2] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [residueOneReflection, residueFiveReflection] <;> ring

/-- The generator difference squares to three times the identity. -/
@[surface_novel, surface_published]
theorem generatorDifference_sq :
    (residueOneReflection - residueFiveReflection) *
        (residueOneReflection - residueFiveReflection) =
      (3 : ℝ) • (1 : StandardMatrix) := by
  rw [generatorDifference_entries]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.mul_apply, Fin.sum_univ_two] <;>
    ring_nf <;> rw [sqrtThree_sq] <;> ring

/-- Complementing the empirical weight reverses the signed discrepancy. -/
@[surface_novel, surface_published]
theorem discrepancy_complement (q : ℝ) :
    discrepancy (1 - q) = -discrepancy q := by
  rw [discrepancy_eq_centered_smul_difference,
    discrepancy_eq_centered_smul_difference]
  simp only [centeredWeight]
  module

/-- A signed scalar diagnostic.  Unlike trace, determinant, or norm, it
retains which residue class is ahead. -/
@[expose]
def signedObservable (A : StandardMatrix) : ℝ :=
  (2 / 3 : ℝ) * A 0 0

/-- The signed observable recovers the centered empirical weight exactly. -/
@[surface_novel, surface_published]
theorem signedObservable_discrepancy (q : ℝ) :
    signedObservable (discrepancy q) = centeredWeight q := by
  rw [discrepancy_eq_centered_smul_difference,
    generatorDifference_entries]
  simp [signedObservable]
  ring

/-- Entrywise form of the signed discrepancy. -/
@[surface_novel, surface_published]
theorem discrepancy_entries (q : ℝ) :
    discrepancy q =
      !![centeredWeight q * (3 / 2),
          centeredWeight q * (-sqrtThree / 2);
         centeredWeight q * (-sqrtThree / 2),
          centeredWeight q * (-3 / 2)] := by
  rw [discrepancy_eq_centered_smul_difference,
    generatorDifference_entries]
  ext i j
  fin_cases i <;> fin_cases j <;> simp

/-- The discrepancy trace is identically zero, so it cannot detect even the
magnitude of the residue imbalance in this representation. -/
@[surface_novel, surface_published]
theorem discrepancy_trace (q : ℝ) :
    Matrix.trace (discrepancy q) = 0 := by
  rw [discrepancy_entries]
  simp [Matrix.trace, Fin.sum_univ_two]
  ring

/-- The discrepancy determinant is quadratic in the centered weight and
therefore loses its sign. -/
@[surface_novel, surface_published]
theorem discrepancy_det (q : ℝ) :
    Matrix.det (discrepancy q) = -3 * centeredWeight q ^ 2 := by
  rw [discrepancy_entries, Matrix.det_fin_two]
  simp
  ring_nf
  rw [sqrtThree_sq]
  ring

/-- Determinant cannot distinguish a weight from its complementary weight. -/
@[surface_novel, surface_published]
theorem discrepancy_det_complement (q : ℝ) :
    Matrix.det (discrepancy (1 - q)) = Matrix.det (discrepancy q) := by
  rw [discrepancy_det, discrepancy_det]
  simp only [centeredWeight]
  ring

/-- The exact squared-norm scale of the signed error matrix. -/
@[surface_novel, surface_published]
theorem discrepancy_normSq (q : ℝ) (v : StandardCoord) :
    coordNormSq (Matrix.mulVec (discrepancy q) v) =
      3 * centeredWeight q ^ 2 * coordNormSq v := by
  rw [discrepancy_entries]
  simp [coordNormSq, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
  ring_nf
  rw [sqrtThree_sq]
  ring

/-- Squared norm, like determinant, is unchanged when the bias sign flips. -/
@[surface_novel, surface_published]
theorem discrepancy_normSq_complement (q : ℝ) (v : StandardCoord) :
    coordNormSq (Matrix.mulVec (discrepancy (1 - q)) v) =
      coordNormSq (Matrix.mulVec (discrepancy q) v) := by
  rw [discrepancy_normSq, discrepancy_normSq]
  simp only [centeredWeight]
  ring

/-- The empirical transition has squared singular scale
`1/4 + 3(q - 1/2)²`.  At `q = 1/2` this is the ideal contraction; at either
endpoint it is a norm-preserving reflection. -/
@[surface_novel, surface_published]
theorem empiricalTransition_normSq (q : ℝ) (v : StandardCoord) :
    coordNormSq (Matrix.mulVec (empiricalTransition q) v) =
      ((1 / 4 : ℝ) + 3 * centeredWeight q ^ 2) * coordNormSq v := by
  simp [empiricalTransition, centeredWeight, coordNormSq,
    residueOneReflection, residueFiveReflection, Matrix.mulVec, dotProduct,
    Fin.sum_univ_two]
  ring_nf
  rw [sqrtThree_sq]
  ring

/-! ## Residue-six selection and the exceptional primes -/

/-- Select the matrix attached to a reduced residue class modulo six.
Nonunits, including the exceptional primes `2` and `3`, have no step. -/
@[expose]
def residueStep? (n : ℕ) : Option StandardMatrix :=
  if n % 6 = 1 then some residueOneReflection
  else if n % 6 = 5 then some residueFiveReflection
  else none

@[surface_novel, surface_published, simp]
theorem residueStep_two : residueStep? 2 = none := by
  norm_num [residueStep?]

@[surface_novel, surface_published, simp]
theorem residueStep_three : residueStep? 3 = none := by
  norm_num [residueStep?]

@[surface_novel, surface_published, simp]
theorem residueStep_one_mod_six (n : ℕ) (h : n % 6 = 1) :
    residueStep? n = some residueOneReflection := by
  simp [residueStep?, h]

@[surface_novel, surface_published, simp]
theorem residueStep_five_mod_six (n : ℕ) (h : n % 6 = 5) :
    residueStep? n = some residueFiveReflection := by
  simp [residueStep?, h]

end

end Surface.Core.CyclicPrimeWalk
````
