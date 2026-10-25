# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenDecl.Variantb3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `633cdfdb02c97ab27851e8307f484ac7626395e7` · SHA-256 `b3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.ToString.Name
public import Init.Data.ToString.Extra

public section

namespace Lean

/-- Data for representing `open` commands -/
inductive OpenDecl where
  | simple   (ns : Name) (except : List Name)
  | explicit (id : Name) (declName : Name)
  deriving BEq

namespace OpenDecl
instance : Inhabited OpenDecl := ⟨simple Name.anonymous []⟩

instance : ToString OpenDecl := ⟨fun decl =>
  match decl with
  | explicit id decl => toString id ++ " → " ++ toString decl
  | simple ns ex     => toString ns ++ (if ex == [] then "" else " hiding " ++ toString ex)⟩

end OpenDecl

def rootNamespace := `_root_

def removeRoot (n : Name) : Name :=
  n.replacePrefix rootNamespace Name.anonymous

end Lean
```
