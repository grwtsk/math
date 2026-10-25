# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Format.Variantd6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f23b01d72a50c1328637167956849299907bcb9` · SHA-256 `d6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Tactic.OpenPrivate

namespace Std.Format

open private State State.mk State.out from Init.Data.Format.Basic in
/--
Renders a `Format` to a string. Similar to `Format.pretty`, but with additional options:
* `w`: the total width
* `indent`: the initial indentation
* `column`: the initial column for the first line
-/
def prettyExtra (f : Format) (w : Nat := defWidth) (indent : Nat := 0) (column := 0) : String :=
  let act : StateM State Unit := prettyM f w indent
  State.out <| act (State.mk "" column) |>.snd
```
