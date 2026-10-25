# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCrossedProduct.Variantb66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `037ded15093cf778dbd8356990cdce2e2e492d46` · SHA-256 `b66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
