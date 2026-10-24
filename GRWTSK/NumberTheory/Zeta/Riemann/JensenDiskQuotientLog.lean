/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskLogDerivative
import GRWTSK.Analysis.ComplexAnalysis.BlaschkeQuotientLogarithm

set_option autoImplicit false

/-!
# Construct the canonical disk logarithm from a holomorphic zero-removed quotient

The actual source, diskHead and analytic multiplicities are unchanged.
The quotient's holomorphic extension, zero-freeness and exact factorization
remain inputs. Its ceiling, anchor, normalized logarithm and logarithmic
real-part ceiling are derived. No unconditional zeta quotient constructor or
negative-real-part strip estimate is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.JensenDiskQuotientLog

open Set Metric Filter
open scoped Topology BigOperators
open CanonicalZeroDivisor SeparatedContourHeights LocalJensenCount
open CubicZetaCircleBound AnchoredLocalJensen JensenDiskLogDerivative
open GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
open GRWTSK.Analysis.ComplexAnalysis.BlaschkeQuotientLogarithm

noncomputable section

/-- The old logarithm and real-part suppliers follow from an actual extended quotient. -/
theorem exists_zeta_disk_log_of_quotient (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (g : ℂ → ℂ)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hn : ∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0)
    (hquot : ∀ w ∈ closedBall 0 (3 : ℝ),
      riemannZeta (c + w) = g w *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z) :
    ∃ L : ℂ → ℂ, g 0 ≠ 0 ∧ L 0 = 0 ∧
      DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), HasDerivAt L (logDeriv g w) w) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ growthLog N) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), riemannZeta (c + w) = g 0 *
        (Complex.exp (L w) *
          ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z)) := by
  have hb : ∀ w ∈ sphere 0 (3 : ℝ), ‖riemannZeta (c + w)‖ ≤ ((N : ℝ) + 2) ^ 3 := by
    intro w hw
    apply norm_zeta_le_cube_on_disk N hN c (c + w) hc
    have hnorm : ‖w‖ = 3 := by simpa [Metric.mem_sphere, dist_zero_right] using hw
    simp [Metric.mem_closedBall, dist_eq_norm, hnorm]
  have hf : (1 / 4 : ℝ) ≤ ‖riemannZeta (c + 0)‖ := by
    rw [add_zero]
    rcases hc with rfl | rfl
    · exact upper_center_floor N
    · exact lower_center_floor N
  have hlog : Real.log (((N : ℝ) + 2) ^ 3 / (1 / 4 : ℝ)) = growthLog N := by
    have he : ((N : ℝ) + 2) ^ 3 / (1 / 4 : ℝ) = 4 * ((N : ℝ) + 2) ^ 3 := by ring
    rw [he, Real.log_mul (by norm_num) (by positivity), Real.log_pow]
    norm_num only [Nat.cast_ofNat]
    rfl
  obtain ⟨L, hg0, h0, hL, hd, hr, he⟩ := exists_log_from_quotient
    (diskHead N c) (fun z : ZeroPoint => z.1 - c) multiplicity
    (fun w => riemannZeta (c + w)) g (((N : ℝ) + 2) ^ 3) (1 / 4)
    (by positivity) (by norm_num) (fun z hz => (mem_diskHead N c hc z).mp hz)
    hg hn hquot hb hf
  exact ⟨L, hg0, h0, hL, hd, (fun w hw => by simpa only [hlog] using hr w hw), he⟩

/-- Conditional only on the extended quotient; no analytic logarithm is supplied.
This covers the same central real segment, not the still-missing [-3,0) part. -/
theorem norm_zeta_logDeriv_of_quotient (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (σ y : ℝ)
    (hσ : σ ∈ Icc (0 : ℝ) 2) (hy : |y| = separatedHeight N)
    (hnear : |y - c.im| ≤ 1 / 2) (g : ℂ → ℂ)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hn : ∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0)
    (hquot : ∀ w ∈ closedBall 0 (3 : ℝ),
      riemannZeta (c + w) = g w *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  obtain ⟨L, hg0, h0, hL, _hd, hr, he⟩ := exists_zeta_disk_log_of_quotient N hN c hc g hg hn hquot
  have hcr : c.re = 2 := by rcases hc with rfl | rfl <;> simp
  have hw : ‖((σ : ℂ) + (y : ℂ) * Complex.I) - c‖ ≤ 9 / 4 :=
    central_point_norm c _ hcr (by simpa using hσ) (by simpa using hnear)
  have hmem : ((σ : ℂ) + (y : ℂ) * Complex.I) - c ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  apply norm_zeta_logDeriv_of_factorization N hN c hc σ y hσ hy hnear (g 0) hg0 L hL h0 hr
  exact eventuallyEq_of_mem (isOpen_ball.mem_nhds hmem) (fun w hw => he w hw)

end
end GRWTSK.RiemannHypothesis.JensenDiskQuotientLog
