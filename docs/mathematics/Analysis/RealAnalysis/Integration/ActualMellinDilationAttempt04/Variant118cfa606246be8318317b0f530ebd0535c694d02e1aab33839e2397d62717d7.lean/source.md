# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMellinDilationAttempt04.Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bc50d5da639881e8a3b3e66629be3071ec9c05f` · SHA-256 `ee780e4553d06dd1d337cabbc9b6a98b7302009a0dbddeb447499d7dc76a8bcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MellinConvergentUnnormalized.Variant2078c0fd34878441f624ff789fa0a13dbe3db56dbc70f5440ee3f6b8cccce3f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2078c0fd34878441f624ff789fa0a13dbe3db56dbc70f5440ee3f6b8cccce3f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MellinConvergentUnnormalized.Variant2078c0fd34878441f624ff789fa0a13dbe3db56dbc70f5440ee3f6b8cccce3f1","mathematical_subject":"Analysis.Integration","original_sha256":"2078c0fd34878441f624ff789fa0a13dbe3db56dbc70f5440ee3f6b8cccce3f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/dilation_mellin/ActualMellinDilation-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UnnormalizedDilation
import ActualMuntzMellinDomain

/-! Genuine actual Mellin dilation on positive-axis Lebesgue dx.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No Plancherel convention, closure/density or arithmetic norm identification. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.MellinConvergentUnnormalized.Variant2078c0fd34878441f624ff789fa0a13dbe3db56dbc70f5440ee3f6b8cccce3f1

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMellinDilation
open MeasureTheory Set
open ContinuousResearch.PositiveDilation ContinuousResearch.UnnormalizedDilation
open ContinuousResearch.ActualComplexDilation ContinuousResearch.ActualMuntzMellinDomain

theorem mellinConvergent_unnormalized {f : ℝ → ℂ} {s : ℂ} {a : ℝ}
    (ha : 0 < a) (hf : MellinConvergent f s) :
    MellinConvergent (unnormalizedFunc a f) s := by
  have hc : IntegrableOn (fun t : ℝ => (a : ℂ)^(1-s) •
      ((a*t:ℝ):ℂ)^(s-1) • f (a*t)) (Ioi 0) := by
    have h := (integrableOn_Ioi_comp_mul_left_iff
      (fun u : ℝ => (u : ℂ)^(s-1) • f u) 0 ha).mpr (by simpa [MellinConvergent] using hf)
    have h' := h.const_mul ((a:ℂ)^(1-s))
    convert! h' using 1
    funext t
    simp only [Pi.mul_apply,smul_eq_mul,mul_assoc]
  apply (integrableOn_congr_fun (fun t ht => ?_) measurableSet_Ioi).mpr hc
  dsimp only [unnormalizedFunc]
  rw [Complex.ofReal_mul,Complex.mul_cpow_ofReal_nonneg ha.le (le_of_lt ht),
    ←mul_smul,(by ring : 1-s = -(s-1)),Complex.cpow_neg,inv_mul_cancel_left₀]
  rw [Ne,Complex.cpow_eq_zero_iff,Complex.ofReal_eq_zero,not_and_or]
  exact Or.inl ha.ne'

theorem mellinConvergent_normalized {f : ℝ → ℂ} {s : ℂ} {a : ℝ}
    (ha : 0 < a) (hf : MellinConvergent f s) :
    MellinConvergent (dilateFunc a f) s :=
  (mellinConvergent_unnormalized ha hf).const_smul (Real.sqrt a : ℂ)

theorem sqrt_cpow (a : ℝ) (ha : 0 < a) :
    (Real.sqrt a : ℂ) = (a:ℂ)^((1:ℂ)/2) := by
  rw [Real.sqrt_eq_rpow,Complex.ofReal_cpow ha.le]
  norm_num

theorem mellin_normalized_func (a : ℝ) (ha : 0 < a) (f : ℝ → ℂ) (s : ℂ) :
    mellin (dilateFunc a f) s = (a:ℂ)^((1:ℂ)/2-s) * mellin f s := by
  change mellin (fun x => (Real.sqrt a : ℂ) • f (a*x)) s = _
  rw [mellin_const_smul,mellin_comp_mul_left f s ha,smul_smul,smul_eq_mul,
    sqrt_cpow a ha,←Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr ha.ne')]
  congr 2

theorem actual_unnormalized_mellinConvergent {A a : ℝ} (hA : 1 ≤ A) (ha : 0 < a)
    {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (unnormalizedFunc a (actualComplexOperator A)) s :=
  mellinConvergent_unnormalized ha (actual_muntz_mellinConvergent hA hs)

theorem actual_normalized_mellinConvergent {A a : ℝ} (hA : 1 ≤ A) (ha : 0 < a)
    {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (dilateFunc a (actualComplexOperator A)) s :=
  mellinConvergent_normalized ha (actual_muntz_mellinConvergent hA hs)

theorem actual_unnormalized_mellin (A a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (unnormalizedFunc a (actualComplexOperator A)) s =
      (a:ℂ)^(-s) * mellin (actualComplexOperator A) s :=
  mellin_comp_mul_left (actualComplexOperator A) s ha

theorem actual_normalized_mellin (A a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (dilateFunc a (actualComplexOperator A)) s =
      (a:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s :=
  mellin_normalized_func a ha (actualComplexOperator A) s

theorem actual_dilated_class_mellinConvergent (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (dilate a ha (actualComplexL2 A hA)) s := by
  apply (actual_normalized_mellinConvergent hA ha hs).congr
  filter_upwards [dilate_actual_ae A hA a ha] with x hx
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) hx.symm

theorem actual_dilated_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (dilate a ha (actualComplexL2 A hA)) s =
      (a:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s := by
  rw [←actual_normalized_mellin A a ha s]
  apply integral_congr_ae
  filter_upwards [dilate_actual_ae A hA a ha] with x hx
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) hx

theorem actual_integer_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (n : {n : ℕ // 0 < n}) (s : ℂ) :
    mellin (integerOrbit A hA n) s =
      (n.val:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s := by
  simpa only [integerOrbit,Complex.ofReal_natCast] using
    actual_dilated_class_mellin A hA (n.val:ℝ) (by exact_mod_cast n.property) s

end ContinuousResearch.ActualMellinDilation
```
