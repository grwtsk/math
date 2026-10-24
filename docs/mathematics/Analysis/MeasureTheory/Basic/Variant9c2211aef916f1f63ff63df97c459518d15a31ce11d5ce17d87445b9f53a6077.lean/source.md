# Complete source: GRWTSK.Analysis.MeasureTheory.Basic.Variant9c2211aef916f1f63ff63df97c459518d15a31ce11d5ce17d87445b9f53a6077

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a60bb5cef923d9250f49190cdfc36e58e73fa51f` · SHA-256 `5e77932f4696e7ea9157319b4b17b318508941154a1278e62335a4544f09a0f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ErgodicVAdd.Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"cce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Dynamics/Ergodic/Action/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.MeasureTheory.Group.AEStabilizer
public import Mathlib.Dynamics.Ergodic.Ergodic

/-!
# Ergodic group actions

A group action of `G` on a space `α` with measure `μ` is called *ergodic*,
if for any (null) measurable set `s`,
if it is a.e.-invariant under each scalar multiplication `(g • ·)`, `g : G`,
then it is either null or conull.
-/


namespace GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849

public section

open Set Filter MeasureTheory MulAction
open scoped Pointwise

/--
An additive group action of `G` on a space `α` with measure `μ` is called *ergodic*,
if for any (null) measurable set `s`,
if it is a.e.-invariant under each scalar addition `(g +ᵥ ·)`, `g : G`,
then it is either null or conull.
-/
class ErgodicVAdd (G α : Type*) [VAdd G α] {_ : MeasurableSpace α} (μ : Measure α) : Prop
    extends VAddInvariantMeasure G α μ where
  aeconst_of_forall_preimage_vadd_ae_eq {s : Set α} : MeasurableSet s →
    (∀ g : G, (g +ᵥ ·) ⁻¹' s =ᵐ[μ] s) → EventuallyEmptyOrUniv s (ae μ)

/--
A group action of `G` on a space `α` with measure `μ` is called *ergodic*,
if for any (null) measurable set `s`,
if it is a.e.-invariant under each scalar multiplication `(g • ·)`, `g : G`,
then it is either null or conull.
-/
@[to_additive, mk_iff]
class ErgodicSMul (G α : Type*) [SMul G α] {_ : MeasurableSpace α} (μ : Measure α) : Prop
    extends SMulInvariantMeasure G α μ where
  aeconst_of_forall_preimage_smul_ae_eq {s : Set α} : MeasurableSet s →
    (∀ g : G, (g • ·) ⁻¹' s =ᵐ[μ] s) → EventuallyEmptyOrUniv s (ae μ)

attribute [to_additive] ergodicSMul_iff

namespace MeasureTheory

variable (G : Type*) {α : Type*} {m : MeasurableSpace α} {μ : Measure α}

@[to_additive]
theorem aeconst_of_forall_preimage_smul_ae_eq [SMul G α] [ErgodicSMul G α μ] {s : Set α}
    (hm : NullMeasurableSet s μ) (h : ∀ g : G, (g • ·) ⁻¹' s =ᵐ[μ] s) :
    EventuallyEmptyOrUniv s (ae μ) := by
  rcases hm with ⟨t, htm, hst⟩
  refine .congr ?_ hst.symm
  refine ErgodicSMul.aeconst_of_forall_preimage_smul_ae_eq htm fun g : G ↦ ?_
  refine .trans (.trans ?_ (h g)) hst
  exact tendsto_smul_ae _ _ hst.symm

section Group

variable [Group G] [MulAction G α] [ErgodicSMul G α μ] {s : Set α}

@[to_additive]
theorem aeconst_of_forall_smul_ae_eq (hm : NullMeasurableSet s μ) (h : ∀ g : G, g • s =ᵐ[μ] s) :
    EventuallyEmptyOrUniv s (ae μ) :=
  aeconst_of_forall_preimage_smul_ae_eq G hm fun g ↦ by
    simpa only [preimage_smul] using h g⁻¹

@[to_additive]
theorem _root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.MulAction.aeconst_of_aestabilizer_eq_top
    (hm : NullMeasurableSet s μ) (h : aestabilizer G μ s = ⊤) : EventuallyEmptyOrUniv s (ae μ) :=
  aeconst_of_forall_smul_ae_eq G hm <| (Subgroup.eq_top_iff' _).1 h

end Group

theorem _root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.ErgodicSMul.of_aestabilizer [Group G] [MulAction G α] [SMulInvariantMeasure G α μ]
    (h : ∀ s, MeasurableSet s → aestabilizer G μ s = ⊤ → EventuallyEmptyOrUniv s (ae μ)) :
    ErgodicSMul G α μ :=
  ⟨fun hm hs ↦ h _ hm <| (Subgroup.eq_top_iff' _).2 fun g ↦ by
    simpa only [preimage_smul_inv] using! hs g⁻¹⟩

theorem ergodicSMul_iterateMulAct {f : α → α} (hf : Measurable f) :
    ErgodicSMul (IterateMulAct f) α μ ↔ Ergodic f μ := by
  simp only [ergodicSMul_iff, smulInvariantMeasure_iterateMulAct, hf]
  refine ⟨fun ⟨h₁, h₂⟩ ↦ ⟨h₁, ⟨?_⟩⟩, fun h ↦ ⟨h.1, ?_⟩⟩
  · intro s hm hs
    refine h₂ hm fun n ↦ ?_
    nth_rewrite 2 [← Function.IsFixedPt.preimage_iterate hs n.val]
    rfl
  · intro s hm hs
    exact h.quasiErgodic.aeconst_set₀ hm.nullMeasurableSet <| hs (.mk 1)

end MeasureTheory
```
