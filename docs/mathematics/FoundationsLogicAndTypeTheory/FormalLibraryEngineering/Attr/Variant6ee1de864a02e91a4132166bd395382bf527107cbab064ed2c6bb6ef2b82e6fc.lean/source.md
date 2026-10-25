# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant6ee1de864a02e91a4132166bd395382bf527107cbab064ed2c6bb6ef2b82e6fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a710b2ac47da0b5445cc77b01b43cca5ae1f38` · SHA-256 `6ee1de864a02e91a4132166bd395382bf527107cbab064ed2c6bb6ef2b82e6fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Kim Morrison
-/
module

meta import Lean.Util.Trace

public meta section

open Lean

initialize registerTraceClass `plausible.instance
initialize registerTraceClass `plausible.decoration
initialize registerTraceClass `plausible.discarded
initialize registerTraceClass `plausible.success
initialize registerTraceClass `plausible.shrink.steps
initialize registerTraceClass `plausible.shrink.candidates
initialize registerTraceClass `plausible.deriving.arbitrary
```
