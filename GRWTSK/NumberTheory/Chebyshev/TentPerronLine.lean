/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.LSeries.TentPairing
import GRWTSK.NumberTheory.Chebyshev.TentSource
import GRWTSK.NumberTheory.Chebyshev.CountedTentTail
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.Calculus.LogDeriv

set_option autoImplicit false

/-!
# The actual Mangoldt tent sum is the actual zeta integral on Re(s)=2

Upstream absolute convergence and the upstream logarithmic-derivative identity
discharge the Dirichlet-series inputs. No canonical-zero counting or full
explicit-formula assumption enters this right-line theorem. Moving the contour
to the pole and zero coefficients remains a separate unproved task.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentPerronLine

open MeasureTheory Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion
open GRWTSK.NumberTheory.LSeries.TentPairing
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail

noncomputable section

/-- Exact upstream equality on the actual right line; not a formal Dirichlet polynomial. -/
theorem mangoldt_series_on_rightLine (t : ℝ) :
    _root_.LSeries (fun m : ℕ => (ArithmeticFunction.vonMangoldt m : ℂ)) (rightLine t) =
      -logDeriv riemannZeta (rightLine t) := by
  simpa only [logDeriv_apply, neg_div] using
    ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div
      (s := rightLine t) (by rw [rightLine_re]; norm_num)

/-- The vertical line misses the zeta pole and every zero by upstream nonvanishing. -/
theorem rightLine_zeta_ne_zero (t : ℝ) : riemannZeta (rightLine t) ≠ 0 :=
  riemannZeta_ne_zero_of_one_lt_re (by rw [rightLine_re]; norm_num)

/-- The infinite arithmetic index collapses to the existing exact finite interval inventory. -/
theorem weighted_mangoldt_tsum_eq (n : ℕ) :
    (∑' m : ℕ, (ArithmeticFunction.vonMangoldt m : ℂ) *
      (tent (squareCenter n) (squareRadius n) (m : ℝ) : ℂ)) =
        (squareTentMangoldt n : ℂ) := by
  have hout : ∀ m ∉ Finset.Ioc (n ^ 2) ((n + 1) ^ 2),
      (ArithmeticFunction.vonMangoldt m : ℂ) *
        (tent (squareCenter n) (squareRadius n) (m : ℝ) : ℂ) = 0 := by
    intro m hm
    have hw := squareWeight_eq_zero_of_outside n m
      (fun hp => hm (Finset.mem_Ioc.mpr ⟨hp.1, hp.2.le⟩))
    change (ArithmeticFunction.vonMangoldt m : ℂ) * (squareWeight n m : ℂ) = 0
    simp only [hw, Complex.ofReal_zero, mul_zero]
  rw [tsum_eq_sum (s := Finset.Ioc (n ^ 2) ((n + 1) ^ 2)) hout]
  simp only [squareTentMangoldt, squareWeight, Complex.ofReal_sum, Complex.ofReal_mul]

/-- Complete right-line arithmetic comparison. All Mellin/Fubini premises are discharged.
This is not yet equality to the pole-minus-zero residue expression. -/
theorem squareTentMangoldt_eq_rightLine (n : ℕ) (hn : 2 ≤ n) :
    (squareTentMangoldt n : ℂ) =
      ((1 / (2 * Real.pi) : ℝ) : ℂ) *
        (∫ t : ℝ, -logDeriv riemannZeta (rightLine t) *
          tentKernel (squareCenter n) (squareRadius n) (rightLine t)) := by
  have h := dirichlet_tent_pairing
    (fun m : ℕ => (ArithmeticFunction.vonMangoldt m : ℂ))
    (ArithmeticFunction.LSeriesSummable_vonMangoldt (s := 2) (by norm_num))
    (squareCenter n) (squareRadius n) (squareRadius_pos n) (square_tent_domain n hn)
  simp_rw [mangoldt_series_on_rightLine] at h
  rw [weighted_mangoldt_tsum_eq n] at h
  exact h.symm

/-- A fixed, source-defined finite real constant; no numerical bound is asserted. -/
def mangoldtLineMass : ℝ :=
  ∑' m : ℕ, ‖_root_.LSeries.term
    (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ)) 2 m‖

theorem mangoldtLineMass_nonneg : 0 ≤ mangoldtLineMass :=
  tsum_nonneg (fun _ => norm_nonneg _)

/-- Absolute convergence gives a uniform logarithmic-derivative bound on this line only. -/
theorem norm_neg_logDeriv_rightLine_le (t : ℝ) :
    ‖-logDeriv riemannZeta (rightLine t)‖ ≤ mangoldtLineMass := by
  rw [← mangoldt_series_on_rightLine, _root_.LSeries]
  have hs := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s := rightLine t) (by rw [rightLine_re]; norm_num)
  have hb := norm_tsum_le_tsum_norm hs.norm
  simpa only [term_norm_on_rightLine, mangoldtLineMass] using hb

/-- The actual integrand is continuous, not merely assigned an integral value. -/
theorem continuous_neg_logDeriv_rightLine :
    Continuous (fun t : ℝ => -logDeriv riemannZeta (rightLine t)) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  have hp : rightLine t ≠ 1 := by
    intro he; have hr := congrArg Complex.re he; norm_num [rightLine] at hr
  have ha := analyticOn_riemannZeta (rightLine t) hp
  have hc : ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s) (rightLine t) :=
    (ha.deriv.continuousAt.div ha.continuousAt (rightLine_zeta_ne_zero t)).neg
  exact hc.comp (by unfold rightLine; fun_prop)

/-- Ordinary absolute integrability is independently exhibited for the actual zeta integrand. -/
theorem integrable_zeta_tent_rightLine (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Integrable (fun t : ℝ => -logDeriv riemannZeta (rightLine t) *
      tentKernel x h (rightLine t)) := by
  have hc : Continuous (fun t : ℝ => -logDeriv riemannZeta (rightLine t) * tentKernel x h (rightLine t)) := continuous_neg_logDeriv_rightLine.mul
    ((continuous_tentKernel x h hh ha).comp (show Continuous rightLine from by unfold rightLine; fun_prop))
  apply (integrable_inv_one_add_sq.const_mul
    (mangoldtLineMass * rightLineConstant x h)).mono' hc.aestronglyMeasurable
  apply Eventually.of_forall
  intro t
  rw [norm_mul]
  calc
    _ ≤ mangoldtLineMass * (rightLineConstant x h * (1 + t ^ 2)⁻¹) :=
      mul_le_mul (norm_neg_logDeriv_rightLine_le t)
        (norm_tentKernel_rightLine_le x h t hh ha)
        (norm_nonneg _) mangoldtLineMass_nonneg
    _ = _ := by ring

end
end GRWTSK.NumberTheory.Chebyshev.TentPerronLine
