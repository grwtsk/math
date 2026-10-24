# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BFS.Variant7fc6274e65cdbe8e41ab70604fa83a584c617f09f5128534e3eeb82c5900729c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8af1af9f17203b236e8360dae59e83f4fc03a71` · SHA-256 `3b8262d1fe3652f06bee32c7b30d0e8b438a8a8127650128d8fcf3a28ddace7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BfsPathCertificate.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BfsPathCertificate.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","mathematical_subject":"Computation.DataStructures","original_sha256":"bb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exact/BFS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Conditional BFS shortest-shell certificate

The theorem projects shortestness from explicit complete-shell and candidate
path evidence.  Concrete neighbor completeness remains external evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BfsPathCertificate.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4

namespace Mathematics.GraphAccess

structure BfsPathCertificate (Node : Type u) where
  source : Node
  target : Node
  distance : Nat
  path : List Node
  shellComplete : Prop
  edgeValidity : Prop
  shellCompleteEvidence : shellComplete
  edgeValidityEvidence : edgeValidity
  candidateDistances : List Nat
  firstTargetShellShortest :
    ∀ candidateDistance,
      candidateDistance ∈ candidateDistances →
      distance ≤ candidateDistance

theorem bfs_first_target_shell_shortest
    {Node : Type u}
    (certificate : BfsPathCertificate Node)
    (candidateDistance : Nat)
    (candidateRegistered :
      candidateDistance ∈ certificate.candidateDistances) :
    certificate.distance ≤ candidateDistance :=
  certificate.firstTargetShellShortest
    candidateDistance
    candidateRegistered

end Mathematics.GraphAccess
```
