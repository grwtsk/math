-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DimensionLowerBoundInput.Variant1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DimensionLowerBoundInput.Variant1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed","mathematical_subject":"Computation.DataStructures","original_sha256":"1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/Assouad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.Grains
import Surface.Geometry.Kakeya.TubeVolume


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DimensionLowerBoundInput.Variant1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Assouad/Minkowski-style dimension theorem input for Kakeya configurations.

What is certificate-gated:
Dimension conclusions are Prop-valued theorem inputs and require quantitative
volume and grain-decomposition inputs.

What is not claimed:
No Hausdorff, Minkowski, or Assouad dimension lower bound is proved here.
-/

/-- Dimension lower-bound theorem input for a Kakeya configuration. -/
structure DimensionLowerBoundInput
    (K : TubeConfiguration) where
  grainDecomposition : GrainDecomposition K
  tubeVolumeLowerBound : TubeVolumeLowerBound K
  dimensionStatement : Prop
  dimensionStatementCertified : dimensionStatement
  boundary : List String

def DimensionLowerBoundInput.usableForMajorProof
    {K : TubeConfiguration}
    (D : DimensionLowerBoundInput K) :
    Prop :=
  D.grainDecomposition.usableForMajorProof ∧
  D.tubeVolumeLowerBound.usableForMajorProof ∧
  D.dimensionStatement

theorem DimensionLowerBoundInput.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (D : DimensionLowerBoundInput K) :
    D.usableForMajorProof :=
  ⟨D.grainDecomposition.usableForMajorProof_of_fields,
    D.tubeVolumeLowerBound.usableForMajorProof_of_fields,
    D.dimensionStatementCertified⟩

end Surface.Geometry.Kakeya
