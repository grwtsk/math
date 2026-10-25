# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Varianta0549ee4a768ccdfc977b6316def438a0bc99550150069bd4516967864c79722

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3472b70906bbbff1f0d9f33b87ec8a4e8aba7e49` · SHA-256 `fc2845b95918eece0c1cf532ba3cedab56c635d34305cbc3640837b58df67d2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UncountableOfNotSmall.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.UncountableOfNotSmall.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","mathematical_subject":"Logic.Foundations","original_sha256":"1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Countable/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Basic.Countable.Defs
public import Mathlib.Logic.Small.Basic

/-!
# All countable types are small.

That is, any countable type is equivalent to a type in any universe.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UncountableOfNotSmall.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9

public section

universe w v

instance (priority := 100) Countable.toSmall (α : Type v) [Countable α] : Small.{w} α :=
  let ⟨_, hf⟩ := exists_injective_nat α
  small_of_injective hf

theorem Uncountable.of_not_small {α : Type v} (h : ¬ Small.{w} α) : Uncountable α := by
  rw [uncountable_iff_not_countable]
  exact mt (@Countable.toSmall α) h
```
