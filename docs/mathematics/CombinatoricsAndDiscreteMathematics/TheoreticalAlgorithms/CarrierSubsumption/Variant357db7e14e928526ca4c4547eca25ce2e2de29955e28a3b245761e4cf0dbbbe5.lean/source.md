# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CarrierSubsumption.Variant357db7e14e928526ca4c4547eca25ce2e2de29955e28a3b245761e4cf0dbbbe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd830c94f2a3983b122e0ac0fdaaf50d828583bc` · SHA-256 `ad99977bce1fc265e85da90f4331490b0328150fb3a46145ed4496f46562be7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant144c47ccaa7f0e16a5a77b25e738928d900d4b1629bf5cb4e62e8a3978e73a1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"144c47ccaa7f0e16a5a77b25e738928d900d4b1629bf5cb4e62e8a3978e73a1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Link.Variant144c47ccaa7f0e16a5a77b25e738928d900d4b1629bf5cb4e62e8a3978e73a1d","mathematical_subject":"Computation.DataStructures","original_sha256":"144c47ccaa7f0e16a5a77b25e738928d900d4b1629bf5cb4e62e8a3978e73a1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/CarrierSubsumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Carrier
import Mathematics.Boolean.Formula.Corpus

/-!
# Formula-carrier subsumption

Exact proposal-only links for the three declarations in `Formula.lean`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant144c47ccaa7f0e16a5a77b25e738928d900d4b1629bf5cb4e62e8a3978e73a1d

namespace Mathematics.Boolean.Formula.CarrierSubsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (relation : CorpusSubsumptionRelation) :
    CorpusSubsumptionLink :=
  Corpus.carrierModule.subsumption
    { value := "ideas:boolean-formula:carrier:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    kind
    digest
    digest_valid
    target
    target_nonempty
    relation
    "Reconstruct the elementary free propositional carrier without theorem authority."

def valuation := link
  0 "Valuation" (by decide) .abbrev
  { value := "a3b3fbb68dd94a4e9a454dba6419ad14a0e50c43b39ad8e14f117fe586e3b25b" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Valuation" (by decide)
  .carrierReconstruction

def formula := link
  1 "Formula" (by decide) .inductive
  { value := "70bacc58fbba9bc2a64f3a1324a5f035a7c1fe8275f35df871aa954a918b0e85" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula" (by decide)
  .carrierReconstruction

def constant := link
  2 "const" (by decide) .definition
  { value := "e075e8035be71022d7d960b500f53cb600303b0d6775f997d6aeec44ac691812" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.const" (by decide)
  .definitionReconstruction

def links : List CorpusSubsumptionLink := [valuation, formula, constant]

@[simp] theorem links_length : links.length = 3 := by decide

end Mathematics.Boolean.Formula.CarrierSubsumption
```
