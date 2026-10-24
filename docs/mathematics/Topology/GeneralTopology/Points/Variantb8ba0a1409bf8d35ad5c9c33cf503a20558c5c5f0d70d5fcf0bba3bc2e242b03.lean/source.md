# Complete source: GRWTSK.Topology.GeneralTopology.Points.Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `043788f8a380a5b048d1d6a9339f9d7ced2e4761` · SHA-256 `6d19e8214176fc464dc05c2d31f3e1b40516b14c3aebc999d501015326a9da10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PointGrothendieckTopology.Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PointGrothendieckTopology.Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Sheaves/Points.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Sites.Point.Conservative
public import Mathlib.Topology.Sets.Opens
public import Mathlib.CategoryTheory.Sites.Spaces
public import Mathlib.Topology.Sheaves.Presheaf

/-!
# The standard conservative family of points for the site attached to a topological space

If `X` is a topological space, any `x : X` defines a point of the site
attached to `X`.

## TODO

* Redefine the stalks functors in `Mathlib/Topology/Sheaves/Stalks.lean`
  using `GrothendieckTopology.Point.presheafFiber`.

-/


namespace GRWTSK.Topology.GeneralTopology.PointGrothendieckTopology.Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de

@[expose] public section

universe u

namespace Opens

open CategoryTheory GrothendieckTopology TopologicalSpace

variable {X : Type u} [TopologicalSpace X] (x : X)

/-- Given a topological space `X` and `x : X`, this is the point of the site
`(Opens X, Opens.grothendieckTopology X)` corresponding to `x`. -/
def pointGrothendieckTopology : Point.{u} (grothendieckTopology X) where
  fiber.obj U := ULift.{u} (PLift (x ∈ U))
  fiber.map f := ↾fun h ↦ ⟨⟨leOfHom f h.down.down⟩⟩
  isCofiltered :=
    { nonempty := ⟨.mk (obj := ⊤) ⟨⟨by simp⟩⟩⟩
      cone_objs U V := by
        induction U with | @mk U hU
        induction V with | @mk V hV
        obtain ⟨⟨hU⟩⟩ := hU
        obtain ⟨⟨hV⟩⟩ := hV
        exact ⟨.mk (obj := U ⊓ V) ⟨⟨hU, hV⟩⟩,
          Functor.Elements.homMk (homOfLE (by simp)) rfl,
          Functor.Elements.homMk (homOfLE (by simp)) rfl, by tauto⟩
      cone_maps _ _ _ _ := ⟨_, 𝟙 _, rfl⟩ }
  initiallySmall := initiallySmall_of_essentiallySmall _
  jointly_surjective := by
    rintro U R hR ⟨⟨hU⟩⟩
    obtain ⟨V, f, hf, hV⟩ := hR x hU
    exact ⟨_, _, hf, ⟨⟨hV⟩⟩, rfl⟩

variable (X) in
/-- When `X` is a topological space, this is the obvious conservative family of
points on the site `(Opens X, Opens.grothendieckTopology X)`. -/
def pointsGrothendieckTopology : ObjectProperty (Point.{u} (grothendieckTopology X)) :=
  ObjectProperty.ofObj pointGrothendieckTopology
  deriving ObjectProperty.Small.{u}

variable (X) in
lemma isConservativeFamilyOfPoints_pointsGrothendieckTopology :
    (pointsGrothendieckTopology X).IsConservativeFamilyOfPoints :=
  .mk' (fun U S hS x hx ↦ by
    obtain ⟨V, f, hf, ⟨⟨hV⟩⟩, _⟩ := hS ⟨_, ⟨x⟩⟩ ⟨⟨hx⟩⟩
    exact ⟨V, f, hf, hV⟩)

instance : HasEnoughPoints.{u} (grothendieckTopology X) where
  exists_objectProperty :=
    ⟨_, inferInstance, isConservativeFamilyOfPoints_pointsGrothendieckTopology X⟩

instance (U : Opens X) (Φ : Point.{u} (grothendieckTopology X)) :
    Subsingleton (Φ.fiber.obj U) :=
  Φ.subsingleton_fiber_obj (homOfLE le_top) Limits.isTerminalTop

instance : Quiver.IsThin (Point.{u} (grothendieckTopology X)) :=
  fun _ _ ↦ ⟨fun _ _ ↦ by ext; subsingleton⟩

/-- A point `x` of a topological space `X` specializes to `y` if and only iff
there is a (unique) morphism between the corresponding points of the site
`(Opens X, grothendieckTopology X)`. -/
def pointGrothendieckTopologyHomEquiv {x y : X} :
    (pointGrothendieckTopology x ⟶ pointGrothendieckTopology y) ≃ x ⤳ y where
  toFun f := specializes_iff_forall_open.2 (fun U h₁ h₂ ↦ (f.hom.app ⟨U, h₁⟩ ⟨⟨h₂⟩⟩).down.down)
  invFun s := { hom.app U := ↾fun hU ↦
    ⟨⟨specializes_iff_forall_open.1 s _ U.2 hU.down.down⟩⟩ }
  left_inv _ := by subsingleton
  right_inv _ := rfl

end Opens
```
