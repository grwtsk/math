# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecateTo.Varianteb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c4263b6c077329555c85cc45790a42f4680fae3` · SHA-256 `eb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.DeprecateTo
import Mathlib.Tactic.ToAdditive

/--
info: * Pairings:
#[(new_name_mul, mul_easy_deprecated), (new_name_add, add_easy_deprecated)]

Try this:
/-- I also have a doc-string -/
@[to_additive "With its additive doc-string"]
theorem new_name_mul : True :=
  .intro

@[deprecated (since := "YYYY-MM-DD")]
alias mul_easy_deprecated := new_name_mul

@[deprecated (since := "YYYY-MM-DD")]
alias add_easy_deprecated := new_name_add
-/
#guard_msgs in
deprecate to new_name_mul new_name_add "YYYY-MM-DD"
/-- I also have a doc-string -/
@[to_additive "With its additive doc-string"]
theorem mul_easy_deprecated : True := .intro
```
