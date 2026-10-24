# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5395c1e8e82032f198d0fafc9e6d5f9538e7ac` · SHA-256 `5be0e36e213e4afda3e4bbfeb0dad98b6c99e82a751a1560787d62a4f6694d1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 2. -/
theorem coefficients2 : ∀ j : Fin 4, compose recover2 encode2 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip2_exact (x : Four) : roundTrip2 x = x := by
  unfold roundTrip2
  rw [transform_compose]
  have h : compose recover2 encode2 = identityMatrix := funext coefficients2
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
