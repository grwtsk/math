import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-!
# The prime-two gap and the coefficient-cutoff witness

Source: continuation batch 36, `native-gap.md`, equations (1)--(4), (7),
and the norm-ratio argument following (7). Human research direction:
grwtsk contributors. Formal proofs: OpenAI Codex.

The ambient inequalities require norm preservation. The cutoff witness instead
requires its two exact coefficient actions. These hypotheses are deliberately
separate: a coefficient restriction is not an orthogonal compression.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchDyadicGap

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- The difference in this module, with the following exact parameterization.

def difference (θ : ℝ) (T : H →ₗ[ℝ] H) (f : H) : H := f - θ • T f
-/
def difference (θ : ℝ) (T : H →ₗ[ℝ] H) (f : H) : H := f - θ • T f

theorem exact_energy (θ : ℝ) (T : H →ₗ[ℝ] H) (f : H)
    (hT : ‖T f‖ = ‖f‖) :
    ‖difference θ T f‖ ^ 2 = (1 - θ) ^ 2 * ‖f‖ ^ 2 + θ * ‖f - T f‖ ^ 2 := by
  simp only [difference, norm_sub_sq_real, inner_smul_right, norm_smul,
    Real.norm_eq_abs, hT]
  rw [mul_pow, sq_abs]
  ring

theorem lower_norm (θ : ℝ) (hθ : 0 ≤ θ) (T : H →ₗ[ℝ] H) (f : H)
    (hT : ‖T f‖ = ‖f‖) : (1 - θ) * ‖f‖ ≤ ‖difference θ T f‖ := by
  have h := norm_sub_norm_le f (θ • T f)
  simpa [difference, norm_smul, Real.norm_eq_abs, abs_of_nonneg hθ, hT,
    sub_mul] using h

theorem upper_norm (θ : ℝ) (hθ : 0 ≤ θ) (T : H →ₗ[ℝ] H) (f : H)
    (hT : ‖T f‖ = ‖f‖) : ‖difference θ T f‖ ≤ (1 + θ) * ‖f‖ := by
  have h := norm_sub_le f (θ • T f)
  simpa [difference, norm_smul, Real.norm_eq_abs, abs_of_nonneg hθ, hT,
    add_mul] using h

theorem lower_energy (θ : ℝ) (hθ : 0 ≤ θ) (T : H →ₗ[ℝ] H) (f : H)
    (hT : ‖T f‖ = ‖f‖) : (1 - θ) ^ 2 * ‖f‖ ^ 2 ≤ ‖difference θ T f‖ ^ 2 := by
  rw [exact_energy θ T f hT]
  exact le_add_of_nonneg_right (mul_nonneg hθ (sq_nonneg _))

theorem kernel_zero (θ : ℝ) (hθ : 0 ≤ θ) (hθ1 : θ < 1)
    (T : H →ₗ[ℝ] H) (hT : ∀ f, ‖T f‖ = ‖f‖)
    (f : H) (hf : difference θ T f = 0) : f = 0 := by
  have h := lower_norm θ hθ T f (hT f)
  rw [hf, norm_zero] at h
  have hn : ‖f‖ = 0 := by nlinarith [norm_nonneg f]
  exact norm_eq_zero.mp hn

/-- The theta in this module, with the following exact parameterization.

def theta : ℝ := (Real.sqrt 2)⁻¹
-/
def theta : ℝ := (Real.sqrt 2)⁻¹
/-- The gap in this module, with the following exact parameterization.

def gap : ℝ := 3 / 2 - Real.sqrt 2
-/
def gap : ℝ := 3 / 2 - Real.sqrt 2

theorem theta_positive : 0 < theta := by unfold theta; positivity
theorem theta_lt_one : theta < 1 := by
  have hs : 1 < Real.sqrt 2 := by
    nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 2 by norm_num), Real.sqrt_nonneg 2]
  exact (inv_lt_one₀ (by positivity)).mpr hs

theorem gap_identity : (1 - theta) ^ 2 = gap := by
  have hs := Real.sq_sqrt (show (0 : ℝ) ≤ 2 by norm_num)
  have hn : Real.sqrt 2 ≠ 0 := by positivity
  unfold theta gap
  field_simp
  nlinarith

theorem gap_positive : 0 < gap := by
  rw [← gap_identity]
  exact sq_pos_of_pos (sub_pos.mpr theta_lt_one)

theorem prime_two_energy (T : H →ₗ[ℝ] H) (f : H) (hT : ‖T f‖ = ‖f‖) :
    gap * ‖f‖ ^ 2 ≤ ‖difference theta T f‖ ^ 2 := by
  rw [← gap_identity]
  exact lower_energy theta theta_positive.le T f hT

/-- This is the actual source-metric transfer, provided synthesis intertwines
the coefficient map and the ambient difference and uses the actual norm. -/
theorem synthesis_transfer {E F : Type*} (σE : E → H) (σF : F → H)
    (B : E → F) (T : H →ₗ[ℝ] H) (a : E)
    (hT : ‖T (σE a)‖ = ‖σE a‖)
    (hB : σF (B a) = difference theta T (σE a)) :
    gap * ‖σE a‖ ^ 2 ≤ ‖σF (B a)‖ ^ 2 := by
  rw [hB]
  exact prime_two_energy T (σE a) hT

/-- The exact two coefficient actions behind the cutoff counterexample. -/
theorem cutoff_witness (θ : ℝ) (L : H →ₗ[ℝ] H) (x v : H)
    (hx : L x = v) (hv : L v = 0) : difference θ L (x + θ • v) = x := by
  simp [difference, map_add, map_smul, hx, hv]

theorem cutoff_witness_norm (θ ε : ℝ) (hθ : 0 ≤ θ) (x v : H)
    (hv : ‖v‖ = 1) (hx : ‖x‖ ≤ ε) : θ - ε ≤ ‖x + θ • v‖ := by
  have h := norm_sub_norm_le (θ • v) (-x)
  simp only [norm_smul, Real.norm_eq_abs, abs_of_nonneg hθ, hv, mul_one,
    norm_neg, sub_neg_eq_add] at h
  rw [add_comm] at h
  linarith

theorem cutoff_ratio (θ ε : ℝ) (hθ : 0 ≤ θ) (hε : 0 ≤ ε)
    (hεθ : ε < θ) (L : H →ₗ[ℝ] H) (x v : H)
    (hv : ‖v‖ = 1) (hx : ‖x‖ ≤ ε) (hLx : L x = v) (hLv : L v = 0) :
    ‖difference θ L (x + θ • v)‖ ^ 2 / ‖x + θ • v‖ ^ 2 ≤
      ε ^ 2 / (θ - ε) ^ 2 := by
  rw [cutoff_witness θ L x v hLx hLv]
  have hf := cutoff_witness_norm θ ε hθ x v hv hx
  have hd : 0 < ‖x + θ • v‖ := lt_of_lt_of_le (sub_pos.mpr hεθ) hf
  apply (div_le_div_iff₀ (sq_pos_of_pos hd) (sq_pos_of_pos (sub_pos.mpr hεθ))).mpr
  have hx2 : ‖x‖ ^ 2 ≤ ε ^ 2 := by nlinarith [norm_nonneg x]
  have hf2 : (θ - ε) ^ 2 ≤ ‖x + θ • v‖ ^ 2 := by nlinarith
  exact (mul_le_mul_of_nonneg_right hx2 (sq_nonneg _)).trans
    (mul_le_mul_of_nonneg_left hf2 (sq_nonneg _))

end FormalResearch.RiemannHypothesis.Conversation.BranchDyadicGap
