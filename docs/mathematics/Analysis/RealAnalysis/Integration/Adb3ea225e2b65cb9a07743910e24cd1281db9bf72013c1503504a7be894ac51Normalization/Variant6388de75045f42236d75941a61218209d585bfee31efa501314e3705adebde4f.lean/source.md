# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization.Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdb91dcd5e5c0a443c53317664e7d1cb81838dfa` · SHA-256 `dc7b14c4f80b3a592daf64bba1f2bbfb7b889f9c5ec70d83c4cd97089abbfc57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaPhiComplexEvenMomentEq.Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaPhiComplexEvenMomentEq.Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51","mathematical_subject":"Analysis.Integration","original_sha256":"adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ad/adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51--Normalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailCalculus
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap


namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaPhiComplexEvenMomentEq.Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set

noncomputable section

/-- Real-to-complex coercion commutes with the literal unnormalized even moment. -/
theorem thetaPhi_complex_even_moment_eq (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)) =
      ((∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n) : ℝ) : ℂ) := by
  simp only [← Complex.ofReal_ofNat, ← Complex.ofReal_mul, ← Complex.ofReal_pow,
    integral_complex_ofReal]

/-- Adding the singleton zero changes no theta moment. -/
theorem thetaPhi_evenBasis_integral_Ici_eq_Ioi (n : ℕ) :
    (∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t) =
      ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t :=
  integral_Ici_eq_integral_Ioi

/-- Scratch normalization helper: the actual-xi derivative identity remains
an explicit hypothesis here, to be supplied by a proved source theorem. -/
theorem coefficient_eq_thetaPhi_Ioi_of_even_derivative (n : ℕ)
    (hderiv : iteratedDeriv (2 * n) XiToeplitz.xi ((1 : ℂ) / 2) =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ),
        (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)) :
    XiToeplitz.coefficient n =
      8 * ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t := by
  rw [XiToeplitz.coefficient, hderiv, thetaPhi_complex_even_moment_eq]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis n t) =
      fun t : ℝ => (thetaPhi t * (2 * t) ^ (2 * n)) / ((2 * n).factorial : ℝ) := by
    funext t
    unfold evenBasis
    ring
  rw [hfun, integral_div]
  norm_num only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.re_ofNat, Complex.im_ofNat, mul_zero, sub_zero]
  ring

/-- Closed-half-line version of the same explicitly conditional scratch helper. -/
theorem coefficient_eq_thetaPhi_Ici_of_even_derivative (n : ℕ)
    (hderiv : iteratedDeriv (2 * n) XiToeplitz.xi ((1 : ℂ) / 2) =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ),
        (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)) :
    XiToeplitz.coefficient n =
      8 * ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t := by
  rw [thetaPhi_evenBasis_integral_Ici_eq_Ioi]
  exact coefficient_eq_thetaPhi_Ioi_of_even_derivative n hderiv

/-- Packaging the actual derivative identities yields the unchanged target;
the analytic identities are explicit hypotheses only in this scratch helper. -/
theorem thetaCoefficientFormula_of_even_derivatives
    (hderiv : ∀ n : ℕ, iteratedDeriv (2 * n) XiToeplitz.xi ((1 : ℂ) / 2) =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ),
        (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)) :
    ThetaCoefficientFormula :=
  fun n => coefficient_eq_thetaPhi_Ici_of_even_derivative n (hderiv n)

/-- The zeroth normalization retains factor eight. Conditional scratch fixture. -/
theorem coefficient_zero_eq_eight_integral_of_formula (hformula : ThetaCoefficientFormula) :
    XiToeplitz.coefficient 0 = 8 * ∫ t in Ioi (0 : ℝ), thetaPhi t := by
  have h := hformula 0
  simpa [evenBasis, integral_Ici_eq_integral_Ioi] using h

/-- The first coefficient retains factor sixteen after dividing by `2!`.
Conditional scratch fixture. -/
theorem coefficient_one_eq_sixteen_integral_of_formula (hformula : ThetaCoefficientFormula) :
    XiToeplitz.coefficient 1 = 16 * ∫ t in Ioi (0 : ℝ), t ^ 2 * thetaPhi t := by
  rw [hformula 1, integral_Ici_eq_integral_Ioi]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis 1 t) =
      fun t : ℝ => 2 * (t ^ 2 * thetaPhi t) := by
    funext t
    norm_num [evenBasis]
    ring
  rw [hfun, integral_const_mul]
  ring

/-- The existing positivity theorem yields the actual constant coefficient's
strict sign once the unchanged formula is supplied. Conditional scratch helper. -/
theorem coefficient_zero_pos_of_formula (hformula : ThetaCoefficientFormula) :
    0 < XiToeplitz.coefficient 0 :=
  coefficient_positive_of_thetaCoefficientFormula hformula 0

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift

#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaPhi_complex_even_moment_eq
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.coefficient_eq_thetaPhi_Ioi_of_even_derivative
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaPhi_complex_even_moment_eq
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.coefficient_eq_thetaPhi_Ioi_of_even_derivative
```
