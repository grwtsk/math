# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variantb79c55ff8b236f00e7fd817aba81511430109d5a90fe59e7261b4ca35e71464d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbe7a4511493cc18732bf1875d48efecb7bad22c` · SHA-256 `894060bfc15f44f24606b368d1b2a8d6a926c79ad29a8be4bceecf5aef521809`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Char.Variant889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338","mathematical_subject":"Computation.DataStructures","original_sha256":"889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/Char.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.Char

/- Failing on nightly-2025-12-18
#guard Char.caseFoldAsciiOnly 'A' == 'a'
#guard Char.caseFoldAsciiOnly 'a' == 'a'
#guard Char.caseFoldAsciiOnly 'À' == 'À'
#guard Char.caseFoldAsciiOnly 'à' == 'à'
#guard Char.caseFoldAsciiOnly '$' == '$'

#guard Char.beqCaseInsensitiveAsciiOnly 'a' 'A' == true
#guard Char.beqCaseInsensitiveAsciiOnly 'a' 'a' == true
#guard Char.beqCaseInsensitiveAsciiOnly '$' '$' == true
#guard Char.beqCaseInsensitiveAsciiOnly 'a' 'b' == false
#guard Char.beqCaseInsensitiveAsciiOnly 'γ' 'Γ' == false
#guard Char.beqCaseInsensitiveAsciiOnly 'ä' 'Ä' == false

#guard Char.cmpCaseInsensitiveAsciiOnly 'a' 'A' == .eq
#guard Char.cmpCaseInsensitiveAsciiOnly 'a' 'a' == .eq
#guard Char.cmpCaseInsensitiveAsciiOnly '$' '$' == .eq
#guard Char.cmpCaseInsensitiveAsciiOnly 'a' 'b' == .lt
#guard Char.cmpCaseInsensitiveAsciiOnly 'γ' 'Γ' == .gt
#guard Char.cmpCaseInsensitiveAsciiOnly 'ä' 'Ä' == .gt
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338

```
