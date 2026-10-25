# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inductive.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `034d5019951b26344f3ac5864ab0e57d706edda8` · SHA-256 `efe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic

public section

/-! # Helper methods for inductive datatypes -/

namespace Lean.Meta

/-- Return true if the types of the given constructors are compatible. -/
def compatibleCtors (ctorName₁ ctorName₂ : Name) : MetaM Bool := do
  let ctorInfo₁ ← getConstInfoCtor ctorName₁
  let ctorInfo₂ ← getConstInfoCtor ctorName₂
  if ctorInfo₁.induct != ctorInfo₂.induct then
    return false
  else
    let (_, _, ctorType₁) ← forallMetaTelescope ctorInfo₁.type
    let (_, _, ctorType₂) ← forallMetaTelescope ctorInfo₂.type
    isDefEq ctorType₁ ctorType₂

end Lean.Meta
```
