# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceInverseSquareEndpointConsumer.Variant66765fb14505fb68619540fe25655cfb9bf80026295f07076b3a7989ed5455d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `944e9eb6413d956a6f43ec665297f170bf2d3fee` · SHA-256 `76408eabaf1f44d187a3bf6ffef9889eb4c7d83eae3cd3ce5bcaa27f31490484`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedUpperAtomWeightZero.Variant33aeea009077944ecd887425a3e1bcd93658a4168ff9980803b2ec2e997464e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33aeea009077944ecd887425a3e1bcd93658a4168ff9980803b2ec2e997464e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ClosedUpperAtomWeightZero.Variant33aeea009077944ecd887425a3e1bcd93658a4168ff9980803b2ec2e997464e1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"33aeea009077944ecd887425a3e1bcd93658a4168ff9980803b2ec2e997464e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324280957740000/SourceInverseSquareEndpointConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiInverseSquare
import SourceCesaroPrimitiveConsumer

/-!
Endpoint and native first-component consumers of the recovered exact shifted
Chebyshev inverse-square identity. The second primitive component is retained.
No signed uniform bound or Cesaro-to-single-kernel Fubini identity is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedUpperAtomWeightZero.Variant33aeea009077944ecd887425a3e1bcd93658a4168ff9980803b2ec2e997464e1

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceInverseSquareEndpointConsumer

open MeasureTheory Set ArithmeticFunction
open scoped BigOperators Interval
open SourceActualPsiInverseSquare RH16ActualPsiNegativeBlock
open SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive
open RH16CesaroPrimitive

/-- A closed atom at the moving upper endpoint has exactly zero integral weight. -/
theorem closed_upper_atom_weight_zero (n : ℕ) (X : ℝ) (hnX : (n : ℝ) = X) :
    vonMangoldt n * (1 / (n : ℝ) - 1 / X) = 0 := by
  rw [hnX, sub_self, mul_zero]

/-- The basepoint X=2 is included in the recovered identity. -/
theorem inverse_square_at_two :
    mangoldtLogError (Real.log 2) + Real.eulerMascheroniConstant -
      shiftedActualChebyshev 2 / 2 = 0 := by
  have h := shiftedActualChebyshev_inverse_square 2 (by norm_num)
  simpa using h.symm

/-- The full literal kernel has its exact zero lower trace. -/
theorem shifted_full_primitive_at_first_atom :
    shiftedPsiFullPrimitive (Real.log 2) = 0 := by
  simp [shiftedPsiFullPrimitive, Real.exp_log (by norm_num : (0 : ℝ) < 2)]

/-- The complementary inverse-three-halves component has the same lower trace. -/
theorem shifted_second_primitive_at_first_atom :
    shiftedPsiSecondPrimitive (Real.log 2) = 0 := by
  simp [shiftedPsiSecondPrimitive, Real.exp_log (by norm_num : (0 : ℝ) < 2)]

/-- Actual primitive density uses the exact inverse-square component and endpoint. -/
theorem primitiveDensity_eq_inverse_square (t : ℝ) (ht : Real.log 2 ≤ t) :
    primitiveDensity t = Real.exp (t / 2) *
      ((∫ y in 2..Real.exp t, shiftedActualChebyshev y / y ^ 2) +
        shiftedActualChebyshev (Real.exp t) / Real.exp t) := by
  have hX : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have h := shiftedActualChebyshev_inverse_square (Real.exp t) hX
  rw [Real.log_exp] at h
  unfold primitiveDensity
  congr 1
  linarith

/-- The actual native first primitive is centered at the original log-two anchor. -/
theorem centeredCriticalPrimitive_eq_lower_integral (s : ℝ) (hs : Real.log 2 ≤ s) :
    centeredCriticalPrimitive s = ∫ r in Real.log 2..s, primitiveDensity r := by
  have hl : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  unfold centeredCriticalPrimitive criticalPrimitive
  exact intervalIntegral.integral_interval_sub_left
    (primitiveDensity_intervalIntegrable s (hl.trans hs))
    (primitiveDensity_intervalIntegrable (Real.log 2) hl)

/-- Both actual native integrations retain the recovered inverse-square and endpoint terms. -/
theorem actualCesaroPrimitive_eq_inverse_square_double (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t =
      ∫ s in Real.log 2..t, ∫ r in Real.log 2..s, Real.exp (r / 2) *
        ((∫ y in 2..Real.exp r, shiftedActualChebyshev y / y ^ 2) +
          shiftedActualChebyshev (Real.exp r) / Real.exp r) := by
  unfold actualCesaroPrimitive
  apply intervalIntegral.integral_congr
  intro s hs
  have hsl : Real.log 2 ≤ s := by
    rw [uIcc_of_le ht] at hs
    exact hs.1
  rw [centeredCriticalPrimitive_eq_lower_integral s hsl]
  apply intervalIntegral.integral_congr
  intro r hr
  have hrl : Real.log 2 ≤ r := by
    rw [uIcc_of_le hsl] at hr
    exact hr.1
  exact primitiveDensity_eq_inverse_square r hrl

/-- First inverse-square component substitution keeps the second component literally intact. -/
theorem shifted_full_primitive_first_component_applied (t : ℝ) (ht : Real.log 2 ≤ t) :
    shiftedPsiFullPrimitive t + shiftedPsiSecondPrimitive t =
      4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant -
        shiftedActualChebyshev (Real.exp t) / Real.exp t) := by
  have h := shiftedPsiFullPrimitive_eq t ht
  linarith

end FormalResearch.RiemannHypothesis.SourceInverseSquareEndpointConsumer
```
