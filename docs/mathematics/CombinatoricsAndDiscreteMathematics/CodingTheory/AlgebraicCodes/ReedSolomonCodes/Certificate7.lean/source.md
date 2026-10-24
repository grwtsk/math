# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c19c1336cd30599132feb013fe29a7dd41a36147` · SHA-256 `779275f48c0100bcbf93e96571a1c63c2c00e48f5901c56832681dba90c207bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 7. -/
theorem coefficients7 : ∀ j : Fin 4, compose recover7 encode7 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip7_exact (x : Four) : roundTrip7 x = x := by
  unfold roundTrip7
  rw [transform_compose]
  have h : compose recover7 encode7 = identityMatrix := funext coefficients7
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
