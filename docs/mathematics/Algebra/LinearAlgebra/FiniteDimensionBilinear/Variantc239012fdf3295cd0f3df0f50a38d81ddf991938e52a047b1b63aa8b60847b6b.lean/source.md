# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteDimensionBilinear.Variantc239012fdf3295cd0f3df0f50a38d81ddf991938e52a047b1b63aa8b60847b6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fb33573a2607b6736d8defbeff1348ebf629fd5` · SHA-256 `acce917b89e54489ca5343829dc6a49a900c4ec32e1f12574ad67d15fd57f69c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapToContinuousBilinearMap.Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapToContinuousBilinearMap.Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Module/FiniteDimensionBilinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Michael Rothgang
-/
module

public import Mathlib.Topology.Algebra.Module.FiniteDimension
public import Mathlib.Topology.Algebra.Module.Spaces.ContinuousLinearMap

/-!
# Building continuous bilinear maps in finite dimensions over complete fields

Given a complete nontrivially normed field `𝕜` and finite dimensional T₂ topological vector spaces
over `𝕜`, this file builds a continuous bilinear map from any bilinear function.

This applies in particular to evaluation of linear maps between such spaces.

Working with topological vector spaces instead of normed spaces is important for applications in the
differential geometry part of Mathlib where we don’t want to fix a norm on tangent spaces for
instance.

-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearMapToContinuousBilinearMap.Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266

@[expose] public section

variable
    {𝕜 : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
    {E : Type*} [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]
    [IsTopologicalAddGroup E] [ContinuousSMul 𝕜 E] [FiniteDimensional 𝕜 E] [T2Space E]
    {F : Type*} [AddCommGroup F] [Module 𝕜 F] [TopologicalSpace F]
    [IsTopologicalAddGroup F] [ContinuousSMul 𝕜 F] [FiniteDimensional 𝕜 F] [T2Space F]
    {G : Type*} [AddCommGroup G] [Module 𝕜 G] [TopologicalSpace G]
    [IsTopologicalAddGroup G] [ContinuousSMul 𝕜 G]

/-- Building continuous bilinear maps from bilinear maps between finite dimensional topological
  vector spaces over a complete field. -/
def LinearMap.toContinuousBilinearMap (f : E →ₗ[𝕜] F →ₗ[𝕜] G) : E →L[𝕜] F →L[𝕜] G :=
  IsLinearMap.mk' (fun x : E ↦ f x |>.toContinuousLinearMap)
      (by constructor <;> (intros; simp)) |>.toContinuousLinearMap

@[simp]
lemma LinearMap.toContinuousBilinearMap_apply (f : E →ₗ[𝕜] F →ₗ[𝕜] G) (x : E) (y : F) :
  f.toContinuousBilinearMap x y = f x y := rfl

/-- Building continuous bilinear maps from bilinear functions between finite dimensional topological
  vector spaces over a complete field. -/
def IsBilinearMap.toContinuousBilinearMap
    {f : E → F → G} (h : IsBilinearMap 𝕜 f) : E →L[𝕜] F →L[𝕜] G :=
  h.toLinearMap.toContinuousBilinearMap

@[simp]
lemma IsBilinearMap.toContinuousBilinearMap_apply {f : E → F → G} (h : IsBilinearMap 𝕜 f)
    (x : E) (y : F) :
  h.toContinuousBilinearMap x y = f x y := rfl

variable (𝕜 E F) in
/-- Evaluation of continuous linear maps as a continuous linear map in the
case of finite dimensional topological vector spaces over a complete field.
See also `ContinuousLinearMap.apply` for the case of normed spaces.

TODO: generalize the two constructions in the setting of maps from a bornological space to a locally
convex one, or define a `NormableSpace` class to deduce this case from the normed case.
-/
def ContinuousLinearMap.evalL : E →L[𝕜] (E →L[𝕜] F) →L[𝕜] F :=
  LinearMap.toContinuousLinearMap.symm.toLinearMap |>.flip |>.toContinuousBilinearMap

@[simp]
lemma ContinuousLinearMap.evalL_apply (x : E) (φ : E →L[𝕜] F) : φ.evalL 𝕜 E F x = φ x := rfl
```
