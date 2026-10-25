# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kinds.Variant179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3888b8a3463fa65c8c5a18e9556330e99425c5ed` · SHA-256 `179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude

open Lean (Name)

namespace Lake

/-- The keyword for package declarations. -/
@[reducible, expose] public def Package.keyword : Name := `package

/-- The kind identifier for facets of a package. -/
@[match_pattern] public abbrev Package.facetKind : Name := keyword

/--
The would-be keyword for module declarations.

Such declarations do not currently exist, but this is used
as the facet kind for modules.
-/
@[reducible, expose] public def Module.keyword : Name := `module

/-- The kind identifier for facets of a (Lean) module. -/
@[match_pattern] public abbrev Module.facetKind : Name := keyword

/-- The keyword for Lean library declarations. -/
@[reducible, expose] public def LeanLib.keyword : Name := `lean_lib

/-- The kind identifier for facets of a Lean library. -/
@[match_pattern] public abbrev LeanLib.facetKind : Name := `lean_lib

/-- The type kind for Lean library configurations. -/
@[match_pattern] public abbrev LeanLib.configKind := facetKind

/-- The keyword for Lean executable declarations. -/
@[reducible, expose] public def LeanExe.keyword : Name := `lean_exe

/-- The kind identifier for facets of a Lean executable. -/
@[match_pattern] public abbrev LeanExe.facetKind : Name := keyword

/-- The type kind for Lean executable configurations. -/
@[match_pattern] public abbrev LeanExe.configKind := facetKind

/-- The keyword for external library declarations. -/
@[reducible, expose] public def ExternLib.keyword : Name := `extern_lib

/-- The kind identifier for facets of an external library. -/
@[match_pattern] public abbrev ExternLib.facetKind : Name := keyword

/-- The type kind for external library configurations. -/
@[match_pattern] public abbrev ExternLib.configKind := facetKind

/-- The keyword for input file declarations. -/
@[reducible, expose] public def InputFile.keyword : Name := `input_file

/-- The kind identifier for facets of an input file. -/
@[match_pattern] public abbrev InputFile.facetKind := keyword

/-- The type kind for input file configurations. -/
@[match_pattern] public abbrev InputFile.configKind := facetKind

/-- The keyword for input directory declarations. -/
@[reducible, expose] public def InputDir.keyword : Name := `input_dir

/-- The kind identifier for facets of an input directory. -/
@[match_pattern] public abbrev InputDir.facetKind := keyword

/-- The type kind for input directory configurations. -/
@[match_pattern] public abbrev InputDir.configKind := facetKind

/--
Returns the facet kind for an Lake target namespace.
Used by the `builtin_facet` macro.
-/
def facetKindForNamespace (ns : Name) : Name :=
  match ns with
  | `Lake.Package => Package.facetKind
  | `Lake.Module => Module.facetKind
  | `Lake.LeanLib => LeanLib.facetKind
  | `Lake.LeanExe => LeanExe.facetKind
  | `Lake.ExternLib => ExternLib.facetKind
  | `Lake.InputFile => InputFile.facetKind
  | `Lake.InputDir => InputDir.facetKind
  | _ => Name.anonymous
```
