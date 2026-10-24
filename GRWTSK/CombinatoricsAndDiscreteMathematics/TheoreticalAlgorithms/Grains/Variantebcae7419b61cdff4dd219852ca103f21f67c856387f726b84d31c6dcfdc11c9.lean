-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Grain.Variant4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Grain.Variant4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2","mathematical_subject":"Computation.DataStructures","original_sha256":"4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/Grains.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.Prisms


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Grain.Variant4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Multiscale grain decomposition input for theorem-facing Kakeya geometry.

What is certificate-gated:
The decomposition and scale compatibility statements are Prop-valued theorem
inputs.

What is not claimed:
No multiscale grains theorem is proved here.
-/

/-- A grain descriptor in a multiscale Kakeya decomposition. -/
structure Grain where
  id : Nat
  scale : ScaleData
  carrierLabel : String
  boundary : List String
deriving Repr

/-- Multiscale grain decomposition input. -/
structure GrainDecomposition
    (K : TubeConfiguration) where
  grains : List Grain
  prismArrangement : RectangularPrismArrangement K
  coversTubes : Prop
  coversTubesCertified : coversTubes
  scaleCompatible : Prop
  scaleCompatibleCertified : scaleCompatible
  boundary : List String

def GrainDecomposition.usableForMajorProof
    {K : TubeConfiguration}
    (G : GrainDecomposition K) :
    Prop :=
  G.prismArrangement.usableForMajorProof ∧ G.coversTubes ∧ G.scaleCompatible

theorem GrainDecomposition.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (G : GrainDecomposition K) :
    G.usableForMajorProof :=
  ⟨G.prismArrangement.usableForMajorProof_of_fields,
    G.coversTubesCertified,
    G.scaleCompatibleCertified⟩

end Surface.Geometry.Kakeya
