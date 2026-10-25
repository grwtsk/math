# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f46849763e22707922caa07450991aad0d553fae` · SHA-256 `87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
