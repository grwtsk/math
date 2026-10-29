import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Theorem.NumberTheory.FundamentalTheorem

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.number_theory.fundamental_theorem
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace NumberTheory

theorem factorProduct_factorization
    (n : Folder.NumberTheory.PositiveNat) :
    Folder.NumberTheory.factorProduct
        (Folder.NumberTheory.FactorizationMap n) = n.val :=
  Folder.NumberTheory.factorProduct_factorization n

theorem factorProduct_one :
    Folder.NumberTheory.factorProduct (0 : Nat →₀ Nat) = 1 :=
  Folder.NumberTheory.factorProduct_one

end NumberTheory
end Theorem
end Folder
