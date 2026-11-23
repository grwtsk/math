import Mathlib.Tactic

/-! Finite constants used for sampling polynomial and Fourier tests on a
height interval; the zeta counting estimate is applied in the manuscript. -/

namespace GRWTSK.XiWindowSampling

theorem legendre_derivative_trace (d : ℕ) :
    ∑ k ∈ Finset.range (d+1), (2*(k:ℝ)+1)*k*(k+1) =
      d*((d:ℝ)+1)^2*(d+2)/2 := by
  induction d with
  | zero => norm_num
  | succ d ih =>
    rw [Finset.sum_range_succ, ih]
    push_cast
    ring

theorem endpoint_trace (d : ℕ) :
    ∑ k ∈ Finset.range (d+1), (2*(k:ℝ)+1) = ((d:ℝ)+1)^2 := by
  induction d with
  | zero => norm_num
  | succ d ih =>
    rw [Finset.sum_range_succ, ih]
    push_cast
    ring

theorem derivative_trace_le (d : ℕ) :
    (d:ℝ)*(d+1)^2*(d+2) ≤ ((d:ℝ)+1)^4 := by
  nlinarith [sq_nonneg ((d:ℝ)+1)]

theorem pair_real_part (a b : ℂ) :
    ((a+b)*star (a-b)).re = Complex.normSq a-Complex.normSq b := by
  simp [Complex.mul_re, Complex.normSq_apply]
  ring

theorem sample_lower {mass err K U density upper shifted : ℝ}
    (hm : 0 ≤ mass) (he : 0 ≤ err) (hel : err ≤ mass)
    (hk : K ≤ 1/100) (hu : U ≤ 1/100)
    (hd : mass/8 ≤ density) (hb : upper ≤ mass/6 + err*(2*U+2*K))
    (ht : shifted ≥ density-err*(2*U+2*K)-upper/10000) :
    mass/12 ≤ shifted := by
  have hprod : err*(2*U+2*K) ≤ mass/25 := by
    calc
      _ ≤ err*(1/25) := mul_le_mul_of_nonneg_left (by linarith) he
      _ ≤ mass*(1/25) := mul_le_mul_of_nonneg_right hel (by norm_num)
      _ = _ := by ring
  linarith

end GRWTSK.XiWindowSampling
