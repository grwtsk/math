# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e778e1bced58a6e1494395f0355f1a13530a1e13` · SHA-256 `12e8285e2a86e0c7b5dc6737de563ef7ec4617ffaef45bc051bce5aecc0b62a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 9. -/
theorem coefficients9 : ∀ j : Fin 4, compose recover9 encode9 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip9_exact (x : Four) : roundTrip9 x = x := by
  unfold roundTrip9
  rw [transform_compose]
  have h : compose recover9 encode9 = identityMatrix := funext coefficients9
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
