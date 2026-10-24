import Folder.CanonicalPath.PerfectFamilyTheoremTarget
import Folder.CanonicalPath.DeterminantLinePropagation
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.FamiliesIndexPropagation

Radiation role: research-boundary
BinaryMatrix spine: This module records families K-index propagation targets.
Ontology: canonical.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure FamiliesKIndexPropagation
    (F : PerfectSectionComplexFamily)
    (M : DerivedSheaf.MellKTheory) where
  familyIndexClass : DerivedSheaf.KTheoryClass M.K
  specializesToFiberIndex : Prop
  specializesToFiberIndex_certified : specializesToFiberIndex
  nontrivialOnComponent : Prop
  nontrivialOnComponent_certified : nontrivialOnComponent
  determinantEvidence? : Option (DeterminantLineFamily F)
  sourceLabel : String

theorem families_k_index_nontrivial_if_supplied
    {F : PerfectSectionComplexFamily}
    {M : DerivedSheaf.MellKTheory}
    (I : FamiliesKIndexPropagation F M) :
    I.nontrivialOnComponent :=
  I.nontrivialOnComponent_certified

theorem families_k_index_specializes_if_supplied
    {F : PerfectSectionComplexFamily}
    {M : DerivedSheaf.MellKTheory}
    (I : FamiliesKIndexPropagation F M) :
    I.specializesToFiberIndex :=
  I.specializesToFiberIndex_certified

end CanonicalPath
end Folder
