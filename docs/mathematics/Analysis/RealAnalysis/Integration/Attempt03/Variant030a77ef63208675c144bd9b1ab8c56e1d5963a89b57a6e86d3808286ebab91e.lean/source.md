# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a846379e1fcbfeec370e31669ccbb1315ba2e672` · SHA-256 `0751e917e48dd4fc57470de77addc32456484b94810ff87c481b408ae771ce01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FractionalWeight.Variantfdcb2ec4400770fb665b9eb5c20993107c8891091f37c0a54a48d33cd97b91e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdcb2ec4400770fb665b9eb5c20993107c8891091f37c0a54a48d33cd97b91e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FractionalWeight.Variantfdcb2ec4400770fb665b9eb5c20993107c8891091f37c0a54a48d33cd97b91e6","mathematical_subject":"Analysis.Integration","original_sha256":"fdcb2ec4400770fb665b9eb5c20993107c8891091f37c0a54a48d33cd97b91e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass11/hadamard_review/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiToeplitz
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Zeta23.FromPNTPlus.ZetaBounds
import Mathlib.MeasureTheory.Function.Floor

/-!
Actual real-zeta sign and actual xi center normalization by the pinned Euler integral.
Human programme direction: grwtsk contributors. OpenAI Codex proof construction.
Scratch verification only; no Hadamard product, RH, PF or zero enumeration is assumed.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.FractionalWeight.Variantfdcb2ec4400770fb665b9eb5c20993107c8891091f37c0a54a48d33cd97b91e6

set_option autoImplicit false
namespace ContinuousResearch.ActualRealZetaSign
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis
noncomputable section

def fractionalWeight (σ u : ℝ) : ℝ := Int.fract u * u ^ (-σ - 1)

theorem fractionalWeight_integrable {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fractionalWeight σ) (Ioi 1) := by
  have hi : IntegrableOn (fun u : ℝ => u ^ (-σ - 1)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  exact hi.bdd_mul measurable_fract.aestronglyMeasurable
    (ae_of_all _ fun u => by
      rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
      exact (Int.fract_lt_one u).le)

theorem fractionalWeight_nonneg (σ : ℝ) {u : ℝ} (hu : 0 ≤ u) :
    0 ≤ fractionalWeight σ u :=
  mul_nonneg (Int.fract_nonneg u) (Real.rpow_nonneg hu _)

theorem real_centered_euler_integral {σ : ℝ} (hσ : 0 < σ) :
    (∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) =
      1 / (2 * σ) - ∫ u in Ioi (1 : ℝ), fractionalWeight σ u := by
  have hi : IntegrableOn (fun u : ℝ => u ^ (-σ - 1)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  have he : (fun u : ℝ => ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) =
      fun u => (1 / 2 : ℝ) * u ^ (-σ - 1) - fractionalWeight σ u := by
    funext u
    simp only [fractionalWeight, Int.fract]
    ring
  rw [he, integral_sub (hi.const_mul _) (fractionalWeight_integrable hσ),
    integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -σ - 1 < -1) (by norm_num)]
  simp
  field_simp

theorem riemannZeta_real_euler {σ : ℝ} (hσ : 0 < σ) (h1 : σ ≠ 1) :
    riemannZeta (σ : ℂ) =
      ((σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u : ℝ) : ℂ) := by
  have hz := Zeta0EqZeta (N := 1) (by norm_num) (s := (σ : ℂ))
    (by simpa using hσ) (by exact_mod_cast h1)
  have he : (∫ u in Ioi (1 : ℝ),
      ((⌊u⌋ : ℂ) + 1 / 2 - u) * (u : ℂ) ^ (-((σ : ℂ) + 1))) =
      Complex.ofReal (∫ u in Ioi (1 : ℝ),
        ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) := by
    rw [← integral_complex_ofReal]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    dsimp only
    have hu0 : 0 ≤ u := (by norm_num : (0 : ℝ) < 1).le.trans hu.le
    rw [show -((σ : ℂ) + 1) = ((-σ - 1 : ℝ) : ℂ) by push_cast; ring,
      ← Complex.ofReal_cpow hu0]
    push_cast
    rfl
  rw [riemannZeta0_apply] at hz
  simp only [Nat.cast_one] at hz
  rw [he, real_centered_euler_integral hσ] at hz
  have hσc : (σ : ℂ) ≠ 0 := ofReal_ne_zero.mpr hσ.ne'
  have h1c : (1 - (σ : ℂ)) ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast Ne.symm h1)
  have hsc1 : (σ : ℂ) - 1 ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast h1)
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hσc, div_zero, zero_add, one_cpow, div_one] at hz
  rw [← hz]
  push_cast
  field_simp [hσc, h1c, hsc1]
  ring

theorem riemannZeta_ofReal_neg {σ : ℝ} (hσ : 0 < σ) (h1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 := by
  rw [riemannZeta_real_euler hσ (ne_of_lt h1), ofReal_re]
  have hi : 0 ≤ ∫ u in Ioi (1 : ℝ), fractionalWeight σ u :=
    integral_nonneg_of_ae (ae_restrict_of_forall_mem measurableSet_Ioi
      fun u hu => fractionalWeight_nonneg σ ((by norm_num : (0 : ℝ) < 1).le.trans hu.le))
  have hp : σ / (σ - 1) < 0 := div_neg_of_pos_of_neg hσ (by linarith)
  have hn : 0 ≤ σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u := mul_nonneg hσ.le hi
  linarith

theorem nontrivial_zero_im_ne_zero {ρ : ℂ} (hρ : NontrivialZetaZero ρ) : ρ.im ≠ 0 := by
  intro him
  have hr : ρ = (ρ.re : ℂ) := by apply Complex.ext <;> simp [him]
  have hn := riemannZeta_ofReal_neg hρ.mem_critical_strip.1 hρ.mem_critical_strip.2
  rw [← hr, hρ.1] at hn
  norm_num at hn

end
end ContinuousResearch.ActualRealZetaSign
```
