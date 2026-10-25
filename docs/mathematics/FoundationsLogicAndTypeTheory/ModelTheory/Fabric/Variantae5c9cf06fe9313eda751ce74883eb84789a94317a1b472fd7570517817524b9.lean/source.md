# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Fabric.Variantae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf4bc5481c6cfbd0ba4fd92afe492b804323fd8b` · SHA-256 `ae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Prismatic.Interface

/-!
# Cosimplicial prismatic values

Applying a contravariant prismatic theory to a simplicial arithmetic source
produces a cosimplicial target object.  The opposite-category plumbing below
is definitional: a source map `X ⟶ Y` induces a map from the value of `Y`
to the value of `X`.  This module does not assert descent or homotopy
correctness.
-/

namespace DAF.Prismatic

open CategoryTheory
open CategoryTheory.Functor

namespace Theory

/-- Contravariant application of a prismatic theory degree by degree. -/
def cosimplicialValue
    (P : Theory)
    (X : SimplicialObject P.DerivedAlg) :
    CosimplicialObject P.Target :=
  X.rightOp ⋙ P.value

/-- A simplicial source map induces a reverse-direction cosimplicial map. -/
def cosimplicialValueMap
    (P : Theory)
    {X Y : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y) :
    P.cosimplicialValue Y ⟶ P.cosimplicialValue X :=
  whiskerRight f.rightOp P.value

@[simp]
theorem cosimplicialValueMap_id
    (P : Theory)
    (X : SimplicialObject P.DerivedAlg) :
    P.cosimplicialValueMap (𝟙 X) =
      𝟙 (P.cosimplicialValue X) := by
  ext q
  simp [cosimplicialValueMap, cosimplicialValue]

theorem cosimplicialValueMap_comp
    (P : Theory)
    {X Y Z : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y)
    (g : Y ⟶ Z) :
    P.cosimplicialValueMap (f ≫ g) =
      P.cosimplicialValueMap g ≫ P.cosimplicialValueMap f := by
  ext q
  simp [cosimplicialValueMap, cosimplicialValue]

end Theory

end DAF.Prismatic
```
