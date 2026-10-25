import Folder.Morphism.Effect.WritePlan

/-!
# Folder.Theorem.Effect.WritePlanSafety

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.effect.write_plan_safety
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Effect

theorem no_conflicting_duplicates
    (P : Folder.Morphism.Effect.WritePlan)
    {a b : Folder.Morphism.Effect.WriteTarget}
    (ha : a ∈ P.targets)
    (hb : b ∈ P.targets)
    (hpath : a.path = b.path) :
    a.payload = b.payload :=
  Folder.Morphism.Effect.no_conflicting_duplicates P ha hb hpath

end Effect
end Theorem
end Folder
