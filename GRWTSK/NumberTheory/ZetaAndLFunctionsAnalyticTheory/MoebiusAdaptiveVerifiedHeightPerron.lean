/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPerronLocalCriticalWindow
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Adaptive right-line Perron at the independent Platt-Trudgian height

The ORIGINAL Mertens coefficient, Dirichlet series, pole-removed
reciprocal R(s), perronVertical and perronHorizontalCorrection
are retained exactly. Only the mathematically permissible
ABSOLUTELY CONVERGENT Perron right abscissa is changed:
  x=N+1/2, L=log x, c(x)=1+1/L, N>=8, x^c=e*x.
The finite HEIGHT is the independent, EXTERNALLY VERIFIED
Platt-Trudgian H0=3*10^12, not the older quadratic x^2.

The original scalar finite Perron tail gives for all x>=e^2:
  |M(N)-V_(c(x),H0)(x)| <= 200*x*log x/H0.
The proof uses the true mu Dirichlet series on Re(s)>1 and
  sum_{n>=1} n^(-c)/|log(x/n)| <=64*log x
for c=1+1/log x, x=N+1/2. The half integer guarantees
|x-n|>=1/2. It makes NO assumption on zero-free heights.

The independent published H0 rectangle and compactness give
a finite C_delta for the genuine R(s) on
  1/2+delta <= Re(s)<=2, |Im(s)|<=H0.
The EXACT source local contour theorem then yields
  |M(N)| <= C_delta/pi*x^(1/2+delta)*
               (1/(1/2+delta)+log H0)
        + (2*C_delta+200*log x)*x/H0.

For 0<delta<=1/4, put
  X_delta=(H0/(1000*(1+log H0)))^(1/(1/2-delta)).
For every x=N+1/2 in [e^2,X_delta] the second term is
<= (C_delta+1)*x^(1/2+delta), so M(N) has an
RH-SHAPED but STRICTLY FINITE RANGE bound. It does NOT
prove RH or an all-height zero-free region.

The scalar series estimate, quantitative normed Perron
bounds, and real cutoff absorption are EXPLICIT unported
LEAN Prop targets, not hidden axioms. Every new theorem body
below is a source proof candidate until user-authorized
compilation and independent kernel acceptance.
-/

namespace GRWTSK.NumberTheory.Moebius.AdaptiveVerifiedHeightPerron

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact
open GRWTSK.NumberTheory.Moebius.PerronLocalCriticalWindow

/-- The ORIGINAL same half-integer cutoff. Only the right edge
moves, and stays >1 so the unchanged mu series converges. -/
def adaptiveRightAbscissa (N : ℕ) : ℝ :=
  1 + (Real.log (halfIntegerCutoff N))⁻¹

/-- An integer-independent, externally certified finite height.
This NEVER grows with N. -/
def adaptivePerronHeight : ℝ := verifiedZetaHeight

/-- One explicit large but FINITE, delta-dependent arithmetic
cutoff on which the finite-height error is absorbable. -/
def adaptiveVerifiedCutoff (delta : ℝ) : ℝ :=
  (adaptivePerronHeight /
    (1000 * (1 + Real.log adaptivePerronHeight))) ^
      (1 / ((1 / 2 : ℝ) - delta))

/-- The exact unchanged ORIGINAL Mertens-series truncation error
at the newly selected ABSOLUTELY CONVERGENT right line. -/
def adaptiveRightLinePerronError (N : ℕ) : ℂ :=
  (finiteMertensPrefix N : ℂ) -
    perronVertical (halfIntegerCutoff N)
      (adaptiveRightAbscissa N) adaptivePerronHeight

/-- Source-independent elementary arithmetic: x>=e^2 gives
1<c(x)<=3/2, sigma=1/2+delta<c(x), and x^c=e*x.
The cutoff implies x^(1-sigma)<=H0/(1000(1+log H0))
and log x<=4 log H0 for 0<delta<=1/4.
This is an UNPROVED pinned Lean numerical-calculus target. -/
def AdaptiveAbscissaAndCutoffTarget : Prop :=
  ∀ delta : ℝ, 0 < delta → delta ≤ 1 / 4 →
    ∀ N : ℕ, 8 ≤ N →
      let x := halfIntegerCutoff N
      let c := adaptiveRightAbscissa N
      let sigma := (1 / 2 : ℝ) + delta
      1 ≤ x ∧ 0 < sigma ∧ sigma ≤ c ∧ c ≤ 2 ∧
      x ^ c = Real.exp 1 * x ∧
      (x ≤ adaptiveVerifiedCutoff delta →
         x ^ (1 - sigma) ≤
           adaptivePerronHeight /
             (1000 * (1 + Real.log adaptivePerronHeight)) ∧
         Real.log x ≤ 4 * Real.log adaptivePerronHeight)

/-- The standard c>1 original mu Perron single-term oscillatory
tail and finite integration interchange. With x=N+1/2,
c=1+1/log x and H0, the independent positive reciprocal-log
sum is <=64 log x. This yields uniform 200*x*log x/H0.
NO zero-free information, Mertens cancellation or RH enters.
The analytic series-to-Lean proof is still unported. -/
def AdaptiveRightLineTruncationTarget : Prop :=
  ∀ N : ℕ, 8 ≤ N →
    ‖adaptiveRightLinePerronError N‖ ≤
      200 * halfIntegerCutoff N *
        Real.log (halfIntegerCutoff N) / adaptivePerronHeight

/-- Normed integration on the SAME FINITE verified rectangle.
Given an actual pointwise C bound for the genuine R(s),
both the sigma-vertical and the two original horizontal
contour edges are controlled. These are ordinary
analytic estimates, UNPROVED in pinned Lean. -/
def AdaptiveFiniteHeightContourNormTarget : Prop :=
  ∀ (delta C : ℝ), 0 < delta → delta ≤ 1 / 4 →
    0 ≤ C →
    (∀ s : ℂ,
      (1 / 2 : ℝ) + delta ≤ s.re → s.re ≤ 2 →
      |s.im| ≤ adaptivePerronHeight →
        ‖regularizedReciprocalZeta s‖ ≤ C) →
    ∀ N : ℕ, 8 ≤ N →
      adaptiveRightAbscissa N ≤ 2 →
      let x := halfIntegerCutoff N
      let sigma := (1 / 2 : ℝ) + delta
      ‖perronVertical x sigma adaptivePerronHeight‖ ≤
        (C / Real.pi) * x ^ sigma *
          (1 / sigma + Real.log adaptivePerronHeight) ∧
      ‖perronHorizontalCorrection
          x sigma (adaptiveRightAbscissa N) adaptivePerronHeight‖ ≤
        2 * C * x / adaptivePerronHeight

/-- Entirely numerical, RH-FREE cutoff absorption. For
x<=X_delta, x^(1-sigma)<=H0/[1000(1+log H0)],
log x<=4 log H0. Thus the original right/horizontal
errors <= (C+1)*x^sigma uniformly. -/
def AdaptiveFiniteCutoffAbsorptionTarget : Prop :=
  ∀ (delta C : ℝ), 0 < delta → delta ≤ 1 / 4 →
    0 ≤ C →
    ∀ N : ℕ, 8 ≤ N →
      let x := halfIntegerCutoff N
      x ≤ adaptiveVerifiedCutoff delta →
        (2 * C + 200 * Real.log x) * x / adaptivePerronHeight ≤
          (C + 1) * x ^ ((1 / 2 : ℝ) + delta)

/-- True local source contour address change at height H0,
with only REAL finite-rectangle nonvanishing. Nothing
asserts a global ZetaZeroFreeRightOf (1/2). -/
theorem adaptive_original_Mertens_exact_local_decomposition
    (N : ℕ) (sigma : ℝ)
    (hx : 0 < halfIntegerCutoff N)
    (hsigma : 0 < sigma)
    (hsc : sigma ≤ adaptiveRightAbscissa N)
    (hH : 0 ≤ adaptivePerronHeight)
    (hZ : ∀ s : ℂ,
      sigma ≤ s.re → s.re ≤ adaptiveRightAbscissa N →
      |s.im| ≤ adaptivePerronHeight →
        ZetaAsymptotics.riemannZeta₁ s ≠ 0) :
    (finiteMertensPrefix N : ℂ) =
      perronVertical (halfIntegerCutoff N) sigma adaptivePerronHeight +
      perronHorizontalCorrection (halfIntegerCutoff N)
        sigma (adaptiveRightAbscissa N) adaptivePerronHeight +
      adaptiveRightLinePerronError N := by
  have hShift := perronVertical_shift_of_local_rectangle
    (halfIntegerCutoff N) sigma (adaptiveRightAbscissa N)
    adaptivePerronHeight hx hsigma hsc hH hZ
  unfold adaptiveRightLinePerronError
  rw [← hShift]
  ring

/-- Noncircular, strictly FINITE-scale original Mertens result.
The verified zeros and genuine compact reciprocal C_delta are
visible, the original adaptive c(x)>1 and both ORIGINAL contour
segments are retained. Analytical/numerical Lean gates
are explicit and do not contain RH or FAR signed all-rate.

The constant D_delta exists (may be large), and its
bound holds only when x=N+1/2 <= X_delta, NOT for all N. -/
theorem adaptive_verified_height_nearcritical_Mertens
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (hCompact : FiniteHeightCompactReciprocalBoundTarget)
    (hArithmetic : AdaptiveAbscissaAndCutoffTarget)
    (hPerron : AdaptiveRightLineTruncationTarget)
    (hNorm : AdaptiveFiniteHeightContourNormTarget)
    (hAbsorb : AdaptiveFiniteCutoffAbsorptionTarget)
    (delta : ℝ) (hdelta : 0 < delta)
    (hdeltaQuarter : delta ≤ 1 / 4) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ N : ℕ, 8 ≤ N →
        halfIntegerCutoff N ≤ adaptiveVerifiedCutoff delta →
          |finiteMertensPrefix N| ≤
            D * (halfIntegerCutoff N) ^ ((1 / 2 : ℝ) + delta) := by
  have hdeltaHalf : delta < 1 / 2 := by linarith
  obtain ⟨C,hC,hRec⟩ :=
    finite_height_reciprocal_bound_of_published_certificate
      hVerified hCompact delta hdelta hdeltaHalf
  let sigma : ℝ := 1 / 2 + delta
  let D : ℝ :=
    (C / Real.pi) * (1 / sigma + Real.log adaptivePerronHeight) +
      C + 1
  have hSigma : 0 < sigma := by dsimp [sigma]; linarith
  have hHpos : 0 < adaptivePerronHeight := by
    norm_num [adaptivePerronHeight, verifiedZetaHeight]
  have hLog : 0 ≤ Real.log adaptivePerronHeight :=
    Real.log_nonneg (by
      norm_num [adaptivePerronHeight, verifiedZetaHeight])
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D,hD,?_⟩
  intro N hN hCut
  let x : ℝ := halfIntegerCutoff N
  let c : ℝ := adaptiveRightAbscissa N
  obtain ⟨hxone, hsigmaPos, hsc, hc2, hxc, hArithmeticCut⟩ :=
    hArithmetic delta hdelta hdeltaQuarter N hN
  have hx : 0 < x := zero_lt_one.trans_le hxone
  have hH : 0 ≤ adaptivePerronHeight := hHpos.le
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
  have hidentity := adaptive_original_Mertens_exact_local_decomposition
    N sigma (by simpa [x] using hx) hSigma
    (by simpa [c,sigma] using hsc) hH
    (by simpa [c,sigma] using hZ)
  obtain ⟨hVertical,hHorizontal⟩ :=
    hNorm delta C hdelta hdeltaQuarter hC
      (by simpa [adaptivePerronHeight] using hRec)
      N hN hc2
  have hErr := hPerron N hN
  have hTakeup := hAbsorb delta C hdelta hdeltaQuarter hC N hN hCut
  have hBound :
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
        ‖perronVertical x sigma adaptivePerronHeight‖ +
        ‖perronHorizontalCorrection x sigma c adaptivePerronHeight‖ +
          ‖adaptiveRightLinePerronError N‖ := by
    rw [hidentity]
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
  have hNormBound :
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
        (C / Real.pi)*x ^ sigma *
          (1 / sigma + Real.log adaptivePerronHeight) +
        (2 * C + 200 * Real.log x) * x / adaptivePerronHeight := by
    have hv : ‖perronVertical x sigma adaptivePerronHeight‖ ≤
          (C / Real.pi) * x ^ sigma *
            (1 / sigma + Real.log adaptivePerronHeight) := by
      simpa [x,sigma] using hVertical
    have hh : ‖perronHorizontalCorrection x sigma c adaptivePerronHeight‖ ≤
          2 * C * x / adaptivePerronHeight := by
      simpa [x,c,sigma] using hHorizontal
    have he : ‖adaptiveRightLinePerronError N‖ ≤
        200 * x * Real.log x / adaptivePerronHeight := by
      simpa [x] using hErr
    linarith [hBound, hv, hh, he]
  have hAbs :
      (2 * C + 200 * Real.log x) * x / adaptivePerronHeight ≤
        (C + 1) * x ^ sigma := by
    simpa [x,sigma] using hTakeup
  have hResult :
      |finiteMertensPrefix N| ≤ D * x ^ sigma := by
    have hident :
        |finiteMertensPrefix N| = ‖(finiteMertensPrefix N : ℂ)‖ := by simp
    rw [hident]
    dsimp [D]
    linarith [hNormBound,hAbs]
  simpa only [x,sigma] using hResult

end GRWTSK.NumberTheory.Moebius.AdaptiveVerifiedHeightPerron
