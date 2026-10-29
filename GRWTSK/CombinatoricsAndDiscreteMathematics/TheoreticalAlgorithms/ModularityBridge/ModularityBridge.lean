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
