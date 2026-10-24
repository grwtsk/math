# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variantf1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07af5cebac259ec6e6ea87774be20f0f9b571b49` · SHA-256 `f1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.Ecosystem

namespace Think.Logic.MathlibEcosystem

structure InformationCoherencePolicy
    (Inf : Type u) [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf] where
  associatorIsoHash : String
  leftUnitorIsoHash : String
  rightUnitorIsoHash : String
  symmetryIsoHash : String
  coherenceTacticReceiptHash : String
  usesStrictTensorEquality : Bool
  claimBearing : Bool

def InformationCoherencePolicy.accepted
    {Inf : Type u} [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    (P : InformationCoherencePolicy Inf) : Prop :=
  P.usesStrictTensorEquality = false ∧ P.claimBearing = false

theorem InformationCoherencePolicy.no_strict_tensor_equality_if_accepted
    {Inf : Type u} [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    (P : InformationCoherencePolicy Inf) :
    P.accepted → P.usesStrictTensorEquality = false :=
by
  intro h
  exact h.left

end Think.Logic.MathlibEcosystem
```
