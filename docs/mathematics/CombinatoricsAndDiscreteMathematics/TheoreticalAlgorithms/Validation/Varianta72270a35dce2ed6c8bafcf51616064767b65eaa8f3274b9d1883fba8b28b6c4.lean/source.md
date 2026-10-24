# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Validation.Varianta72270a35dce2ed6c8bafcf51616064767b65eaa8f3274b9d1883fba8b28b6c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dc5dbfede14441c6f1c5e04fba566da9ed715ff` · SHA-256 `a2e9635f5a7a80b043171da1f522c2a5975980793356dcac8cf75f3ff4d351bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Ledger.Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f","mathematical_subject":"Computation.DataStructures","original_sha256":"b32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/ProofStrategy/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.ProofStrategy.Registry

/-! # Proof-motif and strategy validation -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f

namespace MathDiscovery.ProofStrategy

structure Ledger where
  motifs : List MotifObservation
  strategies : List StrategyEvidence

namespace Ledger

def Valid (ledger : Ledger) : Prop :=
  (ledger.motifs.map (·.id)).Nodup ∧
  (ledger.strategies.map (·.id)).Nodup ∧
  (∀ motif ∈ ledger.motifs, motif.Valid) ∧
  (∀ strategy ∈ ledger.strategies,
    strategy.Valid ∧
    ∀ motifId ∈ strategy.motifObservationIds,
      ∃ motif ∈ ledger.motifs,
        motif.id = motifId ∧ motif.theoremId = strategy.theoremId)

end Ledger

end MathDiscovery.ProofStrategy
```
