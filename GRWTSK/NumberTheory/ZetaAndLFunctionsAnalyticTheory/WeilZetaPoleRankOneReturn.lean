/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationFourier
import Mathlib.Tactic

/-!
# Rank-one negative part of the actual conductor-one Weil poles

MSC2020: 11M26 (primary), 11M41, 46C20.

The source is the LITERAL full pole correlation integral already proved
by SourcePrimeCorrelation.zeta_pole_correlation. Both exponential
orientations remain signed complex cross-products. Their exact real
quadratic form is a positive squared sum minus a single negative squared
difference of the original two exponential moments. The negative
functional has no hidden positivity or pole-neutrality assumption.

This is a source-bound supplier for the conductor-one branch of
SignedDeficitNegativeIndex, not a second completed-zeta formula.
The fact that the negative moment functional's kernel has codimension
at most one on a complex finite-dimensional subspace is proved in
the adjacent analytical provenance, NOT a Lean declaration here.
No conductor-one specialization of primitive-nonprincipal lemmas.

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20), both pole orientations;
classical polarization of complex exponential moments.
SOURCE_PROOF_CANDIDATE; elaboration, complete import build, fresh
kernel replay, transitive axiom audit and independent review NOT_RUN.
Novelty UNASSESSED. No RH/GRH claim, sorry, admit or new axiom.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ZetaPoleRankOneReturn

open SourcePrimeCorrelation

/-- Literal plus-one-half exponential moment in the source pole formula. -/
def plusMoment (f : ℝ → ℂ) : ℂ :=
  ∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)

/-- Literal minus-one-half exponential moment in the source pole formula. -/
def minusMoment (f : ℝ → ℂ) : ℂ :=
  ∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)

/-- The real part of the actual two-orientation pole correlation,
not an absolute-square replacement or a positive comparator. -/
def sourcePole (f : ℝ → ℂ) : ℝ :=
  (∫ r : ℝ, correlation f r *
    ((Real.exp (r / 2) + Real.exp (-r / 2) : ℝ) : ℂ)).re

/-- Exact complex polarization, with the original signed cross-pairing. -/
theorem cross_pair_eq_signed_norms (u v : ℂ) :
    2 * (u * conj v + v * conj u).re =
      ‖u + v‖ ^ 2 - ‖u - v‖ ^ 2 := by
  simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.mul_re, Complex.conj_re, Complex.conj_im]
  ring

/-- The canonical source pole integral is the signed difference of
the two actual exponential-moment squares, including both orientations.
All source integrals have their original integrability hypotheses. -/
theorem sourcePole_eq_signed_norms (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t, A < |t| → f t = 0) :
    2 * sourcePole f =
      ‖plusMoment f + minusMoment f‖ ^ 2 -
        ‖plusMoment f - minusMoment f‖ ^ 2 := by
  unfold sourcePole plusMoment minusMoment
  rw [(zeta_pole_correlation f A hf hs).2]
  exact cross_pair_eq_signed_norms _ _

/-- The complete original zeta pole contribution can have a negative
sign, but it is bounded below by exactly ONE negative complex square. -/
theorem sourcePole_ge_negative_moment (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t, A < |t| → f t = 0) :
    -(‖plusMoment f - minusMoment f‖ ^ 2) / 2 ≤ sourcePole f := by
  have h := sourcePole_eq_signed_norms f A hf hs
  have hp : 0 ≤ ‖plusMoment f + minusMoment f‖ ^ 2 := sq_nonneg _
  linarith

/-- On the actual kernel of the negative exponential-moment
functional, the FULL two-orientation zeta pole term is nonnegative.
The kernel condition is NOT imposed on the original Weil test domain. -/
theorem sourcePole_nonneg_on_negative_kernel (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t, A < |t| → f t = 0)
    (hnegative : plusMoment f = minusMoment f) :
    0 ≤ sourcePole f := by
  have h := sourcePole_ge_negative_moment f A hf hs
  have h0 : plusMoment f - minusMoment f = 0 :=
    sub_eq_zero.mpr hnegative
  simpa [h0] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.ZetaPoleRankOneReturn
