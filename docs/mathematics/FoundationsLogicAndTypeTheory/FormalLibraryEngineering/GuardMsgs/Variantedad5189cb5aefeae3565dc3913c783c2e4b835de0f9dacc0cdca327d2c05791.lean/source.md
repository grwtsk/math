# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variantedad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a6b77e282c11a048e3c7d8dc2ec06486a54d1c6` · SHA-256 `edad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.GuardMsgs

#guard_msgs in
/-- error: unknown identifier 'x' -/
#guard_msgs in
example : α := x

/--
error: unknown identifier 'x'
---
error: ❌ Docstring on `#guard_msgs` does not match generated message:

error: unknown identifier 'x'
-/
#guard_msgs in
#guard_msgs in
example : α := x

#guard_msgs in
/-- warning: declaration uses 'sorry' -/
#guard_msgs in
example : α := sorry

#guard_msgs in
/-- warning: declaration uses 'sorry' -/
#guard_msgs(warning) in
example : α := sorry

/-- warning: declaration uses 'sorry' -/
#guard_msgs in
#guard_msgs(error) in
example : α := sorry

#guard_msgs in
#guard_msgs(drop warning) in
example : α := sorry

#guard_msgs in
#guard_msgs(error, drop warning) in
example : α := sorry

#guard_msgs in
/-- error: unknown identifier 'x' -/
#guard_msgs(error, drop warning) in
example : α := x

#guard_msgs in
/--
error: failed to synthesize instance
  OfNat α 22
-/
#guard_msgs(error) in
example : α := 22
```
