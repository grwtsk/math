# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IO.Variantf4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eeea4d9e2fc5d788b1e33229571c5ea32ce5d15` · SHA-256 `f4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

@[expose] public section

/-!
# Functions for manipulating a list of tasks

* `IO.waitAny'` is a wrapper for `IO.waitAny` that also returns the remaining tasks.
* `List.waitAll : List (Task α) → Task (List α)` gathers a list of tasks into a task returning
  the list of all results.
-/

set_option autoImplicit true

-- duplicated from `lean4/src/Init/System/IO.lean`
local macro "nonempty_list" : tactic =>
  `(tactic| exact Nat.zero_lt_succ _)

/--
Given a list of tasks, create the task returning the list of results,
by waiting for each.
-/
def List.waitAll (tasks : List (Task α)) : Task (List α) :=
  match tasks with
  | [] => .pure []
  | task :: tasks => task.bind (prio := .max) fun a =>
      tasks.waitAll.map (prio := .max) fun as => a :: as
```
