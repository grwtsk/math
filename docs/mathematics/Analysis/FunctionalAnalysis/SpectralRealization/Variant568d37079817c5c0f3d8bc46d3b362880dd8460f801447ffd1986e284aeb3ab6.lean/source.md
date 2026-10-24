# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralRealization.Variant568d37079817c5c0f3d8bc46d3b362880dd8460f801447ffd1986e284aeb3ab6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a87c1f50bc47ec9d327a8d7fb345364b0b277e41` · SHA-256 `154db307d012322567a82beba797559bdb8c1d70427407fbbed6befdc44523bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ZeroSpectrumRealization.Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ZeroSpectrumRealization.Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a","mathematical_subject":"Foundations.Unclassified","original_sha256":"ec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/SpectralRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.OperatorData
import Folder.RH.ZeroData

/-!
# Folder.RH.SpectralRealization

Radiation role: spectral-realization
BinaryMatrix spine: This module isolates the noncircular spectral-realization interface.
Ontology: rh.spectral_realization
Pivot role: spectral
Zero typology: zeta
Contract boundary: proof-obligation-interface
Composite stack role: rh
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ZeroSpectrumRealization.Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a

namespace Folder
namespace RH

noncomputable section

/--
Zero-spectrum realization data.

This carries only the spectral parameter map. The zero/spectral correspondence
is a theorem obligation, not a field, so this layer cannot make the boundary
real-zero conclusion.
-/
structure ZeroSpectrumRealization
    (O : RHOperatorData) where
  sourceLabel : String

theorem D_selfAdjoint
    (O : RHOperatorData)
    (hD : IsSelfAdjoint O.D) :
    IsSelfAdjoint O.D :=
  hD

theorem D_compactResolvent
    (O : RHOperatorData)
    (hD : HasCompactResolvent O.D) :
    HasCompactResolvent O.D :=
  hD

theorem spectrum_real_of_selfAdjoint
    (O : RHOperatorData)
    (_hD : IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ RHSpectrum O.D, mu.im = 0 :=
  hReal

theorem zero_spectrum_realization_has_parameter_map
    {O : RHOperatorData}
    (_R : ZeroSpectrumRealization O) :
    ∃ parameter : ℂ → ℂ, parameter = spectralParameter :=
  ⟨spectralParameter, rfl⟩

theorem h0_zero_iff_spectral_point
    (O : RHOperatorData)
    (h :
      ∀ z : ℂ,
        H0Zero z ↔
          ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (z : ℂ) :
    H0Zero z ↔
      ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z :=
  h z

end

end RH
end Folder
```
