-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TypeIIBlockSurgeryCoefficientPartition.Variante021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.TypeIIBlockSurgeryCoefficientPartition.Variante021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/BlockSurgeryMassPacking.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.MassPacking
public import Surface.Core.TypeII.SpatialCarrier

/-!
# Mass packing for exact block surgery

This adapter applies the generic matched-partition Cauchy--Schwarz theorem to
the literal `leftBlock` and `rightBlock` maps of `TypeIIBlockSurgery`.
No cross-matrix or terminal estimate is used.
-/


namespace GRWTSK.Algebra.LinearAlgebra.TypeIIBlockSurgeryCoefficientPartition.Variante021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf

public section

namespace Surface.Core.TypeII

noncomputable section

/-- The coefficient partition induced by one exact block surgery. -/
@[expose]
def TypeIIBlockSurgery.coefficientPartition
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) :
    MatchedCoefficientPartition surgery.Child Left Right where
  leftBlock := surgery.leftBlock
  rightBlock := surgery.rightBlock

/-- Sum of child coefficient masses is bounded by the parent mass. -/
@[surface_novel, surface_published]
theorem TypeIIBlockSurgery.child_mass_sum_le_parent_mass
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right) :
    (∑ child : surgery.Child,
      (surgery.coefficientPartition.childMass left right child)) ≤
        ‖left‖ * ‖right‖ :=
  surgery.coefficientPartition.sum_childMass_le_parent left right

end

end Surface.Core.TypeII

end
