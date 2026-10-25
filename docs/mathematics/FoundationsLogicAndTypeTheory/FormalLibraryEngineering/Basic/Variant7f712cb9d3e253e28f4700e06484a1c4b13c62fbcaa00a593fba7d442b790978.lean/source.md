# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a43abaa7908aa6256ae398f44cc6cf8b2631282` · SHA-256 `7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Date.Unit.Year
public import Std.Time.Date.Unit.Weekday
public import Std.Time.Date.Unit.Week

public section

/-!
This module defines various units used for measuring, counting, and converting between days, months,
years, weekdays, and weeks of the year.

The units are organized into types representing these time-related concepts, with operations provided
to facilitate conversions and manipulations between them.
-/

namespace Std
namespace Time
open Internal

namespace Day.Offset

/--
Convert `Week.Offset` into `Day.Offset`.
-/
@[inline]
def ofWeeks (week : Week.Offset) : Day.Offset :=
  week.mul 7 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (day : Day.Offset) : Week.Offset :=
  day.ediv 7

end Day.Offset
```
