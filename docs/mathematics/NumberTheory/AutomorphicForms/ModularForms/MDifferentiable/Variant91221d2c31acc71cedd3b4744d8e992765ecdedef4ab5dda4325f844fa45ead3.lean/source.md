# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.MDifferentiable.Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcc2172a330d9700d8980e3d8f10ad7714cf7653` · SHA-256 `91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.NumberTheory.ModularForms.EisensteinSeries.UniformConvergence
import Mathlib.Analysis.Complex.UpperHalfPlane.Manifold
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Geometry.Manifold.MFDeriv.FDeriv

/-!
# Holomorphicity of Eisenstein series

We show that Eisenstein series of weight `k` and level `Γ(N)` with congruence condition
`a : Fin 2 → ZMod N` are holomorphic on the upper half plane, which is stated as being
MDifferentiable.
-/

noncomputable section

open UpperHalfPlane Filter Function Complex Manifold CongruenceSubgroup

namespace EisensteinSeries

/-- Auxiliary lemma showing that for any `k : ℤ` the function `z → 1/(c*z+d)^k` is
differentiable on `{z : ℂ | 0 < z.im}`. -/
lemma div_linear_zpow_differentiableOn (k : ℤ) (a : Fin 2 → ℤ) :
    DifferentiableOn ℂ (fun z : ℂ => (a 0 * z + a 1) ^ (-k)) {z : ℂ | 0 < z.im} := by
  rcases ne_or_eq a 0 with ha | rfl
  · apply DifferentiableOn.zpow
    · fun_prop
    · left
      exact fun z hz ↦ linear_ne_zero ⟨z, hz⟩
        ((comp_ne_zero_iff _ Int.cast_injective Int.cast_zero).mpr ha)
  · simp only [Fin.isValue, Pi.zero_apply, Int.cast_zero, zero_mul, add_zero, one_div]
    apply differentiableOn_const

/-- Auxiliary lemma showing that for any `k : ℤ` and `(a : Fin 2 → ℤ)`
the extension of `eisSummand` is differentiable on `{z : ℂ | 0 < z.im}`. -/
lemma eisSummand_extension_differentiableOn (k : ℤ) (a : Fin 2 → ℤ) :
    DifferentiableOn ℂ (↑ₕeisSummand k a) {z : ℂ | 0 < z.im} := by
  apply DifferentiableOn.congr (div_linear_zpow_differentiableOn k a)
  intro z hz
  lift z to ℍ using hz
  apply comp_ofComplex

/-- Eisenstein series are MDifferentiable (i.e. holomorphic functions from `ℍ → ℂ`). -/
theorem eisensteinSeries_SIF_MDifferentiable {k : ℤ} {N : ℕ} (hk : 3 ≤ k) (a : Fin 2 → ZMod N) :
    MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (eisensteinSeries_SIF a k) := by
  intro τ
  suffices DifferentiableAt ℂ (↑ₕeisensteinSeries_SIF a k) τ.1 by
    convert MDifferentiableAt.comp τ (DifferentiableAt.mdifferentiableAt this) τ.mdifferentiable_coe
    exact funext fun z ↦ (comp_ofComplex (eisensteinSeries_SIF a k) z).symm
  refine DifferentiableOn.differentiableAt ?_
    ((isOpen_lt continuous_const Complex.continuous_im).mem_nhds τ.2)
  exact (eisensteinSeries_tendstoLocallyUniformlyOn hk a).differentiableOn
    (Eventually.of_forall fun s ↦ DifferentiableOn.sum
      fun _ _ ↦ eisSummand_extension_differentiableOn _ _)
        (isOpen_lt continuous_const continuous_im)

end EisensteinSeries
```
