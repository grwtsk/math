# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea924ce0698d41f8c6159ca5c6a8718197cde04f` · SHA-256 `cb092f76cec7d08a9425914125e85bccbffa60d0cc8fc25c4ca15bff173bffe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 14. -/
theorem coefficients14 : ∀ j : Fin 4, compose recover14 encode14 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip14_exact (x : Four) : roundTrip14 x = x := by
  unfold roundTrip14
  rw [transform_compose]
  have h : compose recover14 encode14 = identityMatrix := funext coefficients14
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
