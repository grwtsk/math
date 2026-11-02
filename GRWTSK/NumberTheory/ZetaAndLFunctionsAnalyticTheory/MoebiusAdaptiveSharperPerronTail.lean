/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusAdaptiveVerifiedHeightPerron
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Strictly improved original Möbius adaptive right-line Perron tail

The ORIGINAL integer Mobius signs, Dirichlet series, half-integer
cutoff x=N+1/2, absolute-convergence right edge c=1+1/log x,
and existing perronVertical/finite-height H0 are unchanged.

New entirely elementary source-independent comparison:
  S_c(x)=sum_(n>=1)1/[n^c |log(x/n)|] <=13 log x, N>=8.
The preceding source used 64 log x. For c>=1 the middle
range contributes at most
  2 sum_(x/2<n<x)1/(x-n)+sum_(x<n<2x)1/(n-x),
not 8 times every half-integer reciprocal distance.

Each one-sided distance sum is <=2+log(2N-1)<3+log x.
The far n<=x/2 and n>=2x ranges cost <=2(1+L)
and <=2L, so S_c<=11+7L<=13L for L>=2.
The scalar oscillatory Perron inversion tail is
  (2/pi)*x^c/H*S_c(x), and x^c=e*x.
Pinned Real.exp_one_lt_d9 and Real.pi_gt_three imply
  (2/pi)*e*13<24.
Thus for ALL N>=8:
  |M(N)-V_(c,H0)(x)|<=24*x*log(x)/H0.

The original infinite-series inequality and termwise
oscillatory integral remain explicit *elementary* unproved
pinned-Lean Props, not axioms or cancellation suppliers.
The improved scalar 24 transfer has a full Lean source
proof candidate. Compilation user-DEFERRED; RH OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.AdaptiveSharperPerronTail

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.AdaptiveVerifiedHeightPerron

/-- True positive reciprocal-logarithm sum, never a surrogate
signed source. Its n=0 contribution is zero as usual. -/
def adaptiveReciprocalLogSum (N : ℕ) : ℝ :=
  ∑' n : ℕ,
    if 1 ≤ n then
      ((n : ℝ) ^ (adaptiveRightAbscissa N) *
        |Real.log (halfIntegerCutoff N / (n : ℝ))|)⁻¹
    else 0

/-- Completely elementary positive p-series/harmonic estimate.
Its mathematical proof uses n<=x/2, x/2<n<2x, n>=2x,
the true half-integer separation |x-n|>=1/2, and the
two sharper coefficient bounds 2/|x-n| and 1/|x-n|
respectively below and above x. The pinned-Lean infinite
series/range arithmetic proof has not been compiled. -/
def SharperAdaptiveReciprocalLogSumTarget : Prop :=
  ∀ N : ℕ, 8 ≤ N →
    adaptiveReciprocalLogSum N ≤
      13 * Real.log (halfIntegerCutoff N)

/-- Elementary Fourier/Perron inversion and absolutely
convergent ORIGINAL Möbius Dirichlet-series interchange.
It bounds the source's SAME original complex error by
the actual positive reciprocal-log sum. The right edge
c(x)>1 and true H0 are unchanged. UNPORTED LEAN Prop. -/
def AdaptiveOriginalOscillatoryTailTarget : Prop :=
  ∀ N : ℕ, 8 ≤ N →
    ‖adaptiveRightLinePerronError N‖ ≤
      (2 / Real.pi) *
        (halfIntegerCutoff N ^ (adaptiveRightAbscissa N)) /
          adaptivePerronHeight *
            adaptiveReciprocalLogSum N

/-- The numerical constant improvement uses ONLY pinned
transcendental estimates: e<2.7182818286<11/4 and pi>3.
This is independent of all Möbius arithmetic. -/
theorem twenty_four_scalar_perron_factor :
    (2 / Real.pi) * Real.exp 1 * 13 ≤ (24 : ℝ) := by
  have hpi : (2 / Real.pi : ℝ) ≤ 2 / 3 := by
    apply (div_le_iff₀ Real.pi_pos).mpr
    nlinarith [Real.pi_gt_three]
  have he : Real.exp (1 : ℝ) ≤ 11 / 4 :=
    (Real.exp_one_lt_d9.trans (by norm_num)).le
  have hpos : (0 : ℝ) ≤ Real.exp 1 := (Real.exp_pos _).le
  have hconst :
      (2 / Real.pi : ℝ) * Real.exp 1 ≤
        (2 / 3 : ℝ) * (11 / 4) :=
    mul_le_mul hpi he hpos (by norm_num)
  calc
    (2 / Real.pi) * Real.exp 1 * 13 ≤
      ((2 / 3 : ℝ) * (11 / 4)) * 13 :=
        mul_le_mul_of_nonneg_right hconst (by norm_num)
    _ ≤ 24 := by norm_num

/-- Existing elementary right-abscissa scalar gate is reused
ONLY for x^c=e*x and x>=1, not as a signed Möbius hypothesis.
These two RH-INDEPENDENT missing Lean imports imply the
SHARPER unconditional original Perron error with constant 24. -/
theorem original_adaptive_perron_error_le_twenty_four
    (hArithmetic : AdaptiveAbscissaAndCutoffTarget)
    (hTail : AdaptiveOriginalOscillatoryTailTarget)
    (hSeries : SharperAdaptiveReciprocalLogSumTarget)
    (N : ℕ) (hN : 8 ≤ N) :
    ‖adaptiveRightLinePerronError N‖ ≤
      24 * halfIntegerCutoff N *
        Real.log (halfIntegerCutoff N) / adaptivePerronHeight := by
  have hA :=
    hArithmetic (1 / 8) (by norm_num) (by norm_num) N hN
  obtain ⟨hx, hsigma, hsc, hc2, hpower, _⟩ := hA
  have hlog : 0 ≤ Real.log (halfIntegerCutoff N) :=
    Real.log_nonneg hx
  have hHpos : 0 < adaptivePerronHeight := by
    norm_num [adaptivePerronHeight, verifiedZetaHeight]
  have hterm := hTail N hN
  have hsum := hSeries N hN
  have hfactorNonneg :
      0 ≤ (2 / Real.pi) *
          (halfIntegerCutoff N ^ (adaptiveRightAbscissa N)) /
            adaptivePerronHeight := by positivity
  calc
    ‖adaptiveRightLinePerronError N‖ ≤
        ((2 / Real.pi) *
          (halfIntegerCutoff N ^ (adaptiveRightAbscissa N)) /
            adaptivePerronHeight) *
              adaptiveReciprocalLogSum N := hterm
    _ ≤ ((2 / Real.pi) *
          (halfIntegerCutoff N ^ (adaptiveRightAbscissa N)) /
            adaptivePerronHeight) *
              (13 * Real.log (halfIntegerCutoff N)) :=
        mul_le_mul_of_nonneg_left hsum hfactorNonneg
    _ = ((2 / Real.pi) * Real.exp 1 * 13) *
          (halfIntegerCutoff N *
            Real.log (halfIntegerCutoff N) /
              adaptivePerronHeight) := by
        rw [hpower]
        ring
    _ ≤ 24 * (halfIntegerCutoff N *
          Real.log (halfIntegerCutoff N) /
            adaptivePerronHeight) :=
        mul_le_mul_of_nonneg_right twenty_four_scalar_perron_factor
          (by positivity)
    _ = _ := by ring

end GRWTSK.NumberTheory.Moebius.AdaptiveSharperPerronTail
