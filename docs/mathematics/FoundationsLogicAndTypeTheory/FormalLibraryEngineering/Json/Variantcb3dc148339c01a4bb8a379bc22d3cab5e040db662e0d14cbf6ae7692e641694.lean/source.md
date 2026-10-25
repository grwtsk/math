# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantcb3dc148339c01a4bb8a379bc22d3cab5e040db662e0d14cbf6ae7692e641694

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0efa49ca0db23deeb1f6dd082dfaa3ed8adbf2b9` · SHA-256 `0a941e9ec6fe7ac7e7e33598076020955c2a83c9b538cd1044436481a02695e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variantfd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.GuardMsgs.Variantfd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"fd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/json.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardMsgs
import Std.Data.Json


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variantfd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29

open scoped Std.Json

/-- info: {"lookACalc": 131,
 "lemonCount": 100000000000000000000000000000000,
 "isCool": true,
 "isBug": null,
 "hello": "world",
 "cheese": ["edam", "cheddar", {"rank": 100.2, "kind": "spicy"}]}-/
#guard_msgs in
#eval json% {
  hello : "world",
  cheese : ["edam", "cheddar", {kind : "spicy", rank : 100.2}],
  lemonCount : 100e30,
  isCool : true,
  isBug : null,
  lookACalc: $(23 + 54 * 2)
}

-- See https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/json.20elaborator
example : Lean.Json := Id.run do
  let _x := true
  return json% {"x" : 1}
```
