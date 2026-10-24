# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualSignedDyadicEndpointPayment.Variant9c4faa81b2de22401ed6fca5d1a51a612e43430bc5f6624c46c3368d95580a2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1120b17ac849ed7998876644dd647a3d6628bde5` · SHA-256 `9c4faa81b2de22401ed6fca5d1a51a612e43430bc5f6624c46c3368d95580a2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualSignedDyadicSummableError
import ActualCriticalZeroMagnitude

/-!
Exact endpoint compensation for the actual source shells. Critical mass is paid
once on the full height interval. The infinite compensated shell sum is the
negative initial horizontal correction; the initial off-axis head and all signed
vertical terms remain. This supplies no arithmetic lower cap.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualSignedDyadicEndpointPayment
open Complex MeasureTheory Set Finset Filter Topology Zeta23
open SourceActualSignedDyadicSummableError SourceActualSignedZeroDyadicShell
open SourceActualCriticalZeroHead SourceActualZeroTailBudget
open ActualCriticalZeroMagnitude SourcePairing SourceActualInitialPrimeContour

/-- The genuine actual critical finite mass is monotone in the real height. -/
theorem actualCriticalZeroHeightHead_re_mono (A R1 R2 : ℝ) (hA : 1 ≤ A)
    (hR : R1 ≤ R2) :
    (actualCriticalZeroHeightHead A R1).re ≤ (actualCriticalZeroHeightHead A R2).re := by
  classical
  rw [actualCriticalZeroHeightHead_eq_sourceMass A R1 hA,
    actualCriticalZeroHeightHead_eq_sourceMass A R2 hA, Complex.ofReal_re, Complex.ofReal_re]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro rho hrho
    simp only [Finset.mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq] at hrho ⊢
    exact ⟨hrho.1.trans_le hR, hrho.2⟩
  · intro rho _ _
    exact mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _)

private theorem error_eq_boundary (A c R1 R2 : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : 7 ≤ R1)
    (horder : R1 ≤ R2)
    (hg1 : ∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hg2 : ∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) :
    (actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
      (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) -
      (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1) =
      actualFiniteHorizontalCorrection A c R2 - actualFiniteHorizontalCorrection A c R1 := by
  have he : (actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
      (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) =
      actualSignedZeroHeightShell A R1 R2 := by
    rw [actualSignedZeroHeightShell_eq_head_sub A R1 R2 horder,
      actualZeroHeightHead_eq_critical_add_offAxis A R1,
      actualZeroHeightHead_eq_critical_add_offAxis A R2]
    ring
  rw [he, actualSignedZeroHeightShell_eq_contour_difference A c R1 R2 hA hc hc2
    h7 horder hg1 hg2, add_sub_cancel_left]

/-- The complete finite actual compensation pays only its two true endpoints. -/
theorem actual_compensated_dyadic_endpoint_norm (A c E : ℝ) (R : ℕ → ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : ∀ k, 7 ≤ R k)
    (horder : ∀ k, R k ≤ R (k + 1))
    (hgood : ∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hb : ∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k)
    (N : ℕ) :
    ‖(actualOffAxisZeroHeightHead A (R N) - actualOffAxisZeroHeightHead A (R 0)) +
      (actualCriticalZeroHeightHead A (R N) - actualCriticalZeroHeightHead A (R 0)) -
      (actualCompletedVerticalHead A c (R N) - actualCompletedVerticalHead A c (R 0))‖ ≤
      E * (1 + (1 / 16 : ℝ) ^ N) := by
  rw [error_eq_boundary A c (R 0) (R N) hA hc hc2 (h7 0)
    ((monotone_nat_of_le_succ horder) (Nat.zero_le N)) (hgood 0) (hgood N)]
  calc
    _ ≤ ‖actualFiniteHorizontalCorrection A c (R N)‖ +
      ‖actualFiniteHorizontalCorrection A c (R 0)‖ := norm_sub_le _ _
    _ ≤ E * (1 / 16 : ℝ) ^ N + E * (1 / 16 : ℝ) ^ 0 := add_le_add (hb N) (hb 0)
    _ = _ := by norm_num; ring

/-- One fixed true critical mass bound is paid once, with the sharp finite endpoint cost. -/
theorem actual_offAxis_dyadic_endpoint_real_bounds :
    ∃ C Rcrit : ℝ, 0 ≤ C ∧ 1 ≤ Rcrit ∧ ∀ (A c E : ℝ) (R : ℕ → ℝ),
      Rcrit ≤ A → 1 < c → c ≤ 3 / 2 → (∀ k, 7 ≤ R k) →
      (∀ k, R k ≤ R (k + 1)) →
      (∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0) →
      (∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k) →
      ∀ N : ℕ,
      (actualCompletedVerticalHead A c (R N) - actualCompletedVerticalHead A c (R 0)).re -
        C / A ^ 9 - E * (1 + (1 / 16 : ℝ) ^ N) ≤
        (actualOffAxisZeroHeightHead A (R N) - actualOffAxisZeroHeightHead A (R 0)).re ∧
      (actualOffAxisZeroHeightHead A (R N) - actualOffAxisZeroHeightHead A (R 0)).re ≤
        (actualCompletedVerticalHead A c (R N) - actualCompletedVerticalHead A c (R 0)).re +
          E * (1 + (1 / 16 : ℝ) ^ N) := by
  obtain ⟨C, Rcrit, hC, hRcrit, hcrit⟩ := actualCriticalZeroHeightHead_real_uniform_ninth_bound
  refine ⟨C, Rcrit, hC, hRcrit, ?_⟩
  intro A c E R hA hc hc2 h7 horder hgood hb N
  have hA1 := hRcrit.trans hA
  have hlo := actualCriticalZeroHeightHead_re_mono A (R 0) (R N) hA1
    ((monotone_nat_of_le_succ horder) (Nat.zero_le N))
  have hhi := (hcrit A (R N) hA).2
  have hzero := (hcrit A (R 0) hA).1
  have hn := actual_compensated_dyadic_endpoint_norm A c E R hA1 hc hc2 h7 horder hgood hb N
  have hp := (Complex.re_le_norm _).trans hn
  have hm := ((neg_le_abs _).trans (Complex.abs_re_le_norm _)).trans hn
  simp only [Complex.sub_re, Complex.add_re] at hp hm ⊢
  constructor <;> linarith

/-- The whole compensated actual shell series has the exact initial boundary value. -/
theorem actual_compensated_dyadic_shell_hasSum (A c E : ℝ) (R : ℕ → ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : ∀ k, 7 ≤ R k)
    (horder : ∀ k, R k ≤ R (k + 1))
    (hgood : ∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hb : ∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k) :
    HasSum (fun k => (actualOffAxisZeroHeightHead A (R (k + 1)) -
      actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k)))
      (-actualFiniteHorizontalCorrection A c (R 0)) ∧
    ‖∑' k : ℕ, ((actualOffAxisZeroHeightHead A (R (k + 1)) - actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) -
        actualCompletedVerticalHead A c (R k)))‖ ≤ E := by
  have hs := (actual_compensated_dyadic_shell_errors_summable A c E R hA hc hc2
    h7 horder hgood hb).1
  have ht : Tendsto (fun k => actualFiniteHorizontalCorrection A c (R k)) atTop (𝓝 0) := by
    apply squeeze_zero_norm hb
    simpa using (tendsto_pow_atTop_nhds_zero_of_lt_one
      (by norm_num : (0 : ℝ) ≤ 1 / 16) (by norm_num : (1 / 16 : ℝ) < 1)).const_mul E
  have he (k : ℕ) := error_eq_boundary A c (R k) (R (k + 1)) hA hc hc2
    (h7 k) (horder k) (hgood k) (hgood (k + 1))
  have hsum : HasSum (fun k => (actualOffAxisZeroHeightHead A (R (k + 1)) -
      actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k)))
      (-actualFiniteHorizontalCorrection A c (R 0)) := by
    apply (hasSum_iff_tendsto_nat_of_summable_norm hs).mpr
    simp_rw [he]
    rw [show (fun N : ℕ => ∑ k ∈ Finset.range N,
      (actualFiniteHorizontalCorrection A c (R (k + 1)) -
        actualFiniteHorizontalCorrection A c (R k))) =
      (fun N => actualFiniteHorizontalCorrection A c (R N) -
        actualFiniteHorizontalCorrection A c (R 0)) by
      funext N
      exact Finset.sum_range_sub (fun k : ℕ => actualFiniteHorizontalCorrection A c (R k)) N]
    simpa using ht.sub tendsto_const_nhds
  refine ⟨hsum, ?_⟩
  rw [hsum.tsum_eq, norm_neg]
  simpa using hb 0

/-- Genuine separately selected good heights realize the exact infinite endpoint budget. -/
theorem actual_good_dyadic_exact_compensation_budget :
    ∃ Cg K : ℝ, 0 < Cg ∧ 0 < K ∧ ∀ A c : ℝ,
      1 ≤ A → 1 < c → c ≤ 3 / 2 → ∃ R : ℕ → ℝ,
      (∀ k, (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R k ∧
        R k ≤ (actualDyadicGoodHeightIndex A c k : ℝ) + 1) ∧
      (∀ k, 2 * R k ≤ R (k + 1)) ∧
      HasSum (fun k => (actualOffAxisZeroHeightHead A (R (k + 1)) -
        actualOffAxisZeroHeightHead A (R k)) +
        (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
        (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k)))
        (-actualFiniteHorizontalCorrection A c (R 0)) ∧
      ‖∑' k : ℕ, ((actualOffAxisZeroHeightHead A (R (k + 1)) -
        actualOffAxisZeroHeightHead A (R k)) +
        (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
        (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k)))‖ ≤
        actualDyadicHorizontalCoefficient K c / A ^ 7 *
          Real.exp (-((2 * c - 1) * A) / 5) := by
  obtain ⟨Cg, K, hCg, hK, hseq⟩ := actual_good_dyadic_horizontal_sequence
  refine ⟨Cg, K, hCg, hK, ?_⟩
  intro A c hA hc hc2
  obtain ⟨R, hidx, hdyad, hgood, hb⟩ := hseq A c hA hc hc2
  have h7 (k : ℕ) : 7 ≤ R k := by
    have hh : (7 : ℝ) ≤ actualDyadicGoodHeightIndex A c k := by
      exact_mod_cast (actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k).1
    exact hh.trans (hidx k).1
  have horder (k : ℕ) : R k ≤ R (k + 1) := by linarith [h7 k, hdyad k]
  have ht := actual_compensated_dyadic_shell_hasSum A c
    (actualDyadicHorizontalCoefficient K c / A ^ 7 * Real.exp (-((2 * c - 1) * A) / 5)) R
    hA hc hc2 h7 horder (fun k s him hrl hru => (hgood k s him hrl hru).1) hb
  exact ⟨R, hidx, hdyad, ht⟩

end FormalResearch.RiemannHypothesis.SourceActualSignedDyadicEndpointPayment
```
