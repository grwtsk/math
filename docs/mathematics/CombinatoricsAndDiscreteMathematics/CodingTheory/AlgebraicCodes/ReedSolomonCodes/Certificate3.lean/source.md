# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aed3383e9c253099e94a35317a74a187f96c34d0` · SHA-256 `b5521866de9cc496191a5c3f5906d9b78dab63aa481690b2adc29d38346fe04a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 3. -/
theorem coefficients3 : ∀ j : Fin 4, compose recover3 encode3 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip3_exact (x : Four) : roundTrip3 x = x := by
  unfold roundTrip3
  rw [transform_compose]
  have h : compose recover3 encode3 = identityMatrix := funext coefficients3
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
