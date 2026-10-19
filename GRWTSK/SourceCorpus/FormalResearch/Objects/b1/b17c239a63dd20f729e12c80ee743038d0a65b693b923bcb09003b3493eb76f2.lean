import Folder.Monodromy.ModularWitness

/-!
# Folder.Theorem.Monodromy.ModularWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.modular_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Monodromy

theorem modular_monodromy_witness_certified
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {M : CatalanMonodromySystem k E G}
    {β : Type _}
    (W : CompatibleModularWitness E G M β) :
    W.witness.certified :=
  modular_witness_certified W

end Monodromy
end Folder
