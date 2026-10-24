# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Part.Variant6531f92159274f87a219f572757b82df0519e6bde4a2e6e7a37857fed89f0f06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fa0fb6408f417cb637c87062690c1c3c8a79155` · SHA-256 `5f0db645639309ce79b49143e7fd6c19b964805193faee26ee4265d7d8d0cda4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonotonePartBind.Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MonotonePartBind.Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28","mathematical_subject":"Algebra.OrderTheory","original_sha256":"d38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Part.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Part
public import Mathlib.Order.Hom.Basic
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.Attr.Core

/-!
# Monotonicity of monadic operations on `Part`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonotonePartBind.Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28

@[expose] public section

open Part

variable {α β γ : Type*} [Preorder α]

section bind
variable {f : α → Part β} {g : α → β → Part γ}

lemma Monotone.partBind (hf : Monotone f) (hg : Monotone g) :
    Monotone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

lemma Antitone.partBind (hf : Antitone f) (hg : Antitone g) :
    Antitone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

end bind

section map
variable {f : β → γ} {g : α → Part β}

lemma Monotone.partMap (hg : Monotone g) : Monotone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind monotone_const

lemma Antitone.partMap (hg : Antitone g) : Antitone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind antitone_const

end map

section seq
variable {β γ : Type _} {f : α → Part (β → γ)} {g : α → Part β}

lemma Monotone.partSeq (hf : Monotone f) (hg : Monotone g) : Monotone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using! hf.partBind <| Monotone.of_apply₂ fun _ ↦ hg.partMap

lemma Antitone.partSeq (hf : Antitone f) (hg : Antitone g) : Antitone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using! hf.partBind <| Antitone.of_apply₂ fun _ ↦ hg.partMap

end seq

namespace OrderHom

/-- `Part.bind` as a monotone function -/
@[simps]
def partBind (f : α →o Part β) (g : α →o β → Part γ) : α →o Part γ where
  toFun x := (f x).bind (g x)
  monotone' := f.2.partBind g.2

end OrderHom
```
