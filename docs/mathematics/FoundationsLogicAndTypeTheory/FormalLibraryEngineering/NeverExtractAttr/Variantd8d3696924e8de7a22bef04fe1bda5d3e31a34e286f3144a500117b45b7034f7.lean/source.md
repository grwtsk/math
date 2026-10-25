# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeverExtractAttr.Variantd8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4031f699f5a7dbb41fe1b9e1765701d79145af3e` · SHA-256 `d8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Attributes

public section

namespace Lean

/--
Instructs the compiler that function applications using the tagged declaration should not be
extracted when they are closed terms, and that common subexpression elimination should not be
performed.

Ordinarily, the Lean compiler identifies closed terms (without free variables) and extracts them
to top-level definitions. This optimization can prevent unnecessary recomputation of values.

Preventing the extraction of closed terms is useful for declarations that have implicit effects
that should be repeated.
-/
@[builtin_doc]
builtin_initialize neverExtractAttr : TagAttribute ←
  registerTagAttribute `never_extract "instruct the compiler that function applications using the tagged declaration should not be extracted when they are closed terms, nor common subexpression should be performed. This is useful for declarations that have implicit effects."

partial def hasNeverExtractAttribute (env : Environment) (n : Name) : Bool :=
  let rec visit (n : Name) : Bool := neverExtractAttr.hasTag env n || (n.isInternal && visit n.getPrefix)
  visit n

end Lean
```
