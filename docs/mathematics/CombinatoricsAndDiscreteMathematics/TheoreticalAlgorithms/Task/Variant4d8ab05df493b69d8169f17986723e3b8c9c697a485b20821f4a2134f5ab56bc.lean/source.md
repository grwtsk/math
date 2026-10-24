# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Task.Variant4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3e9082573d31f75ddec3614aee0172e3ed476ed` · SHA-256 `4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich

Additional `Task` definitions.
-/
module

prelude
public import Init.Core
import Init.Data.List.Basic
import Init.Data.Nat.Bitwise.Basic

public section

namespace Task

/--
Creates a task that, when all `tasks` have finished, computes the result of `f` applied to their
results.
-/
def mapList (f : List α → β) (tasks : List (Task α)) (prio := Task.Priority.default)
    (sync := false) : Task β :=
  go tasks []
where
  go
    | [], as =>
      if sync then
        .pure <| f as.reverse
      else
        Task.spawn (prio := prio) fun _ => f as.reverse
    | [t], as => t.map (fun a => f (a :: as).reverse) prio sync
    | t::ts, as => t.bind (fun a => go ts (a :: as)) prio sync
```
