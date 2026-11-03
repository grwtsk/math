/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusAdaptiveSharperPerronTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusAdaptiveFiniteScaleRHReturn
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Stronger FINITE verified-height original Möbius Perron range, audited

This source consumes the independently proved ORDINARY MATHEMATICAL
24*x*log(x)/H0 original adaptive Perron error (previously 200).
The original c(x)=1+1/log x, fixed P&T H0=3e12, and actual
pole-removed reciprocal Z1/R and finite local contour remain
unchanged.

For any fixed 0<delta<=1/4 set sigma=1/2+delta and
 X'_delta=(H0/[100*(1+log H0)])^(1/(1/2-delta)).
This is about 100x larger than the previous cutoff when
delta is small; the exact gain is 10^(1/(1/2-delta)).
For x<=X'_delta, the same true finite-height rectangle
gives |M(N)|<=D_delta*x^sigma with an UNCOMPUTED D_delta,
because the independent published finite-zero theorem
has not supplied a NUMERIC min|Z1| or C_delta.

A CRITICAL AUDIT: for a finite X, |M(N)|<=N already gives
|M(N)|<=X*N^sigma (0<=sigma<1, 1<=N<=X). Merely
enlarging a finite exponent window with an unspecified
constant is NOT a nontrivial numerical RH-scale
arithmetic certificate. The genuine new quantitative fact
is the unconditional PERRON ERROR coefficient 24, which
can become effective only after computing a rigorous
reciprocal C_delta. An exact threshold for beating the
trivial |M(N)|<=N is explicitly displayed in the review.

The full signed far all-rate global original source remains
OPEN; native Lean compilation user-DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.AdaptiveSharperFiniteCertificate

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact
open GRWTSK.NumberTheory.Moebius.PerronLocalCriticalWindow
open GRWTSK.NumberTheory.Moebius.AdaptiveVerifiedHeightPerron
open GRWTSK.NumberTheory.Moebius.AdaptiveSharperPerronTail

/-- Strictly FINITE larger verified-height source cutoff.
No dependence on arithmetic signs or on the magnitude C_delta
of the reciprocal compact minimum. -/
def sharperVerifiedCutoff (delta : ℝ) : ℝ :=
  (adaptivePerronHeight /
    (100 * (1 + Real.log adaptivePerronHeight))) ^
      (1 / ((1 / 2 : ℝ) - delta))

/-- The eventual finite stopping time for the true integer
Mertens floor-exp cutoff. Not a global RH statement. -/
def sharperObservationEnd (delta : ℝ) : ℝ :=
  Real.log (sharperVerifiedCutoff delta - 1 / 2)

/-- RH-independent real scalar absorption:
  x^(1-sigma) <=H0/[100(1+log H0)] and
  log x<=4log H0 for x<=X'_delta.
Then (2*C+24log x)*x/H0 <=(C+1)*x^sigma.
This is an explicit unported REAL Lean calculus target. -/
def SharperCutoffAbsorptionTarget : Prop :=
  ∀ (delta C : ℝ), 0 < delta → delta ≤ 1 / 4 → 0 ≤ C →
    ∀ N : ℕ, 8 ≤ N →
      let x := halfIntegerCutoff N
      x ≤ sharperVerifiedCutoff delta →
        (2 * C + 24 * Real.log x) * x / adaptivePerronHeight ≤
          (C + 1) * x ^ ((1 / 2 : ℝ) + delta)

/-- The genuine finite-height original Mertens bound with
stronger x<=X'_delta cutoff, consuming:
1 published EXTERNAL finite P&T (unported in Lean);
2 standard compact minimum nonzero;
3 purely elementary c(x) real arithmetic;
4 the two sharpened scalar original Perron imports;
5 actual original finite contour norm;
6 independent real cutoff absorption.
There is NO unconditional zero-free half-plane Re>1/2. -/
theorem sharper_verified_height_Mertens
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (hCompact : FiniteHeightCompactReciprocalBoundTarget)
    (hArithmetic : AdaptiveAbscissaAndCutoffTarget)
    (hOscillatory : AdaptiveOriginalOscillatoryTailTarget)
    (hSeries : SharperAdaptiveReciprocalLogSumTarget)
    (hNorm : AdaptiveFiniteHeightContourNormTarget)
    (hAbsorb : SharperCutoffAbsorptionTarget)
    (delta : ℝ) (hdelta : 0 < delta)
    (hquarter : delta ≤ 1 / 4) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ N : ℕ, 8 ≤ N →
        halfIntegerCutoff N ≤ sharperVerifiedCutoff delta →
          |finiteMertensPrefix N| ≤
            D * (halfIntegerCutoff N) ^ ((1 / 2 : ℝ) + delta) := by
  have hhalf : delta < 1 / 2 := by linarith
  obtain ⟨C, hC, hRec⟩ :=
    finite_height_reciprocal_bound_of_published_certificate
      hVerified hCompact delta hdelta hhalf
  let sigma : ℝ := 1 / 2 + delta
  let D : ℝ :=
    (C / Real.pi) * (1 / sigma + Real.log adaptivePerronHeight) +
      C + 1
  have hSig : 0 < sigma := by dsimp [sigma]; linarith
  have hH : 0 < adaptivePerronHeight := by
    norm_num [adaptivePerronHeight, verifiedZetaHeight]
  have hLog : 0 ≤ Real.log adaptivePerronHeight :=
    Real.log_nonneg (by
      norm_num [adaptivePerronHeight, verifiedZetaHeight])
  have hD : 0 ≤ D := by dsimp [D]; positivity
  refine ⟨D, hD, ?_⟩
  intro N hN hCut
  let x : ℝ := halfIntegerCutoff N
  let c : ℝ := adaptiveRightAbscissa N
  obtain ⟨hxone, hsigmaPos, hsc, hc2, hxc, _⟩ :=
    hArithmetic delta hdelta hquarter N hN
  have hx : 0 < x := zero_lt_one.trans_le hxone
  have hZ : ∀ s : ℂ,
      sigma ≤ s.re → s.re ≤ c →
      |s.im| ≤ adaptivePerronHeight →
        ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
    intro s hslo hshi him
    apply zetaOne_ne_zero_on_verified_half_shift
      hVerified delta hdelta s
    · simpa [sigma] using hslo
    · exact hshi.trans hc2
    · exact him
  have hid := adaptive_original_Mertens_exact_local_decomposition
    N sigma (by simpa [x] using hx) hSig
    (by simpa [c, sigma] using hsc) hH.le
    (by simpa [c,sigma] using hZ)
  obtain ⟨hv,hh⟩ :=
    hNorm delta C hdelta hquarter hC
      (by simpa [adaptivePerronHeight] using hRec) N hN hc2
  have he :=
    original_adaptive_perron_error_le_twenty_four
      hArithmetic hOscillatory hSeries N hN
  have ha := hAbsorb delta C hdelta hquarter hC N hN hCut
  have hbound :
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
        ‖perronVertical x sigma adaptivePerronHeight‖ +
        ‖perronHorizontalCorrection x sigma c adaptivePerronHeight‖ +
          ‖adaptiveRightLinePerronError N‖ := by
    rw [hid]
    calc
      ‖(perronVertical x sigma adaptivePerronHeight +
          perronHorizontalCorrection x sigma c adaptivePerronHeight) +
          adaptiveRightLinePerronError N‖ ≤
        ‖perronVertical x sigma adaptivePerronHeight +
          perronHorizontalCorrection x sigma c adaptivePerronHeight‖ +
            ‖adaptiveRightLinePerronError N‖ := norm_add_le _ _
      _ ≤ (‖perronVertical x sigma adaptivePerronHeight‖ +
        ‖perronHorizontalCorrection x sigma c adaptivePerronHeight‖) +
          ‖adaptiveRightLinePerronError N‖ := by
            exact add_le_add_right (norm_add_le _ _) _
      _ = _ := by ring
  have hbound2 :
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
        (C / Real.pi) * x ^ sigma *
          (1 / sigma + Real.log adaptivePerronHeight) +
          (2 * C + 24 * Real.log x) * x / adaptivePerronHeight := by
    have hv0 : ‖perronVertical x sigma adaptivePerronHeight‖ ≤
        (C / Real.pi) * x ^ sigma *
          (1 / sigma + Real.log adaptivePerronHeight) := by
      simpa [x,sigma] using hv
    have hh0 : ‖perronHorizontalCorrection x sigma c adaptivePerronHeight‖ ≤
        2 * C * x / adaptivePerronHeight := by
      simpa [x,c,sigma] using hh
    have he0 : ‖adaptiveRightLinePerronError N‖ ≤
        24 * x * Real.log x / adaptivePerronHeight := by
      simpa [x] using he
    linarith [hbound,hv0,hh0,he0]
  have hpay :
      (2 * C + 24 * Real.log x) * x / adaptivePerronHeight ≤
        (C + 1) * x ^ sigma := by
    simpa [x,sigma] using ha
  have hResult :
      |finiteMertensPrefix N| ≤ D * x ^ sigma := by
    have hnorm :
        |finiteMertensPrefix N| =
          ‖(finiteMertensPrefix N : ℂ)‖ := by simp
    rw [hnorm]
    dsimp [D]
    linarith [hbound2,hpay]
  simpa only [x,sigma] using hResult

/-- A critical EFFECTIVITY AUDIT. For ANY function M with
the trivial prefix estimate |M(N)|<=N, EVERY finite bound
N<=X (X>=1) AUTOMATICALLY has a power estimate
|M(N)|<=X*N^sigma for sigma>=0.
Thus a finite-domain "RH-shaped" estimate with an
uncomputed, unbounded constant can never by itself certify
arithmetic cancellation. This is unconditional real algebra. -/
theorem finite_range_power_bound_is_automatic
    (M : ℕ → ℝ) (sigma X : ℝ)
    (hSigma : 0 ≤ sigma) (hX : 1 ≤ X)
    (hTrivial : ∀ N : ℕ, 1 ≤ N →
      |M N| ≤ (N : ℝ)) :
    ∀ N : ℕ, 1 ≤ N → (N : ℝ) ≤ X →
      |M N| ≤ X * (N : ℝ) ^ sigma := by
  intro N hN hNX
  have hnreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hpow : (1 : ℝ) ≤ (N : ℝ) ^ sigma :=
    Real.one_le_rpow hnreal hSigma
  calc
    |M N| ≤ (N : ℝ) := hTrivial N hN
    _ ≤ X := hNX
    _ = X * 1 := by ring
    _ ≤ X * (N : ℝ) ^ sigma :=
      mul_le_mul_of_nonneg_left hpow (by linarith)

end GRWTSK.NumberTheory.Moebius.AdaptiveSharperFiniteCertificate
