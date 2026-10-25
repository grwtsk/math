# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tools.Variant3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35c7f7a6b1e017a76d2303747114695f7932d976` · SHA-256 `3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import ImportGraph.Tools.FindHome
public meta import ImportGraph.Tools.ImportDiff
public meta import ImportGraph.Tools.MinImports
public meta import ImportGraph.Tools.RedundantImports

/-!
# Tools for analyzing imports.

Provides the commands

* `#redundant_imports` which lists any transitively redundant imports in the current module.
* `#min_imports` which attempts to construct a minimal set of imports for the declarations
  in the current file.
  (Must be run at the end of the file. Tactics and macros may result in incorrect output.)
* `#find_home decl` suggests files higher up the import hierarchy to which `decl` could be moved.
* `#import_diff foo bar ...` computes the new transitive imports that are added to a given file when
  modules `foo, bar, ...` are added to the set of imports of the file.

-/
```
