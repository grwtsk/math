# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantfbc4897523d24579922805fc0e4f320d633c91f552f8b5636704efa2e6530b80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80ffc5af53a94cf8103d85c53fb9d889807a3dcf` · SHA-256 `5b1eca1a18073a2649fdf722849b44015ee56e56ac29feda3d9e14a983d3cb66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SatisfiesMFoldlM.Variant187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SatisfiesMFoldlM.Variant187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3","mathematical_subject":"Computation.DataStructures","original_sha256":"187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Recycling/MonadSatisfying/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Recycling.MonadSatisfying.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SatisfiesMFoldlM.Variant187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3

@[expose] public section

/-!
# Results about monadic operations on `List`, in terms of `SatisfiesM`.

-/

namespace List

theorem satisfiesM_foldlM [Monad m] [LawfulMonad m] {f : β → α → m β} (h₀ : motive b)
    (h₁ : ∀ (b) (_ : motive b) (a : α) (_ : a ∈ l), SatisfiesM motive (f b a)) :
    SatisfiesM motive (List.foldlM f b l) := by
  induction l generalizing b with
  | nil => exact SatisfiesM.pure h₀
  | cons hd tl ih =>
    simp only [foldlM_cons]
    apply SatisfiesM.bind_pre
    let ⟨q, qh⟩ := h₁ b h₀ hd mem_cons_self
    exact ⟨(fun ⟨b, bh⟩ => ⟨b, ih bh (fun b bh a am => h₁ b bh a (mem_cons_of_mem hd am))⟩) <$> q,
      by simpa using qh⟩

theorem satisfiesM_foldrM [Monad m] [LawfulMonad m] {f : α → β → m β} (h₀ : motive b)
    (h₁ : ∀ (a : α) (_ : a ∈ l) (b) (_ : motive b), SatisfiesM motive (f a b)) :
    SatisfiesM motive (List.foldrM f b l) := by
  induction l with
  | nil => exact SatisfiesM.pure h₀
  | cons hd tl ih =>
    simp only [foldrM_cons]
    apply SatisfiesM.bind_pre
    let ⟨q, qh⟩ := ih (fun a am b hb => h₁ a (mem_cons_of_mem hd am) b hb)
    exact ⟨(fun ⟨b, bh⟩ => ⟨b, h₁ hd mem_cons_self b bh⟩) <$> q,
      by simpa using qh⟩

end List
```
