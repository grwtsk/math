-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PrimitivePolynomial.Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PrimitivePolynomial.Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c","mathematical_subject":"Analysis.Integration","original_sha256":"8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/TransformProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Tactic

namespace GRWTSK.Analysis.RealAnalysis.Integration.PrimitivePolynomial.Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c

open Polynomial MeasureTheory
noncomputable section
namespace TransformProbe

def primitivePolynomial (t : ℂ) : ℂ[X] :=
  (1) * C (t ^ 8) * ((1) * X ^ 0 + (-4) * X ^ 2 + (6) * X ^ 4 + (-4) * X ^ 6 + (1) * X ^ 8) +
  (-1) * C (t ^ 7) * ((-8) * X ^ 1 + (24) * X ^ 3 + (-24) * X ^ 5 + (8) * X ^ 7) +
  (1) * C (t ^ 6) * ((-8) * X ^ 0 + (72) * X ^ 2 + (-120) * X ^ 4 + (56) * X ^ 6) +
  (-1) * C (t ^ 5) * ((144) * X ^ 1 + (-480) * X ^ 3 + (336) * X ^ 5) +
  (1) * C (t ^ 4) * ((144) * X ^ 0 + (-1440) * X ^ 2 + (1680) * X ^ 4) +
  (-1) * C (t ^ 3) * ((-2880) * X ^ 1 + (6720) * X ^ 3) +
  (1) * C (t ^ 2) * ((-2880) * X ^ 0 + (20160) * X ^ 2) +
  (-1) * C (t ^ 1) * ((40320) * X ^ 1) +
  (1) * C (t ^ 0) * ((40320) * X ^ 0)

def sourcePolynomial (t : ℂ) : ℂ := t^4 - 10*t^3 + 45*t^2 - 105*t + 105

theorem primitive_derivative (t : ℂ) :
    (primitivePolynomial t).derivative + C t * primitivePolynomial t =
      C (t^9) * (1-X^2)^4 := by
  simp only [primitivePolynomial, derivative_add, derivative_mul,
    derivative_pow, derivative_X, derivative_C, derivative_one]
  norm_num [map_ofNat]
  ring

theorem primitive_endpoint_pos (t : ℂ) :
    (primitivePolynomial t).eval 1 = 384 * sourcePolynomial t := by
  simp [primitivePolynomial, sourcePolynomial]
  ring

theorem primitive_endpoint_neg (t : ℂ) :
    (primitivePolynomial t).eval (-1) = 384 * sourcePolynomial (-t) := by
  simp [primitivePolynomial, sourcePolynomial]
  ring

theorem exponential_primitive (t : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (t*y) * (primitivePolynomial t).eval (y:ℂ))
      (t^9 * (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) x := by
  have hx : HasDerivAt (fun y : ℝ ↦ t * (y:ℂ)) t x := by
    simpa using (((hasDerivAt_id (x:ℂ)).const_mul t).comp_ofReal)
  have h := hx.cexp.mul (((primitivePolynomial t).hasDerivAt (x:ℂ)).comp_ofReal)
  convert h using 1 <;> try rfl
  have hp := congrArg (Polynomial.eval (x:ℂ)) (primitive_derivative t)
  simp only [eval_add, eval_mul, eval_C, eval_pow, eval_sub, eval_one, eval_X] at hp
  linear_combination (-(Complex.exp (t*x))) * hp

theorem unit_transform_cleared (t : ℂ) :
    t^9 * (∫ x : ℝ in (-1)..1, (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) =
      384 * (Complex.exp t * sourcePolynomial t - Complex.exp (-t) * sourcePolynomial (-t)) := by
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ exponential_primitive t x)
    (by apply Continuous.intervalIntegrable; fun_prop :
      IntervalIntegrable (fun x : ℝ ↦ t^9 * (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) volume (-1) 1)
  simp only [mul_assoc, intervalIntegral.integral_const_mul] at hi
  norm_num only [Complex.ofReal_neg, Complex.ofReal_one, mul_one, mul_neg_one,
    primitive_endpoint_pos, primitive_endpoint_neg] at hi
  linear_combination hi

theorem unit_transform (t : ℂ) (ht : t ≠ 0) :
    (∫ x : ℝ in (-1)..1, (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) =
      384 / t^9 * (Complex.exp t * sourcePolynomial t - Complex.exp (-t) * sourcePolynomial (-t)) := by
  have h := unit_transform_cleared t
  rw [div_mul_eq_mul_div, eq_div_iff (pow_ne_zero 9 ht)]
  linear_combination h

theorem unit_mass : (∫ x : ℝ in (-1)..1, (1-x^2)^4) = (256/315:ℝ) := by
  have he : (fun x : ℝ ↦ (1-x^2)^4) =
      (fun x : ℝ ↦ 1 - 4*x^2 + 6*x^4 - 4*x^6 + x^8) := by funext x; ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
     intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

theorem unit_transform_zero :
    (∫ x : ℝ in (-1)..1, (1-(x:ℂ)^2)^4 * Complex.exp (0*x)) = (256/315:ℂ) := by
  simp only [zero_mul, Complex.exp_zero, mul_one]
  have hc : (fun x : ℝ ↦ (1-(x:ℂ)^2)^4) = (fun x : ℝ ↦ (((1-x^2)^4:ℝ):ℂ)) := by
    funext x
    norm_cast
  rw [hc, intervalIntegral.integral_ofReal, unit_mass]
  norm_num

#print axioms unit_transform
#print axioms unit_transform_zero
end TransformProbe
