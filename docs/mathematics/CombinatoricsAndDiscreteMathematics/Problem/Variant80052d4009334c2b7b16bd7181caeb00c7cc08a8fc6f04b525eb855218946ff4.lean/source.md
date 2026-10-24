# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Problem.Variant80052d4009334c2b7b16bd7181caeb00c7cc08a8fc6f04b525eb855218946ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7da2056022ea580c2eeaa5bc07955a38d850302` · SHA-256 `eaff928a57dae73df2417a12a8ea3426aa94765e8ca8aec1959c389d80fa8394`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProblemSourceKind.Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProblemSourceKind.Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Problem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Ranking

/-! # Canonical problem intermediate representation -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProblemSourceKind.Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab

namespace Mathematics.Mutation

open Mathematics.Juris

inductive ProblemSourceKind
  | controlledInjection
  | observedFailure
  | hybrid
  deriving DecidableEq, Repr

inductive ProblemDisposition
  | knownObstruction
  | matchedObstruction
  | ambiguousObstruction
  | unclassifiedResidue
  | jurisBlocked
  | trustBlocked
  | authorityBlocked
  | diagnosticExperimentRequired
  | repairReady
  | verificationPending
  | discharged
  | quarantined
  | successorSnapshotRequired
  deriving DecidableEq, Repr

structure ProblemIR where
  problemId : StableId
  snapshotDigest : Digest
  sourceKind : ProblemSourceKind
  diagnosisAntichain : ExplanationFamily
  signature : MutationSignature
  violatedInvariants : Finset StableId
  affectedStrata : StratumSet
  jurisDisposition : JurisDisposition
  requiredTrust : Finset StableId
  availableRespectEvidence : Finset StableId
  authorityClass : Authority.EvidenceKind
  disposition : ProblemDisposition
  admissibleDischarges : Finset StableId
  requiredCertificates : Finset StableId
  nonclaims : List Nonclaim

def compileProblemIR
    (problem : ProblemIR) :
    ProblemIR :=
  problem

end Mathematics.Mutation
```
