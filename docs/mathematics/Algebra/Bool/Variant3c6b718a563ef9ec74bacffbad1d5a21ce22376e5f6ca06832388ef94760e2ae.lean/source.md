# Complete source: GRWTSK.Algebra.Bool.Variant3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bbdae82c5fd61d7f7a761d33695fd08640c4fe6` · SHA-256 `3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Algebra

namespace Boolean

universe u

instance instBoolAlgebra : Algebra Bool where
  join := fun a b => a || b
  meet := fun a b => a && b
  compl := fun a => !a
  bot := false
  top := true

  bot_ne_top := by
    intro h
    cases h

  join_bot := by
    intro a
    cases a <;> rfl

  meet_top := by
    intro a
    cases a <;> rfl

  join_comm := by
    intro a b
    cases a <;> cases b <;> rfl

  meet_comm := by
    intro a b
    cases a <;> cases b <;> rfl

  join_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  meet_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  join_meet_distrib := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  meet_join_distrib := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  join_compl := by
    intro a
    cases a <;> rfl

  meet_compl := by
    intro a
    cases a <;> rfl

end Boolean
```
