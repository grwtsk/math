import Folder.Archive.MatrixOrbit

/-!
# Folder.Archive.IndexSpinRef

Radiation role: archive-reference
BinaryMatrix spine: This module realizes symbolic `{index, spin}` references into BinaryMatrix archive atoms.
Ontology: archive.index_spin_ref
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

structure MatrixAtomDictionary where
  atoms : List Carrier.BinaryMatrix
  unique_atoms : Prop

namespace MatrixAtomDictionary

def get? (D : MatrixAtomDictionary) (i : Nat) :
    Option Carrier.BinaryMatrix :=
  D.atoms[i]?

end MatrixAtomDictionary

structure IndexSpinRef (A : MatrixAction) where
  index : Nat
  spin : A.Spin

def realizeIndexSpin?
    (A : MatrixAction)
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef A) :
    Option Carrier.BinaryMatrix :=
  match D.get? r.index with
  | some M => some (A.act r.spin M)
  | none => none

theorem realizeIndexSpin?_some
    {A : MatrixAction}
    {D : MatrixAtomDictionary}
    {r : IndexSpinRef A}
    {M : Carrier.BinaryMatrix}
    (h : D.get? r.index = some M) :
    realizeIndexSpin? A D r = some (A.act r.spin M) := by
  simp [realizeIndexSpin?, h]

theorem realize_copy_id
    (D : MatrixAtomDictionary)
    (i : Nat)
    (M : Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    realizeIndexSpin? copyAction D
      { index := i, spin := () } = some M := by
  simpa [copyAction] using (realizeIndexSpin?_some
    (A := copyAction)
    (D := D)
    (r := { index := i, spin := () })
    h)

end Archive
end Folder
