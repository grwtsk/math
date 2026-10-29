import FCRS.Topology.Continuous

universe u v w

namespace FCRS.Topology

/-- A homeomorphism with both inverse laws and both continuity proofs. -/
structure Homeomorphism
    (X : Type u) (Y : Type v)
    (TX : TopologicalSpaceLike X)
    (TY : TopologicalSpaceLike Y) where
  toFun : X → Y
  invFun : Y → X
  leftInverse : ∀ x, invFun (toFun x) = x
  rightInverse : ∀ y, toFun (invFun y) = y
  continuous_toFun : Continuous TX TY toFun
  continuous_invFun : Continuous TY TX invFun

theorem Homeomorphism.injective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (H : Homeomorphism X Y TX TY) : Function.Injective H.toFun := by
  intro x y hxy
  calc
    x = H.invFun (H.toFun x) := (H.leftInverse x).symm
    _ = H.invFun (H.toFun y) := congrArg H.invFun hxy
    _ = y := H.leftInverse y

theorem Homeomorphism.surjective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (H : Homeomorphism X Y TX TY) : Function.Surjective H.toFun := by
  intro y
  exact ⟨H.invFun y, H.rightInverse y⟩

/-- The subtype constituting the set-theoretic image of a function. -/
abbrev FunctionImage {X : Type u} {Y : Type v} (f : X → Y) : Type v :=
  {y : Y // y ∈ Set.range f}

/--
An authoritative topological embedding: the domain is homeomorphic to the
actual image subtype, and that homeomorphism's underlying target value is
exactly `toFun`.  Ambient continuity and injectivity are derived, not separate
opaque obligations.
-/
structure TopologicalEmbedding
    (X : Type u) (Y : Type v)
    (TX : TopologicalSpaceLike X)
    (TY : TopologicalSpaceLike Y) where
  toFun : X → Y
  imageHomeomorphism :
    Homeomorphism X (FunctionImage toFun) TX
      (subspaceTopology TY (Set.range toFun))
  imageHomeomorphism_toFun :
    ∀ x, (imageHomeomorphism.toFun x).val = toFun x

/-- Injectivity follows from the homeomorphism onto the image. -/
theorem TopologicalEmbedding.injective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) : Function.Injective E.toFun := by
  intro x y hxy
  have himage : E.imageHomeomorphism.toFun x =
      E.imageHomeomorphism.toFun y := by
    apply Subtype.ext
    calc
      (E.imageHomeomorphism.toFun x).val = E.toFun x :=
        E.imageHomeomorphism_toFun x
      _ = E.toFun y := hxy
      _ = (E.imageHomeomorphism.toFun y).val :=
        (E.imageHomeomorphism_toFun y).symm
  exact E.imageHomeomorphism.injective himage

/-- Ambient continuity follows by composing with the continuous image inclusion. -/
theorem TopologicalEmbedding.continuous
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) :
    Continuous TX TY E.toFun := by
  have hIntoAmbient : Continuous TX TY
      (fun x => (E.imageHomeomorphism.toFun x).val) :=
    continuous_comp E.imageHomeomorphism.continuous_toFun
      (continuous_subtype_val TY (Set.range E.toFun))
  exact continuous_congr hIntoAmbient E.imageHomeomorphism_toFun

/-- Descriptive alias for the derived ambient continuity theorem. -/
theorem TopologicalEmbedding.continuous_toFun
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) :
    Continuous TX TY E.toFun :=
  E.continuous

end FCRS.Topology
