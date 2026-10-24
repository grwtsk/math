# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IO.Variant09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7f9361704f7799bd4f305d769171f0a2131e659` · SHA-256 `09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Lean.System.IO
public import Batteries.Data.MLList.Basic

@[expose] public section

/-!
# IO operations using monadic lazy lists.
-/

namespace MLList

/--
Give a list of tasks, return the monadic lazy list which
returns the values as they become available.
-/
def ofTaskList (tasks : List (Task α)) : MLList BaseIO α :=
  fix?' (init := tasks) fun t => do
    if h : 0 < t.length then
      some <$> IO.waitAny' t h
    else
      pure none
```
