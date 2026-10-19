import Folder.DerivedSheaf.PerfectComplex
import Folder.DerivedSheaf.KTheoryIndex
import Folder.CanonicalPath.Milestone

/-!
# Folder.CanonicalPath.PerfectFamilyTheoremTarget

Radiation role: research-boundary
BinaryMatrix spine: This module records perfect-family theorem targets.
Ontology: canonical.perfect_family
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure ArithmeticModuliStage where
  ParameterSpace : Type
  relevantPoint : ParameterSpace → Prop
  connectedComponent : ParameterSpace → Type
  sourceLabel : String

structure PerfectSectionComplexFamily where
  base : ArithmeticModuliStage
  complexAt :
    ∀ x : base.ParameterSpace, base.relevantPoint x → DerivedSheaf.PerfectComplex
  baseChangeCompatible : Prop
  baseChangeCompatible_certified : baseChangeCompatible
  perfectOverBase : Prop
  perfectOverBase_certified : perfectOverBase
  sourceLabel : String

theorem perfect_family_base_change_if_supplied
    (F : PerfectSectionComplexFamily) :
    F.baseChangeCompatible :=
  F.baseChangeCompatible_certified

theorem perfect_family_perfect_if_supplied
    (F : PerfectSectionComplexFamily) :
    F.perfectOverBase :=
  F.perfectOverBase_certified

end CanonicalPath
end Folder
