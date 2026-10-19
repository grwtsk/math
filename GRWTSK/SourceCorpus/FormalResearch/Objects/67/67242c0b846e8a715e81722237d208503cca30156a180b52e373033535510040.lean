import Folder.NumberTheory.Factorization

/-!
# Folder.NumberTheory.FundamentalTheorem

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.fta
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

def factorProduct
    (f : Nat →₀ Nat) : Nat :=
  f.prod (fun p e => p ^ e)

theorem factorProduct_factorization
    (n : PositiveNat) :
    factorProduct (FactorizationMap n) = n.val := by
  unfold factorProduct FactorizationMap PositiveNat.val
  exact Nat.prod_factorization_pow_eq_self (Nat.ne_of_gt n.2)

theorem factorProduct_one :
    factorProduct (0 : Nat →₀ Nat) = 1 := by
  simp [factorProduct]

end NumberTheory
end Folder
