# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variantf72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6f95243d433f833a48e81014f3d2c4ce8950e58` · SHA-256 `f72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

open Lean Lean.Elab.Tactic

namespace Aesop.BuiltinRules

@[aesop safe 0 (rule_sets := [builtin])]
meta def rfl : RuleTac :=
  RuleTac.ofTacticSyntax λ _ => `(tactic| rfl)

end Aesop.BuiltinRules
```
