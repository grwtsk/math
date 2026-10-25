# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c0a40b899c5d75c585a056a53048079db210341` · SHA-256 `9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Basic

/-!
# Tactic combinators in `TacticM`.
-/

namespace Lean.Elab.Tactic

/-- Analogue of `liftMetaTactic` for tactics that do not return any goals. -/
def liftMetaFinishingTactic (tac : MVarId → MetaM Unit) : TacticM Unit :=
  liftMetaTactic fun g => do tac g; pure []

end Lean.Elab.Tactic
```
