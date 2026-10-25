# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCompatibility.Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d75ff51c88968a21b2d38dfb3e2c41adae587008` · SHA-256 `7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
