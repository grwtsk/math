# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousEvalConst.Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d51c146c1080ba5fed30f5d490988cbbf1307e4` · SHA-256 `ecd11f615b3cfcc4d08a93150e9782d7f029f581bfb23726235a159f3679254f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousEvalConst.Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousEvalConst.Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df","mathematical_subject":"Topology.GeneralTopology","original_sha256":"16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Hom/ContinuousEvalConst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Constructions

/-!
# Bundled morphisms with continuous evaluation at a point

In this file we define a typeclass
saying that `F` is a type of bundled morphisms (in the sense of `DFunLike`)
with a topology on `F` such that evaluation at a point is continuous in `f : F`.

## Implementation Notes

For now, we define the typeclass for non-dependent bundled functions only.
Whenever we add a type of bundled dependent functions with a topology having this property,
we may decide to generalize from `FunLike` to `DFunLike`.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousEvalConst.Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df

open scoped Topology
open Filter

/-- A typeclass saying that `F` is a type of bundled morphisms (in the sense of `DFunLike`)
with a topology on `F` such that evaluation at a point is continuous in `f : F`. -/
class ContinuousEvalConst (F : Type*) (α X : outParam Type*) [FunLike F α X]
    [TopologicalSpace F] [TopologicalSpace X] : Prop where
  continuous_eval_const (x : α) : Continuous fun f : F ↦ f x

export ContinuousEvalConst (continuous_eval_const)

section ContinuousEvalConst

variable {F α X Z : Type*} [FunLike F α X] [TopologicalSpace F] [TopologicalSpace X]
  [ContinuousEvalConst F α X] [TopologicalSpace Z] {f : Z → F} {s : Set Z} {z : Z}

/-- If a type `F'` of bundled morphisms admits a continuous projection
to a type satisfying `ContinuousEvalConst`,
then `F'` satisfies this predicate too.

The word "forget" in the name is motivated by the term "forgetful functor". -/
theorem ContinuousEvalConst.of_continuous_forget {F' : Type*} [FunLike F' α X] [TopologicalSpace F']
    {f : F' → F} (hc : Continuous f) (hf : ∀ g, ⇑(f g) = g := by intro; rfl) :
    ContinuousEvalConst F' α X where
  continuous_eval_const x := by simpa only [← hf] using (continuous_eval_const x).comp hc

@[continuity, fun_prop]
protected theorem Continuous.eval_const (hf : Continuous f) (x : α) : Continuous (f · x) :=
  (continuous_eval_const x).comp hf

theorem continuous_coeFun : Continuous (DFunLike.coe : F → α → X) :=
  continuous_pi continuous_eval_const

protected theorem Continuous.coeFun (hf : Continuous f) : Continuous fun z ↦ ⇑(f z) :=
  continuous_pi hf.eval_const

protected theorem Filter.Tendsto.eval_const {ι : Type*} {l : Filter ι} {f : ι → F} {g : F}
    (hf : Tendsto f l (𝓝 g)) (a : α) : Tendsto (f · a) l (𝓝 (g a)) :=
  ((continuous_id.eval_const a).tendsto _).comp hf

protected theorem Filter.Tendsto.coeFun {ι : Type*} {l : Filter ι} {f : ι → F} {g : F}
    (hf : Tendsto f l (𝓝 g)) : Tendsto (fun i ↦ ⇑(f i)) l (𝓝 ⇑g) :=
  (continuous_id.coeFun.tendsto _).comp hf

protected nonrec theorem ContinuousAt.eval_const (hf : ContinuousAt f z) (x : α) :
    ContinuousAt (f · x) z :=
  hf.eval_const x

protected nonrec theorem ContinuousAt.coeFun (hf : ContinuousAt f z) :
    ContinuousAt (fun z ↦ ⇑(f z)) z :=
  hf.coeFun

protected nonrec theorem ContinuousWithinAt.eval_const (hf : ContinuousWithinAt f s z) (x : α) :
    ContinuousWithinAt (f · x) s z :=
  hf.eval_const x

protected nonrec theorem ContinuousWithinAt.coeFun (hf : ContinuousWithinAt f s z) :
    ContinuousWithinAt (fun z ↦ ⇑(f z)) s z :=
  hf.coeFun

protected theorem ContinuousOn.eval_const (hf : ContinuousOn f s) (x : α) :
    ContinuousOn (f · x) s :=
  fun z hz ↦ (hf z hz).eval_const x

protected theorem ContinuousOn.coeFun (hf : ContinuousOn f s) (x : α) : ContinuousOn (f · x) s :=
  fun z hz ↦ (hf z hz).eval_const x

end ContinuousEvalConst
```
