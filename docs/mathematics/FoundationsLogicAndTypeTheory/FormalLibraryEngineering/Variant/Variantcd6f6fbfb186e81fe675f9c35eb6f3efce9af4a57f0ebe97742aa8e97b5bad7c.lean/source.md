# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Variant.Variantcd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9774e770e394c4eea3b9d19ca2af6841bf4402a7` · SHA-256 `cd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.ScopedEnvExtension
public section
namespace Lean.Meta.Sym.Simp

/--
A named `Sym.simp` variant. Stores `pre`/`post` simproc chains as syntax
(elaborated at use time in `GrindTacticM`) and configuration overrides.
-/
structure SymSimpVariant where
  /-- Pre-processing simproc chain (elaborated at use time). -/
  pre?   : Option Syntax := none
  /-- Post-processing simproc chain (elaborated at use time). -/
  post?  : Option Syntax := none
  /-- Configuration overrides. -/
  config : Config := {}
  deriving Inhabited

/-- Entry for the scoped environment extension. -/
structure SymSimpVariantEntry where
  name    : Name
  variant : SymSimpVariant
  deriving Inhabited

/-- Persistent environment extension mapping variant names to their definitions. -/
builtin_initialize symSimpVariantExtension :
    SimpleScopedEnvExtension SymSimpVariantEntry (Std.HashMap Name SymSimpVariant) ←
  registerSimpleScopedEnvExtension {
    name     := `symSimpVariantExtension
    initial  := {}
    addEntry := fun map entry => map.insert entry.name entry.variant
  }

/-- Look up a named `Sym.simp` variant. -/
def getSymSimpVariant? (env : Environment) (name : Name) : Option SymSimpVariant :=
  (symSimpVariantExtension.getState env)[name]?

end Lean.Meta.Sym.Simp
```
