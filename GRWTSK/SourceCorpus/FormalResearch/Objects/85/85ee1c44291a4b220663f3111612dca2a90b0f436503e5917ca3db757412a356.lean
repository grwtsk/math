import Folder.CanonicalPath.GlobalIndexNonzeroBoundary

/-!
# Folder.Theorem.CanonicalPath.FamiliesIndexClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports families-index class facts.
Ontology: proof.canonical_path.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem families_index_nontrivial
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (I : Folder.CanonicalPath.FamiliesIndexClass M F) :
    I.nontrivialAsFamilyClass :=
  Folder.CanonicalPath.families_index_nontrivial I

theorem families_index_specializes
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (I : Folder.CanonicalPath.FamiliesIndexClass M F) :
    I.specializesToFibers :=
  Folder.CanonicalPath.families_index_specializes I

theorem pointwise_global_index_nonzero_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (T : Folder.CanonicalPath.PointwiseGlobalIndexNonzeroTarget M F)
    (h : T.pointwiseNonzero) :
    T.pointwiseNonzero :=
  Folder.CanonicalPath.pointwise_global_index_nonzero_if_supplied T h

end CanonicalPath
end Theorem
end Folder
