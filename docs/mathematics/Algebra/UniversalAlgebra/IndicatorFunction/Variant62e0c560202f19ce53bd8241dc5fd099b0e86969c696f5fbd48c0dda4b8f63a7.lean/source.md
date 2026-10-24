# Complete source: GRWTSK.Algebra.UniversalAlgebra.IndicatorFunction.Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `471cb9e5d6f691eb635d788a7664db93c98a0ae2` · SHA-256 `9c4741549d20b83353a41cbee4c68d3fb9fe6a2a7f94891d8035d2ca7da12aab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.EnormIndicatorEqIndicatorEnorm.Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.EnormIndicatorEqIndicatorEnorm.Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/NormedSpace/IndicatorFunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Yury Kudryashov
-/
import Mathlib.Algebra.Order.Group.Indicator
import Mathlib.Algebra.Order.Pi
import Mathlib.Analysis.Normed.Group.Basic

/-!
# Indicator function and (e)norm

This file contains a few simple lemmas about `Set.indicator`, `norm` and `enorm`.

## Tags
indicator, norm
-/


namespace GRWTSK.Algebra.UniversalAlgebra.EnormIndicatorEqIndicatorEnorm.Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee

open Set

section ENormedAddMonoid

variable {α ε : Type*} [TopologicalSpace ε] [ENormedAddMonoid ε] {s t : Set α} (f : α → ε) (a : α)

lemma enorm_indicator_eq_indicator_enorm :
    ‖indicator s f a‖ₑ = indicator s (fun a => ‖f a‖ₑ) a :=
  flip congr_fun a (indicator_comp_of_zero (enorm_zero (E := ε))).symm

theorem enorm_indicator_le_of_subset (h : s ⊆ t) (f : α → ε) (a : α) :
    ‖indicator s f a‖ₑ ≤ ‖indicator t f a‖ₑ := by
  simp only [enorm_indicator_eq_indicator_enorm]
  apply indicator_le_indicator_of_subset ‹_› (zero_le _)

theorem indicator_enorm_le_enorm_self : indicator s (fun a => ‖f a‖ₑ) a ≤ ‖f a‖ₑ :=
  indicator_le_self' (fun _ _ ↦ zero_le _) a

theorem enorm_indicator_le_enorm_self : ‖indicator s f a‖ₑ ≤ ‖f a‖ₑ := by
  rw [enorm_indicator_eq_indicator_enorm]
  apply indicator_enorm_le_enorm_self

end ENormedAddMonoid

section SeminormedAddGroup

variable {α E : Type*} [SeminormedAddGroup E] {s t : Set α} (f : α → E) (a : α)

theorem norm_indicator_eq_indicator_norm : ‖indicator s f a‖ = indicator s (fun a => ‖f a‖) a :=
  flip congr_fun a (indicator_comp_of_zero norm_zero).symm

theorem nnnorm_indicator_eq_indicator_nnnorm :
    ‖indicator s f a‖₊ = indicator s (fun a => ‖f a‖₊) a :=
  flip congr_fun a (indicator_comp_of_zero nnnorm_zero).symm

theorem norm_indicator_le_of_subset (h : s ⊆ t) (f : α → E) (a : α) :
    ‖indicator s f a‖ ≤ ‖indicator t f a‖ := by
  simp only [norm_indicator_eq_indicator_norm]
  exact indicator_le_indicator_of_subset ‹_› (fun _ => norm_nonneg _) _

theorem indicator_norm_le_norm_self : indicator s (fun a => ‖f a‖) a ≤ ‖f a‖ :=
  indicator_le_self' (fun _ _ => norm_nonneg _) a

theorem norm_indicator_le_norm_self : ‖indicator s f a‖ ≤ ‖f a‖ := by
  rw [norm_indicator_eq_indicator_norm]
  apply indicator_norm_le_norm_self

end SeminormedAddGroup
```
