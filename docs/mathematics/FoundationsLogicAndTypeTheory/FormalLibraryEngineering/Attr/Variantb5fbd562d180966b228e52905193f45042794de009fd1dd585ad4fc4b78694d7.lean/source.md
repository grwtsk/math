# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantb5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce61e3c78dcdada31358b1f875fc46f086ac8618` · SHA-256 `b5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Init
import Lean.LabelAttribute

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

open Lean in
@[inherit_doc mono]
initialize ext : LabelExtension ← (
  let descr := "A lemma stating the monotonicity of some function, with respect to appropriate
relations on its domain and range, and possibly with side conditions."
  let mono := `mono
  registerLabelAttr mono descr mono)

end Attr

end Monotonicity

end Mathlib.Tactic
```
