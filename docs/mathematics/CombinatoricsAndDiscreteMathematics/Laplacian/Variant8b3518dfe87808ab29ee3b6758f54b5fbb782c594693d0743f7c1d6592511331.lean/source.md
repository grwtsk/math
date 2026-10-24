# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Laplacian.Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f91660b91f1956355f4d4e35187cd7a97ffba680` · SHA-256 `8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Graph
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Laplacian

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.laplacian
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

namespace CellGraph

noncomputable def degree {s : GridShape}
    (G : CellGraph s)
    (c : Cell s) :
    Nat := by
  classical
  letI := G.finite_neighbors c
  exact Fintype.card {d : Cell s // G.Adj c d}

noncomputable def laplacian {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => by
    classical
    letI := G.finite_neighbors c
    exact (degree G c : ℝ) * X.value c q -
      ∑ d : {d : Cell s // G.Adj c d}, X.value d.1 q

theorem laplacian_constant_zero {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (a : Fin k → ℝ) :
    laplacian G (SpectralTensor.constant s a) =
      SpectralTensor.zero s k := by
  classical
  ext c q
  letI := G.finite_neighbors c
  simp [laplacian, degree, SpectralTensor.constant, SpectralTensor.zero]

end CellGraph

export CellGraph (degree laplacian laplacian_constant_zero)

end Spectral
end Folder
```
