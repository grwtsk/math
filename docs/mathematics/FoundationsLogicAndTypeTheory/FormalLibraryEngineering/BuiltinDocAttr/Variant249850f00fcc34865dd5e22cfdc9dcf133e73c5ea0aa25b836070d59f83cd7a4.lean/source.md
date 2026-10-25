# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinDocAttr.Variant249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29e8ce8cdf6eb4f3d921ba26d85a3382c2dd2045` · SHA-256 `249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Compiler.InitAttr
import Lean.DocString.Markdown

public section

namespace Lean

def declareBuiltinDocStringAndRanges (declName : Name) : AttrM Unit := do
  if let some doc ← findSimpleDocString? (← getEnv) declName (includeBuiltin := false) then
    declareBuiltin (declName ++ `docString) (mkAppN (mkConst ``addBuiltinDocString) #[toExpr declName, toExpr doc])
  if let some declRanges ← findDeclarationRanges? declName then
    declareBuiltin (declName ++ `declRange) (mkAppN (mkConst ``addBuiltinDeclarationRanges) #[toExpr declName, toExpr declRanges])

/--
Makes the documentation and location of a declaration available as a builtin.

This allows the documentation of core Lean features to be visible without importing the file they
are defined in. This is only useful during bootstrapping and should not be used outside of
the Lean source code.
-/
@[builtin_doc]
builtin_initialize
  registerBuiltinAttribute {
    name  := `builtin_doc
    descr := "make the docs and location of this declaration available as a builtin"
    add   := fun decl stx _ => do
      Attribute.Builtin.ensureNoArgs stx
      declareBuiltinDocStringAndRanges decl
    applicationTime := AttributeApplicationTime.afterCompilation
  }

end Lean
```
