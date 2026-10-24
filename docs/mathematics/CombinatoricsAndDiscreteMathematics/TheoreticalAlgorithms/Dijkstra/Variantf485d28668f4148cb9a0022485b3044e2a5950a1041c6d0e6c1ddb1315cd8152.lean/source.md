# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dijkstra.Variantf485d28668f4148cb9a0022485b3044e2a5950a1041c6d0e6c1ddb1315cd8152

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21ea4ce5f53cf53fb59e01a9df2358c19b1209a1` · SHA-256 `ed901d612ce6ba2d752fcb0987e74df5f24d8da603f39ab6962ae78417810103`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DijkstraPathCertificate.Variant89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DijkstraPathCertificate.Variant89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571","mathematical_subject":"Computation.DataStructures","original_sha256":"89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exact/Dijkstra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Conditional Dijkstra settled-label certificate

Costs are natural numbers in this structural boundary, so admitted costs are
nonnegative.  Completeness of eligible outgoing-edge enumeration and exact
relaxation are still explicit premises.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DijkstraPathCertificate.Variant89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571

namespace Mathematics.GraphAccess

structure DijkstraPathCertificate (Node : Type u) where
  source : Node
  target : Node
  settledCost : Nat
  candidateCosts : List Nat
  eligibleEdgesComplete : Prop
  relaxationArithmeticExact : Prop
  eligibleEdgesCompleteEvidence : eligibleEdgesComplete
  relaxationArithmeticExactEvidence : relaxationArithmeticExact
  settledLabelOptimal :
    ∀ candidateCost,
      candidateCost ∈ candidateCosts →
      settledCost ≤ candidateCost

theorem dijkstra_settled_label_optimal
    {Node : Type u}
    (certificate : DijkstraPathCertificate Node)
    (candidateCost : Nat)
    (candidateRegistered :
      candidateCost ∈ certificate.candidateCosts) :
    certificate.settledCost ≤ candidateCost :=
  certificate.settledLabelOptimal
    candidateCost
    candidateRegistered

end Mathematics.GraphAccess
```
