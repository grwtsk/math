# Complete source: GRWTSK.Topology.GeneralTopology.ProjIcc.Variant4477e03ff1ad5e1c05cd513670fce9266cadd04b24c29ce1477970841a47f092

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5246b1546abc9c1702593cf891b4de48e8e6410a` · SHA-256 `7c29fa33f61a253ce019ddbb8a16a1f65325babd830380bf47f521b4ef296be8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FilterTendstoIccExtend.Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FilterTendstoIccExtend.Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Order/ProjIcc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Patrick Massot
-/
module

public import Mathlib.Order.Interval.Set.ProjIcc
public import Mathlib.Topology.Order.Basic

/-!
# Projection onto a closed interval

In this file we prove that the projection `Set.projIcc f a b h` is a quotient map, and use it
to show that `Set.IccExtend h f` is continuous if and only if `f` is continuous.
-/


namespace GRWTSK.Topology.GeneralTopology.FilterTendstoIccExtend.Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b

public section


open Set Filter Topology

variable {α β γ : Type*} [LinearOrder α] {a b : α} {h : a ≤ b}

protected theorem Filter.Tendsto.IccExtend (f : γ → Icc a b → β) {la : Filter α} {lb : Filter β}
    {lc : Filter γ} (hf : Tendsto ↿f (lc ×ˢ la.map (projIcc a b h)) lb) :
    Tendsto (↿(IccExtend h ∘ f)) (lc ×ˢ la) lb :=
  hf.comp <| tendsto_id.prodMap tendsto_map

variable [TopologicalSpace α] [OrderTopology α] [TopologicalSpace β] [TopologicalSpace γ]

@[continuity, fun_prop]
theorem continuous_projIcc : Continuous (projIcc a b h) := Continuous.subtype_mk (by fun_prop) _

theorem isQuotientMap_projIcc : IsQuotientMap (projIcc a b h) where
  surjective := projIcc_surjective h
  isCoinducing := .of_isOpen_preimage_iff_isOpen fun s ↦
    ⟨fun hs => ⟨_, hs, by ext; simp⟩, fun hs => hs.preimage continuous_projIcc⟩

@[simp]
theorem continuous_IccExtend_iff {f : Icc a b → β} : Continuous (IccExtend h f) ↔ Continuous f :=
  isQuotientMap_projIcc.continuous_iff.symm

/-- See Note [continuity lemma statement]. -/
@[fun_prop]
protected theorem Continuous.IccExtend {f : γ → Icc a b → β} {g : γ → α} (hf : Continuous ↿f)
    (hg : Continuous g) : Continuous fun a => IccExtend h (f a) (g a) :=
  show Continuous (↿f ∘ fun x => (x, projIcc a b h (g x)))
  from hf.comp <| continuous_id.prodMk <| continuous_projIcc.comp hg

/-- A useful special case of `Continuous.IccExtend`. -/
@[continuity, fun_prop]
protected theorem Continuous.Icc_extend' {f : Icc a b → β} (hf : Continuous f) :
    Continuous (IccExtend h f) :=
  hf.comp continuous_projIcc

@[fun_prop]
theorem ContinuousAt.IccExtend {x : γ} (f : γ → Icc a b → β) {g : γ → α}
    (hf : ContinuousAt ↿f (x, projIcc a b h (g x))) (hg : ContinuousAt g x) :
    ContinuousAt (fun a => IccExtend h (f a) (g a)) x :=
  show ContinuousAt (↿f ∘ fun x => (x, projIcc a b h (g x))) x from
    ContinuousAt.comp hf <| continuousAt_id.prodMk <| continuous_projIcc.continuousAt.comp hg
```
