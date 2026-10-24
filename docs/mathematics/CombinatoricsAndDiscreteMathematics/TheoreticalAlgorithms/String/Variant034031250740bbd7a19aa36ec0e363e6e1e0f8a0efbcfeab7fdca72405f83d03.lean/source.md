# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant034031250740bbd7a19aa36ec0e363e6e1e0f8a0efbcfeab7fdca72405f83d03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `159cbd6442eaf136b99ed108fb45eb7099276ffb` · SHA-256 `a3f9b14bf049520dc1addbb1584d4c793e43e10d6c9d0e38dddfd36af0a6e808`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceUnit.Variantcb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variantcb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027","mathematical_subject":"Foundations.Unclassified","original_sha256":"cb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/String.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/- Failing on nightly-2025-12-18
import Batteries.Data.String.AsciiCasing

#guard "ABC".caseFoldAsciiOnly == "abc"
#guard "x".caseFoldAsciiOnly != "y"
#guard "Àà".caseFoldAsciiOnly == "Àà"
#guard "1$#!".caseFoldAsciiOnly == "1$#!"

#guard "abc".beqCaseInsensitiveAsciiOnly "ABC" == true
#guard "cba".beqCaseInsensitiveAsciiOnly "ABC" == false
#guard "a".beqCaseInsensitiveAsciiOnly "a" == true
#guard "$".beqCaseInsensitiveAsciiOnly "$" == true
#guard "a".beqCaseInsensitiveAsciiOnly "b" == false
#guard "γ".beqCaseInsensitiveAsciiOnly "Γ" == false
#guard "ä".beqCaseInsensitiveAsciiOnly "Ä" == false

#guard  "abc".cmpCaseInsensitiveAsciiOnly "ABC" == .eq
#guard  "abc".cmpCaseInsensitiveAsciiOnly "xyz" == .lt
#guard  "a".cmpCaseInsensitiveAsciiOnly "a" == .eq
#guard  "$".cmpCaseInsensitiveAsciiOnly "$" == .eq
#guard  "a__".cmpCaseInsensitiveAsciiOnly "b__" == .lt
#guard  "γ".cmpCaseInsensitiveAsciiOnly "Γ" == .gt
#guard  "ä".cmpCaseInsensitiveAsciiOnly "Ä" == .gt

#guard [
  ("", ""),
  ("  ", "  "),
  ("a", "A"),
  ("abc", "ABC"),
  ("aBc", "AbC"),
  ("123", "123"),
  ("国际化与本地化", "国际化与本地化"),
  ("ABC😂🔰🍑xyz", "abc😂🔰🍑XYZ")
].all (fun (a, b) => a.beqCaseInsensitiveAsciiOnly b && a.cmpCaseInsensitiveAsciiOnly b = .eq)

#guard [
  ("国际化", "国际化与本地化"),
  ("", " "),
  ("a", "b"),
  ("ab", "ba"),
  ("123", "124"),
  ("😂", "🍑"),
  ("🔰🍑", "😂🔰🍑aaa")
] |>.all fun (a, b) =>
  a ≠ b && !(a.beqCaseInsensitiveAsciiOnly b) && a.cmpCaseInsensitiveAsciiOnly b != .eq
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceUnit.Variantcb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027

```
