# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65873556a568def87686aaf4a578487d8656c8fe` · SHA-256 `3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide
public import Std.Tactic.Do

@[expose] public section

/-!
This directory is mainly used for bootstrapping reasons. Suppose a tactic generates a proof term
that contains either directly things from `Std` or custom lemmas/definitions that make use of
things from `Std`. These lemmas/definitions could not be put into `Init` for dependency reasons but
storing them in `Lean` directly is also not perfect because we do not want end users to import the
compiler. This directory offers a place for such definitions to live, such that the user only has
to import `Std.Tactic` to use such a tactic.

Note that this does not contain meta programs that implement tactics themselves because these would
rely on importing things from `Lean` which cannot done in `Std`.
-/
```
