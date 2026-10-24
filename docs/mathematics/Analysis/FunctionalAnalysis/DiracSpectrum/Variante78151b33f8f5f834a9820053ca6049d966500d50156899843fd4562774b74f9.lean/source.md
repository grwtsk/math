# Complete source: GRWTSK.Analysis.FunctionalAnalysis.DiracSpectrum.Variante78151b33f8f5f834a9820053ca6049d966500d50156899843fd4562774b74f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c9a04a9c11f8a354de683dbfffed1299eacf111` · SHA-256 `1799b4c516e1db6f5966e1a6340891cfcc132fc93adbd80698b17d813a79f85c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.TensorWithDiracSpectrum.Variante4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TensorWithDiracSpectrum.Variante4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183","mathematical_subject":"Foundations.Unclassified","original_sha256":"e4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DiracSpectrum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.DiracSpectrum

Radiation role: spectral-heat
BinaryMatrix spine: This module packages spectral tensors with Dirac-spectrum contracts, not BinaryMatrix data.
Ontology: spectral.tensor_with_dirac_spectrum
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.TensorWithDiracSpectrum.Variante4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183

namespace Folder
namespace Spectral

/--
A concrete spectral tensor together with a Dirac-spectrum contract.
-/
structure TensorWithDiracSpectrum
    (s : Carrier.GridShape)
    (k : Nat) where
  tensor : SpectralTensor s k
  spectrum : DiracSpectrum
  spectrumActsOnTensor : Prop
  spectrumActsOnTensor_certified : spectrumActsOnTensor

theorem tensor_dirac_spectrum_acts
    {s : Carrier.GridShape}
    {k : Nat}
    (T : TensorWithDiracSpectrum s k) :
    T.spectrumActsOnTensor :=
  T.spectrumActsOnTensor_certified

def TensorWithDiracSpectrum.toObject
    {s : Carrier.GridShape}
    {k : Nat}
    (T : TensorWithDiracSpectrum s k) :
    DiracSpectrumObject where
  shape? := some s
  channels? := some k
  tensorCarrier? := some (SpectralTensor s k)
  spectrum := T.spectrum
  categoricalObject := True
  categoricalObject_certified := trivial
  sourceLabel := "TensorWithDiracSpectrum.toObject"

end Spectral
end Folder
```
