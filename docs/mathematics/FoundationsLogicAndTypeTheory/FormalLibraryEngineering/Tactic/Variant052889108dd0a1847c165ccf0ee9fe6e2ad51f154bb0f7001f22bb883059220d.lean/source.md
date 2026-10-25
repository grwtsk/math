# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c83fcacebb4a12c5463a52c74dab1df21f67196b` · SHA-256 `052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Notation

public section

namespace Lean.Order
/--
`monotonicity` performs one compositional step solving `monotone` goals,
using lemma tagged with `@[partial_fixpoint_monotone]`.

This tactic is mostly used internally by lean in `partial_fixpoint` definitions, but
can be useful on its own for debugging or when proving new `@[partial_fixpoint_monotone]` lemmas.
-/
scoped syntax (name := monotonicity) "monotonicity" : tactic

end Lean.Order
```
