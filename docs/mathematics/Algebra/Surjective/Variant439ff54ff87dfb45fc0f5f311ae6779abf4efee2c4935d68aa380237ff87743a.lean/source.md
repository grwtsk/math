# Complete source: GRWTSK.Algebra.Surjective.Variant439ff54ff87dfb45fc0f5f311ae6779abf4efee2c4935d68aa380237ff87743a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `198b1e9d5be3352a8d0402c27b681a128bc9fa40` · SHA-256 `504e0b05edcd7c9259b76d84ed30c06f4fa4fe3131244b25fc32602e8eaef394`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SurjectiveStableUnderComposition.Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SurjectiveStableUnderComposition.Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/RingHom/Surjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.LocalProperties


namespace GRWTSK.Algebra.SurjectiveStableUnderComposition.Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6

#align_import ring_theory.ring_hom.surjective from "leanprover-community/mathlib"@"831c494092374cfe9f50591ed0ac81a25efc5b86"

/-!

# The meta properties of surjective ring homomorphisms.

-/


namespace RingHom

open scoped TensorProduct

open TensorProduct Algebra.TensorProduct

local notation "surjective" => fun {X Y : Type _} [CommRing X] [CommRing Y] => fun f : X →+* Y =>
  Function.Surjective f

theorem surjective_stableUnderComposition : StableUnderComposition surjective := by
  introv R hf hg; exact hg.comp hf
#align ring_hom.surjective_stable_under_composition RingHom.surjective_stableUnderComposition

theorem surjective_respectsIso : RespectsIso surjective := by
  apply surjective_stableUnderComposition.respectsIso
  intros _ _ _ _ e
  exact e.surjective
#align ring_hom.surjective_respects_iso RingHom.surjective_respectsIso

theorem surjective_stableUnderBaseChange : StableUnderBaseChange surjective := by
  refine' StableUnderBaseChange.mk _ surjective_respectsIso _
  classical
  introv h x
  skip
  induction x using TensorProduct.induction_on with
  | zero => exact ⟨0, map_zero _⟩
  | tmul x y =>
    obtain ⟨y, rfl⟩ := h y; use y • x; dsimp
    rw [TensorProduct.smul_tmul, Algebra.algebraMap_eq_smul_one]
  | add x y ex ey => obtain ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩ := ex, ey; exact ⟨x + y, map_add _ x y⟩
#align ring_hom.surjective_stable_under_base_change RingHom.surjective_stableUnderBaseChange

open scoped BigOperators

theorem surjective_ofLocalizationSpan : OfLocalizationSpan surjective := by
  introv R hs H
  skip
  letI := f.toAlgebra
  show Function.Surjective (Algebra.ofId R S)
  rw [← Algebra.range_top_iff_surjective, eq_top_iff]
  rintro x -
  obtain ⟨l, hl⟩ :=
    (Finsupp.mem_span_iff_total R s 1).mp (show _ ∈ Ideal.span s by rw [hs]; trivial)
  fapply
    Subalgebra.mem_of_finset_sum_eq_one_of_pow_smul_mem _ l.support (fun x : s => f x) fun x : s =>
      f (l x)
  · dsimp only; simp_rw [← _root_.map_mul, ← map_sum, ← f.map_one]; exact f.congr_arg hl
  · exact fun _ => Set.mem_range_self _
  · exact fun _ => Set.mem_range_self _
  · intro r
    obtain ⟨y, hy⟩ := H r (IsLocalization.mk' _ x (1 : Submonoid.powers (f r)))
    obtain ⟨z, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (r : R)) y
    erw [IsLocalization.map_mk', IsLocalization.eq] at hy
    obtain ⟨⟨_, m, rfl⟩, hm⟩ := hy
    refine' ⟨m + n, _⟩
    dsimp at hm ⊢
    simp_rw [_root_.one_mul, ← _root_.mul_assoc, ← map_pow, ← f.map_mul, ← pow_add, map_pow] at hm
    exact ⟨_, hm⟩
#align ring_hom.surjective_of_localization_span RingHom.surjective_ofLocalizationSpan

end RingHom
```
