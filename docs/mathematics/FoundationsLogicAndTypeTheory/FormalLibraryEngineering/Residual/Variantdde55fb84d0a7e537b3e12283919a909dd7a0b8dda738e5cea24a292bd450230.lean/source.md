# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variantdde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2455b97f2f69f2412acee0d466559d024a4c0e8b` · SHA-256 `dde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Quantization.Residual

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: quantization.residual
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: residual
-/


namespace Folder
namespace Quantization

structure ResidualEncoding (α β ρ : Type _) where
  encode : α → β × ρ
  decode : β × ρ → α
  left_inverse : Function.LeftInverse decode encode
  right_inverse : Function.RightInverse decode encode

end Quantization
end Folder
```
