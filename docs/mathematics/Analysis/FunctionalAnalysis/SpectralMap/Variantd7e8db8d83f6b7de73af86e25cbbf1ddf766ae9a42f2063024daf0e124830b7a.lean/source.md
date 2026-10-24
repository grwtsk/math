# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralMap.Variantd7e8db8d83f6b7de73af86e25cbbf1ddf766ae9a42f2063024daf0e124830b7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6ba2e62f1475b4355cdc66f9d6b360c26568613` · SHA-256 `344b5740e9a9c8233a080f88ce80112379212fb61183c742b6b763dc33236c42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SpectralMap.Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SpectralMap.Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330","mathematical_subject":"Foundations.Unclassified","original_sha256":"39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Determinants/SpectralMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SpectralProof.Operators.LsymPi
import SpectralProof.Determinants.ZetaDet
import SpectralProof.Determinants.CanonicalId


namespace GRWTSK.Analysis.FunctionalAnalysis.SpectralMap.Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330

noncomputable section

open Complex Spectrum

namespace SpectralProof.Determinants

variable {ϕ : ℝ → ℝ}

/--
Spectral map: sends a nontrivial zeta zero ρ to
\[
μ_ρ := \frac{1}{i}(ρ - ½)
\]
which lies in the spectrum of the canonical operator Lsym_π.
-/
def spectralMap (ρ : ℂ) : ℂ :=
  (ρ - 1 / 2) / I

/--
Inverse spectral map: recovers ρ from a spectral value μ.
\[
ρ := ½ + iμ
\]
-/
def inverseSpectralMap (μ : ℂ) : ℂ :=
  1 / 2 + I * μ

lemma spectralMap_inverse :
    ∀ μ, spectralMap (inverseSpectralMap μ) = μ := by
  intro μ
  simp [spectralMap, inverseSpectralMap, sub_add_cancel, div_mul_cancel]
  norm_num

lemma inverseMap_spectralMap :
    ∀ ρ, inverseSpectralMap (spectralMap ρ) = ρ := by
  intro ρ
  simp [spectralMap, inverseSpectralMap, ← add_sub_assoc, mul_div_cancel_left]
  ring_nf

/--
If Λ_π(ρ) = 0, then μ_ρ := (ρ - ½)/i lies in the spectrum of Lsym_π.
This follows from the canonical determinant identity.
-/
lemma zero_maps_to_spectrum
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (ρ : ℂ) (hρ : Λπ ρ = 0) :
    spectralMap ρ ∈ spectrum (Lsym_pi Φ hϕ) := by
  -- Assume canonical determinant identity holds:
  -- det_ζ(I - λ L) = Λπ(½ + iλ)/Λπ(½)
  let λ := spectralMap ρ
  have hdet := canonical_det_identity Φ Λπ hϕ λ
  rw [spectralMap, ← ofReal_div, ← Complex.div_eq_inv_mul] at hdet
  rw [hρ, zero_div, hdet, div_eq_zero_iff] at hdet
  obtain ⟨h, _⟩ := hdet
  -- det_ζ(I - λL) = 0 ⇒ λ ∈ Spec(L) (Fredholm theory)
  exact Spectrum.of_det_zeta_zero λ (Lsym_pi Φ hϕ) h

end SpectralProof.Determinants
```
