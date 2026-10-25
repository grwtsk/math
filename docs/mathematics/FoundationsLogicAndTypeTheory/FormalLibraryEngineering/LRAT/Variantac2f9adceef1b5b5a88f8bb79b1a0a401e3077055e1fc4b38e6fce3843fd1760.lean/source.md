# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LRAT.Variantac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69aebb0232dba541e6a1ff67f4e0b774e216e9cb` · SHA-256 `ac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.LRAT.Trim
public import Lean.Meta.Tactic.BVDecide.LRAT.Cert

public section

/-!
This directory contains the implementation of the LRAT trimming algorithms.
It lives here because it uses datastructures and parsing infrastructure from `Lean`.
Otherwise they could be put into `Std.Tactic.BVDecide.LRAT`.
-/
```
