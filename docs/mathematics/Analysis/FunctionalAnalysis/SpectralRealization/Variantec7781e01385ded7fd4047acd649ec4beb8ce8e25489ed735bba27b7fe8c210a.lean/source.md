# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralRealization.Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1010429b4d063223a0939aa57db9c236b4fe3893` · SHA-256 `ec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
