-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.RhetoricalPoint.Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.RhetoricalPoint.Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Hilbert/Point.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.FeatureMap
import DAF.Rhetorical.Kernel.Regularization
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Non-null rhetorical points

Concepts become DAF point carriers only through an explicitly positive kernel
diagonal.  This prevents normalization of a null feature vector.  The point
is represented by its unit feature and the corresponding rank-one orthogonal
projection.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.RhetoricalPoint.Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexInnerProductSpace ComplexOrder

/-- A concept/role pair certified to have nonzero kernel mass. -/
structure RhetoricalPoint (kernel : PositiveKernel RhetoricalIndex) where
  concept : Universe.ConceptId
  role : RhetoricalRole
  diagonal_pos : 0 < (kernel (concept, role) (concept, role)).re

namespace RhetoricalPoint

variable {kernel : PositiveKernel RhetoricalIndex}

/-- The unnormalized canonical feature carried by a rhetorical point. -/
def rawVector (point : RhetoricalPoint kernel) : RhetoricalSpace kernel :=
  roleVector kernel point.concept point.role

/-- A point certificate makes the canonical feature nonzero. -/
theorem rawVector_ne_zero (point : RhetoricalPoint kernel) :
    point.rawVector ≠ 0 := by
  intro vectorZero
  have normSquareZero : ‖point.rawVector‖ ^ 2 = 0 := by
    rw [vectorZero, norm_zero, zero_pow (by norm_num : 2 ≠ 0)]
  have diagonalZero :
      (kernel (point.concept, point.role) (point.concept, point.role)).re = 0 := by
    rw [← norm_rhetoricalVector_sq kernel (point.concept, point.role)]
    exact normSquareZero
  linarith [point.diagonal_pos]

/-- The normalized feature vector used for DAF point carriage. -/
def vector (point : RhetoricalPoint kernel) : RhetoricalSpace kernel :=
  (‖point.rawVector‖⁻¹ : ℝ) • point.rawVector

/-- Every admitted rhetorical point is represented by a unit vector. -/
@[simp]
theorem vector_norm_one (point : RhetoricalPoint kernel) :
    ‖point.vector‖ = 1 := by
  have normPositive : 0 < ‖point.rawVector‖ :=
    norm_pos_iff.mpr point.rawVector_ne_zero
  rw [vector, norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.mpr normPositive),
    inv_mul_cancel₀ normPositive.ne']

/-- Rank-one orthogonal projection associated with a rhetorical point. -/
def projection (point : RhetoricalPoint kernel) :
    RhetoricalSpace kernel →L[ℂ] RhetoricalSpace kernel :=
  InnerProductSpace.rankOne ℂ point.vector point.vector

/-- The point projection is self-adjoint. -/
theorem projection_selfAdjoint (point : RhetoricalPoint kernel) :
    point.projection.adjoint = point.projection := by
  simp [projection]

/-- The point projection is idempotent. -/
theorem projection_idempotent (point : RhetoricalPoint kernel) :
    point.projection * point.projection = point.projection :=
  InnerProductSpace.isIdempotentElem_rankOne_self point.vector_norm_one

/-- The bundled star-projection law retained for operator consumers. -/
theorem projection_isStarProjection (point : RhetoricalPoint kernel) :
    IsStarProjection point.projection :=
  InnerProductSpace.isStarProjection_rankOne_self point.vector_norm_one

end RhetoricalPoint

/-- Every index of an identity-regularized project kernel canonically carries
a rhetorical point; callers do not need to restate diagonal positivity. -/
def regularizedRhetoricalPoint
    (semantic : PositiveKernel RhetoricalIndex)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    (index : RhetoricalIndex) :
    RhetoricalPoint
      (regularizedKernel semantic epsilon epsilonPositive) where
  concept := index.1
  role := index.2
  diagonal_pos := by
    let basis := Raw.basisVector
      (regularizedKernel semantic epsilon epsilonPositive) index
    have basisNonzero : basis ≠ 0 := by
      change Finsupp.single index (1 : ℂ) ≠ 0
      exact Finsupp.single_ne_zero.mpr one_ne_zero
    have positiveEnergy :=
      (regularizedKernel_posDef semantic epsilon epsilonPositive).2
        basisNonzero
    change 0 < Raw.inner
      (regularizedKernel semantic epsilon epsilonPositive) basis basis at positiveEnergy
    rw [Raw.inner_basisVector_basisVector] at positiveEnergy
    exact (Complex.pos_iff.mp positiveEnergy).1

/-- Identity regularization makes every canonical concept-role vector
nonzero. -/
theorem regularized_rhetoricalVector_ne_zero
    (semantic : PositiveKernel RhetoricalIndex)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    (index : RhetoricalIndex) :
    rhetoricalVector (regularizedKernel semantic epsilon epsilonPositive)
        index ≠ 0 :=
  (regularizedRhetoricalPoint semantic epsilon epsilonPositive index).rawVector_ne_zero

/-- Canonical point constructor for production regularization policy v1. -/
def productionRhetoricalPoint
    (semantic : PositiveKernel RhetoricalIndex)
    (index : RhetoricalIndex) :
    RhetoricalPoint
      (regularizedKernel semantic productionEpsilon productionEpsilon_pos) :=
  regularizedRhetoricalPoint semantic productionEpsilon
    productionEpsilon_pos index

theorem production_rhetoricalVector_ne_zero
    (semantic : PositiveKernel RhetoricalIndex)
    (index : RhetoricalIndex) :
    rhetoricalVector
      (regularizedKernel semantic productionEpsilon productionEpsilon_pos)
      index ≠ 0 :=
  regularized_rhetoricalVector_ne_zero semantic productionEpsilon
    productionEpsilon_pos index

end DAF.Rhetorical
