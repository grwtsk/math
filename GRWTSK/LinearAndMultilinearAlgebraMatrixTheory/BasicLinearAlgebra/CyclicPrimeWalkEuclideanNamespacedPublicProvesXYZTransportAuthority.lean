-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.StandardEuclidean.Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.StandardEuclidean.Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/CyclicPrimeWalkEuclidean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.CyclicPrimeWalk
public import Mathlib.Analysis.CStarAlgebra.Matrix

/-!
# Euclidean operator-norm bridge for the residue-six walk

`CyclicPrimeWalk` deliberately keeps its algebraic `Fiber3` model independent
of any particular norm.  In particular, the function type underlying
`Fiber3` carries Mathlib's default supremum norm, so it must not be silently
treated as Euclidean three-space.

This file instead interprets the checked two-by-two standard-representation
matrices on the genuine Hilbert space `EuclideanSpace ℝ (Fin 2)`.  Mathlib's
`Matrix.toEuclideanCLM` supplies the continuous linear operator and the scoped
`Matrix.Norms.L2Operator` instance supplies exactly its induced `L²` operator
norm.  The resulting norm identities are therefore analytic consequences of
the exact matrix identities in `CyclicPrimeWalk`, not assertions about the
default norm on `zeroSumSubspace`.

No prime-distribution estimate is used here: `q` remains an arbitrary real
weight.
-/


namespace GRWTSK.Algebra.LinearAlgebra.StandardEuclidean.Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f

public section

namespace Surface.Core.CyclicPrimeWalkEuclidean

noncomputable section

open Surface.Core.CyclicPrimeWalk
open WithLp
open scoped Matrix Matrix.Norms.L2Operator RealInnerProductSpace

/-! ## Authoritative data -/

/-- The genuine Euclidean coordinate plane on which the standard two-
dimensional representation acts. -/
abbrev StandardEuclidean := EuclideanSpace ℝ (Fin 2)

/-- Genuine Euclidean three-space, kept distinct from the supremum-normed
function type used by `Fiber3`. -/
abbrev FiberEuclidean := EuclideanSpace ℝ (Fin 3)

/-! ## Derived maps or views -/

/-- The Euclidean coordinate-sum functional. -/
@[expose]
def euclideanCoordinateSum : FiberEuclidean →ₗ[ℝ] ℝ where
  toFun x := ∑ i, x i
  map_add' x y := by simp [Finset.sum_add_distrib]
  map_smul' c x := by simp [Finset.mul_sum]

/-- The actual Euclidean zero-sum plane inside `EuclideanSpace ℝ (Fin 3)`.
It is deliberately a different submodule from the supremum-normed
`zeroSumSubspace`. -/
@[expose]
def euclideanZeroSumSubspace : Submodule ℝ FiberEuclidean :=
  LinearMap.ker euclideanCoordinateSum

/-! ## Exact theorems -/

/-- Exact square roots used to display the normalized basis. -/
@[expose]
def sqrtTwo : ℝ := Real.sqrt 2

@[expose]
def sqrtSix : ℝ := Real.sqrt 6

@[surface_novel, surface_published]
theorem sqrtTwo_sq : sqrtTwo ^ 2 = 2 := by
  exact Real.sq_sqrt (by norm_num)

@[surface_novel, surface_published]
theorem sqrtSix_sq : sqrtSix ^ 2 = 6 := by
  exact Real.sq_sqrt (by norm_num)

@[surface_novel, surface_published]
theorem sqrtTwo_ne_zero : sqrtTwo ≠ 0 := by
  intro h
  have := sqrtTwo_sq
  rw [h] at this
  norm_num at this

@[surface_novel, surface_published]
theorem sqrtSix_ne_zero : sqrtSix ≠ 0 := by
  intro h
  have := sqrtSix_sq
  rw [h] at this
  norm_num at this

/-- `b₀ = (1,1,-2)/√6` in genuine Euclidean three-space. -/
@[expose]
def normalizedBasisZeroVector : FiberEuclidean :=
  toLp 2 ![1 / sqrtSix, 1 / sqrtSix, -2 / sqrtSix]

/-- `b₁ = (1,-1,0)/√2` in genuine Euclidean three-space. -/
@[expose]
def normalizedBasisOneVector : FiberEuclidean :=
  toLp 2 ![1 / sqrtTwo, -1 / sqrtTwo, 0]

@[surface_novel, surface_published]
theorem normalizedBasisZero_mem :
    normalizedBasisZeroVector ∈ euclideanZeroSumSubspace := by
  change ∑ i, normalizedBasisZeroVector i = 0
  simp [normalizedBasisZeroVector, Fin.sum_univ_three]
  ring

@[surface_novel, surface_published]
theorem normalizedBasisOne_mem :
    normalizedBasisOneVector ∈ euclideanZeroSumSubspace := by
  change ∑ i, normalizedBasisOneVector i = 0
  simp [normalizedBasisOneVector, Fin.sum_univ_three]
  ring

/-- The requested normalized ordered pair as vectors of the Euclidean
zero-sum subspace. -/
@[expose]
def normalizedStandardBasis : Fin 2 → euclideanZeroSumSubspace
  | 0 => ⟨normalizedBasisZeroVector, normalizedBasisZero_mem⟩
  | 1 => ⟨normalizedBasisOneVector, normalizedBasisOne_mem⟩

/-- The displayed pair is genuinely orthonormal for the inherited `L²`
inner product on the Euclidean zero-sum plane. -/
@[surface_novel, surface_published]
theorem normalizedStandardBasis_orthonormal :
    Orthonormal ℝ normalizedStandardBasis := by
  rw [orthonormal_iff_ite]
  intro i j
  fin_cases i <;> fin_cases j
  · simp only [normalizedStandardBasis, if_pos,
      real_inner_self_eq_norm_sq]
    change ‖normalizedBasisZeroVector‖ ^ 2 = 1
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [normalizedBasisZeroVector, Fin.sum_univ_three]
    field_simp [sqrtSix_ne_zero]
    nlinarith [sqrtSix_sq]
  · simp [normalizedStandardBasis, normalizedBasisZeroVector,
      normalizedBasisOneVector, PiLp.inner_apply, Fin.sum_univ_three,
      RCLike.inner_apply]
    field_simp [sqrtTwo_ne_zero, sqrtSix_ne_zero]
    ring
  · simp [normalizedStandardBasis, normalizedBasisZeroVector,
      normalizedBasisOneVector, PiLp.inner_apply, Fin.sum_univ_three,
      RCLike.inner_apply]
    field_simp [sqrtTwo_ne_zero, sqrtSix_ne_zero]
    ring
  · simp only [normalizedStandardBasis, if_pos,
      real_inner_self_eq_norm_sq]
    change ‖normalizedBasisOneVector‖ ^ 2 = 1
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [normalizedBasisOneVector, Fin.sum_univ_three]
    field_simp [sqrtTwo_ne_zero]
    nlinarith [sqrtTwo_sq]

/-- Every Euclidean zero-sum vector has exact coordinates in the normalized
ordered pair.  This is also the spanning certificate used below. -/
@[surface_novel, surface_published]
theorem normalizedStandardBasis_coordinates (x : euclideanZeroSumSubspace) :
    x = (-x.1 2 * sqrtSix / 2 : ℝ) • normalizedStandardBasis 0 +
      ((x.1 0 - x.1 1) * sqrtTwo / 2 : ℝ) • normalizedStandardBasis 1 := by
  have hx : x.1 0 + x.1 1 + x.1 2 = 0 := by
    have hxmem := x.2
    change euclideanCoordinateSum x.1 = 0 at hxmem
    simpa [euclideanCoordinateSum, Fin.sum_univ_three] using hxmem
  apply Subtype.ext
  apply WithLp.ofLp_injective 2
  funext i
  fin_cases i <;>
    simp [normalizedStandardBasis, normalizedBasisZeroVector,
      normalizedBasisOneVector] <;>
    field_simp [sqrtTwo_ne_zero, sqrtSix_ne_zero] <;>
    nlinarith [sqrtTwo_sq, sqrtSix_sq]

/-- The normalized pair spans the entire Euclidean zero-sum plane. -/
@[surface_novel, surface_published]
theorem normalizedStandardBasis_spans :
    (⊤ : Submodule ℝ euclideanZeroSumSubspace) ≤
      Submodule.span ℝ (Set.range normalizedStandardBasis) := by
  intro x _
  rw [normalizedStandardBasis_coordinates x]
  exact Submodule.add_mem _
    (Submodule.smul_mem _ _
      (Submodule.subset_span (Set.mem_range_self 0)))
    (Submodule.smul_mem _ _
      (Submodule.subset_span (Set.mem_range_self 1)))

/-- The normalized pair as an actual orthonormal basis of the genuine
Euclidean zero-sum plane. -/
@[expose]
def euclideanZeroSumOrthonormalBasis :
    OrthonormalBasis (Fin 2) ℝ euclideanZeroSumSubspace :=
  OrthonormalBasis.mk normalizedStandardBasis_orthonormal
    normalizedStandardBasis_spans

/-- Exact `L²` isometric equivalence between Euclidean two-space and the
Euclidean zero-sum plane in three-space.  Its ordered coordinate vectors are
`(1,1,-2)/√6` and `(1,-1,0)/√2`. -/
@[expose]
def standardPlaneIsometryEquiv :
    StandardEuclidean ≃ₗᵢ[ℝ] euclideanZeroSumSubspace :=
  euclideanZeroSumOrthonormalBasis.repr.symm

/-- Coordinate formula for the isometry: it synthesizes the normalized
`b₀,b₁` basis without changing the `L²` norm. -/
@[surface_novel, surface_published]
theorem standardPlaneIsometryEquiv_apply (x : StandardEuclidean) :
    standardPlaneIsometryEquiv x =
      x 0 • normalizedStandardBasis 0 +
        x 1 • normalizedStandardBasis 1 := by
  simpa [standardPlaneIsometryEquiv, euclideanZeroSumOrthonormalBasis,
    Fin.sum_univ_two] using
      (euclideanZeroSumOrthonormalBasis.sum_repr_symm x).symm

@[surface_novel, surface_published]
theorem standardPlaneIsometryEquiv_norm (x : StandardEuclidean) :
    ‖standardPlaneIsometryEquiv x‖ = ‖x‖ := by
  exact standardPlaneIsometryEquiv.norm_map x

@[surface_novel, surface_published]
theorem standardPlaneIsometryEquiv_basis_zero :
    standardPlaneIsometryEquiv (EuclideanSpace.single 0 1) =
      normalizedStandardBasis 0 := by
  simp [standardPlaneIsometryEquiv, euclideanZeroSumOrthonormalBasis]

@[surface_novel, surface_published]
theorem standardPlaneIsometryEquiv_basis_one :
    standardPlaneIsometryEquiv (EuclideanSpace.single 1 1) =
      normalizedStandardBasis 1 := by
  simp [standardPlaneIsometryEquiv, euclideanZeroSumOrthonormalBasis]

/-- Interpret a checked standard-representation matrix as a continuous
linear endomorphism of the Euclidean coordinate plane. -/
@[expose]
def standardMatrixOperator (A : StandardMatrix) :
    StandardEuclidean →L[ℝ] StandardEuclidean :=
  (Matrix.toEuclideanCLM (n := Fin 2) (𝕜 := ℝ)) A

/-- The difference of the two residue-class reflection generators, acting
on genuine Euclidean coordinates. -/
@[expose]
def generatorDifferenceOperator :
    StandardEuclidean →L[ℝ] StandardEuclidean :=
  standardMatrixOperator (residueOneReflection - residueFiveReflection)

/-- The empirical-minus-ideal error operator on genuine Euclidean
coordinates. -/
@[expose]
def discrepancyOperator (q : ℝ) :
    StandardEuclidean →L[ℝ] StandardEuclidean :=
  standardMatrixOperator (discrepancy q)

/-- The Euclidean operator acts by the same checked matrix-vector product on
the underlying coordinate function. -/
@[surface_novel, surface_published, simp]
theorem standardMatrixOperator_toLp (A : StandardMatrix) (x : StandardCoord) :
    standardMatrixOperator A (toLp 2 x) = toLp 2 (Matrix.mulVec A x) := by
  exact Matrix.toEuclideanCLM_toLp A x

/-- The generator difference is real symmetric, so its adjoint is itself. -/
@[surface_novel, surface_published]
theorem generatorDifference_conjTranspose :
    (residueOneReflection - residueFiveReflection)ᴴ =
      residueOneReflection - residueFiveReflection := by
  rw [generatorDifference_entries]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.conjTranspose_apply]

/-- Exact `L²` operator norm of the generator difference.  The proof uses
`DᴴD = D² = 3I`, the C⋆ identity, and the nonnegative square root. -/
@[surface_novel, surface_published]
theorem generatorDifference_l2_opNorm :
    ‖residueOneReflection - residueFiveReflection‖ = sqrtThree := by
  let D : StandardMatrix := residueOneReflection - residueFiveReflection
  have hstar : Dᴴ = D := by
    simpa [D] using generatorDifference_conjTranspose
  have hmul : Dᴴ * D = (3 : ℝ) • (1 : StandardMatrix) := by
    rw [hstar]
    simpa [D] using generatorDifference_sq
  have hnormSq : ‖D‖ * ‖D‖ = 3 := by
    calc
      ‖D‖ * ‖D‖ = ‖Dᴴ * D‖ :=
        (CStarRing.norm_star_mul_self (x := D)).symm
      _ = ‖(3 : ℝ) • (1 : StandardMatrix)‖ := by rw [hmul]
      _ = 3 := by norm_num
  have hsqrt_nonneg : 0 ≤ sqrtThree := by
    exact Real.sqrt_nonneg 3
  have hnorm_nonneg : 0 ≤ ‖D‖ := norm_nonneg D
  have hsqrtSq : sqrtThree * sqrtThree = 3 := sqrtThree_mul_self
  change ‖D‖ = sqrtThree
  nlinarith

/-- The continuous Euclidean generator-difference operator has the same
exact induced norm as its matrix. -/
@[surface_novel, surface_published]
theorem generatorDifferenceOperator_norm :
    ‖generatorDifferenceOperator‖ = sqrtThree := by
  rw [generatorDifferenceOperator, standardMatrixOperator,
    Matrix.l2_opNorm_toEuclideanCLM, generatorDifference_l2_opNorm]

/-- Exact `L²` operator norm of the empirical discrepancy matrix.  Its
magnitude is `√3 |q - 1/2|`; consequently this norm deliberately forgets the
orientation of the residue-class imbalance. -/
@[surface_novel, surface_published]
theorem discrepancy_l2_opNorm (q : ℝ) :
    ‖discrepancy q‖ = sqrtThree * |centeredWeight q| := by
  rw [discrepancy_eq_centered_smul_difference, norm_smul,
    generatorDifference_l2_opNorm]
  rw [Real.norm_eq_abs]
  ring

/-- The continuous Euclidean discrepancy operator has exactly the same
induced norm as its checked matrix. -/
@[surface_novel, surface_published]
theorem discrepancyOperator_norm (q : ℝ) :
    ‖discrepancyOperator q‖ = sqrtThree * |centeredWeight q| := by
  rw [discrepancyOperator, standardMatrixOperator,
    Matrix.l2_opNorm_toEuclideanCLM, discrepancy_l2_opNorm]

/-- The ideal averaged transition has exact Euclidean operator norm `1/2`.
This is the contraction norm of the average, not of any chronological word of
reflections. -/
@[surface_novel, surface_published]
theorem idealTransition_l2_opNorm : ‖idealTransition‖ = (1 / 2 : ℝ) := by
  let A : StandardMatrix := idealTransition
  have hstar : Aᴴ = A := by
    change idealTransitionᴴ = idealTransition
    rw [idealTransition_entries]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [Matrix.conjTranspose_apply]
  have hmul : Aᴴ * A = (1 / 4 : ℝ) • (1 : StandardMatrix) := by
    rw [hstar]
    simpa [A] using idealTransition_sq
  have hnormSq : ‖A‖ * ‖A‖ = (1 / 4 : ℝ) := by
    calc
      ‖A‖ * ‖A‖ = ‖Aᴴ * A‖ :=
        (CStarRing.norm_star_mul_self (x := A)).symm
      _ = ‖(1 / 4 : ℝ) • (1 : StandardMatrix)‖ := by rw [hmul]
      _ = 1 / 4 := by norm_num
  have hnorm_nonneg : 0 ≤ ‖A‖ := norm_nonneg A
  change ‖A‖ = (1 / 2 : ℝ)
  nlinarith

/-- Continuous-operator form of the ideal contraction norm. -/
@[surface_novel, surface_published]
theorem idealTransitionOperator_norm :
    ‖standardMatrixOperator idealTransition‖ = (1 / 2 : ℝ) := by
  rw [standardMatrixOperator, Matrix.l2_opNorm_toEuclideanCLM,
    idealTransition_l2_opNorm]

/-! ## Authority boundary / non-claims

These operator-norm identities concern exact finite-dimensional real matrices.
They neither validate an XYZ transport nor establish a GRH statement.
-/

@[expose]
def ProvesXYZTransportAuthority (_ : StandardMatrix) : Prop := False

@[expose]
def ProvesGRHAuthority (_ : StandardMatrix) : Prop := False

@[surface_novel, surface_published]
theorem cyclicPrimeWalkEuclidean_has_no_xyz_or_grh_authority
    (result : StandardMatrix) :
    ¬ ProvesXYZTransportAuthority result ∧ ¬ ProvesGRHAuthority result := by
  simp [ProvesXYZTransportAuthority, ProvesGRHAuthority]

end

end Surface.Core.CyclicPrimeWalkEuclidean
