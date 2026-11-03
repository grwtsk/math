/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusReciprocalCriticalCompact
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# True local Perron rectangle: near-half low-frequency source is paid

The pinned old perronVertical_shift requires a GLOBAL
ZetaZeroFreeRightOf theta statement. That is far stronger
than what is known at the half line and would be CIRCULAR here.
This module instead proves as a LEAN SOURCE CANDIDATE the
same genuine complex rectangle identity using denominator
nonvanishing ONLY on the actual finite rectangle.
No crossing of any zeta zero or pole is permitted.

From the unconditional REAL zeta1 positivity plus bounded
entire derivative, choose one h>0 such that the TRUE reciprocal
|(s-1)/zeta1(s)|<=9 for all
  1/2<=Re(s)<=2, |Im(s)|<=h.
For all x>=1 the ORIGINAL low-frequency Perron vertical
on the critical line is then <=18*h/pi*sqrt(x).
The norm integral estimate is an elementary unported Lean
Prop, not an assumption on original Mertens cancellation.

The exact original Mertens prefix at the current TRUE
x=N+1/2,H=x^2 decomposes:
  M(N)=V_(1/2,h)+Horizontal_(1/2,2,h)
       +(V_(2,H)-V_(2,h))+rightLineError(N).
The last error is <=40 from independent unconditional
Perron right-line analysis, but the horizontal and HIGH
frequency terms are genuinely UNPAID. This decomposition
is noncircular and cannot imply RH on its own.

The externally verified Platt-Trudgian finite-height result
also yields local contour shifts on sigma=1/2+delta up
to H=3*10^12, but not for H->infinity. Its source remains
an explicit published finite theorem rather than a global RH
hypothesis. No change to original mu or physical Gram.
-/

namespace GRWTSK.NumberTheory.Moebius.PerronLocalCriticalWindow

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.PerronRightLineExplicit
open GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact

/-- The ACTUAL original perronKernel is holomorphic at a
point once the TRUE Z1 denominator is nonzero and the
physical contour avoids s=0. This needs NO global zero-free
half-plane. -/
theorem perronKernel_differentiableAt_of_local_denominator
    {x : ℝ} (hx : 0 < x) {s : ℂ}
    (hsre : (0 : ℝ) < s.re)
    (hZ : ZetaAsymptotics.riemannZeta₁ s ≠ 0) :
    DifferentiableAt ℂ (perronKernel x) s := by
  have hx0 : (x : ℂ) ≠ 0 :=
    ofReal_ne_zero.mpr (ne_of_gt hx)
  have hpow : DifferentiableAt ℂ
      (fun z : ℂ => (x : ℂ) ^ z) s :=
    differentiableAt_id.const_cpow (Or.inl hx0)
  have hrec : DifferentiableAt ℂ regularizedReciprocalZeta s := by
    unfold regularizedReciprocalZeta
    exact (differentiableAt_id.sub_const 1).div
      ZetaAsymptotics.differentiable_riemannZeta₁.differentiableAt
      hZ
  have hs0 : s ≠ 0 := by
    intro hz
    rw [hz] at hsre
    norm_num at hsre
  exact (hpow.mul hrec).div differentiableAt_id hs0

/-- Exact LOCAL rectangle shift for the ORIGINAL perronKernel.
Only genuine Z1 NONVANISHING on THIS rectangle is required.
The result does not assume the old global zero-free predicate,
nor an RH-strength distant-height bound. -/
theorem perronVertical_shift_of_local_rectangle
    (x sigma c H : ℝ)
    (hx : 0 < x) (hsigma : 0 < sigma)
    (hsc : sigma ≤ c) (hH : 0 ≤ H)
    (hNonzero : ∀ s : ℂ,
      sigma ≤ s.re → s.re ≤ c → |s.im| ≤ H →
        ZetaAsymptotics.riemannZeta₁ s ≠ 0) :
    perronVertical x c H =
      perronVertical x sigma H +
        perronHorizontalCorrection x sigma c H := by
  have hdiff :
      DifferentiableOn ℂ (perronKernel x)
        ([[sigma, c]] ×ℂ [[-H, H]]) := by
    intro s hs
    have hslo : sigma ≤ s.re := by
      have hmem := hs.1
      simpa [uIcc_of_le hsc] using hmem.1
    have hshi : s.re ≤ c := by
      have hmem := hs.1
      simpa [uIcc_of_le hsc] using hmem.2
    have hIm : -H ≤ s.im ∧ s.im ≤ H := by
      simpa [uIcc_of_le (by linarith : -H ≤ H)] using hs.2
    have hAbs : |s.im| ≤ H := abs_le.mpr hIm
    exact (perronKernel_differentiableAt_of_local_denominator
      hx (lt_of_lt_of_le hsigma hslo)
      (hNonzero s hslo hshi hAbs)).differentiableWithinAt
  have hrect :=
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn
      (perronKernel x)
      ((sigma : ℂ) - (H : ℂ) * Complex.I)
      ((c : ℂ) + (H : ℂ) * Complex.I)
      hdiff
  have hzero :
      (∫ a in sigma..c,
          perronKernel x ((a : ℂ) - (H : ℂ) * Complex.I)) -
        (∫ a in sigma..c,
          perronKernel x ((a : ℂ) + (H : ℂ) * Complex.I)) +
        Complex.I *
          (∫ t in -H..H,
            perronKernel x ((c : ℂ) + (t : ℂ) * Complex.I)) -
        Complex.I *
          (∫ t in -H..H,
            perronKernel x ((sigma : ℂ) + (t : ℂ) * Complex.I)) = 0 := by
    simpa [smul_eq_mul, hsc, hH, sub_eq_add_neg, add_comm,
      add_left_comm, add_assoc] using hrect
  unfold perronVertical perronHorizontalCorrection
  field_simp [Real.pi_ne_zero, Complex.I_ne_zero]
  linear_combination hzero

/-- On the actual short central rectangle, the preceding
unconditional real-eta and compact-derivative facts supply
LOCAL denominator nonvanishing. This proof candidate calls
the genuine local contour lemma above, not the global
zeroFreeRightOf-based contour theorem. -/
theorem exists_unconditional_local_critical_shift_of_elementary
    (hReal : RealZetaOneQuarterLowerTarget)
    (hVariation : ZetaOneUniformShortVerticalVariationTarget) :
    ∃ h : ℝ, 0 < h ∧ h ≤ 1 / 8 ∧
      ∀ x : ℝ, 0 < x →
        perronVertical x 2 h =
          perronVertical x (1 / 2) h +
            perronHorizontalCorrection x (1 / 2) 2 h := by
  obtain ⟨h,hh,hsmall,hCorridor⟩ :=
    reciprocal_zeta_critical_corridor_of_elementary
      hReal hVariation
  refine ⟨h,hh,hsmall,?_⟩
  intro x hx
  have hNonzero : ∀ s : ℂ,
      (1 / 2 : ℝ) ≤ s.re → s.re ≤ 2 →
      |s.im| ≤ h →
        ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
    intro s hslo hshi him
    have hrep :
        (s.re : ℂ) + (s.im : ℂ) * Complex.I = s := by
      apply Complex.ext <;> simp
    have hPositive :=
      (hCorridor s.re s.im hslo hshi him).1
    rw [hrep] at hPositive
    intro hz
    rw [hz, norm_zero] at hPositive
    norm_num at hPositive
  exact perronVertical_shift_of_local_rectangle
    x (1 / 2) 2 h hx (by norm_num) (by norm_num)
    hh.le hNonzero

/-- Genuine source-specific low-frequency original Perron norm
bound, derived by integrating the ACTUAL original kernel on
the critical line with |R|<=9, |1/2+it|>=1/2 and
|x^(1/2+it)|=sqrt(x):
  |V_(1/2,h)| <= (18h/pi)*sqrt(x).
The standard norm/interval integral calculus has NOT been
completed in pinned Lean and remains an explicit Prop. -/
def CriticalLowFrequencyPerronNormTarget : Prop :=
  ∀ (h x : ℝ), 0 < h → h ≤ 1 / 8 → 1 ≤ x →
    (∀ t : ℝ, |t| ≤ h →
      ‖regularizedReciprocalZeta
        ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)‖ ≤ 9) →
    ‖perronVertical x (1 / 2) h‖ ≤
      (18 * h / Real.pi) * Real.sqrt x

/-- The TRUE right-line Mertens truncation error has a uniform
bound 40, from the two ordinary but unported elementary
Perron targets in the preceding module. -/
def originalRightLinePerronError (N : ℕ) : ℂ :=
  (finiteMertensPrefix N : ℂ) -
    perronVertical (halfIntegerCutoff N) 2 (perronHeight N)

theorem originalRightLinePerronError_norm_le_forty
    (hTerm : OriginalRightLineTermwisePerronBoundTarget)
    (hBudget : HalfIntegerReciprocalLogBudgetTarget)
    (N : ℕ) (hN : 1 ≤ N) :
    ‖originalRightLinePerronError N‖ ≤ 40 := by
  have hpi : (2 : ℝ) ≤ Real.pi := by
    linarith [Real.pi_gt_three]
  have hfactor : (2 / Real.pi : ℝ) ≤ 1 :=
    (div_le_iff₀ Real.pi_pos).mpr (by simpa using hpi)
  have hnonneg : (0 : ℝ) ≤ 2 / Real.pi := by positivity
  unfold originalRightLinePerronError
  calc
    ‖(finiteMertensPrefix N : ℂ) -
      perronVertical (halfIntegerCutoff N) 2 (perronHeight N)‖ ≤
        (2 / Real.pi) * halfIntegerLogarithmicBudget N :=
      hTerm N hN
    _ ≤ (2 / Real.pi) * 40 :=
      mul_le_mul_of_nonneg_left (hBudget N hN) hnonneg
    _ ≤ 40 := by nlinarith

/-- The exact part of the ORIGINAL high-frequency right-line
Perron integral that the local shift does NOT control. It
is NOT replaced by an unsigned Gram majorant or discarded. -/
def originalHighFrequencyRightLine (N : ℕ) (h : ℝ) : ℂ :=
  perronVertical (halfIntegerCutoff N) 2 (perronHeight N) -
    perronVertical (halfIntegerCutoff N) 2 h

/-- Exact original Mertens finite source decomposition:
LOW critical vertical + BOTH horizontal edges + UNPAID high
right-line + uniformly bounded true Perron truncation error.
No claim of all-positive-rate full Mertens cancellation. -/
theorem originalMertens_eq_low_shift_high_and_error
    (N : ℕ) (h : ℝ)
    (hShift :
      perronVertical (halfIntegerCutoff N) 2 h =
        perronVertical (halfIntegerCutoff N) (1 / 2) h +
          perronHorizontalCorrection
            (halfIntegerCutoff N) (1 / 2) 2 h) :
    (finiteMertensPrefix N : ℂ) =
      perronVertical (halfIntegerCutoff N) (1 / 2) h +
        perronHorizontalCorrection
          (halfIntegerCutoff N) (1 / 2) 2 h +
        originalHighFrequencyRightLine N h +
          originalRightLinePerronError N := by
  unfold originalHighFrequencyRightLine originalRightLinePerronError
  rw [hShift]
  ring

/-- The independently published finite zero verification permits
a local contour shift at ANY fixed sigma>1/2 and any finite
height <=3*10^12. This does NOT extend its height to x^2 for
arbitrarily large x and does not give a global RH claim. -/
theorem verified_height_local_perron_shift
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (x sigma H : ℝ)
    (hx : 0 < x)
    (hsigma : (1 / 2 : ℝ) < sigma)
    (hsigma2 : sigma ≤ 2)
    (hH : 0 ≤ H) (hHbound : H ≤ verifiedZetaHeight) :
    perronVertical x 2 H =
      perronVertical x sigma H +
        perronHorizontalCorrection x sigma 2 H := by
  apply perronVertical_shift_of_local_rectangle
    x sigma 2 H hx (by linarith) hsigma2 hH
  intro s hslo hshi him
  have hdelta : 0 < sigma - 1 / 2 := by linarith
  have hbound : (1 / 2 : ℝ) + (sigma - 1 / 2) ≤ s.re := by linarith
  apply zetaOne_ne_zero_on_verified_half_shift
    hVerified (sigma - 1 / 2) hdelta s hbound hshi
  exact him.trans hHbound

end GRWTSK.NumberTheory.Moebius.PerronLocalCriticalWindow
