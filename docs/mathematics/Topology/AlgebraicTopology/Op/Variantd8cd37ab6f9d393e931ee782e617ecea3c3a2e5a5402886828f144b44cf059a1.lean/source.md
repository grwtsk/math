# Complete source: GRWTSK.Topology.AlgebraicTopology.Op.Variantd8cd37ab6f9d393e931ee782e617ecea3c3a2e5a5402886828f144b44cf059a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b899336f2fe32840cc88eab155f1db192439a18` · SHA-256 `2f86ae940ddfe604b465b7fbc1b0b2debdca51abc97370729cabdaf2606a244c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.OpFunctor.Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.OpFunctor.Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"eb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/Op.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialObject.Op
public import Mathlib.AlgebraicTopology.SimplicialSet.Basic

/-!
# The covariant involution of the category of simplicial sets

In this file, we define the covariant involution `opFunctor : SSet ⥤ SSet`
of the category of simplicial sets that is induced by the
covariant involution `SimplexCategory.op : SimplexCategory ⥤ SimplexCategory`.
We use an abbreviation `X.op` for `opFunctor.obj X`.


## TODO

* Show that this involution sends `Δ[n]` to itself, and that via
  this identification, the horn `horn n i` is sent to `horn n i.rev` (@joelriou)
* Construct an isomorphism `nerve Cᵒᵖ ≅ (nerve C).op` (@robin-carlier)
* Show that the topological realization of `X.op` identifies to the
  topological realization of `X` (@joelriou)

-/


namespace GRWTSK.Topology.AlgebraicTopology.OpFunctor.Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c

@[expose] public section

universe u

open CategoryTheory

open scoped Simplicial

namespace SSet

/-- The covariant involution of the category of simplicial sets that
is induced by `SimplexCategory.rev : SimplexCategory ⥤ SimplexCategory`.
This functor is purposely not made `implicit_reducible` so as to avoid
confusion between `X.op _⦋n⦌` and `X _⦋n⦌`: use the bijection `opObjEquiv`. -/
def opFunctor : SSet.{u} ⥤ SSet.{u} := SimplicialObject.opFunctor

/-- The image of a simplicial set by the involution `opFunctor : SSet ⥤ SSet`. -/
protected abbrev op (X : SSet.{u}) : SSet.{u} := opFunctor.obj X

/-- The type of `n`-simplices of `X.op` identify to type of `n`-simplices of `X`. -/
def opObjEquiv {X : SSet.{u}} {n : SimplexCategoryᵒᵖ} :
    X.op.obj n ≃ X.obj n := Equiv.refl _

lemma opFunctor_map {X Y : SSet.{u}} (f : X ⟶ Y) {n : SimplexCategoryᵒᵖ} (x : X.op.obj n) :
    (opFunctor.map f).app n x = opObjEquiv.symm (f.app _ (opObjEquiv x)) :=
  rfl

lemma op_map (X : SSet.{u}) {n m : SimplexCategoryᵒᵖ} (f : n ⟶ m) (x : X.op.obj n) :
    X.op.map f x =
      opObjEquiv.symm (X.map (SimplexCategory.rev.map f.unop).op (opObjEquiv x)) :=
  rfl

@[simp]
lemma op_δ (X : SSet.{u}) {n : ℕ} (i : Fin (n + 2)) (x : X.op _⦋n + 1⦌) :
    X.op.δ i x = opObjEquiv.symm (X.δ i.rev (opObjEquiv x)) := by
  simp [SimplicialObject.δ, op_map]

@[simp]
lemma op_σ (X : SSet.{u}) {n : ℕ} (i : Fin (n + 1)) (x : X.op _⦋n⦌) :
    X.op.σ i x = opObjEquiv.symm (X.σ i.rev (opObjEquiv x)) := by
  simp [SimplicialObject.σ, op_map]

lemma δ_opObjEquiv (X : SSet.{u}) {n : ℕ} (i : Fin (n + 2)) (x : X.op _⦋n + 1⦌) :
    X.δ i (opObjEquiv x) = opObjEquiv (X.op.δ i.rev x) := by
  simp

lemma σ_opObjEquiv (X : SSet.{u}) {n : ℕ} (i : Fin (n + 1)) (x : X.op _⦋n⦌) :
    X.σ i (opObjEquiv x) = opObjEquiv (X.op.σ i.rev x) := by
  simp

attribute [local simp] op_map in
/-- The functor `opFunctor : SSet ⥤ SSet` is an involution. -/
@[simps!]
def opFunctorCompOpFunctorIso : opFunctor.{u} ⋙ opFunctor ≅ 𝟭 _ :=
  dsimp% NatIso.ofComponents (fun X ↦ NatIso.ofComponents
    (fun n ↦ Equiv.toIso (opObjEquiv.trans opObjEquiv)))

/-- The covariant involution `opFunctor : SSet ⥤ SSet`,
as an equivalence of categories. -/
@[simps]
def opEquivalence : SSet.{u} ≌ SSet.{u} where
  functor := opFunctor
  inverse := opFunctor
  unitIso := opFunctorCompOpFunctorIso.symm
  counitIso := opFunctorCompOpFunctorIso

end SSet
```
