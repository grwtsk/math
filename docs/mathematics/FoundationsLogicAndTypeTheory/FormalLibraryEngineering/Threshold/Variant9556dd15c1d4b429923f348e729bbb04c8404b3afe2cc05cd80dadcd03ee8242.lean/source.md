# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Threshold.Variant9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcd0826e758588bbd0a62568cf7b9e389c85ffa5` · SHA-256 `9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.Bit

/-!
# Folder.Quantization.Threshold

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: quantization.threshold
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: residual
-/


namespace Folder
namespace Quantization

open Carrier

structure ThresholdQuantizer where
  threshold : Real
  bitOf : Real → Bit
  bitOf_spec_zero : ∀ x, x < threshold → bitOf x = 0
  bitOf_spec_one : ∀ x, threshold ≤ x → bitOf x = 1

end Quantization
end Folder
```
