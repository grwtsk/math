# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23c3a757dad339a4ff85dbf8dcdbd8dbc393e40b` · SHA-256 `ca56766076e7d1a22d1fbf7e4cd04f30c6b1ff7c9c5582f32e106d80ec133a32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 4. -/
theorem coefficients4 : ∀ j : Fin 4, compose recover4 encode4 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip4_exact (x : Four) : roundTrip4 x = x := by
  unfold roundTrip4
  rw [transform_compose]
  have h : compose recover4 encode4 = identityMatrix := funext coefficients4
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```
