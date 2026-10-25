# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unreachable.Variantb0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5105055c128d10c70158f925df1d4c2376d333dd` · SHA-256 `b0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Elab.Tactic.Basic

public meta section

namespace Batteries.Tactic

/--
This tactic causes a panic when run (at compile time).
(This is distinct from `exact unreachable!`, which inserts code which will panic at run time.)

It is intended for tests to assert that a tactic will never be executed, which is otherwise an
unusual thing to do (and the `unreachableTactic` linter will give a warning if you do).

The `unreachableTactic` linter has a special exception for uses of `unreachable!`.
```
example : True := by trivial <;> unreachable!
```
-/
elab (name := unreachable) "unreachable!" : tactic => do
  panic! "unreachable tactic has been reached"
  -- Note that `panic!` does not actually halt execution or early exit,
  -- so we still have to throw an error after panicking.
  throwError "unreachable tactic has been reached"

@[inherit_doc unreachable] macro (name := unreachableConv) "unreachable!" : conv =>
  `(conv| tactic' => unreachable!)
````
