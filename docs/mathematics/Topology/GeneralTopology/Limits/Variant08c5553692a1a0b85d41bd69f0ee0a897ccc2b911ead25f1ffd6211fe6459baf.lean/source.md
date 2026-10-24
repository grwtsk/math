# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d1c465cf1145916d4d1e38cdad57c527c569b30` · SHA-256 `a0e0686f38f56347b9b5d8137ff855461a76a7fa587c27c5f81be186ad0849c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExtremallyDisconnectedPreimage.Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExtremallyDisconnectedPreimage.Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/Stonean/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson, Filippo A. E. Nuccio, Riccardo Brasca
-/
import Mathlib.Topology.Category.CompHausLike.Limits
import Mathlib.Topology.Category.Stonean.Basic
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of `Stonean`.
-/


namespace GRWTSK.Topology.GeneralTopology.ExtremallyDisconnectedPreimage.Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb

universe w u

open CategoryTheory Limits CompHausLike Topology

namespace Stonean

instance : HasExplicitFiniteCoproducts.{w, u} (fun Y ↦ ExtremallyDisconnected Y) where
  hasProp _ := { hasProp := show ExtremallyDisconnected (Σ (_a : _), _) from inferInstance}

variable {X Y Z : Stonean} {f : X ⟶ Z} (i : Y ⟶ Z) (hi : IsOpenEmbedding f)
include hi

lemma extremallyDisconnected_preimage : ExtremallyDisconnected (i ⁻¹' (Set.range f)) where
  open_closure U hU := by
    have h : IsClopen (i ⁻¹' (Set.range f)) :=
      ⟨IsClosed.preimage i.hom.continuous (isCompact_range f.hom.continuous).isClosed,
        IsOpen.preimage i.hom.continuous hi.isOpen_range⟩
    rw [← (closure U).preimage_image_eq Subtype.coe_injective,
      ← h.1.isClosedEmbedding_subtypeVal.closure_image_eq U]
    exact isOpen_induced (ExtremallyDisconnected.open_closure _
      (h.2.isOpenEmbedding_subtypeVal.isOpenMap U hU))

lemma extremallyDisconnected_pullback : ExtremallyDisconnected {xy : X × Y | f xy.1 = i xy.2} :=
  have := extremallyDisconnected_preimage i hi
  let e := (TopCat.pullbackHomeoPreimage i i.hom.2 f hi.isEmbedding).symm
  let e' : {xy : X × Y | f xy.1 = i xy.2} ≃ₜ {xy : Y × X | i xy.1 = f xy.2} := by
    exact TopCat.homeoOfIso
      ((TopCat.pullbackIsoProdSubtype f i).symm ≪≫ pullbackSymmetry _ _ ≪≫
        (TopCat.pullbackIsoProdSubtype i f))
  extremallyDisconnected_of_homeo (e.trans e'.symm)

instance : HasExplicitPullbacksOfInclusions (fun (Y : TopCat.{u}) ↦ ExtremallyDisconnected Y) := by
  apply CompHausLike.hasPullbacksOfInclusions
  intro _ _ _ _ _ hi
  exact ⟨extremallyDisconnected_pullback _ hi⟩

example : FinitaryExtensive Stonean.{u} := inferInstance

noncomputable example : PreservesFiniteCoproducts Stonean.toCompHaus := inferInstance

noncomputable example : PreservesFiniteCoproducts Stonean.toProfinite := inferInstance

end Stonean
```
