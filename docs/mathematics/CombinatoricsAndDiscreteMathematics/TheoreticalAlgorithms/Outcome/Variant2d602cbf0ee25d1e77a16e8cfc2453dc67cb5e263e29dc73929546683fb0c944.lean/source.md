# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Outcome.Variant2d602cbf0ee25d1e77a16e8cfc2453dc67cb5e263e29dc73929546683fb0c944

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4d03759f381aa3d0321c07025b35489603c077b` · SHA-256 `430d345c7abab3bcb21d98598128e619fea630924cba850a9ed44f4b4b6de2e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OutcomeKind.Variant73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OutcomeKind.Variant73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f","mathematical_subject":"Computation.DataStructures","original_sha256":"73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/Outcome.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Reflection.Candidate

/-!
# Reflection outcomes

Accepted, challenged, rejected, and revised outcomes all remain first-class
history.  Acceptance is an outcome label only; positive authority still
requires the existing proof-bearing certificate and re-ingestion path.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OutcomeKind.Variant73478d0643bc4610ac48a932f6a70a301aba7108ceb01fd09f82f4ea5956233f

namespace Mathematics.Reflection

inductive OutcomeKind
  | accepted
  | challenged
  | rejected
  | revised
  deriving DecidableEq, Repr, Inhabited

structure Outcome where
  outcomeId : StableId
  candidateId : StableId
  kind : OutcomeKind
  targetProjectId : ProjectId
  evidenceIds : List EvidenceId
  diagnosticIds : List StableId
  successorCandidateId : Option StableId
  outcomeDigest : Digest
  deriving DecidableEq, Repr

/-- Rejection remains addressable and may carry a later revised candidate. -/
def Outcome.IsNegative (outcome : Outcome) : Prop :=
  outcome.kind = .challenged ∨
  outcome.kind = .rejected

end Mathematics.Reflection
```
