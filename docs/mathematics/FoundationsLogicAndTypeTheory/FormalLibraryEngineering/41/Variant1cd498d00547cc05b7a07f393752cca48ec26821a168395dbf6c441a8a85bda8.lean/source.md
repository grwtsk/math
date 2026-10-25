# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.41.Variant1cd498d00547cc05b7a07f393752cca48ec26821a168395dbf6c441a8a85bda8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7c4098cd2882838e986d3580191384ca7f77f45` · SHA-256 `d1907b54217f02caa141a5048c2347662f9e060bc0eba5a0306a0567fd02f522`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/41.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737

set_option aesop.check.all true

/--
error: no such rule set: 'Nonexistent'
  (Use 'declare_aesop_rule_set' to declare rule sets.
   Declared rule sets are not visible in the current file; they only become visible once you import the declaring file.)
-/
#guard_msgs in
example : True := by
  aesop (rule_sets := [Nonexistent])
```
