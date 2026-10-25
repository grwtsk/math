# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPRoundtrip.Variantdaf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `752a26277923b3207ee428abab647dcf85b1387c` · SHA-256 `daf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.PPRoundtrip

/--
info: "a   a"
---
warning: source context
'al "    a '
'al " a a\n'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
#eval "    a   a\n       "    |>.trim

/--
warning: source context
'rd ¬   fa'
'rd ¬false'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
#guard ¬   false

/--
warning: source context
'le {a: Nat'
'le {a : Na'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
variable {a: Nat}

/--
warning: source context
' {a :Nat}'
' {a : Nat}'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
variable {a :Nat}

/--
info: (fun x1 x2 => x1 + x2) 0 1 : Nat
---
warning: source context
'k (·+·) '
'k (· + ·'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
#check (·+·) 0 1

#guard_msgs in
set_option linter.ppRoundtrip true in
-- check that trailing comments do not trigger the linter
example : 0 = 0 := by
  rw [] -- this goal is closed by the `rfl` implied by `rw`
```
