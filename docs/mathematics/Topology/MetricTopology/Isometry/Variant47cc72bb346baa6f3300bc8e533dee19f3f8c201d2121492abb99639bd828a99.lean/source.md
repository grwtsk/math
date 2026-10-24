# Complete source: GRWTSK.Topology.MetricTopology.Isometry.Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7fd6dcf1b8a8abfe27d3c407d65d6372472f611` · SHA-256 `b693acbd03833caa8a954887ea76560696293593c2a7d5d58bbf7660b0df6583`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Isometry.Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Isometry.Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29","mathematical_subject":"Topology.MetricSpaces","original_sha256":"d524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/QuadraticForm/Isometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.QuadraticForm.Basic

/-!
# Isometric linear maps

## Main definitions

* `QuadraticMap.Isometry`: `LinearMap`s which map between two different quadratic forms

## Notation

`Q₁ →qᵢ Q₂` is notation for `Q₁.Isometry Q₂`.
-/


namespace GRWTSK.Topology.MetricTopology.Isometry.Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29

variable {R M M₁ M₂ M₃ M₄ N : Type*}

namespace QuadraticMap

variable [CommSemiring R]
variable [AddCommMonoid M]
variable [AddCommMonoid M₁] [AddCommMonoid M₂] [AddCommMonoid M₃] [AddCommMonoid M₄]
variable [AddCommMonoid N]
variable [Module R M] [Module R M₁] [Module R M₂] [Module R M₃] [Module R M₄] [Module R N]

/-- An isometry between two quadratic spaces `M₁, Q₁` and `M₂, Q₂` over a ring `R`,
is a linear map between `M₁` and `M₂` that commutes with the quadratic forms. -/
structure Isometry (Q₁ : QuadraticMap R M₁ N) (Q₂ : QuadraticMap R M₂ N) extends M₁ →ₗ[R] M₂ where
  /-- The quadratic form agrees across the map. -/
  map_app' : ∀ m, Q₂ (toFun m) = Q₁ m

namespace Isometry

@[inherit_doc]
notation:25 Q₁ " →qᵢ " Q₂:0 => Isometry Q₁ Q₂

variable {Q₁ : QuadraticMap R M₁ N} {Q₂ : QuadraticMap R M₂ N}
variable {Q₃ : QuadraticMap R M₃ N} {Q₄ : QuadraticMap R M₄ N}

instance instFunLike : FunLike (Q₁ →qᵢ Q₂) M₁ M₂ where
  coe f := f.toLinearMap
  coe_injective' f g h := by cases f; cases g; congr; exact DFunLike.coe_injective h

instance instLinearMapClass : LinearMapClass (Q₁ →qᵢ Q₂) R M₁ M₂ where
  map_add f := f.toLinearMap.map_add
  map_smulₛₗ f := f.toLinearMap.map_smul

theorem toLinearMap_injective :
    Function.Injective (Isometry.toLinearMap : (Q₁ →qᵢ Q₂) → M₁ →ₗ[R] M₂) := fun _f _g h =>
  DFunLike.coe_injective (congr_arg DFunLike.coe h :)

@[ext]
theorem ext ⦃f g : Q₁ →qᵢ Q₂⦄ (h : ∀ x, f x = g x) : f = g :=
  DFunLike.ext _ _ h

/-- See Note [custom simps projection]. -/
protected def Simps.apply (f : Q₁ →qᵢ Q₂) : M₁ → M₂ := f

initialize_simps_projections Isometry (toFun → apply)

@[simp]
theorem map_app (f : Q₁ →qᵢ Q₂) (m : M₁) : Q₂ (f m) = Q₁ m :=
  f.map_app' m

@[simp]
theorem coe_toLinearMap (f : Q₁ →qᵢ Q₂) : ⇑f.toLinearMap = f :=
  rfl

/-- The identity isometry from a quadratic form to itself. -/
@[simps!]
def id (Q : QuadraticMap R M N) : Q →qᵢ Q where
  __ := LinearMap.id
  map_app' _ := rfl

/-- The identity isometry between equal quadratic forms. -/
@[simps!]
def ofEq {Q₁ Q₂ : QuadraticMap R M₁ N} (h : Q₁ = Q₂) : Q₁ →qᵢ Q₂ where
  __ := LinearMap.id
  map_app' _ := h ▸ rfl

@[simp]
theorem ofEq_rfl {Q : QuadraticMap R M₁ N} : ofEq (rfl : Q = Q) = .id Q := rfl

/-- The composition of two isometries between quadratic forms. -/
@[simps]
def comp (g : Q₂ →qᵢ Q₃) (f : Q₁ →qᵢ Q₂) : Q₁ →qᵢ Q₃ where
  toFun x := g (f x)
  map_app' x := by rw [← f.map_app, ← g.map_app]
  __ := (g.toLinearMap : M₂ →ₗ[R] M₃) ∘ₗ (f.toLinearMap : M₁ →ₗ[R] M₂)

@[simp]
theorem toLinearMap_comp (g : Q₂ →qᵢ Q₃) (f : Q₁ →qᵢ Q₂) :
    (g.comp f).toLinearMap = g.toLinearMap.comp f.toLinearMap :=
  rfl

@[simp]
theorem id_comp (f : Q₁ →qᵢ Q₂) : (id Q₂).comp f = f :=
  ext fun _ => rfl

@[simp]
theorem comp_id (f : Q₁ →qᵢ Q₂) : f.comp (id Q₁) = f :=
  ext fun _ => rfl

theorem comp_assoc (h : Q₃ →qᵢ Q₄) (g : Q₂ →qᵢ Q₃) (f : Q₁ →qᵢ Q₂) :
    (h.comp g).comp f = h.comp (g.comp f) :=
  ext fun _ => rfl

/-- There is a zero map from any module with the zero form. -/
instance : Zero ((0 : QuadraticMap R M₁ N) →qᵢ Q₂) where
  zero := { (0 : M₁ →ₗ[R] M₂) with map_app' := fun _ => map_zero _ }

/-- There is a zero map from the trivial module. -/
instance hasZeroOfSubsingleton [Subsingleton M₁] : Zero (Q₁ →qᵢ Q₂) where
  zero :=
  { (0 : M₁ →ₗ[R] M₂) with
    map_app' := fun m => Subsingleton.elim 0 m ▸ (map_zero _).trans (map_zero _).symm }

/-- Maps into the zero module are trivial -/
instance [Subsingleton M₂] : Subsingleton (Q₁ →qᵢ Q₂) :=
  ⟨fun _ _ => ext fun _ => Subsingleton.elim _ _⟩

end Isometry

end QuadraticMap
```
