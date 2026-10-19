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
