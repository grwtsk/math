# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bool.Variant271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fbd5b52b3072373fb9a15309106f6de432fd561` · SHA-256 `271b476e4a44868a3aed617e57e4f8f49751251f00579d953de54342a98f2cd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Algebra.Basic

namespace Surface.Boolean

universe u

instance : BooleanAlgebraCore Bool where
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

end Surface.Boolean
```
