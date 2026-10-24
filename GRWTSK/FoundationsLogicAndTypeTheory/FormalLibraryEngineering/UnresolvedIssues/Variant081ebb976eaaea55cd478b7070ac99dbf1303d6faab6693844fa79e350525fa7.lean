import Folder.Basic

/-!
# Folder.DerivedSheaf.UnresolvedIssues

Radiation role: research-boundary
BinaryMatrix spine: This module lists unresolved derived-index boundaries, not BinaryMatrix data.
Ontology: derived.unresolved_issues
Pivot role: none
Zero typology: none
Contract boundary: roadmap
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure DerivedSheafUnresolvedIssues where
  derivedCategoryOfSheaves : String :=
    "UNRESOLVED-DERIVED-1: actual derived category of sheaves"
  derivedCategoryOfMell : String :=
    "UNRESOLVED-DERIVED-2: derived category on M_ell"
  perfectComplexFormalization : String :=
    "UNRESOLVED-DERIVED-3: perfect complexes and dualizability"
  kTheoryOfMell : String :=
    "UNRESOLVED-DERIVED-4: construction of K(M_ell)"
  eulerCharacteristicComputation : String :=
    "UNRESOLVED-DERIVED-5: Euler characteristic from actual cohomology"
  chernWittRealization : String :=
    "UNRESOLVED-DERIVED-6: Chern/Witt realization from K-theory"
  arithmeticSupportForKIndex : String :=
    "UNRESOLVED-DERIVED-7: arithmetic support for K-theory index"

def unresolvedIssues : DerivedSheafUnresolvedIssues := {}

end DerivedSheaf
end Folder
