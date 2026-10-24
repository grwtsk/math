# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralDiracBridge.Variant63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cc46c0e1b4df4e9aa5703d77ad267eb185a4e5e` · SHA-256 `63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.SpectralDiracBridge

/-!
# Folder.Theorem.CrystallineIndex.SpectralDiracBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Dirac spectral bridge facts, not BinaryMatrix data.
Ontology: crystalline_index.crystalline_dirac_to_spectral
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex

theorem crystalline_dirac_has_spectral_object
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (B : Folder.CrystallineIndex.CrystallineDiracToSpectralObject D) :
    B.spectrumRepresentsDirac :=
  Folder.CrystallineIndex.crystalline_dirac_has_spectral_object B

end CrystallineIndex
end Theorem
end Folder
```
