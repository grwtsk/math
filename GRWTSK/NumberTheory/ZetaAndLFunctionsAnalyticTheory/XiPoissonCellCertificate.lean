import Mathlib.Tactic

/-! Sharp costs of a reflected pair and of a single real zero when evaluating
the exterior logarithmic derivative on the half-integer cell grid. -/

namespace GRWTSK.XiPoissonCellCertificate

noncomputable def probe (a t : ℝ) : ℝ := a / (t^2+a^2)

theorem probe_cell_min {a t : ℝ} (ha : 0 < a) (ht : |t| ≤ 1/2) :
    probe a (1/2) ≤ probe a t := by
  have h : t^2 ≤ (1/2 : ℝ)^2 := by
    simpa [sq_abs] using pow_le_pow_left₀ (abs_nonneg t) ht 2
  exact div_le_div_of_nonneg_left ha.le (by positivity) (by linarith)

theorem paired_threshold_identity (s : ℝ) :
    (5/2-2*s^2) - (8/5 : ℝ)*((5/4+s^2)^2-4*s^2) =
      (2/5 : ℝ)*s^2*(1-4*s^2) := by ring

theorem reflected_pair_cost {s t : ℝ} (hs : 0 < s) (hs' : s < 1/2) (ht : |t| ≤ 1/2) :
    8/5 < probe (1-s) t + probe (1+s) t := by
  apply lt_of_lt_of_le _ (add_le_add (probe_cell_min (by linarith : 0 < 1-s) ht)
    (probe_cell_min (by linarith : 0 < 1+s) ht))
  unfold probe
  have hp : 0 < 1-4*s^2 := by nlinarith [mul_pos (by linarith : 0 < 1-2*s) (by linarith : 0 < 1+2*s)]
  have hpos := mul_pos (mul_pos (by norm_num : (0:ℝ)<2/5) (sq_pos_of_pos hs)) hp
  rw [div_add_div _ _ (by positivity : ((1/2:ℝ)^2+(1-s)^2) ≠ 0)
    (by positivity : ((1/2:ℝ)^2+(1+s)^2) ≠ 0), lt_div_iff₀ (by positivity)]
  nlinarith only [hpos]

theorem real_atom_cost {t : ℝ} (ht : |t| ≤ 1/2) : 4/5 ≤ probe 1 t := by
  have h := probe_cell_min (a:=1) (by norm_num) ht
  norm_num [probe] at h ⊢
  exact h

theorem trace_loss_cost {s t : ℝ} (hs : 0 < s) (hs' : s < 1/2) (ht : |t| ≤ 1/2) :
    6/5 < 2*probe (1+s) t := by
  have h := probe_cell_min (by linarith : 0 < 1+s) ht
  suffices (6/5:ℝ) < 2 * probe (1+s) (1/2) by linarith
  unfold probe
  rw [← mul_div_assoc, lt_div_iff₀ (by positivity)]
  nlinarith [mul_pos (by linarith : 0 < 1-2*s) (by linarith : 0 < 1+6*s)]

theorem bracket_lower {t l u : ℝ} (hl : l ≤ t) (hu : t ≤ u) (n : ℝ) :
    1/(1+(max |n-l| |n-u|)^2) ≤ probe 1 (n-t) := by
  have h : |n-t| ≤ max |n-l| |n-u| := by
    apply abs_le.mpr
    constructor
    · have := le_max_right |n-l| |n-u|
      linarith [neg_abs_le (n-u)]
    · have := le_max_left |n-l| |n-u|
      linarith [le_abs_self (n-l)]
  have h2 := pow_le_pow_left₀ (abs_nonneg _) h 2
  rw [sq_abs] at h2
  unfold probe
  apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
  nlinarith

end GRWTSK.XiPoissonCellCertificate
