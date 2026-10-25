# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsI.Variant970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `636ee485e54b799f980b277e06b1d5b26de2186e` · SHA-256 `970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Gabriel Ebner, Moritz Doll
-/

import Mathlib.Init
/-!
# The `existsi` tactic
This file defines the `existsi` tactic: its purpose is to instantiate existential quantifiers.
Internally, it applies the `refine` tactic.
-/

namespace Mathlib.Tactic

/--
`existsi e₁, e₂, ⋯` applies the tactic `refine ⟨e₁, e₂, ⋯, ?_⟩`. It's purpose is to instantiate
existential quantifiers.

Examples:

```lean
example : ∃ x : Nat, x = x := by
  existsi 42
  rfl

example : ∃ x : Nat, ∃ y : Nat, x = y := by
  existsi 42, 42
  rfl
```
-/
macro "existsi " es:term,+ : tactic =>
  `(tactic| refine ⟨$es,*, ?_⟩)

end Mathlib.Tactic
````
