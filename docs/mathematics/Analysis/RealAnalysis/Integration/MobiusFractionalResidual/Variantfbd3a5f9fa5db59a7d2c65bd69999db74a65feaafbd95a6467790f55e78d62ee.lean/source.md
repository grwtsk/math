# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MobiusFractionalResidual.Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd4e7deb9b1d8453206434307bf6e1539b5e878` · SHA-256 `4c28b0ba390dccf4e118ad3541a5b4a8faa25f142f88d787de3cf46b1fa76595`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ArithmeticResidual.Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ArithmeticResidual.Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076","mathematical_subject":"Analysis.Integration","original_sha256":"b9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/MobiusFractionalResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget

/-! Exact whole-half-line Mellin transport of the corrected finite Möbius residual. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ArithmeticResidual.Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076

set_option autoImplicit false
namespace MobiusFractionalResidualScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FractionalMellin MobiusEndpointBudget MobiusPoleNumerator
noncomputable section

/-- The actual finite corrected arithmetic residual, retaining its endpoint coefficient. -/
def arithmeticResidual (X : ℕ) (ε x : ℝ) : ℂ :=
  (if 1 ≤ x then 1 else 0) + ∑ d ∈ Finset.Icc 1 X,
    (dampedCoefficient X ε d : ℂ) * ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)

/-- The Mellin transform of the unit step is genuinely integrable. -/
theorem unitStep_mellin_integrable (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun x : ℝ => (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := by
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hp : IntegrableOn (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) (Ici (1 : ℝ)) := by
    rw [integrableOn_Ici_iff_integrableOn_Ioi]
    exact integrableOn_Ioi_cpow_of_lt hpow zero_lt_one
  have hset : Ici (1 : ℝ) ∩ Ioi 0 = Ici (1 : ℝ) := by ext x; simp; grind
  have hi := (integrableOn_indicator_iff (t := Ioi (0 : ℝ)) measurableSet_Ici).mpr
    (hset.symm ▸ hp)
  apply hi.congr
  filter_upwards [] with x
  simp only [Set.indicator, mem_Ici, ite_mul, one_mul, zero_mul]

/-- The unit step contributes the full constant term of the residual transform. -/
theorem unitStep_mellin_integral (s : ℂ) (hs : 0 < s.re) :
    (∫ x : ℝ in Ioi (0 : ℝ), (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) = 1 / s := by
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hset : Ioi (0 : ℝ) ∩ Ici 1 = Ici (1 : ℝ) := by ext x; simp; grind
  have hfun : (fun x : ℝ => (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) = (Ici (1 : ℝ)).indicator
        (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) := by
    ext x
    simp only [Set.indicator, mem_Ici, ite_mul, one_mul, zero_mul]
  rw [hfun, setIntegral_indicator measurableSet_Ici, hset, integral_Ici_eq_integral_Ioi,
    integral_Ioi_cpow_of_lt hpow zero_lt_one]
  simp only [Complex.ofReal_one, Complex.one_cpow]
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  field_simp [hs0]
  ring

/-- The finite corrected residual has an admitted Mellin integral throughout the open strip. -/
theorem arithmeticResidual_mellin_integrable (X : ℕ) (ε : ℝ) (s : ℂ)
    (hs : 0 < s.re) (hs' : s.re < 1) :
    IntegrableOn (fun x : ℝ => arithmeticResidual X ε x *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := by
  have hf : ∀ d ∈ Finset.Icc 1 X, IntegrableOn (fun x : ℝ =>
      (dampedCoefficient X ε d : ℂ) * (((Int.fract (x / (d : ℝ)) : ℝ) : ℂ) *
        (x : ℂ) ^ (-(s + 1)))) (Ioi (0 : ℝ)) := by
    intro d hd
    exact (fractionalKernel_scaled_integrable s hs hs' d
      (by exact_mod_cast (show 0 < d by have := (Finset.mem_Icc.mp hd).1; omega))).const_mul _
  have hi := (unitStep_mellin_integrable s hs).add (integrable_finsetSum _ hf)
  apply hi.congr
  filter_upwards [] with x
  simp only [Pi.add_apply, arithmeticResidual, add_mul, Finset.sum_mul, mul_assoc]

/-- The fractional coefficients are exactly the corrected source numerator, with phase intact. -/
theorem dampedCoefficient_cpow_sum (X : ℕ) (ε : ℝ) (s : ℂ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) * (d : ℂ) ^ (-s)) =
      correctedNumerator X (s - 1 / 2 + (ε : ℂ)) := by
  rw [← dampedCoefficient_sum_eq_correctedNumerator X ε (s - 1 / 2) hX]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (show 0 < d by have := (Finset.mem_Icc.mp hd).1; omega)
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast hd0.ne')]
  have hlog : Complex.log (d : ℂ) = (Real.log (d : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_natCast] using (Complex.ofReal_log hd0.le).symm
  rw [hlog]
  congr 2
  ring

/-- The entire corrected residual has the requested exact signed zeta Mellin transform. -/
theorem arithmeticResidual_mellin_integral (X : ℕ) (ε : ℝ) (s : ℂ) (hX : 1 ≤ X)
    (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (0 : ℝ), arithmeticResidual X ε x *
      (x : ℂ) ^ (-(s + 1))) =
      (1 - riemannZeta s * correctedNumerator X (s - 1 / 2 + (ε : ℂ))) / s := by
  have hf : ∀ d ∈ Finset.Icc 1 X, IntegrableOn (fun x : ℝ =>
      (dampedCoefficient X ε d : ℂ) * (((Int.fract (x / (d : ℝ)) : ℝ) : ℂ) *
        (x : ℂ) ^ (-(s + 1)))) (Ioi (0 : ℝ)) := by
    intro d hd
    exact (fractionalKernel_scaled_integrable s hs hs' d
      (by exact_mod_cast (show 0 < d by have := (Finset.mem_Icc.mp hd).1; omega))).const_mul _
  have hsum : (∫ x : ℝ in Ioi (0 : ℝ), ∑ d ∈ Finset.Icc 1 X,
      (dampedCoefficient X ε d : ℂ) * (((Int.fract (x / (d : ℝ)) : ℝ) : ℂ) *
        (x : ℂ) ^ (-(s + 1)))) =
      -(riemannZeta s / s) * correctedNumerator X (s - 1 / 2 + (ε : ℂ)) := by
    rw [integral_finsetSum _ hf, ← dampedCoefficient_cpow_sum X ε s hX,
      Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d hd
    rw [integral_const_mul, fractionalKernel_scaled_integral s hs hs' d
      (by exact_mod_cast (show 0 < d by have := (Finset.mem_Icc.mp hd).1; omega))]
    push_cast
    ring
  simp only [arithmeticResidual, add_mul, Finset.sum_mul, mul_assoc]
  rw [integral_add (unitStep_mellin_integrable s hs) (integrable_finsetSum _ hf),
    unitStep_mellin_integral s hs, hsum]
  ring

end
end MobiusFractionalResidualScratch
```
