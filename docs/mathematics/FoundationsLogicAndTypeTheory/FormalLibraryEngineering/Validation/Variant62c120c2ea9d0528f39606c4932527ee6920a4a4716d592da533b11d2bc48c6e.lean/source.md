# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant62c120c2ea9d0528f39606c4932527ee6920a4a4716d592da533b11d2bc48c6e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7135d22641af2c29ef26cc76d0dc982266e5c9c4` · SHA-256 `261733c8e020ecfdc187b9bed6bcc489093455d504dc5ba58ccbc2ed4001d9e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variantf5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Valid.Variantf5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8","mathematical_subject":"Foundations.Unclassified","original_sha256":"f5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Progression/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Progression.Tower

/-! # Progression validation -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variantf5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8

namespace Mathematics.Progression

def RevisionsIncrease (tower : Tower Payload) : Prop :=
  tower.states.Pairwise fun earlier later ↦ earlier.revision < later.revision

def LinksAgree (tower : Tower Payload) : Prop :=
  ∀ earlier later,
    earlier ∈ tower.states →
    later ∈ tower.states →
    earlier.revision + 1 = later.revision →
    later.predecessor = some earlier.id

structure Valid (tower : Tower Payload) : Prop where
  idValid : tower.id.Valid
  revisionsIncrease : RevisionsIncrease tower
  linksAgree : LinksAgree tower
  digestValid : tower.progressionDigest.Valid

end Mathematics.Progression
```
