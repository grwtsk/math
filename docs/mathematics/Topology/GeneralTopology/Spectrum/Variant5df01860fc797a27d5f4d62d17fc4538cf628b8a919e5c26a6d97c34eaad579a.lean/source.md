# Complete source: GRWTSK.Topology.GeneralTopology.Spectrum.Variant5df01860fc797a27d5f4d62d17fc4538cf628b8a919e5c26a6d97c34eaad579a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `042ab8550bc8b9270842e84be736a4fc7bb49ea0` · SHA-256 `7624a09a5e17b5d7c5f3142eb26a9551d3442d82e4ad8c4170aa77fc0afe5544`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SpectrumLowerBound.Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SpectrumLowerBound.Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/Spectral/Schrodinger/Spectrum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization","unterminated_comment"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
  spectral-rh/Spectral/Schrodinger/Spectrum.lean
  ---------------------------------------------
  Qualitative spectral facts for the half-line Schrödinger operator `L`
  defined in `Spectral.Schrodinger.Operator`.
-/

import spectral_rh.Spectral.Schrodinger.Operator
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Topology.Algebra.Module


namespace GRWTSK.Topology.GeneralTopology.SpectrumLowerBound.Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e

open Real Set Filter
open scoped BigOperators

namespace SchrodingerSpectrum

variable {P : Schrodinger.Potential}

local notation "L" => Schrodinger.L P
local notation "E" => Schrodinger.L²(ℝ≥0)

/-!  ## 1.  Basic qualitative facts                                            -/

/-- The spectrum of `L` is bounded below by the same constant that
    lower-bounds the quadratic form. -/
lemma spectrum_lowerBound :
    ∃ C : ℝ, spectrum ℝ L ⊆ Set.Ici C := by
  rcases Schrodinger.L_boundedBelow P with ⟨C, h⟩
  -- `spectrum_subset_of_lowerBound` is in `Mathlib.Analysis.Spectrum`.
  exact ⟨C, spectrum_subset_of_lowerBound L h⟩

/-- Because `L` is self-adjoint (over `ℝ` → extends to `ℂ`), its complex
    spectrum is real. -/
lemma spectrum_subset_real :
    spectrum ℂ (L : E →L[ℂ] E) ⊆ (Set.image (fun r : ℝ ↦ (r : ℂ))
                                             (spectrum ℝ L)) :=
  spectrum_subset_real_of_selfAdjoint (Schrodinger.L_isSelfAdjoint P)

/-- Compact resolvent ⇒ spectrum equals point spectrum (pure point). -/
lemma spectrum_eq_eigenvalues :
    spectrum ℝ L = {λ | IsEigenvalue L λ} := by
  simpa using
    spectrum_eq_pointSpectrum_of_compactResolvent_selfAdjoint
      (Schrodinger.L_compactResolvent P)
      (Schrodinger.L_isSelfAdjoint P)

/-!  ## 2.  Enumeration (optional utilities)                                  -/

/--
`hasEigenvalues` from the compact-resolvent library gives a multiset
`eigenvalues : Multiset ℝ` that lists the spectrum with multiplicities
and tends to `+∞`.  ￼You can obtain it via:
```
