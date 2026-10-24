# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.20.Variant41cfc90122053fdadfb334d2e442d62456f3b497e17a443fa493578d5c500fe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c6fa876dc6bff89beba5fb2fa9258f4b20b4479` · SHA-256 `355225ab86fbb55c7c1c19ab999b89f5696c2cd62f97272387c118fc7951d95c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.All.Variant16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466","mathematical_subject":"Computation.DataStructures","original_sha256":"16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/20.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant16f0ec0f85ea9d243125041f3b89ae5926014e5163dd36a0af59d11cebfe3466

set_option aesop.check.all true

attribute [aesop safe cases (cases_patterns := [List.Mem _ []])] List.Mem
attribute [aesop unsafe 50% constructors] List.Mem
attribute [aesop unsafe 50% cases (cases_patterns := [List.Mem _ (_ :: _)])] List.Mem

@[aesop safe [constructors, cases (cases_patterns := [All _ [], All _ (_ :: _)])]]
inductive All (P : α → Prop) : List α → Prop where
  | none : All P []
  | more {x xs} : P x → All P xs → All P (x :: xs)

@[simp]
theorem All.cons (P : α → Prop) (x : α) (xs : List α)
  : All P (x :: xs) ↔ (P x ∧ All P xs) := by
  aesop

theorem mem (P : α → Prop) (xs : List α)
  : All P xs ↔ ∀ a : α, a ∈ xs → P a := by
  induction xs
  case nil => aesop
  case cons x xs ih => aesop (config := { useSimpAll := false })

theorem mem' (P : α → Prop) (xs : List α)
  : All P xs ↔ ∀ a : α, a ∈ xs → P a := by
  induction xs <;> aesop
```
