import Folder.DerivedSheaf.CriticalCenterNormalization

/-!
# Folder.Theorem.DerivedSheaf.CriticalCenterNormalization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports critical-center normalization facts, not BinaryMatrix data.
Ontology: base.critical_center_normalization
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem normalization_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (N : Folder.DerivedSheaf.CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.normalization_sends_raw_to_spectral N

theorem normalization_matches_declared_center
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (N : Folder.DerivedSheaf.CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = L.normalizedCriticalCenter :=
  Folder.DerivedSheaf.normalization_matches_declared_center N

theorem affine_shift_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (A : Folder.DerivedSheaf.AffineCriticalShift L) :
    A.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.affine_shift_sends_raw_to_spectral A

end DerivedSheaf
end Theorem
end Folder
