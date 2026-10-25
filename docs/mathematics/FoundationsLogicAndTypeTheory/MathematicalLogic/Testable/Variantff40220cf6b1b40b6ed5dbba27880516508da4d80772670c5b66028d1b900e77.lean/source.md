# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe7c200f1ff21a1a4e69243445cb97e63eec2acd` · SHA-256 `ff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
import Plausible.Testable
import Mathlib.Logic.Basic

/-!
This module contains `Plausible.Testable` and `Plausible.PrintableProb` instances for mathlib types.
-/

namespace Plausible

namespace Testable

open TestResult

instance factTestable {p : Prop} [Testable p] : Testable (Fact p) where
  run cfg min := do
    let h ← runProp p cfg min
    pure <| iff fact_iff h

end Testable

section PrintableProp

instance Fact.printableProp {p : Prop} [PrintableProp p] : PrintableProp (Fact p) where
  printProp := printProp p

end PrintableProp

end Plausible
```
