/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowScaling

/-! # Executable mass normalization of rational primitive Weil tests -/

set_option autoImplicit false

open Filter
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- Keep the raw code when its mass is at most one. Otherwise scale by the
reciprocal of its mass, which is rational and tends to one at the ceiling. -/
def rationalWindowMassScale (m : ℚ) : ℚ := (max 1 m)⁻¹

private theorem rationalWindowMassScale_ne_zero (m : ℚ) :
    rationalWindowMassScale m ≠ 0 := by
  have h : (0 : ℚ) < max 1 m := lt_of_lt_of_le zero_lt_one (le_max_left _ _)
  exact inv_ne_zero h.ne'

private theorem le_inv_rationalWindowMassScale_sq (m : ℚ) :
    m ≤ ((rationalWindowMassScale m) ^ 2)⁻¹ := by
  rw [rationalWindowMassScale, inv_pow, inv_inv]
  have h : (1 : ℚ) ≤ max 1 m := le_max_left _ _
  calc
    m ≤ max 1 m := le_max_right _ _
    _ ≤ (max 1 m) ^ 2 := by
      nlinarith [mul_nonneg (sub_nonneg.mpr h) (show (0 : ℚ) ≤ max 1 m by linarith)]

/-- The executable coefficient transformation always passes the rational
mass guard for a positive rational radius. -/
theorem rationalWindowMass_normalized_le_one (T : ℚ) (hT : 0 < T) (cs : List ℚ) :
    rationalWindowMass T (cs.map (fun c => rationalWindowMassScale (rationalWindowMass T cs) * c))
      ≤ 1 :=
  (rationalWindowMass_scale_le_one_iff T hT _ (rationalWindowMassScale_ne_zero _) cs).mpr
    (le_inv_rationalWindowMassScale_sq _)

/-- Every raw rational code determines a member of the original stage mass
ball using the normalized code at radius j+1. -/
noncomputable def primitiveStageMassTestOfNormalizedCode {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ) : PrimitiveStageMassTest χ j :=
  primitiveStageMassTestOfScaledCode χ j _ (rationalWindowMassScale_ne_zero _) cs
    (le_inv_rationalWindowMassScale_sq (rationalWindowMass ((j : ℚ) + 1) cs))

/-- Along any filter where the raw masses converge to an allowed real mass,
the rational correction converges to the unit scale. -/
theorem tendsto_rationalWindowMassScale_of_le_one {ι : Type*} {l : Filter ι}
    (m : ι → ℚ) (M : ℝ) (hM : M ≤ 1)
    (hm : Tendsto (fun i => (m i : ℝ)) l (𝓝 M)) :
    Tendsto (fun i => (rationalWindowMassScale (m i) : ℝ)) l (𝓝 1) := by
  have h := (tendsto_const_nhds (x := (1 : ℝ))).max hm
  have hmax : max (1 : ℝ) M = 1 := max_eq_left hM
  have hinv : Tendsto (fun i => (max (1 : ℝ) (m i : ℝ))⁻¹) l (𝓝 1) := by
    simpa only [hmax, inv_one] using h.inv₀ (show max (1 : ℝ) M ≠ 0 by rw [hmax]; exact one_ne_zero)
  simpa only [rationalWindowMassScale, Rat.cast_inv, Rat.cast_max, Rat.cast_one] using hinv

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
