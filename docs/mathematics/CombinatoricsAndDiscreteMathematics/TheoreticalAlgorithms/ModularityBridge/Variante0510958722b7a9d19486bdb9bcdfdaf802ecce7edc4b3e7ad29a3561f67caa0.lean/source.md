# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModularityBridge.Variante0510958722b7a9d19486bdb9bcdfdaf802ecce7edc4b3e7ad29a3561f67caa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c8bcf1d5e08df4bb02f2c9284ac2bfc62b9c64d` · SHA-256 `e0510958722b7a9d19486bdb9bcdfdaf802ecce7edc4b3e7ad29a3561f67caa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.Basic

set_option autoImplicit false

namespace Think.Arithmetic.ModularityBridge

structure EllipticCurveOverQSurface where
  curveId : String
deriving Repr, DecidableEq

structure SemistableSurface where
  curve : EllipticCurveOverQSurface
  semistablePredicateLabel : String
deriving Repr, DecidableEq

structure ModularFormSurface where
  formId : String
  weightLabel : String
  levelLabel : String
deriving Repr, DecidableEq

structure ModularitySurface where
  curve : EllipticCurveOverQSurface
  modularForm : ModularFormSurface
  relationLabel : String
deriving Repr, DecidableEq

structure GaloisRepresentationSurface where
  curve : EllipticCurveOverQSurface
  primeLabel : String
  representationLabel : String
deriving Repr, DecidableEq

structure DeformationRingSurface where
  representation : GaloisRepresentationSurface
  ringLabel : String
deriving Repr, DecidableEq

structure HeckeAlgebraSurface where
  modularFormFamilyLabel : String
  algebraLabel : String
deriving Repr, DecidableEq

structure RTComparisonSurface where
  deformationRing : DeformationRingSurface
  heckeAlgebra : HeckeAlgebraSurface
  comparisonLabel : String
deriving Repr, DecidableEq

structure ModularityLiftingSurface where
  residualRepresentation : GaloisRepresentationSurface
  liftingHypotheses : List String
  conclusionLabel : String
deriving Repr, DecidableEq

def semistableModularityStatement
    (_s : SemistableSurface)
    (_m : ModularitySurface) : Prop := True

def fullModularityStatement
    (_e : EllipticCurveOverQSurface)
    (_m : ModularitySurface) : Prop := True

end Think.Arithmetic.ModularityBridge
```
