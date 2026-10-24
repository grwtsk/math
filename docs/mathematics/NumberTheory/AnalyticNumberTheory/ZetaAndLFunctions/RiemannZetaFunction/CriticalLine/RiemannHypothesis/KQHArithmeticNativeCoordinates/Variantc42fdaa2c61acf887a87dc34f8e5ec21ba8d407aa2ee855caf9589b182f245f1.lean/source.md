# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHArithmeticNativeCoordinates.Variantc42fdaa2c61acf887a87dc34f8e5ec21ba8d407aa2ee855caf9589b182f245f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7995628c6061506313ef059f1f5d5bce6248a276` · SHA-256 `bb26d0803628033d29b15846e7dd09c67d38a28ff20f1f831e559b53e97e1392`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GramForm.Variant7d8381c9c0cf9e73a05faede5f4ec38fb5a58ae50c3575bceb908eff2925ad30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d8381c9c0cf9e73a05faede5f4ec38fb5a58ae50c3575bceb908eff2925ad30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GramForm.Variant7d8381c9c0cf9e73a05faede5f4ec38fb5a58ae50c3575bceb908eff2925ad30","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7d8381c9c0cf9e73a05faede5f4ec38fb5a58ae50c3575bceb908eff2925ad30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/KQHArithmeticNativeCoordinates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
# Exact native two-mode normalization and its positive Gram form

These identities preserve the source's actual rational normalization. They give
no estimate on the moving arithmetic compression. grwtsk contributors supplied
the originating direction and evaluation; OpenAI Codex supplied the proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GramForm.Variant7d8381c9c0cf9e73a05faede5f4ec38fb5a58ae50c3575bceb908eff2925ad30

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.KQHArithmeticNativeCoordinates

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

def gramForm (x y : ℝ) : ℝ :=
  (65536 / 109395 : ℝ) * x ^ 2 +
    2 * (-131072 / 45045 : ℝ) * x * y + (196608 / 5005 : ℝ) * y ^ 2

theorem gramForm_exact_square (x y : ℝ) :
    gramForm x y = (65536 / 109395 : ℝ) * (x - 34 / 7 * y) ^ 2 +
      (720896 / 28665 : ℝ) * y ^ 2 := by
  unfold gramForm
  ring

theorem gramForm_nonneg (x y : ℝ) : 0 ≤ gramForm x y := by
  rw [gramForm_exact_square]
  positivity

theorem gramForm_kernel (x y : ℝ) : gramForm x y = 0 ↔ x = 0 ∧ y = 0 := by
  rw [gramForm_exact_square]
  constructor
  · intro h
    have hy : y = 0 := by nlinarith [sq_nonneg (x - 34 / 7 * y), sq_nonneg y]
    subst y
    norm_num at h
    exact ⟨by nlinarith [sq_nonneg x], rfl⟩
  · rintro ⟨rfl, rfl⟩
    norm_num

theorem actual_source_normalization (A : ℝ) (hA : A ≠ 0) :
    gramForm (-1 / 4) (1 / A ^ 2) = SourcePairing.sourceNormalization A := by
  unfold gramForm SourcePairing.sourceNormalization
  field_simp [hA]
  ring

theorem source_direction_annihilated (A : ℝ) :
    (-1 / 4 : ℝ) * (1 / A ^ 2) + (1 / A ^ 2) * (1 / 4) = 0 := by ring

/-- The requested rank penalty vanishes exactly on the actual normalized source
direction. The uniform scalar `B` is an input, not produced by this theorem. -/
theorem compression_bound_of_rank_certificate (A B k : ℝ) (M : ℝ → ℝ → ℝ)
    (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - M x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2) :
    M (-1 / 4) (1 / A ^ 2) / SourcePairing.sourceNormalization A ≤ B := by
  have hp := SourcePairing.source_normalization_pos A hA
  have hA0 : A ≠ 0 := by linarith
  have hc := hcert (-1 / 4) (1 / A ^ 2)
  have hn : (1 / A ^ 2) * (-1 / 4 : ℝ) + (1 / A ^ 2) / 4 = 0 := by ring
  rw [actual_source_normalization A hA0, hn] at hc
  norm_num at hc
  apply (div_le_iff₀ hp).mpr
  simpa only [neg_div, one_div] using hc

/-- Application to the unchanged literal residual keeps its independent
compression readout equality as an explicit premise. This file does not prove
that equality for `T0,T2,T4`, or supply an all-scale certificate. -/
theorem native_residual_le_of_rank_certificate (A B k : ℝ) (M : ℝ → ℝ → ℝ)
    (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - M x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2)
    (hreadout : mertensResidual A =
        M (-1 / 4) (1 / A ^ 2) / SourcePairing.sourceNormalization A) :
    mertensResidual A ≤ B := by
  rw [hreadout]
  exact compression_bound_of_rank_certificate A B k M hA hcert

end FormalResearch.RiemannHypothesis.KQHArithmeticNativeCoordinates
```
