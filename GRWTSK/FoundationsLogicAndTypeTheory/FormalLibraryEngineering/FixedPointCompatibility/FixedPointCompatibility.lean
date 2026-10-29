import Folder.CanonicalPath.FixedPointCompatibility

/-!
# Folder.Theorem.CanonicalPath.FixedPointCompatibility

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed point compatibility contract facts.
Ontology: proof.fixed_point_compatibility
Pivot role: fixed-point
Zero typology: compatibility-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem compatibility_iff_obstruction_vanishes_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {B : Folder.DerivedSheaf.BaseCaseIndexAnchor M}
    {C : Folder.CanonicalPath.SpectralConfiguration}
    (K : Folder.CanonicalPath.FixedPointCompatibilityContract B C) :
    Folder.CanonicalPath.IsCompatible B C K.obstruction ↔
      Folder.CanonicalPath.ObstructionVanishes K.obstruction :=
  Folder.CanonicalPath.compatibility_iff_obstruction_vanishes_if_supplied K

theorem offcritical_forces_nonzero_obstruction_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {B : Folder.DerivedSheaf.BaseCaseIndexAnchor M}
    {C : Folder.CanonicalPath.SpectralConfiguration}
    (K : Folder.CanonicalPath.FixedPointCompatibilityContract B C)
    (h : Folder.CanonicalPath.ConfigHasOffCriticalPoint C) :
    Folder.CanonicalPath.ObstructionNonzero K.obstruction :=
  Folder.CanonicalPath.offcritical_forces_nonzero_obstruction_if_supplied K h

theorem compatibility_implies_critical_line_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {B : Folder.DerivedSheaf.BaseCaseIndexAnchor M}
    {C : Folder.CanonicalPath.SpectralConfiguration}
    (K : Folder.CanonicalPath.FixedPointCompatibilityContract B C)
    (h : Folder.CanonicalPath.IsCompatible B C K.obstruction) :
    Folder.CanonicalPath.ConfigOnCriticalLine C :=
  Folder.CanonicalPath.compatibility_implies_critical_line_if_supplied K h

theorem compatible_obstruction_vanishes_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {B : Folder.DerivedSheaf.BaseCaseIndexAnchor M}
    {C : Folder.CanonicalPath.SpectralConfiguration}
    (K : Folder.CanonicalPath.FixedPointCompatibilityContract B C)
    (h : Folder.CanonicalPath.IsCompatible B C K.obstruction) :
    Folder.CanonicalPath.ObstructionVanishes K.obstruction :=
  Folder.CanonicalPath.compatible_obstruction_vanishes_if_supplied K h

theorem compatibility_obstruction_has_index_trace
    (O : Folder.CanonicalPath.CompatibilityObstruction) :
    ∃ χ : Folder.CanonicalPath.RealizedIndexTrace, O.indexTrace = χ :=
  Folder.CanonicalPath.compatibility_obstruction_has_index_trace O

theorem compatibility_obstruction_has_spectral_trace
    (O : Folder.CanonicalPath.CompatibilityObstruction) :
    ∃ τ : Folder.CanonicalPath.RealizedSpectralTrace, O.spectralTrace = τ :=
  Folder.CanonicalPath.compatibility_obstruction_has_spectral_trace O

end CanonicalPath
end Theorem
end Folder
