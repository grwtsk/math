# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Default.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b60a0a58442de955491c9263f31a7bba308697b1` · SHA-256 `72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public meta import Lean.LibrarySuggestions.SineQuaNon

/-!
# Default library suggestions engine

This module sets the default library suggestions engine to "Sine Qua Non",
along with the theorems from the current file.
.
Any module that imports this (directly or transitively) will have library suggestions enabled.
-/

namespace Lean.LibrarySuggestions

-- Set the default library suggestions engine to
-- a combination of "Sine Qua Non" and the theorems from the current file.
-- For now we just intersperse the results, but in future we should re-rank them.
-- Note: We filter out grind-annotated modules from sineQuaNonSelector when caller is "grind".
set_library_suggestions open Lean.LibrarySuggestions in sineQuaNonSelector.filterGrindAnnotated.intersperse currentFile

end Lean.LibrarySuggestions
```
