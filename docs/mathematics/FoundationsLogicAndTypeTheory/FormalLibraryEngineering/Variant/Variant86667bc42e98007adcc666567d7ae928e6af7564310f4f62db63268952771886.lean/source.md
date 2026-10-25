# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Variant.Variant86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46d307cb93e50109b20db1b003c9a1607f09223c` · SHA-256 `86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.ScopedEnvExtension
public section
namespace Lean.Meta.Sym.DSimp

/--
A named `Sym.dsimp` variant. Stores `pre`/`post` dsimproc chains as syntax
(elaborated at use time in `GrindTacticM`) and configuration overrides.
-/
structure SymDSimpVariant where
  /-- Pre-processing dsimproc chain (elaborated at use time). -/
  pre?   : Option Syntax := none
  /-- Post-processing dsimproc chain (elaborated at use time). -/
  post?  : Option Syntax := none
  /-- Configuration overrides. -/
  config : Config := {}
  deriving Inhabited

/-- Entry for the scoped environment extension. -/
structure SymDSimpVariantEntry where
  name    : Name
  variant : SymDSimpVariant
  deriving Inhabited

/-- Persistent environment extension mapping variant names to their definitions. -/
builtin_initialize symDSimpVariantExtension :
    SimpleScopedEnvExtension SymDSimpVariantEntry (Std.HashMap Name SymDSimpVariant) ←
  registerSimpleScopedEnvExtension {
    name     := `symDSimpVariantExtension
    initial  := {}
    addEntry := fun map entry => map.insert entry.name entry.variant
  }

/-- Look up a named `Sym.dsimp` variant. -/
def getSymDSimpVariant? (env : Environment) (name : Name) : Option SymDSimpVariant :=
  (symDSimpVariantExtension.getState env)[name]?

end Lean.Meta.Sym.DSimp
```
