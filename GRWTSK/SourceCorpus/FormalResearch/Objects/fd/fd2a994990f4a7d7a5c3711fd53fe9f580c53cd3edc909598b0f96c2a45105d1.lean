import Folder.DerivedSheaf.BaseCaseIndex
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.BaseCaseIndexAnchor

Radiation role: research-boundary
BinaryMatrix spine: This module anchors a supplied nonzero base index, not BinaryMatrix data.
Ontology: base.index_anchor
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
Base-case K-theory index anchor.

The base case supplies initial nonzero topological charge. It does not by
itself prove any critical-line theorem; downstream bridge contracts are still
required.
-/
structure BaseCaseIndexAnchor
    (M : MellKTheory) where
  baseIndex : BaseCaseDerivedIndex
  kIndex : KTheoryIndex M
  euler_realizes_kIndex : Prop
  euler_realizes_kIndex_certified : euler_realizes_kIndex
  kIndexNonzero : kIndex.indexClass.Nonzero
  sourceLabel : String

theorem base_case_index_nonzero
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.kIndex.indexClass.Nonzero :=
  B.kIndexNonzero

theorem base_case_index_euler_realizes_kindex
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  B.euler_realizes_kIndex_certified

theorem base_case_index_euler_realizes_kIndex
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  base_case_index_euler_realizes_kindex B

theorem base_case_anchor_euler_nonzero
    {M : MellKTheory}
    (B : BaseCaseIndexAnchor M) :
    B.baseIndex.derivedIndex.euler.value ≠ 0 :=
  base_case_derived_index_euler_nonzero B.baseIndex

end DerivedSheaf
end Folder
