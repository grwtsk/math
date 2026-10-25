# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variantca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48386633e3278d909d15ecc937163365d8fb52fa` · SHA-256 `ca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Grind.Tactics

public section

attribute [grind cases eager] And False Empty True PUnit Exists Subtype Prod PProd MProd
attribute [grind cases] Or Sum PSum
```
