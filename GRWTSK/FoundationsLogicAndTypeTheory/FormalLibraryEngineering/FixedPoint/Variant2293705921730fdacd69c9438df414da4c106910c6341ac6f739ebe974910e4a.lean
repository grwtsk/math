import Folder.Archive.FixedPoint

/-!
# Folder.Theorem.Archive.FixedPoint

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes fixed-point certificate facts for archive presentation rules.
Ontology: proof.archive.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem fixedPointRecipe_realizes_self
    {A : Folder.Archive.MatrixAction}
    {E : Folder.Archive.RuleEngine}
    {D : Folder.Archive.MatrixAtomDictionary}
    (F : Folder.Archive.FixedPointRecipe A E D) :
    F.rule.apply F.output = F.output :=
  Folder.Archive.fixedPointRecipe_realizes_self F

end Archive
end Theorem
end Folder
