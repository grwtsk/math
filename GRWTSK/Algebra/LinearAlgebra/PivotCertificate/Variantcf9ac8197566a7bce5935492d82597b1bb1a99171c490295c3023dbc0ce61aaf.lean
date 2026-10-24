import Folder.Linear.Pivot
import Folder.Linear.DeterminantWitness
import Folder.Linear.Certificate

/-!
# Folder.Theorem.Linear.PivotCertificate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.linear.pivot_certificate
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

theorem pivot_certificate_sound
    {m n : Nat}
    {α : Type _}
    [Zero α]
    {A : Matrix m n α}
    (C : PivotCertificate A) :
    A C.pos.row C.pos.col ≠ 0 :=
  pivot_nonzero C

theorem determinant_certificate_sound
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  determinant_witness_correct W

end Linear
end Folder
