# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplex.Variant64567707925d31d48c441e697d9a8880d1cabf9715126f5b54294c3f99297f88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94daaec7f17c2ff67ec6b7ba1b8cbb3281be1873` · SHA-256 `64567707925d31d48c441e697d9a8880d1cabf9715126f5b54294c3f99297f88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.HomotopyCategory.DegreewiseSplit
public import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy
public import Mathlib.Algebra.Homology.Embedding.Splitting

/-!
# Homotopy equivalences between chain complexes

If `0 ⟶ K₁ ⟶ K₂ ⟶ K₃ ⟶ 0` is a degreewise short exact sequence of
chain complexes, we show that `K₁ ⟶ K₂` is a homotopy equivalence
iff `K₃` is contractible, and `K₂ ⟶ K₃` is a homotopy equivalence
iff `K₁`.

-/

@[expose] public section

open CategoryTheory Limits HomologicalComplex

namespace ChainComplex

variable {C : Type*} [Category* C] [Preadditive C] [HasZeroObject C] [HasBinaryBiproducts C]
  (S : ShortComplex (ChainComplex C ℕ))

set_option backward.isDefEq.respectTransparency false in
lemma homotopyEquivalences_shortComplexF_iff_of_degreewiseSplit
    (σ : ∀ n, (S.map (eval _ _ n)).Splitting) :
    homotopyEquivalences _ _ S.f ↔ Nonempty (Homotopy (𝟙 S.X₃) 0) := by
  have := CochainComplex.homotopyEquivalences_shortComplexF_iff_of_splitting _
    (ComplexShape.embeddingDownNat.splittingExtend σ)
  simp only [ShortComplex.map_f, ComplexShape.Embedding.extendFunctor_map,
    homotopyEquivalences_extendMap_iff] at this
  rw [this]
  refine Equiv.nonempty_congr
    (Equiv.trans ?_ (Homotopy.extendEquiv ComplexShape.embeddingDownNat).symm)
  simp
  rfl

set_option backward.isDefEq.respectTransparency false in
lemma homotopyEquivalences_shortComplexG_iff_of_degreewiseSplit
    (σ : ∀ n, (S.map (eval _ _ n)).Splitting) :
    homotopyEquivalences _ _ S.g ↔ Nonempty (Homotopy (𝟙 S.X₁) 0) := by
  have := CochainComplex.homotopyEquivalences_shortComplexG_iff_of_splitting _
    (ComplexShape.embeddingDownNat.splittingExtend σ)
  simp only [ShortComplex.map_g, ComplexShape.Embedding.extendFunctor_map,
    homotopyEquivalences_extendMap_iff] at this
  rw [this]
  refine Equiv.nonempty_congr
    (Equiv.trans ?_ (Homotopy.extendEquiv ComplexShape.embeddingDownNat).symm)
  simp
  rfl

end ChainComplex
```
