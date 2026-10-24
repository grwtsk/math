# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdc2b96749939133da9f9caea9d1806a2336863d` · SHA-256 `a584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Heather Macbeth
-/
import Mathlib.Analysis.Calculus.FDeriv.Add

/-!
# Derivatives on pi-types.
-/

variable {𝕜 ι : Type*} [DecidableEq ι] [Fintype ι] [NontriviallyNormedField 𝕜]
variable {E : ι → Type*} [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace 𝕜 (E i)]

@[fun_prop]
theorem hasFDerivAt_update (x : ∀ i, E i) {i : ι} (y : E i) :
    HasFDerivAt (Function.update x i) (.pi (Pi.single i (.id 𝕜 (E i)))) y := by
  set l := (ContinuousLinearMap.pi (Pi.single i (.id 𝕜 (E i))))
  have update_eq : Function.update x i = (fun _ ↦ x) + l ∘ (· - x i) := by
    ext t j
    dsimp [l, Pi.single, Function.update]
    split_ifs with hji
    · subst hji
      simp
    · simp
  rw [update_eq]
  convert (hasFDerivAt_const _ _).add (l.hasFDerivAt.comp y (hasFDerivAt_sub_const (x i)))
  rw [zero_add, ContinuousLinearMap.comp_id]

@[fun_prop]
theorem hasFDerivAt_single {i : ι} (y : E i) :
    HasFDerivAt (Pi.single i) (.pi (Pi.single i (.id 𝕜 (E i)))) y :=
  hasFDerivAt_update 0 y

theorem fderiv_update (x : ∀ i, E i) {i : ι} (y : E i) :
    fderiv 𝕜 (Function.update x i) y = .pi (Pi.single i (.id 𝕜 (E i))) :=
  (hasFDerivAt_update x y).fderiv

theorem fderiv_single {i : ι} (y : E i) :
    fderiv 𝕜 (Pi.single i) y = .pi (Pi.single i (.id 𝕜 (E i))) :=
  fderiv_update 0 y
```
