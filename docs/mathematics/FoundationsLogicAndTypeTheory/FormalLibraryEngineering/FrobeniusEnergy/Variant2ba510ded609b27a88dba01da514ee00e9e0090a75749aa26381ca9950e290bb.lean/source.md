# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrobeniusEnergy.Variant2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b506d50a2bc8350f3662069129ac79760194dfac` · SHA-256 `2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Harmonic.FrobeniusEnergy

/-!
# Folder.Theorem.Harmonic.FrobeniusEnergy

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes Frobenius-energy nonnegativity from its analytic contract field.
Ontology: proof.harmonic.frobenius_energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: theorem-wrapper
Composite stack role: field
-/

namespace Folder
namespace Theorem
namespace Harmonic

theorem frobenius_energy_nonnegative
    (F : Folder.Harmonic.AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  Folder.Harmonic.frobenius_energy_nonnegative F x

end Harmonic
end Theorem
end Folder
```
