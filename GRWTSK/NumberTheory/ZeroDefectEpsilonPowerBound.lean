/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZeroDefectWronskianHeightBound
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false
noncomputable section

/-! Epsilon-power conversion ONLY for zero-defect, nonzero-W triples.
The constant is uniform on that restricted subclass; no unrestricted
ABC premise is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.ZeroDefectEpsilonPowerBound
open RetainedFactorization IntegerAdditiveDefectCongruences IntegerWronskianRepetitionCorrection
open ZeroDefectWronskianHeightBound

def powerConstant (ε : ℝ) : ℝ :=
  (1 / ((ε / (1 + ε)) * Real.log 2)) ^ (1 + ε)

theorem powerConstant_pos (ε : ℝ) (hε : 0 < ε) : 0 < powerConstant ε := by
  unfold powerConstant
  apply Real.rpow_pos_of_pos
  apply one_div_pos.mpr
  exact mul_pos (div_pos hε (by linarith)) (Real.log_pos (by norm_num))

theorem logarithmic_height_to_power (x R ε : ℝ) (hx : 0 < x) (hR : 0 < R)
    (hε : 0 < ε) (hheight : x ≤ R * Real.log x / Real.log 2) :
    x ≤ powerConstant ε * R ^ (1 + ε) := by
  let θ : ℝ := ε / (1 + ε)
  have hp : 0 < 1 + ε := by linarith
  have hθ : 0 < θ := div_pos hε hp
  have hl2 : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hden : 0 < θ * Real.log 2 := mul_pos hθ hl2
  let Z : ℝ := R / (θ * Real.log 2)
  have hZ : 0 < Z := div_pos hR hden
  have hlogbound := Real.log_le_rpow_div (le_of_lt hx) hθ
  have hmul := mul_le_mul_of_nonneg_left hlogbound (le_of_lt hR)
  have hdiv := div_le_div_of_nonneg_right hmul (le_of_lt hl2)
  have hexp : x ≤ Z * x ^ θ := by
    have he : R * (x ^ θ / θ) / Real.log 2 = Z * x ^ θ := by
      unfold Z
      field_simp [ne_of_gt hθ, ne_of_gt hl2]
      <;> ring
    rw [he] at hdiv
    exact hheight.trans hdiv
  have hlog := Real.log_le_log hx hexp
  rw [Real.log_mul (ne_of_gt hZ) (ne_of_gt (Real.rpow_pos_of_pos hx θ)),
    Real.log_rpow hx] at hlog
  have hθid : (1 + ε) * θ = ε := by
    unfold θ
    field_simp [ne_of_gt hp]
    <;> ring
  have hθlog := congrArg (fun z : ℝ => z * Real.log x) hθid
  have hscaled := mul_le_mul_of_nonneg_left hlog (le_of_lt hp)
  have hlogpower : Real.log x ≤ (1 + ε) * Real.log Z := by nlinarith
  have hpow : x ≤ Z ^ (1 + ε) := (Real.le_rpow_iff_log_le hx hZ).mpr hlogpower
  have hfactor : Z ^ (1 + ε) = powerConstant ε * R ^ (1 + ε) := by
    have hz : Z = (1 / (θ * Real.log 2)) * R := by unfold Z; ring
    rw [hz, Real.mul_rpow (le_of_lt (one_div_pos.mpr hden)) (le_of_lt hR)]
    rfl
  rwa [hfactor] at hpow

theorem restricted_epsilon_power_bound (ε : ℝ) (hε : 0 < ε)
    (T : CoprimeAdditiveTriple) (hδ : integerAdditiveDefect T = 0)
    (hW : integerWronskian T.a T.b ≠ 0) :
    (T.c : ℝ) ≤ powerConstant ε * (UniqueFactorizationMonoid.radical T.product : ℝ) ^ (1 + ε) := by
  apply logarithmic_height_to_power (T.c : ℝ)
    (UniqueFactorizationMonoid.radical T.product : ℝ) ε
    (by exact_mod_cast T.c_pos) (by exact_mod_cast Nat.radical_pos T.product) hε
  exact zero_defect_nonzero_wronskian_height T hδ hW

end GRWTSK.NumberTheory.ABC.ZeroDefectEpsilonPowerBound
