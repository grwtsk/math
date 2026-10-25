# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variante4001601e8062e4ab4f3b98f35d527af12b21e073d454eeb3f6ffe5bed7bb558

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83718e553b28e0866b98fb2210b4db99bc640f5e` · SHA-256 `5d94e5d329ce9cfe91919c5fdf4048b33d716efd0b86862a21dc689dca517b12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variant63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Encodable.Variant63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Rat/Encodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Logic.Encodable.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Rat.Init


namespace GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variant63f8488edb917a3a2977eb3d9fc0751ff8f2c3a9b8312ed461e57b9ac4ae627e

#align_import data.rat.encodable from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-! # The rationals are `Encodable`.

As a consequence we also get the instance `Countable ℚ`.

This is kept separate from `Data.Rat.Defs` in order to minimize imports.
-/


namespace Rat

instance : Encodable ℚ :=
  Encodable.ofEquiv (Σn : ℤ, { d : ℕ // 0 < d ∧ n.natAbs.coprime d })
    ⟨fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_of_ne_zero c, d⟩,
      fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_iff_ne_zero.mp c, d⟩,
      fun _ => rfl, fun ⟨_, _, _, _⟩ => rfl⟩

end Rat
```
