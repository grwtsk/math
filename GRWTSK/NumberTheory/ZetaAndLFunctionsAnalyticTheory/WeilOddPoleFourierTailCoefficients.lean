/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Original-target compilation and exact-target kernel replay checked.
Selected theorem axiom audits (5 declarations) use only
propext, Classical.choice and Quot.sound. Imported dependency closure
not freshly replayed. Independent analytical review NOT_RUN.
Formal evidence: grwtsk/noeaaeue docs/verification.md.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddHighPoleSectorReturn
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

/-!
# Absolute square tail of the ORIGINAL odd zeta pole coefficients

## Actual source and consumer

The previous source \`WeilOddHighPoleSectorReturn\` proves a
pole-retaining high-sector sign if the squared norm of the original
high-mode pole functional is at most
    poleTailPrice T N = 4*T*sinh(T/2)^2/(pi^2*N).

This file supplies the independent, source-specific numerical ingredient:
the complete squared-coefficient tail of the ACTUAL literal pole vector.
The original coefficient is
    OddOutputTrace.sinePoleCoefficient T n
      = 2*(-1)^(n+1)*w_n*sinh(T/2)
           / (sqrt(T)*(1/4+w_n^2)),
    w_n = pi*n/T.

For T>0, n>=1, elementary algebra gives
    (sinePoleCoefficient T n)^2
      <= [4*T*sinh(T/2)^2/pi^2] / n^2.

The inverse-square tail is bounded by the *unshifted* integral
    sum_(n=N+1)^infty 1/n^2 <= integral_N^infty dx/x^2 = 1/N.
The discrete integral comparison is the same pinned Mathlib
AntitoneOn.tsum_comp_add_le_integral tool already used in
WeilOddBoundaryDifferenceTail; no new convergence axiom is assumed.
This is an explicit all-mode (not just finite-window) coefficient
budget of the original integral-defined sine compression.

As a second independent check, on any finite set of actual high
sine coefficients, Finset.sum_mul_sq_le_sq_mul_sq yields
    (sum_(j<K) x_j poleCoefficient_(N+1+j))^2
      <= (sum_(j<K) x_j^2)*poleTailPrice T N.
This is a real finite signed pole term, not an arbitrary positive
transport model.

## Exact separation from the remaining infinite-dimensional theorem

The existing OddSineParseval and OddModeDependentTail.highSine_pair_hasSum
provide the source's norm and bilinear Fourier series of supported
odd functions. The next single consumer must establish that the
abstract sinh pole integral equals the high-mode coefficient pairing
for the actual zero-extended sinh support vector, and pass the
finite Cauchy bound to the infinite series. This module does not
hide that analytic return in a new axiom or a structure field:
no result below claims \`HasHighPoleTailBudget\` for an arbitrary
supported L2 test.

Once that functional return is proved, the EXISTING
\`OddHighPoleSectorReturn.dyadic_high_sector_nonneg_of_paid_pole_tail\`
consumes it directly. Even then the low block, mixed Schur
remainder and cofinal all-test signs remain open. Neither RH nor
Dirichlet GRH follows from the present high-sector coefficient
estimate, and no independent character-sector result is asserted.

## Mathematical comparison and boundary probes

The coefficients keep their alternating sign before squaring.
The original negative pole appears in the Weil form with
coefficient -2, not +2. At N=0, the proposed 1/N upper bound
is undefined: every theorem requiring it explicitly assumes N>0.
At T<=0 the intended real support window and sqrt(T)
normalization are outside this argument.
At a fixed T the 1/N bound is useful, but T*sinh(T/2)^2 grows
exponentially with T, so it is not a vanishing cofinal
growing-window error by itself.

Nearest mathematical source: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1 (3.19)--(3.20).
Exact local sources: OddOutputTrace.sinePoleCoefficient,
OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient,
OddSineParseval.hasSum_source_sineCoefficient_sq_ae,
OddModeDependentTail.highSine_pair_hasSum and
OddHighPoleSectorReturn.poleTailPrice, checked for identity
at the task's pinned grwtsk/math source commit.
The calculation is standard Fourier tail arithmetic, not a
novel RH/GRH result. Independent analytic review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleFourierTailCoefficients

open GRWTSK.NumberTheory.WeilQuadraticForm.OddOutputTrace
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighPoleSectorReturn

/-- The envelope is the exact factor multiplying 1/n^2 in the
source pole coefficient bound. -/
def poleCoefficientEnvelope (T : ℝ) : ℝ :=
  (4 * T * (Real.sinh (T / 2))^2) / (Real.pi)^2

/-- A positive quadratic denominator cannot amplify a pole mode
above the corresponding 1/w frequency envelope. This is a purely
algebraic comparison, preserving the signed numerator until squaring. -/
private theorem ratio_sq_le (T w s : ℝ) (hT : 0 < T) (hw : 0 < w) :
    ((2*w*s)/(Real.sqrt T * ((1/4 : ℝ)+w^2)))^2 ≤
      (4*s^2)/(T*w^2) := by
  have hd : 0 < (1/4 : ℝ)+w^2 := by positivity
  have hbound : w^4 ≤ ((1/4 : ℝ)+w^2)^2 := by
    nlinarith [sq_nonneg w]
  have hprod : (4*T*s^2)*w^4 ≤ (4*T*s^2)*((1/4 : ℝ)+w^2)^2 :=
    mul_le_mul_of_nonneg_left hbound (by positivity)
  calc
    _ = (4*w^2*s^2)/(T*((1/4 : ℝ)+w^2)^2) := by
      simp only [div_pow, mul_pow, Real.sq_sqrt hT.le]
      ring
    _ ≤ (4*s^2)/(T*w^2) := by
      apply (div_le_div_iff₀ (by positivity) (by positivity)).2
      nlinarith [hprod]

/-- Exact source coefficient, not the norm of a fitted positive
surrogate. This checks the frequency factor and sqrt(T) scaling. -/
theorem sinePoleCoefficient_sq_le (T : ℝ) (hT : 0 < T)
    (n : ℕ) (hn : 0 < n) :
    (sinePoleCoefficient T n)^2 ≤
      poleCoefficientEnvelope T / ((n : ℝ)^2) := by
  let w : ℝ := frequency T n
  let s : ℝ := Real.sinh (T / 2)
  have hnr : (0 : ℝ) < n := by exact_mod_cast hn
  have hw : 0 < w := by
    dsimp [w, frequency]
    positivity
  have hz : ((-1 : ℝ)^(n+1))^2 = 1 := by
    calc
      _ = ((-1 : ℝ)^2)^(n+1) := by
        rw [← pow_mul, mul_comm (n+1) 2, pow_mul]
      _ = 1 := by norm_num
  have hnum :
      (2 * (-1 : ℝ)^(n+1) * w * s)^2 = (2*w*s)^2 := by
    calc
      _ = ((-1 : ℝ)^(n+1))^2 * (2*w*s)^2 := by ring
      _ = _ := by rw [hz, one_mul]
  have hsource :
      (sinePoleCoefficient T n)^2 =
        ((2*w*s)/(Real.sqrt T*((1/4 : ℝ)+w^2)))^2 := by
    change (2 * (-1 : ℝ)^(n+1) * w * s /
      (Real.sqrt T*((1/4 : ℝ)+w^2)))^2 = _
    rw [div_pow, div_pow, hnum]
  have hscale :
      (4*s^2)/(T*w^2) =
        poleCoefficientEnvelope T / ((n : ℝ)^2) := by
    dsimp [w, s, frequency, poleCoefficientEnvelope]
    field_simp [hT.ne', Real.pi_ne_zero, hnr.ne'] <;> ring
  exact hsource.le.trans ((ratio_sq_le T w s hT hw).trans_eq hscale)

/-- For N>=1 the entire real inverse-square tail is finite, with
a bound that remains true for the infinite tail. -/
theorem inverseSquareTail (N : ℕ) (hN : 0 < N) :
    Summable (fun j : ℕ => (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ))) ∧
      (∑' j : ℕ, (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ))) ≤
        1 / (N : ℝ) := by
  let f : ℝ → ℝ := fun x => x ^ (-2 : ℝ)
  have hcut : (0 : ℝ) < N := by exact_mod_cast hN
  have hanti : AntitoneOn f (Ici (N : ℝ)) :=
    fun _ hx _ _ hxy =>
      Real.rpow_le_rpow_of_nonpos (hcut.trans_le hx) hxy (by norm_num)
  have hI : IntegrableOn f (Ioi (N : ℝ)) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) hcut
  have hnn : ∀ x ∈ Ioi (N : ℝ), 0 ≤ f x :=
    fun x hx => Real.rpow_nonneg (hcut.trans hx).le _
  have hCmp := hanti.tsum_comp_add_le_integral N hI hnn
  have hIndex (j : ℕ) : j + N + 1 = j + (N + 1) := by omega
  simp_rw [hIndex] at hCmp
  refine ⟨(summable_nat_add_iff (f := fun j : ℕ => f j) (N+1)).2
    (hanti.summable_of_integrableOn_Ioi hI hnn), hCmp.trans_eq ?_⟩
  dsimp only [f]
  rw [integral_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hcut]
  norm_num [Real.rpow_neg_ofNat, Real.rpow_neg_one, zpow_neg] <;> ring

/-- The infinite tail of squared ORIGINAL pole coefficients has exactly
the envelope required by OddHighPoleSectorReturn.poleTailPrice. -/
theorem sinePoleCoefficient_tail_summable_le
    (T : ℝ) (hT : 0 < T) (N : ℕ) (hN : 0 < N) :
    Summable (fun j : ℕ =>
      (sinePoleCoefficient T (N + 1 + j))^2) ∧
    (∑' j : ℕ, (sinePoleCoefficient T (N + 1 + j))^2) ≤
      poleTailPrice T N := by
  let C : ℝ := poleCoefficientEnvelope T
  have hC : 0 ≤ C := by
    dsimp [C, poleCoefficientEnvelope]
    positivity
  obtain ⟨hInv, hInvBound⟩ := inverseSquareTail N hN
  have hTerm (j : ℕ) :
      (sinePoleCoefficient T (N + 1 + j))^2 ≤
        C * (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ)) := by
    have hn : 0 < N + 1 + j := by omega
    have hsrc := sinePoleCoefficient_sq_le T hT (N + 1 + j) hn
    have hIndex : N + 1 + j = j + N + 1 := by omega
    rw [hIndex] at hsrc ⊢
    calc
      _ ≤ poleCoefficientEnvelope T /
        (((j + N + 1 : ℕ) : ℝ)^2) := hsrc
      _ = C * (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ)) := by
        dsimp [C]
        norm_num [Real.rpow_neg_ofNat, zpow_neg, div_eq_mul_inv]
  have hMajor : Summable (fun j : ℕ =>
      C * (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ))) := hInv.mul_left C
  have hTail : Summable (fun j : ℕ =>
      (sinePoleCoefficient T (N + 1 + j))^2) :=
    Summable.of_nonneg_of_le (fun j => sq_nonneg _) hTerm hMajor
  refine ⟨hTail, ?_⟩
  calc
    (∑' j : ℕ, (sinePoleCoefficient T (N + 1 + j))^2) ≤
        ∑' j : ℕ, C * (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ)) :=
      hTail.tsum_le_tsum hTerm hMajor
    _ = C * ∑' j : ℕ, (((j + N + 1 : ℕ) : ℝ)^(-2 : ℝ)) :=
      tsum_mul_left
    _ ≤ C * (1 / (N : ℝ)) :=
      mul_le_mul_of_nonneg_left hInvBound hC
    _ = poleTailPrice T N := by
      dsimp [C, poleCoefficientEnvelope, poleTailPrice]
      simp only [div_eq_mul_inv]
      ring

/-- Every finite truncated tail is dominated by the complete source
coefficient budget. No source modes or mixed terms are invented. -/
theorem finite_sinePoleCoefficient_tail_le
    (T : ℝ) (hT : 0 < T) (N : ℕ) (hN : 0 < N) (K : ℕ) :
    (∑ j ∈ Finset.range K,
      (sinePoleCoefficient T (N + 1 + j))^2) ≤
        poleTailPrice T N := by
  obtain ⟨hSum, hBound⟩ :=
    sinePoleCoefficient_tail_summable_le T hT N hN
  exact (hSum.sum_le_tsum (Finset.range K)
    (fun j hj => sq_nonneg (sinePoleCoefficient T (N + 1 + j)))).trans hBound

/-- A directly usable FINITE pole-coupling certificate. Cauchy-Schwarz
is applied to signed coefficients before squaring the total. This is a
finite mathematical statement; the infinite whole-domain functional
return still requires the true Hilbert/Parseval identification. -/
theorem finite_signed_high_pole_coupling_le
    (T : ℝ) (hT : 0 < T) (N : ℕ) (hN : 0 < N)
    (K : ℕ) (x : ℕ → ℝ) :
    (∑ j ∈ Finset.range K,
      x j * sinePoleCoefficient T (N + 1 + j))^2 ≤
      (∑ j ∈ Finset.range K, x j^2) * poleTailPrice T N := by
  have hCS := Finset.sum_mul_sq_le_sq_mul_sq (Finset.range K)
    x (fun j => sinePoleCoefficient T (N + 1 + j))
  have hMass : 0 ≤ ∑ j ∈ Finset.range K, x j^2 :=
    Finset.sum_nonneg (fun j _ => sq_nonneg _)
  have hTail := finite_sinePoleCoefficient_tail_le T hT N hN K
  exact hCS.trans (mul_le_mul_of_nonneg_left hTail hMass)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleFourierTailCoefficients
