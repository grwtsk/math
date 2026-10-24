# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd045360a90f20d443e558384305073b0a6fe6c3` · SHA-256 `71cf7489e210c978076c7b05ef57ebab1a5a03059226fb861699cdb421ba6635`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 12. -/
theorem coefficients12 : ∀ j : Fin 4, compose recover12 encode12 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip12_exact (x : Four) : roundTrip12 x = x := by
  unfold roundTrip12
  rw [transform_compose]
  have h : compose recover12 encode12 = identityMatrix := funext coefficients12
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
