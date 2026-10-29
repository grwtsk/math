import Folder.CanonicalPath.PerfectFamilyTheoremTarget

/-!
# Folder.CanonicalPath.DeterminantLinePropagation

Radiation role: research-boundary
BinaryMatrix spine: This module records determinant-line propagation targets.
Ontology: canonical.perfect_family
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure DeterminantLineFamily
    (F : PerfectSectionComplexFamily) where
  DeterminantLine : Type
  determinantOfCohomology : Prop
  deformsCompatibly : Prop
  nonzeroAnchor : Prop
  nonzeroAnchor_certified : nonzeroAnchor
  propagatesOnConnectedComponent : Prop
  propagatesOnConnectedComponent_certified : propagatesOnConnectedComponent
  sourceLabel : String

theorem determinant_line_propagates_if_supplied
    {F : PerfectSectionComplexFamily}
    (D : DeterminantLineFamily F) :
    D.propagatesOnConnectedComponent :=
  D.propagatesOnConnectedComponent_certified

theorem determinant_line_has_nonzero_anchor
    {F : PerfectSectionComplexFamily}
    (D : DeterminantLineFamily F) :
    D.nonzeroAnchor :=
  D.nonzeroAnchor_certified

end CanonicalPath
end Folder
