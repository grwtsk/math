# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8aa2c181b6e5d9e98214c88ddbf44aa7ae89e494` · SHA-256 `af92c534539ee67f83816a402c072550529fec1d7bb10ff1abb4449cd443fff3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 0. -/
theorem coefficients0 : ∀ j : Fin 4, compose recover0 encode0 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip0_exact (x : Four) : roundTrip0 x = x := by
  unfold roundTrip0
  rw [transform_compose]
  have h : compose recover0 encode0 = identityMatrix := funext coefficients0
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
