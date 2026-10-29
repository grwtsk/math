import Folder.Arithmetic.Torsion

/-!
# Folder.Arithmetic.ModularWitness

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.modular_witness
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

structure ModularRelationWitness {K : Type _} [Field K]
    (E : ShortWeierstrass K)
    (β : Type _) where
  invariant : β
  relationName : String
  certified : Prop

structure JInvariantWitness {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  value : K
  certified : Prop

def modularRelationClaim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {β : Type _}
    (W : ModularRelationWitness E β) :
    Prop :=
  W.certified

def jInvariantClaim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (W : JInvariantWitness E) :
    Prop :=
  W.certified

end Arithmetic
end Folder
