/-
Carrier interpretation sends a supplied target isomorphism to a bijection
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Legacy DAF.Comparison.Properties, DAF.Comparison.Scope and DAF.Fabric.Refinement imports remain unresolved.
Carrier, identity and composition preservation are explicit supplied prerequisites; no canonical underlying carrier is inferred.
-/
import DAF.Comparison.Properties
import DAF.Comparison.Scope
import DAF.Fabric.Refinement

/-!
# Fabric adapters for the typed comparison calculus

The categorical realization map has no underlying function until a concrete
carrier interpretation is supplied.  `CarrierRealization` is that explicit
adapter.  Reaction isomorphisms, levelwise factors, and refinement-preserving
implementation maps then produce only the comparison strengths they actually
prove.

Arithmetic or runtime realizations remain parameterized by their chosen
representation.  Independence is exposed only from a supplied natural
isomorphism between two represented realization functors.
-/

open CategoryTheory

open DAF.Fabric

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.CarrierInterpretations.Variant89347c7f

universe u v

/-- An explicit underlying-carrier interpretation of realization morphisms. -/
structure CarrierRealization (R : RealizationTheory) where
  Carrier : R.Target → Type v
  mapCarrier :
    ∀ {X Y : R.Target}, (X ⟶ Y) → Carrier X → Carrier Y
  map_id :
    ∀ (X : R.Target), mapCarrier (𝟙 X) = _root_.id
  map_comp :
    ∀ {X Y Z : R.Target} (f : X ⟶ Y) (g : Y ⟶ Z),
      mapCarrier (f ≫ g) = mapCarrier g ∘ mapCarrier f

namespace CarrierRealization

/-- Carrier maps of target isomorphisms are bijective. -/
theorem mapIso_bijective
    {R : RealizationTheory}
    (C : CarrierRealization R)
    {X Y : R.Target}
    (i : X ≅ Y) :
    Function.Bijective (C.mapCarrier i.hom) := by
  have hleft :
      Function.LeftInverse (C.mapCarrier i.inv) (C.mapCarrier i.hom) := by
    intro x
    have hcomp := congrFun (C.map_comp i.hom i.inv) x
    rw [i.hom_inv_id] at hcomp
    have hid := congrFun (C.map_id X) x
    exact hcomp.symm.trans hid
  have hright :
      Function.RightInverse (C.mapCarrier i.inv) (C.mapCarrier i.hom) := by
    intro y
    have hcomp := congrFun (C.map_comp i.inv i.hom) y
    rw [i.inv_hom_id] at hcomp
    have hid := congrFun (C.map_id Y) y
    exact hcomp.symm.trans hid
  exact ⟨hleft.injective, hright.surjective⟩

end CarrierRealization


end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.CarrierInterpretations.Variant89347c7f
