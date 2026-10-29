import Folder.Basic

/-!
# Folder.DerivedSheaf.BaseCaseUnresolvedIssues

Radiation role: research-boundary
BinaryMatrix spine: This module lists base-case unresolved issues, not BinaryMatrix data.
Ontology: base.unresolved_issues
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: roadmap
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure BaseCaseUnresolvedIssues where
  lfunctionNonvanishingSource : String :=
    "UNRESOLVED-BASE-1: externally certified L-function nonvanishing source"
  lfunctionToSectionComplex : String :=
    "UNRESOLVED-BASE-2: construction of section complex from L-function"
  eulerEqualsArithmeticIndex : String :=
    "UNRESOLVED-BASE-3: Euler characteristic equals intended arithmetic index"
  kIndexNonzeroFromEuler : String :=
    "UNRESOLVED-BASE-4: nonzero Euler gives nonzero K(M_ell)-index"
  transportSourceEulerMatch : String :=
    "UNRESOLVED-BASE-5: source Euler matches Rodgers-Tao transport source"
  nonzeroIndexToFixedTensor : String :=
    "UNRESOLVED-BASE-6: nonzero index to fixed tensor"
  fixedTensorToBoundaryAlignment : String :=
    "UNRESOLVED-BASE-7: fixed tensor to spectral boundary alignment"

def baseCaseUnresolvedIssues : BaseCaseUnresolvedIssues := {}

end DerivedSheaf
end Folder
