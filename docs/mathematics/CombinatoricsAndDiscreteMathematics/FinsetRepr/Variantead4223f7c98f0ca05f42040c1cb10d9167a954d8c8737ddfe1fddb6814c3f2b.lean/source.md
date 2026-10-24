# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetRepr.Variantead4223f7c98f0ca05f42040c1cb10d9167a954d8c8737ddfe1fddb6814c3f2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12bc87935a2e5194241fa44fdf885953b54f0460` · SHA-256 `0c4ee07121ac84c615f8914ed86e04f8f3e71d442dbe52c05ae593edefdb71c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variantfe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Sort.Variantfe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/finset_repr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Sort


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variantfe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba

#eval show Lean.MetaM Unit from guard <|
  (repr (0 : Multiset (List ℕ)) |>.pretty 15) = "0"
#eval show Lean.MetaM Unit from guard <|
  (repr ({[1, 2, 3], [4, 5, 6]} : Multiset (List ℕ)) |>.pretty 15) = "{[1, 2, 3],\n [4, 5, 6]}"

#eval show Lean.MetaM Unit from guard <|
  (repr (∅ : Finset (List ℕ)) |>.pretty 15) = "∅"
#eval show Lean.MetaM Unit from guard <|
  (repr ({[1, 2, 3], [4, 5, 6]} : Finset (List ℕ)) |>.pretty 15) = "{[1, 2, 3],\n [4, 5, 6]}"
```
