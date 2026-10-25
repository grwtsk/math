# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HourMarker.Variant0e4ba58a8481aa17c05b0e6e753e6299d4b550c8c64f35ecaed4c4c7b17250bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b98717cb8ac9bcde9e00e339a8a7747bd1b81a4e` · SHA-256 `0e4ba58a8481aa17c05b0e6e753e6299d4b550c8c64f35ecaed4c4c7b17250bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Time.Basic

public section

namespace Std
namespace Time
open Internal

set_option linter.all true

/--
`HourMarker` represents the two 12-hour periods of the day: `am` for hours between 12:00 AM and
11:59 AM, and `pm` for hours between 12:00 PM and 11:59 PM.
-/
inductive HourMarker

  /--
  Ante meridiem.
  -/
  | am

  /--
  Post meridiem.
  -/
  | pm
deriving Repr, DecidableEq

instance : Ord HourMarker where
  compare
    | .am, .am => .eq
    | .am, .pm => .lt
    | .pm, .am => .gt
    | .pm, .pm => .eq

instance : OrientedOrd HourMarker where
  eq_swap {a b} := by cases a <;> cases b <;> rfl

instance : TransOrd HourMarker where
  isLE_trans {a b c} hab hbc := by cases a <;> cases b <;> cases c <;> simp_all

instance : LawfulEqOrd HourMarker where
  eq_of_compare {a b} h := by cases a <;> cases b <;> simp_all

namespace HourMarker

/--
`ofOrdinal` converts an `Hour.Ordinal` value to an `HourMarker`, indicating whether it is AM or PM.
-/
def ofOrdinal (time : Hour.Ordinal) : HourMarker :=
  if time.val ≥ 12 then
    .pm
  else
    .am

/--
Converts a 12-hour clock time to a 24-hour clock time based on the `HourMarker`.
-/
def toAbsolute (marker : HourMarker) (time : Bounded.LE 1 12) : Hour.Ordinal :=
  match marker with
  | .am => if time.val = 12 then 0 else time.expand (by decide) (by decide)
  | .pm => if time.val = 12 then 12 else time.add 12 |>.emod 24 (by decide)

/--
Converts a 24-hour clock time to a 12-hour clock time with a `HourMarker`.
-/
def toRelative (hour : Hour.Ordinal) : Bounded.LE 1 12 × HourMarker :=
  if h₀ : hour.val = 0 then
    (⟨12, by decide⟩, .am)
  else if h₁ : hour.val ≤ 12 then
     if hour.val = 12 then
      (⟨12, by decide⟩, .pm)
    else
      Int.ne_iff_lt_or_gt.mp h₀ |>.by_cases
        (nomatch Int.not_le.mpr · <| hour.property.left)
        (⟨hour.val, And.intro · h₁⟩, .am)
  else
    let h := Int.not_le.mp h₁
    let t := hour |>.truncateBottom h |>.sub 12
    (t.expandTop (by decide), .pm)

end HourMarker
end Time
end Std
```
