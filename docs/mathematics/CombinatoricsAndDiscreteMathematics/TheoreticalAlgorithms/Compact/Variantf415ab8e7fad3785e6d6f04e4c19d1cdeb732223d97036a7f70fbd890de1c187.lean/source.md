# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compact.Variantf415ab8e7fad3785e6d6f04e4c19d1cdeb732223d97036a7f70fbd890de1c187

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7be330b1e1e8e05ac46b299a490650eb96886ce` · SHA-256 `13003721062e7892037a18d71ba4c861b4f38b14e72040f17275867e491a71fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
