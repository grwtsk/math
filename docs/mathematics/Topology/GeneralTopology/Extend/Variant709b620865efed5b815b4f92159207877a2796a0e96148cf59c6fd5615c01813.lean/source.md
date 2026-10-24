# Complete source: GRWTSK.Topology.GeneralTopology.Extend.Variant709b620865efed5b815b4f92159207877a2796a0e96148cf59c6fd5615c01813

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78fb1b801ea923db47c1a1951b510182aa2519dc` · SHA-256 `8d24aa756077e2bc53564e9b644c4b340980e3ad06e64ac79505987f4992a1d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExtendUnique.Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExtendUnique.Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Module/ContinuousLinearMap/Extend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Moritz Doll
-/
module

public import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic

/-! # Extension of continuous linear maps

In this file we provide a way to extend a continuous linear map defined on a dense
subspace to the entire space.

* `ContinuousLinearMap.extend`: Extend `f : E →SL[σ₁₂] F` to a continuous linear map
  `Eₗ →SL[σ₁₂] F`, where `e : E →ₗ[𝕜] Eₗ` is a dense map that is `IsUniformInducing`. -/


namespace GRWTSK.Topology.GeneralTopology.ExtendUnique.Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a

namespace ContinuousLinearMap
variable {𝕜 𝕜₂ E F Eₗ : Type*} [AddCommGroup E] [UniformSpace E] [IsUniformAddGroup E]
  [AddCommGroup F] [UniformSpace F] [IsUniformAddGroup F] [T0Space F]
  [AddCommMonoid Eₗ] [UniformSpace Eₗ] [ContinuousAdd Eₗ]
  [Semiring 𝕜] [Semiring 𝕜₂] [Module 𝕜 E] [Module 𝕜₂ F] [Module 𝕜 Eₗ]
  [ContinuousConstSMul 𝕜 Eₗ] [ContinuousConstSMul 𝕜₂ F]
  {σ₁₂ : 𝕜 →+* 𝕜₂} (f : E →SL[σ₁₂] F) [CompleteSpace F] (e : E →L[𝕜] Eₗ)

open scoped Classical in
/-- Extension of a continuous linear map `f : E →SL[σ₁₂] F` along a uniform and dense
embedding `e : E →L[𝕜] Eₗ`. -/
@[expose] public noncomputable def extend : Eₗ →SL[σ₁₂] F :=
  if h : DenseRange e ∧ IsUniformInducing e then
  -- extension of `f` is continuous
  have cont := (uniformContinuous_uniformly_extend h.2 h.1 f.uniformContinuous).continuous
  -- extension of `f` agrees with `f` on the domain of the embedding `e`
  have eq := uniformly_extend_of_ind h.2 h.1 f.uniformContinuous
  { toFun := (h.2.isDenseInducing h.1).extend f
    map_add' := by
      refine h.1.induction_on₂ ?_ ?_
      · exact isClosed_eq (cont.comp continuous_add)
          ((cont.comp continuous_fst).add (cont.comp continuous_snd))
      · intro x y
        simp only [eq, ← e.map_add]
        exact f.map_add _ _
    map_smul' := fun k => by
      refine fun b => h.1.induction_on b ?_ ?_
      · exact isClosed_eq (cont.comp (continuous_const_smul _))
          ((continuous_const_smul _).comp cont)
      · intro x
        rw [← map_smul]
        simp only [eq]
        exact map_smulₛₗ _ _ _
    cont }
  else 0

variable {e}

@[simp] public theorem extend_eq (h_dense : DenseRange e) (h_e : IsUniformInducing e) (x : E) :
    extend f e (e x) = f x := by
  simp only [extend, h_dense, h_e, and_self, ↓reduceDIte, coe_mk', LinearMap.coe_mk, AddHom.coe_mk]
  exact IsDenseInducing.extend_eq (h_e.isDenseInducing h_dense) f.cont _

public theorem extend_unique (h_dense : DenseRange e) (h_e : IsUniformInducing e)
    (g : Eₗ →SL[σ₁₂] F) (H : g.comp e = f) : extend f e = g := by
  simp only [extend, h_dense, h_e, and_self, ↓reduceDIte]
  exact ContinuousLinearMap.coeFn_injective <|
    uniformly_extend_unique h_e h_dense (ContinuousLinearMap.ext_iff.1 H) g.continuous

@[simp] public theorem extend_zero (h_dense : DenseRange e) (h_e : IsUniformInducing e) :
    extend (0 : E →SL[σ₁₂] F) e = 0 :=
  extend_unique _ h_dense h_e _ (zero_comp _)

end ContinuousLinearMap
```
