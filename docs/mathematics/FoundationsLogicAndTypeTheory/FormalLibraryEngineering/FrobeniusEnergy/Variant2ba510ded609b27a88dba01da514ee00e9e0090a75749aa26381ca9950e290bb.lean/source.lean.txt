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
