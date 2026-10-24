# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Principal.Variantd251845f684e483433153d25dc93f2bc89b6fe6c977f414a194012f3f1af2af6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0637f1b60b179aa5b32d2a086b895aec71a120e3` · SHA-256 `26c8d4230e4ef5b374cd339a7423cd4c355e83336f9fc6c30e07592a2689a798`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrincipalKind.Variantac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PrincipalKind.Variantac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Principal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Set.Basic
import Mathematics.Core.SemanticIdentity

/-!
# Principals and competence

Competence is descriptive evidence about a principal.  It is not an
operational capability, a permission observation, an execution receipt, or
theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrincipalKind.Variantac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d

namespace Mathematics.Capability

abbrev PrincipalId := StableId
abbrev DeviceId := StableId
abbrev PurposeId := StableId
abbrev LeaseId := StableId
abbrev GrantId := StableId
abbrev RequestId := StableId
abbrev ChartId := StableId

inductive PrincipalKind
  | human
  | model
  | operatingSystem
  | service
  deriving DecidableEq, Repr

structure Principal where
  principalId : PrincipalId
  kind : PrincipalKind
  deriving DecidableEq, Repr

/-- Descriptive knowledge or skill; it contains no machine authority. -/
structure CompetenceProfile where
  principal : Principal
  domains : Set StableId
  evidence : Set EvidenceId

end Mathematics.Capability
```
