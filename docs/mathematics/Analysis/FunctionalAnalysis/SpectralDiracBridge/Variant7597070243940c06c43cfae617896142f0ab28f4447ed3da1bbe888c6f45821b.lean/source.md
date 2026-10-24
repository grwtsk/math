# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralDiracBridge.Variant7597070243940c06c43cfae617896142f0ab28f4447ed3da1bbe888c6f45821b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a41c8932422d6068eca4d8b2f90ed35162712c1c` · SHA-256 `7597070243940c06c43cfae617896142f0ab28f4447ed3da1bbe888c6f45821b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CrystallineDirac
import Folder.Spectral.Tensor

/-!
# Folder.CrystallineIndex.SpectralDiracBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges crystalline Dirac contracts to spectral objects, not BinaryMatrix data.
Ontology: crystalline_index.crystalline_dirac_to_spectral
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure CrystallineDiracToSpectralObject
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) where
  spectralObject : Spectral.DiracSpectrumObject
  spectrumRepresentsDirac : Prop
  spectrumRepresentsDirac_certified : spectrumRepresentsDirac

theorem crystalline_dirac_has_spectral_object
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (B : CrystallineDiracToSpectralObject D) :
    B.spectrumRepresentsDirac :=
  B.spectrumRepresentsDirac_certified

end CrystallineIndex
end Folder
```
