# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnboxResult.Variant980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54ab90c2c910c58565b2683615d49307598f52c4` · SHA-256 `980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Basic

public section

namespace Lean.IR.UnboxResult

/--
Tags types that the compiler should unbox if they occur in result values.

This attribute currently has no effect.
-/
@[builtin_doc]
builtin_initialize unboxAttr : TagAttribute ←
  registerTagAttribute `unbox "compiler tries to unbox result values if their types are tagged with `[unbox]`" fun declName => do
    let cinfo ← getConstInfo declName;
    match cinfo with
    | ConstantInfo.inductInfo v =>
      if v.isRec then throwError "Cannot add attribute `[unbox]` to `{.ofConstName declName}`: Recursive inductive datatypes are not supported"
      else pure ()
    | _ => throwError "Cannot add attribute `[unbox]` to `{.ofConstName declName}`: `[unbox]` can only be added to inductive types"

def hasUnboxAttr (env : Environment) (n : Name) : Bool :=
  unboxAttr.hasTag env n

end Lean.IR.UnboxResult
```
