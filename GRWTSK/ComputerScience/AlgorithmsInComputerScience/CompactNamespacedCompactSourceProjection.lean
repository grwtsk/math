-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompactSourceProjection.Variant34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompactSourceProjection.Variant34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea","mathematical_subject":"Computation.DataStructures","original_sha256":"34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Compact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.CompactInduction
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Residue


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompactSourceProjection.Variant34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.Compact

structure CompactSourceProjection where
  sourcePath : String
  compactLabel : String
  canonicalFiber : String
  residueClass : String
  poleConservative : Prop
  residueComplete : Prop

def CompactSourceProjection.admitted
    (P : CompactSourceProjection) : Prop :=
  P.poleConservative ∧ P.residueComplete

structure CompactSourceTreePass where
  projections : List CompactSourceProjection
  compactInductionAudit : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses
  contractionsPreserveResidue : Prop
  importsRemainAcyclic : Prop

def CompactSourceTreePass.admitted
    (P : CompactSourceTreePass) : Prop :=
  P.compactInductionAudit.admitted ∧
    P.contractionsPreserveResidue ∧
    P.importsRemainAcyclic

theorem admitted_projection_has_residue_complete
    (P : CompactSourceProjection)
    (h : P.admitted) :
    P.residueComplete := by
  exact h.2

end Think.RadoProjectedModularHeatflow.Compact
