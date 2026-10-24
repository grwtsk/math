# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea735b8e03a98921bd33cbdadf5f7f67bb609a2e` · SHA-256 `50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Heather Macbeth
-/
import Mathlib.Analysis.Calculus.FDeriv.Pi
import Mathlib.Analysis.Calculus.Deriv.Basic

/-!
# One-dimensional derivatives on pi-types.
-/

variable {𝕜 ι : Type*} [DecidableEq ι] [Fintype ι] [NontriviallyNormedField 𝕜]

theorem hasDerivAt_update (x : ι → 𝕜) (i : ι) (y : 𝕜) :
    HasDerivAt (Function.update x i) (Pi.single i (1 : 𝕜)) y := by
  convert (hasFDerivAt_update x y).hasDerivAt
  ext z j
  rw [Pi.single, Function.update_apply]
  split_ifs with h
  · simp [h]
  · simp [Pi.single_eq_of_ne h]

theorem hasDerivAt_single (i : ι) (y : 𝕜) :
    HasDerivAt (Pi.single (M := fun _ ↦ 𝕜) i) (Pi.single i (1 : 𝕜)) y :=
  hasDerivAt_update 0 i y

theorem deriv_update (x : ι → 𝕜) (i : ι) (y : 𝕜) :
    deriv (Function.update x i) y = Pi.single i (1 : 𝕜) :=
  (hasDerivAt_update x i y).deriv

theorem deriv_single (i : ι) (y : 𝕜) :
    deriv (Pi.single (M := fun _ ↦ 𝕜) i) y = Pi.single i (1 : 𝕜) :=
  deriv_update 0 i y
```
