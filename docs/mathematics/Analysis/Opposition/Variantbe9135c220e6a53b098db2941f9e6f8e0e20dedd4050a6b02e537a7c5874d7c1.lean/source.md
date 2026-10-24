# Complete source: GRWTSK.Analysis.Opposition.Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e40eefc2f81f7724f5707ac7ab20ca6cdc785903` · SHA-256 `9e3ef9c6824d8b7b4c3c582e205035791ee644c86305eea4d32064e1c6c01aa4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.OppositionProfile.Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.OppositionProfile.Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Relations/Opposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Hilbert.Point
import DAF.Rhetorical.Relations.Affinity
import Mathlib.Analysis.Normed.Operator.Extend
import Mathlib.LinearAlgebra.Finsupp.LSum

/-!
# Independent opposition channel

Opposition uses the positive/negative role block.  It is never inferred from
low base similarity.  An optional exact profile supplies an involution of
roles and exact kernel invariance; from those data we construct the induced
unitary on the completed kernel span.
-/


namespace GRWTSK.Analysis.OppositionProfile.Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d

noncomputable section

namespace DAF.Rhetorical

/-- The role-induced exact opposition profile and the finite-runtime
coordinate-antipode profile are different constructions.  This closed tag is
used wherever a caller must choose one explicitly. -/
inductive OppositionProfile
  | roleInduced
  | coordinateAntipodes
  deriving DecidableEq, Repr

/-- Positive-to-negative affinity, undefined at null endpoints. -/
def oppositionAffinity
    (kernel : PositiveKernel RhetoricalIndex)
    (positiveConcept negativeConcept : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (positiveVector kernel positiveConcept)
    (negativeVector kernel negativeConcept)

theorem oppositionAffinity_mem_Icc
    (kernel : PositiveKernel RhetoricalIndex)
    {positiveConcept negativeConcept : Universe.ConceptId}
    {score : ℝ}
    (computed :
      oppositionAffinity kernel positiveConcept negativeConcept = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 :=
  normalizedRealAffinity_mem_Icc kernel computed

/-- Exact opposition data.  `kernelInvariant` is an equality of the complete
role block, not a heuristic relation score. -/
structure OppositionStructure
    (kernel : PositiveKernel RhetoricalIndex) where
  roleOpposite : RhetoricalRole → RhetoricalRole
  involutive : Function.Involutive roleOpposite
  kernelInvariant :
    ∀ (left right : Universe.ConceptId) (leftRole rightRole : RhetoricalRole),
      kernel (left, roleOpposite leftRole) (right, roleOpposite rightRole) =
        kernel (left, leftRole) (right, rightRole)

namespace OppositionStructure

variable {kernel : PositiveKernel RhetoricalIndex}

/-- The concept-preserving involution on kernel indices. -/
def indexEquiv (opposition : OppositionStructure kernel) :
    RhetoricalIndex ≃ RhetoricalIndex where
  toFun index := (index.1, opposition.roleOpposite index.2)
  invFun index := (index.1, opposition.roleOpposite index.2)
  left_inv index := by
    rcases index with ⟨concept, role⟩
    simp [opposition.involutive role]
  right_inv index := by
    rcases index with ⟨concept, role⟩
    simp [opposition.involutive role]

@[simp]
theorem indexEquiv_apply
    (opposition : OppositionStructure kernel)
    (concept : Universe.ConceptId)
    (role : RhetoricalRole) :
    opposition.indexEquiv (concept, role) =
      (concept, opposition.roleOpposite role) :=
  rfl

/-- Exact reindexing of raw finite combinations. -/
def rawEquiv (opposition : OppositionStructure kernel) :
    Raw kernel ≃ₗ[ℂ] Raw kernel :=
  Finsupp.domLCongr opposition.indexEquiv

@[simp]
theorem rawEquiv_basisVector
    (opposition : OppositionStructure kernel)
    (index : RhetoricalIndex) :
    opposition.rawEquiv (Raw.basisVector kernel index) =
      Raw.basisVector kernel (opposition.indexEquiv index) := by
  classical
  simp [rawEquiv, Raw.basisVector]

/-- The exact role involution preserves the raw kernel form. -/
theorem rawEquiv_inner
    (opposition : OppositionStructure kernel)
    (left right : Raw kernel) :
    Raw.inner kernel (opposition.rawEquiv left)
        (opposition.rawEquiv right) =
      Raw.inner kernel left right := by
  simp [Raw.inner, rawEquiv, Finsupp.sum_equivMapDomain,
    indexEquiv, opposition.kernelInvariant]

/-- Reindexing twice is the identity already on finite combinations. -/
theorem rawEquiv_involutive
    (opposition : OppositionStructure kernel) :
    Function.Involutive opposition.rawEquiv := by
  intro vector
  ext index
  rcases index with ⟨concept, role⟩
  change vector
      (concept, opposition.roleOpposite (opposition.roleOpposite role)) =
    vector (concept, role)
  rw [opposition.involutive role]

/-- Finite combinations have dense image in the completed kernel span. -/
theorem rawToRhetorical_denseRange :
    DenseRange (rawToRhetorical kernel) := by
  apply (completePreRhetorical_denseRange kernel).mono
  rintro point ⟨prePoint, rfl⟩
  obtain ⟨rawPoint, rfl⟩ :=
    Submodule.Quotient.mk_surjective
      (kernelNullSubmodule kernel) prePoint
  exact ⟨rawPoint, rfl⟩

/-- Exact norm equality used to extend the raw role permutation. -/
theorem rawToRhetorical_rawEquiv_norm
    (opposition : OppositionStructure kernel)
    (vector : Raw kernel) :
    ‖rawToRhetorical kernel (opposition.rawEquiv vector)‖ =
      ‖rawToRhetorical kernel vector‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [norm_sq_eq_re_inner (𝕜 := ℂ),
    norm_sq_eq_re_inner (𝕜 := ℂ),
    inner_rawToRhetorical, inner_rawToRhetorical,
    opposition.rawEquiv_inner]

/-- The exact role symmetry extends uniquely to a unitary equivalence on the
completed rhetorical Hilbert space. -/
def unitary (opposition : OppositionStructure kernel) :
    RhetoricalSpace kernel ≃ₗᵢ[ℂ] RhetoricalSpace kernel :=
  opposition.rawEquiv.extendOfIsometry
    (rawToRhetorical kernel)
    (rawToRhetorical kernel)
    (rawToRhetorical_denseRange (kernel := kernel))
    (rawToRhetorical_denseRange (kernel := kernel))
    opposition.rawToRhetorical_rawEquiv_norm

/-- The completed unitary extends its exact raw finite-combination map. -/
@[simp]
theorem unitary_rawToRhetorical
    (opposition : OppositionStructure kernel)
    (vector : Raw kernel) :
    opposition.unitary (rawToRhetorical kernel vector) =
      rawToRhetorical kernel (opposition.rawEquiv vector) := by
  exact LinearEquiv.extendOfIsometry_eq
    opposition.rawEquiv
    (rawToRhetorical kernel)
    (rawToRhetorical kernel)
    (rawToRhetorical_denseRange (kernel := kernel))
    (rawToRhetorical_denseRange (kernel := kernel))
    opposition.rawToRhetorical_rawEquiv_norm
    vector

/-- The completed unitary agrees with role opposition on every canonical
feature vector. -/
@[simp]
theorem unitary_rhetoricalVector
    (opposition : OppositionStructure kernel)
    (index : RhetoricalIndex) :
    opposition.unitary (rhetoricalVector kernel index) =
      rhetoricalVector kernel (opposition.indexEquiv index) := by
  change opposition.unitary
      (rawToRhetorical kernel (Raw.basisVector kernel index)) = _
  rw [opposition.unitary_rawToRhetorical,
    opposition.rawEquiv_basisVector,
    rawToRhetorical_basisVector]

/-- The completed opposition unitary is an involution. -/
theorem unitary_involutive
    (opposition : OppositionStructure kernel) :
    Function.Involutive opposition.unitary := by
  intro vector
  refine DenseRange.induction_on
    (rawToRhetorical_denseRange (kernel := kernel)) vector ?_ ?_
  · exact isClosed_eq
      (opposition.unitary.continuous.comp opposition.unitary.continuous)
      continuous_id
  · intro rawVector
    rw [opposition.unitary_rawToRhetorical,
      opposition.unitary_rawToRhetorical,
      opposition.rawEquiv_involutive]

/-- Continuous linear operator underlying exact opposition. -/
def operator (opposition : OppositionStructure kernel) :
    RhetoricalSpace kernel →L[ℂ] RhetoricalSpace kernel :=
  opposition.unitary.toContinuousLinearEquiv.toContinuousLinearMap

/-- Exact opposition squares to the identity operator. -/
theorem operator_idempotentInvolution
    (opposition : OppositionStructure kernel) :
    opposition.operator * opposition.operator = 1 := by
  ext vector
  exact opposition.unitary_involutive vector

/-- A unitary involution is self-adjoint. -/
theorem operator_selfAdjoint
    (opposition : OppositionStructure kernel) :
    opposition.operator.adjoint = opposition.operator := by
  rw [operator]
  rw [LinearIsometryEquiv.adjoint_eq_symm]
  apply ContinuousLinearMap.ext
  intro vector
  apply opposition.unitary.injective
  simpa using (opposition.unitary_involutive vector).symm

/-- Concept-level exact opposition in the base role.  It is defined by the
role-induced unitary `J`, not by a negative similarity score and not by
coordinatewise negation in a finite factorization. -/
def ExactOpposition
    (opposition : OppositionStructure kernel)
    (source target : Universe.ConceptId) : Prop :=
  conceptVector kernel target =
    opposition.unitary (conceptVector kernel source)

/-- Base-role residual associated to the exact role-induced unitary. -/
def baseResidual
    (opposition : OppositionStructure kernel)
    (source target : Universe.ConceptId) : ℝ :=
  ‖conceptVector kernel target -
    opposition.unitary (conceptVector kernel source)‖

/-- Zero base-role residual is exactly the concept-level role-induced
opposition relation. -/
theorem baseResidual_eq_zero_iff
    (opposition : OppositionStructure kernel)
    (source target : Universe.ConceptId) :
    opposition.baseResidual source target = 0 ↔
      opposition.ExactOpposition source target := by
  rw [baseResidual, norm_eq_zero, sub_eq_zero]
  rfl

/-- Coordinate antipodes are the separate relation computed by the current
finite runtime profile.  They do not inhabit `ExactOpposition` without an
additional theorem identifying coordinate negation with the role-induced
unitary. -/
def CoordinateAntipodes
    (left right : RhetoricalSpace kernel) : Prop :=
  right = -left

/-- Exact opposition residual.  Zero means equality after applying the exact
unitary; it does not by itself assert logical negation. -/
def residual
    (opposition : OppositionStructure kernel)
    (left right : RhetoricalSpace kernel) : ℝ :=
  ‖right - opposition.unitary left‖

end OppositionStructure

end DAF.Rhetorical
```
