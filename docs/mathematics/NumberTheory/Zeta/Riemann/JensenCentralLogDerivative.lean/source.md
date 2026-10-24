# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.JensenCentralLogDerivative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `471739a3dc9e44874c66cd16e2f0b2ed6b9a7c40` · SHA-256 `49da65dab5534e255cb4199ecfaabd68b8b4a1a6e1faabc57ac9a3c2ab1cd788`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotient

set_option autoImplicit false

/-!
# Actual central-strip logarithmic-derivative bound at the maintained heights

The quotient, normalized logarithm, real-part ceiling, source factorization,
zero inventory and multiplicities are now supplied by prior source drafts.
The estimate covers only 0 <= Re(s) <= 2. No rate theorem, negative-strip
extension, infinite explicit formula or prime margin is inferred here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.JensenCentralLogDerivative

open Set Metric Filter
open scoped Topology BigOperators
open CanonicalZeroDivisor LocalJensenCount SeparatedContourHeights
open CubicZetaCircleBound JensenDiskLogDerivative JensenDiskQuotientLog JensenDiskQuotient
open GRWTSK.Analysis.Complex.DiskBlaschkeFactors

noncomputable section

/-- The previous normalized-log supplier is instantiated with the actual constructed quotient. -/
theorem exists_actual_zeta_disk_log (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) :
    ∃ (C : ℂ) (L : ℂ → ℂ), C ≠ 0 ∧ L 0 = 0 ∧
      DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ growthLog N) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), riemannZeta (c + w) = C *
        (Complex.exp (L w) *
          ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z)) := by
  obtain ⟨g, hg, hn, he, _hoff⟩ := exists_zeta_disk_quotient N hN c hc
  obtain ⟨L, hg0, h0, hL, _hd, hr, hfactor⟩ :=
    exists_zeta_disk_log_of_quotient N hN c hc g (quotient_diffContOnCl g hg) hn he
  exact ⟨g 0, L, hg0, h0, hL, hr, hfactor⟩

/-- No quotient, analytic logarithm, source factorization or growth bound is an input. -/
theorem norm_logDeriv_central (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ ∈ Icc (0 : ℝ) 2) (hy : |y| = separatedHeight N) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  have hc : ∃ c : ℂ, (c = upperCenter N ∨ c = lowerCenter N) ∧ |y - c.im| ≤ 1 / 2 := by
    by_cases hsign : 0 ≤ y
    · have he : y = separatedHeight N := by simpa only [abs_of_nonneg hsign] using hy
      exact ⟨upperCenter N, Or.inl rfl, by simpa only [he] using selected_upper_near N⟩
    · have he : y = -separatedHeight N := by
        rw [abs_of_neg (lt_of_not_ge hsign)] at hy
        linarith
      exact ⟨lowerCenter N, Or.inr rfl, by simpa only [he] using selected_lower_near N⟩
  obtain ⟨c, hc, hnear⟩ := hc
  obtain ⟨g, hg, hn, he, _hoff⟩ := exists_zeta_disk_quotient N hN c hc
  exact norm_zeta_logDeriv_of_quotient N hN c hc σ y hσ hy hnear g
    (quotient_diffContOnCl g hg) hn he

theorem norm_logDeriv_upper (N : ℕ) (hN : 2 ≤ N) (σ : ℝ) (hσ : σ ∈ Icc (0 : ℝ) 2) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (separatedHeight N : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) :=
  norm_logDeriv_central N hN σ (separatedHeight N) hσ (abs_of_pos (separatedHeight_pos N))

theorem norm_logDeriv_lower (N : ℕ) (hN : 2 ≤ N) (σ : ℝ) (hσ : σ ∈ Icc (0 : ℝ) 2) :
    ‖logDeriv riemannZeta ((σ : ℂ) - (separatedHeight N : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  have h := norm_logDeriv_central N hN σ (-separatedHeight N) hσ
    (by rw [abs_neg, abs_of_pos (separatedHeight_pos N)])
  simpa only [Complex.ofReal_neg, neg_mul, ← sub_eq_add_neg] using h

/-- The bound is explicitly quadratic in H_N; this algebra is not a limit proof. -/
theorem budget_eq_quadratic (N : ℕ) :
    80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) =
      (8 / (Real.log (12 / 11 : ℝ) * Real.log (6 / 5 : ℝ))) * (growthLog N) ^ 2 +
      (80 + 5 / Real.log (12 / 11 : ℝ)) * growthLog N := by
  have hJ : localCountBudget N = 2 * growthLog N / Real.log (6 / 5 : ℝ) := rfl
  rw [diskCountBudget, hJ]
  ring

end
end GRWTSK.RiemannHypothesis.JensenCentralLogDerivative
```
