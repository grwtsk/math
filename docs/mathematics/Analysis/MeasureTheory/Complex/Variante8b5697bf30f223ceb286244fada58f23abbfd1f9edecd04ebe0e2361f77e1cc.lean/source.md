# Complete source: GRWTSK.Analysis.MeasureTheory.Complex.Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89c578de4558a5fedf3916bd141a4ff0a8c6ecba` · SHA-256 `e8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-! # Equip `ℂ` with the Borel sigma-algebra -/


noncomputable section

instance (priority := 900) RCLike.measurableSpace {𝕜 : Type*} [RCLike 𝕜] : MeasurableSpace 𝕜 :=
  borel 𝕜

instance (priority := 900) RCLike.borelSpace {𝕜 : Type*} [RCLike 𝕜] : BorelSpace 𝕜 :=
  ⟨rfl⟩

instance Complex.measurableSpace : MeasurableSpace ℂ :=
  borel ℂ

instance Complex.borelSpace : BorelSpace ℂ :=
  ⟨rfl⟩
```
