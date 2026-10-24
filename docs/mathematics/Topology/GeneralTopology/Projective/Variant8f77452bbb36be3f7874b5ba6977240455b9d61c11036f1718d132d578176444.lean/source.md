# Complete source: GRWTSK.Topology.GeneralTopology.Projective.Variant8f77452bbb36be3f7874b5ba6977240455b9d61c11036f1718d132d578176444

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b77652c50502b3e6d4f4428f1b68071ba9a8576` · SHA-256 `8f77452bbb36be3f7874b5ba6977240455b9d61c11036f1718d132d578176444`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Topology.Category.Profinite.Basic
import Mathlib.Topology.StoneCech
import Mathlib.CategoryTheory.Preadditive.Projective.Basic
import Mathlib.CategoryTheory.ConcreteCategory.EpiMono

/-!
# Profinite sets have enough projectives

In this file we show that `Profinite` has enough projectives.

## Main results

Let `X` be a profinite set.

* `Profinite.projective_ultrafilter`: the space `Ultrafilter X` is a projective object
* `Profinite.projectivePresentation`: the natural map `Ultrafilter X → X`
  is a projective presentation

-/


noncomputable section

universe u v w

open CategoryTheory Function

namespace Profinite

instance projective_ultrafilter (X : Type u) : Projective (of <| Ultrafilter X) where
  factors {Y Z} f g hg := by
    rw [epi_iff_surjective] at hg
    obtain ⟨g', hg'⟩ := hg.hasRightInverse
    let t : X → Y := g' ∘ f ∘ (pure : X → Ultrafilter X)
    let h : Ultrafilter X → Y := Ultrafilter.extend t
    have hh : Continuous h := continuous_ultrafilter_extend _
    use CompHausLike.ofHom _ ⟨h, hh⟩
    apply ConcreteCategory.coe_ext
    simp only [h, ContinuousMap.coe_mk, coe_comp]
    convert denseRange_pure.equalizer (g.hom.continuous.comp hh) f.hom.continuous _
    have : g.hom ∘ g' = id := hg'.comp_eq_id
    rw [comp_assoc, ultrafilter_extend_extends, ← comp_assoc, this, id_comp]
    rfl

/-- For any profinite `X`, the natural map `Ultrafilter X → X` is a projective presentation. -/
def projectivePresentation (X : Profinite.{u}) : ProjectivePresentation X where
  p := of <| Ultrafilter X
  f := CompHausLike.ofHom _ ⟨_, continuous_ultrafilter_extend id⟩
  projective := Profinite.projective_ultrafilter X
  epi := ConcreteCategory.epi_of_surjective _ fun x =>
    ⟨(pure x : Ultrafilter X), congr_fun (ultrafilter_extend_extends (𝟙 X)) x⟩

instance : EnoughProjectives Profinite.{u} where presentation X := ⟨projectivePresentation X⟩

end Profinite
```
