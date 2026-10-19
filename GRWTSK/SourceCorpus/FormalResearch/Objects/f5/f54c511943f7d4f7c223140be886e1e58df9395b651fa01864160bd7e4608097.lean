import Folder.CanonicalPath.FamiliesIndexPropagation

/-!
# Folder.Theorem.CanonicalPath.FamiliesIndexPropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports families-index propagation facts.
Ontology: proof.canonical_path.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem families_k_index_nontrivial_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.CanonicalPath.FamiliesKIndexPropagation F M) :
    I.nontrivialOnComponent :=
  Folder.CanonicalPath.families_k_index_nontrivial_if_supplied I

theorem families_k_index_specializes_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.CanonicalPath.FamiliesKIndexPropagation F M) :
    I.specializesToFiberIndex :=
  Folder.CanonicalPath.families_k_index_specializes_if_supplied I

end CanonicalPath
end Theorem
end Folder
