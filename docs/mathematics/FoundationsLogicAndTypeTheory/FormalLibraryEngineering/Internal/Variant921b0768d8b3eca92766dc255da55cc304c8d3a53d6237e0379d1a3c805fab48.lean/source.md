# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Internal.Variant921b0768d8b3eca92766dc255da55cc304c8d3a53d6237e0379d1a3c805fab48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b463046c43ab6d6f0baded3d828295d11aee08a2` · SHA-256 `921b0768d8b3eca92766dc255da55cc304c8d3a53d6237e0379d1a3c805fab48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Async
public import Std.Http
public import Std.Internal.Parsec
public import Std.Internal.UV
public import Std.Internal.Do

@[expose] public section

/-!
This directory is used for components of the standard library that are either considered
implementation details or not yet ready for public consumption.
-/
```
