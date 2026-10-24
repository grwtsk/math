# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantcb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93ea37424c607dee0aa4ca96c7752d7f905f0aeb` · SHA-256 `cb100b22c74e70ba74cafb72b28293b5028417bed49776b497987f89a03c6027`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
