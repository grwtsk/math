import Folder.DerivedSheaf.BaseCaseIndexAnchor

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseIndexAnchor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case index-anchor facts, not BinaryMatrix data.
Ontology: base.index_anchor
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_case_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.base_case_index_nonzero B

theorem base_case_index_euler_realizes_kIndex
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  Folder.DerivedSheaf.base_case_index_euler_realizes_kIndex B

theorem base_case_index_euler_realizes_kindex
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  Folder.DerivedSheaf.base_case_index_euler_realizes_kindex B

theorem base_case_anchor_euler_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.baseIndex.derivedIndex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_anchor_euler_nonzero B

end DerivedSheaf
end Theorem
end Folder
