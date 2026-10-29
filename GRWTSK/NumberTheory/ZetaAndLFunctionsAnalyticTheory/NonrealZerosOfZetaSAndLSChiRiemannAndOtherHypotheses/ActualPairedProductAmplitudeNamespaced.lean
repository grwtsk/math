-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GammaROfRealPos.Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GammaROfRealPos.Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass11/hadamard_review/pr154-source/ActualPairedProductAmplitude.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ActualPairedProductIdentification
import FormalResearch.RiemannHypothesis.ActualPairedProductNoRealZeros
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

/-!
# The actual xi amplitude at the centered origin

The direct actual-zero product is normalized to one at w = 0, so the remaining
normalization in the source identity is the actual value xi(1/2), equivalently
the unchanged zeroth Toeplitz coefficient.

The sign is proved from the source, not chosen:

* zeta(1/2) is a negative real number by the paired eta proof;
* the archimedean factor Gamma_R(1/2) is a positive real number;
* xi(1/2) = (1/2)(-1/2) Lambda(1/2) / 2, hence is positive.

No zero-location hypothesis beyond the already proved real-axis sign enters the
amplitude proof.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GammaROfRealPos.Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407

namespace FormalResearch.RiemannHypothesis.XiFiniteOrder

open Complex
open scoped Topology

noncomputable section

/-- Deligne's real gamma factor is represented by a strictly positive real
number at every positive real argument. -/
theorem gammaR_ofReal_pos {x : ℝ} (hx : 0 < x) :
    ∃ g : ℝ, 0 < g ∧ Complex.Gammaℝ (x : ℂ) = (g : ℂ) := by
  let g : ℝ := Real.pi ^ (-x / 2) * Real.Gamma (x / 2)
  have hpi : 0 < Real.pi ^ (-x / 2) :=
    Real.rpow_pos_of_pos Real.pi_pos _
  have hgamma : 0 < Real.Gamma (x / 2) :=
    Real.Gamma_pos_of_pos (by linarith)
  refine ⟨g, mul_pos hpi hgamma, ?_⟩
  unfold g
  rw [Complex.Gammaℝ_def]
  have he : (-(x : ℂ) / 2) = ((-x / 2 : ℝ) : ℂ) := by
    push_cast
    ring
  have hx2 : ((x : ℂ) / 2) = ((x / 2 : ℝ) : ℂ) := by
    push_cast
    ring
  rw [he, ← Complex.ofReal_cpow Real.pi_pos.le (-x / 2), hx2,
    Complex.Gamma_ofReal]
  push_cast

/-- Zeta at one half is literally the real cast of a negative real number. -/
theorem riemannZeta_one_half_real_neg :
    ∃ z : ℝ, z < 0 ∧ riemannZeta (1 / 2 : ℂ) = (z : ℂ) := by
  let z : ℝ := (riemannZeta (1 / 2 : ℂ)).re
  have hzneg : z < 0 := by
    dsimp [z]
    exact riemannZeta_ofReal_neg (by norm_num) (by norm_num)
  have hconj := riemannZeta_conj (1 / 2 : ℂ)
  have him : (riemannZeta (1 / 2 : ℂ)).im = 0 := by
    have hi := congrArg Complex.im hconj
    simp only [map_ofNat, map_div₀, map_one, conj_ofReal, conj_im] at hi
    linarith
  refine ⟨z, hzneg, ?_⟩
  apply Complex.ext
  · simp [z]
  · simp [him]

/-- Xi at the center is literally the real cast of a strictly positive real
number. -/
theorem xi_one_half_real_pos :
    ∃ v : ℝ, 0 < v ∧ XiToeplitz.xi (1 / 2 : ℂ) = (v : ℂ) := by
  obtain ⟨g, hg, hGamma⟩ :=
    gammaR_ofReal_pos (x := (1 / 2 : ℝ)) (by norm_num)
  obtain ⟨z, hz, hZeta⟩ := riemannZeta_one_half_real_neg
  have hGammaNe : Complex.Gammaℝ (1 / 2 : ℂ) ≠ 0 := by
    rw [hGamma]
    exact ofReal_ne_zero.mpr hg.ne'
  have hzetaDef :=
    riemannZeta_def_of_ne_zero
      (s := (1 / 2 : ℂ)) (by norm_num)
  have hLambda :
      completedRiemannZeta (1 / 2 : ℂ) =
        Complex.Gammaℝ (1 / 2 : ℂ) * riemannZeta (1 / 2 : ℂ) := by
    have hm :
        riemannZeta (1 / 2 : ℂ) *
            Complex.Gammaℝ (1 / 2 : ℂ) =
          completedRiemannZeta (1 / 2 : ℂ) :=
      (eq_div_iff hGammaNe).mp hzetaDef
    calc
      completedRiemannZeta (1 / 2 : ℂ)
          = riemannZeta (1 / 2 : ℂ) *
              Complex.Gammaℝ (1 / 2 : ℂ) := hm.symm
      _ = Complex.Gammaℝ (1 / 2 : ℂ) *
            riemannZeta (1 / 2 : ℂ) := by ring
  let v : ℝ := -(g * z) / 8
  have hv : 0 < v := by
    dsimp [v]
    have hgz : g * z < 0 := mul_neg_of_pos_of_neg hg hz
    linarith
  refine ⟨v, hv, ?_⟩
  rw [XiToeplitz.xi_eq_completed (by norm_num) (by norm_num),
    hLambda, hGamma, hZeta]
  unfold v
  push_cast
  ring

/-- The unchanged actual zeroth xi coefficient is strictly positive. -/
theorem coefficient_zero_pos :
    0 < XiToeplitz.coefficient 0 := by
  obtain ⟨v, hv, hxi⟩ := xi_one_half_real_pos
  rw [XiToeplitz.coefficient_zero, hxi]
  simpa using hv

/-- The direct actual-zero product identification is now unconditional. -/
theorem centeredSeries_eq_actualOccurrenceProduct_unconditional :
    XiToeplitz.centeredSeries =
      fun w => XiToeplitz.centeredSeries 0 * actualOccurrenceProduct w :=
  centeredSeries_eq_actualOccurrenceProduct noRealNontrivialZeros_holds

/-- The amplitude in the unconditional product identity is exactly the
unchanged positive zeroth coefficient. -/
theorem centeredSeries_eq_coefficient_zero_mul_actualOccurrenceProduct :
    XiToeplitz.centeredSeries =
      fun w => (XiToeplitz.coefficient 0 : ℂ) * actualOccurrenceProduct w := by
  rw [centeredSeries_eq_actualOccurrenceProduct_unconditional]
  funext w
  rw [centeredSeries_zero_eq_coefficient_zero]

end

end FormalResearch.RiemannHypothesis.XiFiniteOrder
