/-!
# Finite crossed-product interface

The algebra and identity coefficient are inputs.  This module does not infer
an arithmetic interpretation from an operator-algebra record.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteCrossedProduct
    (Observable Coefficient GroupElement : Type u) where
  identityElement : GroupElement
  identityCoefficient : Observable → Coefficient
  matrixRepresentationRef : String
  groupActionRef : String
  normalizationRef : String

end Mathematics.StratifiedBoundary
