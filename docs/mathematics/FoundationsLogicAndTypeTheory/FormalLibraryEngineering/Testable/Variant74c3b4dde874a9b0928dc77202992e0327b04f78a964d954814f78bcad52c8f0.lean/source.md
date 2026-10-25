# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Testable.Variant74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a07912460b6d7743f1928d7deeb9d3f24106b154` · SHA-256 `74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
module

public meta import Mathlib.Basic.Logic.Basic
public meta import Plausible.Testable

public import Mathlib.Tactic.Basic
public import Plausible.Gen
public import Plausible.Testable

/-!
This module contains `Plausible.Testable` and `Plausible.PrintableProb` instances for mathlib types.
-/

public section

namespace Plausible

namespace Testable

open TestResult

meta instance factTestable {p : Prop} [Testable p] : Testable (Fact p) where
  run cfg min := do
    let h ← runProp p cfg min
    pure <| iff fact_iff h

end Testable

section PrintableProp

meta instance Fact.printableProp {p : Prop} [PrintableProp p] : PrintableProp (Fact p) where
  printProp := printProp p

end PrintableProp

end Plausible
```
