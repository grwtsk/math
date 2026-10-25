# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Opaque.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04722ff7ed8ac957d717676fe91adfe9dae491f2` · SHA-256 `c1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
import Init.Tactics

namespace Lake

opaque POpaque.nonemptyType.{u} : NonemptyType.{u}

/-- An value of unknown type in a specific universe. -/
public def POpaque : Type u := POpaque.nonemptyType.type

/-- An value of unknown type. -/
public abbrev Opaque : Type := POpaque

namespace POpaque

public instance instNonempty : Nonempty POpaque := by
  exact POpaque.nonemptyType.property

/-- Cast away a value's type and universe. -/
public opaque mk.{v,u} {α : Type u} (a : α) : POpaque.{v} :=
  unsafe unsafeCast a

/-- Cast away a value's type and universe. -/
public abbrev _root_.Lake.Opaque.mk {α : Type u} (a : α) : Opaque := POpaque.mk a

/--
Cast an opaque value to a specific type.

This operation is unsafe because there is no guarantee that the opaque
value is of type `α` or that its real value can soundly fit inside the
opaque value's universe.
-/
public unsafe def cast {α : Type u} (self : POpaque.{v}) : α :=
  unsafeCast self

/-- Like `cast`, but with an explicit type. -/
public unsafe abbrev castTo (α : Type u) (self : POpaque.{v}) : α :=
  self.cast
```
