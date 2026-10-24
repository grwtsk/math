# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskLogDerivative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d` · SHA-256 `26cd60a1b454529ea073c48628ea6602bd648cbd5d73b766f4c8cb6fe50303bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound
import GRWTSK.Analysis.Complex.NormalizedLogDerivativeBound

set_option autoImplicit false

/-!
# The actual radius-11/4 divisor and a conditional central-strip application

This disk inventory is NOT the three-unit heightBand. It is complete for the
specified closed disk, retains analytic multiplicity, and has a separate
Jensen denominator log(12/11). The original selected heights separate EVERY
actual zero, so their global clearance also applies to this larger inventory.

The final application explicitly requires a normalized analytic-log
factorization of translated zeta. Its construction is written-only in the
companion note. Do not read that application as an unconditional Lean
logarithmic-derivative theorem, or as covering real parts [-3,0).
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.JensenDiskLogDerivative

open Set Metric Filter MeromorphicOn
open scoped Topology BigOperators
open CanonicalZeroDivisor SeparatedContourHeights LocalJensenCount
open CubicZetaCircleBound AnchoredLocalJensen
open GRWTSK.Analysis.Complex.JensenFiniteMultiplicity
open GRWTSK.Analysis.Complex.DiskBlaschkeFactors
open GRWTSK.Analysis.Complex.NormalizedLogDerivativeBound

noncomputable section

/-- A complete finite-height cover is filtered by the actual complex disk. -/
def diskHead (N : ℕ) (c : ℂ) : Finset ZeroPoint := by
  classical
  exact (heightHead ((N : ℝ) + 5)).filter (fun z => ‖z.1 - c‖ ≤ 11 / 4)

def growthLog (N : ℕ) : ℝ := Real.log 4 + 3 * Real.log ((N : ℝ) + 2)

def diskCountBudget (N : ℕ) : ℝ := growthLog N / Real.log (12 / 11 : ℝ)

theorem growthLog_pos (N : ℕ) : 0 < growthLog N := by
  have h4 := Real.log_pos (by norm_num : (1 : ℝ) < 4)
  have hn := Real.log_nonneg (show (1 : ℝ) ≤ (N : ℝ) + 2 by linarith [Nat.cast_nonneg (α := ℝ) N])
  unfold growthLog
  linarith

theorem log_twelve_elevenths_pos : 0 < Real.log (12 / 11 : ℝ) :=
  Real.log_pos (by norm_num)

theorem diskCountBudget_nonneg (N : ℕ) : 0 ≤ diskCountBudget N :=
  (div_pos (growthLog_pos N) log_twelve_elevenths_pos).le

/-- No zero on the inner circle is lost; both inventories use closed membership. -/
theorem mem_diskHead (N : ℕ) (c : ℂ) (hc : c = upperCenter N ∨ c = lowerCenter N)
    (z : ZeroPoint) : z ∈ diskHead N c ↔ ‖z.1 - c‖ ≤ 11 / 4 := by
  classical
  have him : |c.im| = (N : ℝ) + 3 / 2 := by
    rcases hc with rfl | rfl <;>
      simp only [upperCenter_im, lowerCenter_im, abs_neg, abs_of_nonneg (by positivity : 0 ≤ (N : ℝ) + 3 / 2)]
  simp only [diskHead, Finset.mem_filter, mem_heightHead]
  constructor
  · exact fun h => h.2
  · intro hz
    refine ⟨?_, hz⟩
    have hi : |z.1.im - c.im| ≤ ‖z.1 - c‖ := by
      simpa only [Complex.sub_im] using Complex.abs_im_le_norm (z.1 - c)
    have ht : |z.1.im| ≤ |z.1.im - c.im| + |c.im| := by
      calc
        _ = |(z.1.im - c.im) + c.im| := by congr 1; ring
        _ ≤ _ := abs_add_le _ _
    rw [him] at ht
    change |z.1.im| ≤ (N : ℝ) + 5
    linarith

/-- The radius differs from the old height-band disk: its Jensen denominator is 12/11. -/
theorem diskMass_le (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) :
    (∑ z ∈ diskHead N c, (multiplicity z : ℝ)) ≤ diskCountBudget N := by
  classical
  have hf : AnalyticOnNhd ℂ riemannZeta (closedBall c (3 : ℝ)) := by
    rcases hc with rfl | rfl
    · exact analytic_zeta_upper_disk N hN
    · exact analytic_zeta_lower_disk N hN
  have hsmall : AnalyticOnNhd ℂ riemannZeta (closedBall c (11 / 4 : ℝ)) :=
    hf.mono (closedBall_subset_closedBall (by norm_num))
  have hcFloor : (1 / 4 : ℝ) ≤ ‖riemannZeta c‖ := by
    rcases hc with rfl | rfl
    · exact upper_center_floor N
    · exact lower_center_floor N
  have hcne : riemannZeta c ≠ 0 := by
    intro he
    rw [he, norm_zero] at hcFloor
    norm_num at hcFloor
  have hM : (1 : ℝ) ≤ ((N : ℝ) + 2) ^ 3 := one_le_pow₀ (by linarith [Nat.cast_nonneg (α := ℝ) N])
  have hbound : ∀ s ∈ sphere c (3 : ℝ), ‖riemannZeta s‖ ≤ ((N : ℝ) + 2) ^ 3 :=
    fun s hs => norm_zeta_le_cube_on_disk N hN c s hc (sphere_subset_closedBall hs)
  have hid : (∑ p ∈ (diskHead N c).image (fun z : ZeroPoint => z.1),
      divisor riemannZeta (closedBall c (11 / 4 : ℝ)) p) =
      ∑ z ∈ diskHead N c, (multiplicity z : ℤ) := by
    rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he)]
    apply Finset.sum_congr rfl
    intro z hz
    exact divisor_eq_multiplicity c (11 / 4) hsmall z
      (by simpa only [Metric.mem_closedBall, dist_eq_norm] using (mem_diskHead N c hc z).mp hz)
  have hj := finite_divisor_sum_le_jensen riemannZeta c (11 / 4) 3
    (((N : ℝ) + 2) ^ 3) (by norm_num) (by norm_num) hM hf hcne hbound
    ((diskHead N c).image (fun z : ZeroPoint => z.1))
  rw [hid, show (3 : ℝ) / (11 / 4) = 12 / 11 by norm_num] at hj
  have hj' : (∑ z ∈ diskHead N c, (multiplicity z : ℝ)) ≤
      Real.log (((N : ℝ) + 2) ^ 3 / ‖riemannZeta c‖) / Real.log (12 / 11 : ℝ) := by
    simpa only [Int.cast_sum, Int.cast_natCast] using hj
  have hl : Real.log (((N : ℝ) + 2) ^ 3 / ‖riemannZeta c‖) ≤
      Real.log (4 * ((N : ℝ) + 2) ^ 3) := by
    apply Real.log_le_log (by positivity)
    have hh := div_le_div_of_nonneg_left (by positivity : 0 ≤ ((N : ℝ) + 2) ^ 3)
      (by norm_num : (0 : ℝ) < 1 / 4) hcFloor
    simpa [div_eq_mul_inv, mul_comm] using hh
  have he : Real.log (4 * ((N : ℝ) + 2) ^ 3) = growthLog N := by
    rw [Real.log_mul (by norm_num) (by positivity), Real.log_pow]
    rfl
  apply hj'.trans
  rw [diskCountBudget, ← he]
  exact div_le_div_of_nonneg_right hl log_twelve_elevenths_pos.le

/-- The central horizontal segment lies strictly inside the Cauchy core disk. -/
theorem central_point_norm (c s : ℂ) (hc : c.re = 2) (hs : s.re ∈ Icc (0 : ℝ) 2)
    (hi : |s.im - c.im| ≤ 1 / 2) : ‖s - c‖ ≤ 9 / 4 := by
  have hr : |s.re - 2| ≤ 2 := abs_le.mpr ⟨by linarith [hs.1], by linarith [hs.2]⟩
  have hr2 := (sq_le_sq₀ (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 2)).mpr hr
  have hi2 := (sq_le_sq₀ (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)).mpr hi
  rw [sq_abs] at hr2 hi2
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 9 / 4)).mp
  rw [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im, hc]
  nlinarith

/-- A selected positive height is within one half of its existing Jensen center. -/
theorem selected_upper_near (N : ℕ) :
    |separatedHeight N - (upperCenter N).im| ≤ 1 / 2 := by
  rw [upperCenter_im]
  exact abs_le.mpr ⟨by linarith [(separatedHeight_bounds N).1],
    by linarith [(separatedHeight_bounds N).2]⟩

theorem selected_lower_near (N : ℕ) :
    |-separatedHeight N - (lowerCenter N).im| ≤ 1 / 2 := by
  have he : -separatedHeight N - (lowerCenter N).im =
      -(separatedHeight N - (upperCenter N).im) := by
    rw [lowerCenter_im, upperCenter_im]
    ring
  rw [he, abs_neg]
  exact selected_upper_near N

/-- CONDITIONAL actual-source application. The normalized logarithm and source
factorization remain genuine analytic suppliers, not conclusions of this declaration. -/
theorem norm_zeta_logDeriv_of_factorization (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (σ y : ℝ)
    (hσ : σ ∈ Icc (0 : ℝ) 2) (hy : |y| = separatedHeight N)
    (hnear : |y - c.im| ≤ 1 / 2) (C : ℂ) (hC : C ≠ 0) (L : ℂ → ℂ)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ growthLog N)
    (hfactor : (fun w => riemannZeta (c + w)) =ᶠ[𝓝 (((σ : ℂ) + (y : ℂ) * Complex.I) - c)]
      fun w => C * (Complex.exp (L w) *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z)) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  let s : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
  let w : ℂ := s - c
  have hcr : c.re = 2 := by rcases hc with rfl | rfl <;> simp
  have hw : ‖w‖ ≤ 9 / 4 := central_point_norm c s hcr (by simpa [s] using hσ)
    (by simpa [s] using hnear)
  have hsep (z : ZeroPoint) (_hz : z ∈ diskHead N c) :
      heightClearance N ≤ ‖w - (z.1 - c)‖ := by
    have he : w - (z.1 - c) = s - z.1 := by dsimp [w]; ring
    rw [he]
    exact horizontal_distance N σ y hy z
  have hb := norm_logDeriv_of_factorization (diskHead N c) (fun z => z.1 - c) multiplicity
    L (fun u => riemannZeta (c + u)) C w (growthLog N) (heightClearance N)
    hC (growthLog_pos N) (heightClearance_pos N) hL h0 hreal
    (fun z hz => (mem_diskHead N c hc z).mp hz) hw hsep hfactor
  have hcs : c + w = s := by dsimp [w]; ring
  have hsne : s ≠ 1 := by
    intro he
    have hiy : y = 0 := by simpa [s] using congrArg Complex.im he
    rw [hiy, abs_zero] at hy
    linarith [separatedHeight_pos N]
  have hcomp : logDeriv (fun u => riemannZeta (c + u)) w = logDeriv riemannZeta s := by
    change logDeriv (riemannZeta ∘ fun u => c + u) w = _
    have hd : HasDerivAt (fun u : ℂ => c + u) 1 w := by
      simpa only [id_eq] using (hasDerivAt_id w).const_add c
    have hzeta : DifferentiableAt ℂ riemannZeta (c + w) := by
      rw [hcs]
      exact differentiableAt_riemannZeta hsne
    have he := logDeriv_comp (f := riemannZeta) (g := fun u => c + u) (x := w) hzeta hd.differentiableAt
    simpa only [hd.deriv, mul_one, hcs] using he
  rw [hcomp] at hb
  have hJ := localCountBudget_nonneg N
  have hinv : 1 / heightClearance N ≤ 4 * (localCountBudget N + 1) := by
    have hh := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
      (by positivity : (0 : ℝ) < 1 / (4 * (localCountBudget N + 1))) (clearance_le_actual N hN)
    simpa only [one_div, inv_inv] using hh
  calc
    _ ≤ 80 * growthLog N + (∑ z ∈ diskHead N c, (multiplicity z : ℝ)) *
        (1 / heightClearance N + 1) := hb
    _ ≤ 80 * growthLog N + diskCountBudget N * (1 / heightClearance N + 1) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_right (diskMass_le N hN c hc)
        (by have := (heightClearance_pos N); positivity))
    _ ≤ _ := add_le_add le_rfl (mul_le_mul_of_nonneg_left
      (add_le_add hinv le_rfl) (diskCountBudget_nonneg N))

end
end GRWTSK.RiemannHypothesis.JensenDiskLogDerivative
```
