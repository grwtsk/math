# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant0e43ebedfbabe4042aa5bc19da6ec565360893b5ea2effc1aab6e995ecbc1e77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4e118139ea3d0ff3d2e4ce9dfbcaebb48fd6fa7` · SHA-256 `cf394cfd24dd6b1013658d34556c6b94f1625ae1ab4b0fbfbc0b05d860d84350`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapMMk.Variantd974ce9baf2414c23494ab19913d1320271c991c757d7a3e5e66cf3d34dd1a8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d974ce9baf2414c23494ab19913d1320271c991c757d7a3e5e66cf3d34dd1a8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MapMMk.Variantd974ce9baf2414c23494ab19913d1320271c991c757d7a3e5e66cf3d34dd1a8b","mathematical_subject":"Computation.DataStructures","original_sha256":"d974ce9baf2414c23494ab19913d1320271c991c757d7a3e5e66cf3d34dd1a8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Recycling/MonadSatisfying/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Recycling.MonadSatisfying.Basic
public import Batteries.Recycling.MonadSatisfying.Array


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapMMk.Variantd974ce9baf2414c23494ab19913d1320271c991c757d7a3e5e66cf3d34dd1a8b

@[expose] public section

namespace Vector

theorem mapM_mk [Monad m] [LawfulMonad m] [MonadSatisfying m]
    (a : Array α) (h : a.size = n) (f : α → m β) :
    (Vector.mk a h).mapM f =
      (fun ⟨a, h'⟩ => Vector.mk a (h'.trans h)) <$> satisfying (Array.size_mapM f a) := by
  rw [← _root_.map_inj_right Vector.toArray_inj.mp]
  simp only [Functor.map_map, MonadSatisfying.val_eq, toArray_mapM]

theorem mapIdxM_mk [Monad m] [LawfulMonad m] [MonadSatisfying m]
    (a : Array α) (h : a.size = n) (f : Nat → α → m β) :
    (Vector.mk a h).mapIdxM f =
      (fun ⟨a, h'⟩ => Vector.mk a (h'.trans h)) <$> satisfying (Array.size_mapIdxM a f) := by
  rw [← _root_.map_inj_right Vector.toArray_inj.mp]
  simp only [Functor.map_map, MonadSatisfying.val_eq, toArray_mapIdxM]

theorem mapFinIdxM_mk [Monad m] [LawfulMonad m] [MonadSatisfying m]
    (a : Array α) (h : a.size = n) (f : (i : Nat) → α → (h : i < n) → m β) :
    (Vector.mk a h).mapFinIdxM f =
      (fun ⟨a, h'⟩ => Vector.mk a (h'.trans h)) <$> satisfying
        (Array.size_mapFinIdxM a (fun i a h' => f i a (h ▸ h'))) := by
  rw [← _root_.map_inj_right Vector.toArray_inj.mp]
  simp only [Functor.map_map, MonadSatisfying.val_eq, toArray_mapFinIdxM]
```
