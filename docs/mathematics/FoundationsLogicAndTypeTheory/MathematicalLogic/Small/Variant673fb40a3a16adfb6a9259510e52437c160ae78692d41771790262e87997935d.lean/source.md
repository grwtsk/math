# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Variant673fb40a3a16adfb6a9259510e52437c160ae78692d41771790262e87997935d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05f6aeabe492ad5f37db506b5e78d1ac2229056d` · SHA-256 `39a86107f7baed07992418f089828aef7c734f35a74d519ba1ae65b7d5ba9538`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UncountableOfNotSmall.Variantdf2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.UncountableOfNotSmall.Variantdf2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1","mathematical_subject":"Logic.Foundations","original_sha256":"df2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Countable/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Basic
import Mathlib.Data.Countable.Defs

/-!
# All countable types are small.

That is, any countable type is equivalent to a type in any universe.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UncountableOfNotSmall.Variantdf2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1

universe w v

instance (priority := 100) Countable.toSmall (α : Type v) [Countable α] : Small.{w} α :=
  let ⟨_, hf⟩ := exists_injective_nat α
  small_of_injective hf

theorem Uncountable.of_not_small {α : Type v} (h : ¬ Small.{w} α) : Uncountable α := by
  rw [uncountable_iff_not_countable]
  exact mt (@Countable.toSmall α) h
```
