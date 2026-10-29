import Folder.Archive.RuleEngine

/-!
# Folder.Archive.FixedPoint

Radiation role: archive-rule-engine
BinaryMatrix spine: This module certifies when a BinaryMatrix is fixed by a presentation rule.
Ontology: archive.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure FixedPointCertificate
    (R : PresentationRule)
    (M : Carrier.BinaryMatrix) where
  fixed : R.apply M = M

structure FixedPointRecipe
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary) where
  recipe : LayerRecipe A E
  output : Carrier.BinaryMatrix
  realizes : realizeLayerRecipe? A E D recipe = some output
  rule : PresentationRule
  rule_resolved : E.resolve recipe.rule = some rule
  fixed : FixedPointCertificate rule output

def copyFixedPointCertificate
    (M : Carrier.BinaryMatrix) :
    FixedPointCertificate copyRule M where
  fixed := rfl

theorem fixedPointRecipe_realizes_self
    {A : MatrixAction}
    {E : RuleEngine}
    {D : MatrixAtomDictionary}
    (F : FixedPointRecipe A E D) :
    F.rule.apply F.output = F.output :=
  F.fixed.fixed

theorem copy_fixedPointCertificate
    (M : Carrier.BinaryMatrix) :
    (copyFixedPointCertificate M).fixed = rfl :=
  rfl

end Archive
end Folder
