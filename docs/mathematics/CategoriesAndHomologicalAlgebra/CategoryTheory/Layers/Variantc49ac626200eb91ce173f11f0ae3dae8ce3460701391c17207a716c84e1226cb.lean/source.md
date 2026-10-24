# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Layers.Variantc49ac626200eb91ce173f11f0ae3dae8ce3460701391c17207a716c84e1226cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `045fa5c93aeabd8f2274a076d847d6a6f3c279be` · SHA-256 `c49ac626200eb91ce173f11f0ae3dae8ce3460701391c17207a716c84e1226cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.Base

namespace Think.Logic.MathlibEcosystem

structure LogicLayer
    (Log : Type u) [CategoryTheory.Category.{v} Log] where
  finiteProductsHash : String
  exponentialsHash : String
  terminalHash : String
  cartesianClosedReceiptHash : String
  claimBearing : Bool

structure InformationLayer
    (Inf : Type u) [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf] where
  tensorPolicyHash : String
  unitPolicyHash : String
  coherencePolicyHash : String
  symmetricPolicyHash : String
  claimBearing : Bool

structure EpistemicArchitecture
    (Log Inf : Type u) [CategoryTheory.Category.{v} Log] [CategoryTheory.Category.{v} Inf] where
  L : CategoryTheory.Functor Log Inf
  E : CategoryTheory.Functor Inf Log
  adjunction : CategoryTheory.Adjunction L E
  unitReceiptHash : String
  counitReceiptHash : String
  triangleReceiptHash : String
  claimBearing : Bool

structure WisdomMonad
    (Kn : Type u) [CategoryTheory.Category.{v} Kn] where
  targetMonad : CategoryTheory.Monad Kn
  kleisliReceiptHash : String
  valueObjectHash : String
  optimizationLawHash : String
  claimBearing : Bool

end Think.Logic.MathlibEcosystem
```
