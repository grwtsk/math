# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c497d10785e4efe07da226edb0a1da66a61ad5b3` · SHA-256 `8a78a2abdb1cb9f0fb43fd5d5d75ac0aa5346706b1cce97853396ec2b6f009a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 6. -/
theorem coefficients6 : ∀ j : Fin 4, compose recover6 encode6 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip6_exact (x : Four) : roundTrip6 x = x := by
  unfold roundTrip6
  rw [transform_compose]
  have h : compose recover6 encode6 = identityMatrix := funext coefficients6
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
