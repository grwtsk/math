/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Signed and two-sided budgets for a real source with complex approximants

The source identity is a theorem argument, not a constructed explicit formula.
The one-sided result retains a favorable signed remainder. The two-sided result
also bounds the imaginary defect; projecting to the real part does not prove
that the complex reconstruction was real. These are finite algebraic estimates,
not zero-identification, completeness, or decay theorems.
Source draft: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget

/-- A lower bound on the real remainder suffices for a lower bound on the source. -/
theorem source_lower_bound (q h : ℝ) (exactSum evaluated correction correctionApprox remainder : ℂ)
    (sumError correctionError remainderLower : ℝ)
    (hsource : (q : ℂ) = (h : ℂ) - exactSum + correction + remainder)
    (hsum : ‖exactSum - evaluated‖ ≤ sumError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : remainderLower ≤ remainder.re) :
    h - evaluated.re + correctionApprox.re + remainderLower - sumError - correctionError ≤ q := by
  have hid := congrArg Complex.re hsource
  simp only [Complex.ofReal_re, Complex.sub_re, Complex.add_re] at hid
  have hs := (Complex.re_le_norm (exactSum - evaluated)).trans hsum
  simp only [Complex.sub_re] at hs
  have hc := (abs_le.mp
    ((Complex.abs_re_le_norm (correction - correctionApprox)).trans hcorrection)).1
  simp only [Complex.sub_re] at hc
  linarith

/-- The full complex discrepancy retains finite-sum, correction and remainder errors. -/
theorem source_complex_error (q h : ℝ) (exactSum evaluated correction correctionApprox remainder : ℂ)
    (sumError correctionError remainderError : ℝ)
    (hsource : (q : ℂ) = (h : ℂ) - exactSum + correction + remainder)
    (hsum : ‖exactSum - evaluated‖ ≤ sumError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : ‖remainder‖ ≤ remainderError) :
    ‖(q : ℂ) - ((h : ℂ) - evaluated + correctionApprox)‖ ≤
      sumError + correctionError + remainderError := by
  calc
    _ = ‖-(exactSum - evaluated) + (correction - correctionApprox) + remainder‖ := by
      rw [hsource]
      congr 1
      ring
    _ ≤ ‖-(exactSum - evaluated) + (correction - correctionApprox)‖ + ‖remainder‖ :=
      norm_add_le _ _
    _ ≤ (‖-(exactSum - evaluated)‖ + ‖correction - correctionApprox‖) + ‖remainder‖ :=
      add_le_add_right (norm_add_le _ _) _
    _ = (‖exactSum - evaluated‖ + ‖correction - correctionApprox‖) + ‖remainder‖ := by
      rw [norm_neg]
    _ ≤ _ := add_le_add (add_le_add hsum hcorrection) hremainder

/-- Real projection contracts the error, without identifying an arbitrary complex source. -/
theorem source_real_error (q h : ℝ) (exactSum evaluated correction correctionApprox remainder : ℂ)
    (sumError correctionError remainderError : ℝ)
    (hsource : (q : ℂ) = (h : ℂ) - exactSum + correction + remainder)
    (hsum : ‖exactSum - evaluated‖ ≤ sumError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : ‖remainder‖ ≤ remainderError) :
    |q - (h - evaluated.re + correctionApprox.re)| ≤
      sumError + correctionError + remainderError := by
  have hbound := (Complex.abs_re_le_norm
    ((q : ℂ) - ((h : ℂ) - evaluated + correctionApprox))).trans
    (source_complex_error q h exactSum evaluated correction correctionApprox remainder
      sumError correctionError remainderError hsource hsum hcorrection hremainder)
  simpa only [Complex.sub_re, Complex.add_re, Complex.ofReal_re] using hbound

/-- A proposed complex approximant's imaginary defect must fit the same complete budget. -/
theorem source_imaginary_error (q h : ℝ) (exactSum evaluated correction correctionApprox remainder : ℂ)
    (sumError correctionError remainderError : ℝ)
    (hsource : (q : ℂ) = (h : ℂ) - exactSum + correction + remainder)
    (hsum : ‖exactSum - evaluated‖ ≤ sumError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : ‖remainder‖ ≤ remainderError) :
    |((h : ℂ) - evaluated + correctionApprox).im| ≤
      sumError + correctionError + remainderError := by
  have hbound := (Complex.abs_im_le_norm
    ((q : ℂ) - ((h : ℂ) - evaluated + correctionApprox))).trans
    (source_complex_error q h exactSum evaluated correction correctionApprox remainder
      sumError correctionError remainderError hsource hsum hcorrection hremainder)
  simpa only [Complex.sub_im, Complex.ofReal_im, zero_sub, abs_neg] using hbound

end GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget
