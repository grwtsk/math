# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianta134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88089ceb5200e612e123a61f3b7030b354b4a359` · SHA-256 `a134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Data.Array.Basic

public section

/-!
The basic data type and namespace for the `Lean.Meta.ArgsPacker` modules.

This is separated so that `Lean.Elab.PreDefinition.WF.Eqns` can include the
type in `EqnInfos` without depending on full module with operations.
-/

namespace Lean.Meta

/--
The metadata required for the operation in the `Lean.Meta.ArgsPacker` module; see
the module docs there for an overview.
-/
structure ArgsPacker where
  /--
  Variable names to use when unpacking a packed argument.

  Crucially, the size of this array also indicates the number of functions to pack, and
  the length of each array the arity.
  -/
  varNamess : Array (Array Name)
  deriving Inhabited

end Lean.Meta
```
