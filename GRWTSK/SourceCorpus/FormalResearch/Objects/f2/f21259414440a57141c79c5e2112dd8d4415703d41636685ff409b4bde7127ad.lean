import Folder.Arithmetic.BSDTwistWitness

/-!
# Folder.Theorem.Arithmetic.BSDTwistWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.arithmetic.bsdtwist_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Arithmetic

theorem certified_twist_family_all_certified
    (W : Folder.Arithmetic.CertifiedQuadraticTwistFamily) :
    Folder.Arithmetic.AllTwistsCertified W.witness :=
  Folder.Arithmetic.certified_twist_family_all_certified W

theorem certified_twist_family_infinite
    (W : Folder.Arithmetic.CertifiedQuadraticTwistFamily) :
    W.witness.isInfiniteFamily :=
  Folder.Arithmetic.certified_twist_family_infinite W

end Arithmetic
end Theorem
end Folder
