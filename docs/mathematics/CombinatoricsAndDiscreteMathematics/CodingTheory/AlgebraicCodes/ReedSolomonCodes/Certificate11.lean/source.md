# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abfecee775686c6ddf5216390042c41bc879e4c9` · SHA-256 `27dbf8f3a4c60dc90e3afce1223694a8fc547174c851c701195409c4a530c073`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 11. -/
theorem coefficients11 : ∀ j : Fin 4, compose recover11 encode11 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip11_exact (x : Four) : roundTrip11 x = x := by
  unfold roundTrip11
  rw [transform_compose]
  have h : compose recover11 encode11 = identityMatrix := funext coefficients11
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
