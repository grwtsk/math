# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1468883d1799438a054ebc9e60e8e3aea3d67f0` · SHA-256 `f59354ed80e62187c55055aff625b3319db0f7f9582fbeb900432a6536c333aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 5. -/
theorem coefficients5 : ∀ j : Fin 4, compose recover5 encode5 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip5_exact (x : Four) : roundTrip5 x = x := by
  unfold roundTrip5
  rw [transform_compose]
  have h : compose recover5 encode5 = identityMatrix := funext coefficients5
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
