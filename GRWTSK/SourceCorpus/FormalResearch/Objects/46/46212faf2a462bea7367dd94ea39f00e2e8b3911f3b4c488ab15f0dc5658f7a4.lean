import Folder.NumberTheory.Factorization

/-!
# Folder.Theorem.NumberTheory.Factorization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.number_theory.factorization
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace NumberTheory

theorem factorization_support_prime
    (n : Folder.NumberTheory.PositiveNat)
    {p : Nat}
    (hp : Folder.NumberTheory.IsPrimeSupport n p) :
    Nat.Prime p :=
  Folder.NumberTheory.factorization_support_prime n hp

theorem factorization_exponent_pos
    (n : Folder.NumberTheory.PositiveNat)
    {p : Nat}
    (hp : Folder.NumberTheory.IsPrimeSupport n p) :
    0 < Folder.NumberTheory.FactorizationMap n p :=
  Folder.NumberTheory.factorization_exponent_pos n hp

end NumberTheory
end Theorem
end Folder
