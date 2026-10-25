# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf7336c37d0c5bdd9f1e1be5a973c030b90023f0` · SHA-256 `4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Tactic.LabelAttr

/-! # The @[mono] attribute -/

namespace Mathlib.Tactic.Monotonicity

syntax mono.side := &"left" <|> &"right" <|> &"both"

namespace Attr

/-- A lemma stating the monotonicity of some function, with respect to appropriate relations on its
domain and range, and possibly with side conditions. -/
syntax (name := mono) "mono" (ppSpace mono.side)? : attr

-- The following is inlined from `register_label_attr`.
/- TODO: currently `left`/`right`/`both` is ignored, and e.g. `@[mono left]` means the same as
`@[mono]`. No error is thrown by e.g. `@[mono left]`. -/
-- TODO: possibly extend `register_label_attr` to handle trailing syntax

open LabelAttr in
@[inherit_doc mono]
initialize ext : LabelExtension ← (
  let descr := "A lemma stating the monotonicity of some function, with respect to appropriate
relations on its domain and range, and possibly with side conditions."
  let mono := `mono
  registerLabelAttr mono descr mono)
```
