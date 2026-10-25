# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `386d60f3676aa90f97a992130c1d3c29efd92cad` · SHA-256 `85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Core.Extensions

/-!
# Core extension family for the `inclusion` tactic

This file initializes the `core` family of inclusion and hypothesis extensions which are generally
useful and type independent.
-/

public meta section

namespace Inclusion

/-- Initialize the `core` inclusion family. -/
initialize coreFamily : InclusionFamily ← registerInclusionFamily `core

end Inclusion
```
