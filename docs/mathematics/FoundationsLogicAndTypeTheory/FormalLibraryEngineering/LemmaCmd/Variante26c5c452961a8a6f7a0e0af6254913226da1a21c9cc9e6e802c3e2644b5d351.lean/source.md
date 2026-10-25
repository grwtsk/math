# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LemmaCmd.Variante26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfbffbd72a295e92324e51c38c3eeb0a7725da49` · SHA-256 `e26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Lemma

-- lemma disabled by default
/--
info: Try this:
  [apply] theorem
---
error: `lemma` is not supported by default, please use `theorem` instead.
Use `set_option lang.lemmaCmd true` to enable the use of the `lemma` command in a file.
Use the command line option `-Dlang.lemmaCmd=true` to enable the use of `lemma` globally.
-/
#guard_msgs in
lemma test1 : 3 < 7 := by decide

-- lemma enabled for one command
set_option lang.lemmaCmd true in
lemma test2 : 3 < 7 := by decide

-- lemma disabled again
/--
info: Try this:
  [apply] theorem
---
error: `lemma` is not supported by default, please use `theorem` instead.
Use `set_option lang.lemmaCmd true` to enable the use of the `lemma` command in a file.
Use the command line option `-Dlang.lemmaCmd=true` to enable the use of `lemma` globally.
-/
#guard_msgs in
lemma test3 : 3 < 7 := by decide

-- lemma enabled for rest of file
set_option lang.lemmaCmd true

lemma test4 : 3 < 7 := by decide

lemma test5 : 3 < 7 := by decide
```
