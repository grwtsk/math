# Complete source: GRWTSK.Topology.GeneralTopology.ActualMellinFilterAttempt01.Variant1ee5792ed373757f626e1632ce4a85dfb1670cde0ec8e13e0800e32cf0755454

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62b42f3c1d2aebf3cb3721a94cd4a2221e14d24a` · SHA-256 `9d969871eb80f98f768ecc5eaa9d06fe43cdce53866a2371804f4cfab607a93d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualMellinEqNormalizedTransform.Variant88c58ebee3583ad55a102472ab32a35523028d0464c5a4d67d606ce3b9d5cc88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88c58ebee3583ad55a102472ab32a35523028d0464c5a4d67d606ce3b9d5cc88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualMellinEqNormalizedTransform.Variant88c58ebee3583ad55a102472ab32a35523028d0464c5a4d67d606ce3b9d5cc88","mathematical_subject":"Topology.GeneralTopology","original_sha256":"88c58ebee3583ad55a102472ab32a35523028d0464c5a4d67d606ce3b9d5cc88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass18/mellin_hypotheses/ActualMellinFilter-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualGoodKernel
import SourceBoundaryOrder

/-! Literal Mellin pole filter for the fixed actual logarithmic source.
Direction: grwtsk contributors. Focused scratch adapter: OpenAI Codex.
The primitive transform is independently defined as its compact integral.
No Mellin zero-free theorem, Nyman closure or signed arithmetic budget is assumed. -/

namespace GRWTSK.Topology.GeneralTopology.ActualMellinEqNormalizedTransform.Variant88c58ebee3583ad55a102472ab32a35523028d0464c5a4d67d606ce3b9d5cc88

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMellinFilter
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.LogarithmicSource ContinuousResearch.SourceBoundaryTransform
open ContinuousResearch.SourceBoundaryOrder

theorem actual_mellin_eq_normalizedTransform (A : ℝ) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s = normalizedTransform A (s-1/2) := by
  rw [actualLogSource,lift_mellin_eq_bilateral]
  rfl

theorem actual_mellin_pole_filter {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*normalizedPrimitiveTransform A (s-1/2) := by
  rw [actual_mellin_eq_normalizedTransform,actual_complex_pole_filter hA]
  congr 1
  ring

theorem actual_mellin_pole_filter_unnormalized {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*primitiveTransform A (s-1/2)/(Real.sqrt (sourceNormalization A) : ℂ) := by
  rw [actual_mellin_pole_filter hA,primitive_transform_normalization]
  ring

theorem actual_mellin_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  have hz := (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  rw [actual_mellin_pole_filter_unnormalized hA]
  simp only [ne_eq,div_eq_zero_iff,mul_eq_zero,sub_eq_zero]
  have hz' : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hz
  tauto

theorem actual_mellin_halfstrip_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  apply actual_mellin_nonzero_iff_bump hA
  · intro he; simp [he] at hl
  · intro he; simp [he] at hu

end ContinuousResearch.ActualMellinFilter
```
