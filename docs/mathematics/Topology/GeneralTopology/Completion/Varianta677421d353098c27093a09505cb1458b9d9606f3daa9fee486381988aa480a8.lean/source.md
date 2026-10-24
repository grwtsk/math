# Complete source: GRWTSK.Topology.GeneralTopology.Completion.Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9c3286ad4b7bee988ef64023c081bdee70babcf` · SHA-256 `9367e31c011e96dbec334402acf45ae5865217975e2a77073d4f475afb6daf14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.InseparableInnerEqInner.Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.InseparableInnerEqInner.Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Sébastien Gouëzel, Frédéric Dupuis
-/
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.Analysis.Normed.Module.Completion

/-!
# Completion of an inner product space

We show that the separation quotient and the completion of an inner product space are inner
product spaces.
-/


namespace GRWTSK.Topology.GeneralTopology.InseparableInnerEqInner.Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0

noncomputable section

variable {𝕜 E F : Type*} [RCLike 𝕜]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

section SeparationQuotient
variable [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]

theorem Inseparable.inner_eq_inner {x₁ x₂ y₁ y₂ : E}
    (hx : Inseparable x₁ x₂) (hy : Inseparable y₁ y₂) :
    ⟪x₁, y₁⟫ = ⟪x₂, y₂⟫ :=
  ((hx.prod hy).map continuous_inner).eq

namespace SeparationQuotient

instance : Inner 𝕜 (SeparationQuotient E) where
  inner := SeparationQuotient.lift₂ (inner 𝕜) fun _ _ _ _ => Inseparable.inner_eq_inner

@[simp]
theorem inner_mk_mk (x y : E) :
    ⟪mk x, mk y⟫ = ⟪x, y⟫ := rfl

instance : InnerProductSpace 𝕜 (SeparationQuotient E) where
  norm_sq_eq_re_inner := Quotient.ind norm_sq_eq_re_inner
  conj_inner_symm := Quotient.ind₂ inner_conj_symm
  add_left := Quotient.ind fun x => Quotient.ind₂ <| inner_add_left x
  smul_left := Quotient.ind₂ inner_smul_left

end SeparationQuotient

end SeparationQuotient

section UniformSpace.Completion

variable [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]

namespace UniformSpace.Completion

open RCLike Function

instance toInner {𝕜' E' : Type*} [TopologicalSpace 𝕜'] [UniformSpace E'] [Inner 𝕜' E'] :
    Inner 𝕜' (Completion E') where
  inner := curry <| (isDenseInducing_coe.prodMap isDenseInducing_coe).extend (uncurry (inner 𝕜'))

@[simp]
theorem inner_coe (a b : E) : ⟪(a : Completion E), (b : Completion E)⟫ = ⟪a, b⟫ :=
  (isDenseInducing_coe.prodMap isDenseInducing_coe).extend_eq
    (continuous_inner : Continuous (uncurry (inner 𝕜))) (a, b)

protected theorem continuous_inner :
    Continuous (uncurry (inner 𝕜 (E := Completion E))) := by
  let inner' : E →+ E →+ 𝕜 :=
    { toFun := fun x => (innerₛₗ 𝕜 x).toAddMonoidHom
      map_zero' := by ext x; exact inner_zero_left _
      map_add' := fun x y => by ext z; exact inner_add_left _ _ _ }
  have : Continuous fun p : E × E => inner' p.1 p.2 := continuous_inner
  rw [Completion.toInner, inner, uncurry_curry _]
  change
    Continuous
      (((isDenseInducing_toCompl E).prodMap (isDenseInducing_toCompl E)).extend fun p : E × E =>
        inner' p.1 p.2)
  exact (isDenseInducing_toCompl E).extend_Z_bilin (isDenseInducing_toCompl E) this

@[fun_prop]
protected theorem Continuous.inner {α : Type*} [TopologicalSpace α] {f g : α → Completion E}
    (hf : Continuous f) (hg : Continuous g) : Continuous (fun x : α => ⟪f x, g x⟫) :=
  UniformSpace.Completion.continuous_inner.comp (hf.prodMk hg :)

instance innerProductSpace : InnerProductSpace 𝕜 (Completion E) where
  norm_sq_eq_re_inner x :=
    Completion.induction_on x (isClosed_eq (by fun_prop) (by fun_prop))
      fun a => by simp only [norm_coe, inner_coe, inner_self_eq_norm_sq]
  conj_inner_symm x y :=
    Completion.induction_on₂ x y
      (isClosed_eq (continuous_conj.comp (by fun_prop)) (by fun_prop))
      fun a b => by simp only [inner_coe, inner_conj_symm]
  add_left x y z :=
    Completion.induction_on₃ x y z (isClosed_eq (by fun_prop) (by fun_prop))
      fun a b c => by simp only [← coe_add, inner_coe, inner_add_left]
  smul_left x y c :=
    Completion.induction_on₂ x y
      (isClosed_eq (Continuous.inner (continuous_fst.const_smul c) continuous_snd)
        ((continuous_mul_left _).comp (by fun_prop)))
      fun a b => by simp only [← coe_smul c a, inner_coe, inner_smul_left]

end UniformSpace.Completion

end UniformSpace.Completion
```
