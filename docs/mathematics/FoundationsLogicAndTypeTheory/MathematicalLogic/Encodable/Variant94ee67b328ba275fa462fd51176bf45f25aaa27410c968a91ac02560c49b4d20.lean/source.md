# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant94ee67b328ba275fa462fd51176bf45f25aaa27410c968a91ac02560c49b4d20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ef05494a1aedf6f5c5da0e123dec328280be92d` · SHA-256 `a75eb2c326bfc4cb3c442c25c21dff2c10f054bc717bbf1ef5f400654ce82352`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DFinsupp.Variant903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.DFinsupp.Variant903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3","mathematical_subject":"Logic.Foundations","original_sha256":"903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/DFinsupp/Encodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.DFinsupp.Defs
import Mathlib.Logic.Encodable.Pi
/-!
# `Encodable` and `Countable` instances for `Π₀ i, α i`

In this file we provide instances for `Encodable (Π₀ i, α i)` and `Countable (Π₀ i, α i)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DFinsupp.Variant903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3

variable {ι : Type*} {α : ι → Type*} [∀ i, Zero (α i)]

instance [Encodable ι] [∀ i, Encodable (α i)] [∀ i (x : α i), Decidable (x ≠ 0)] :
    Encodable (Π₀ i, α i) :=
  letI : DecidableEq ι := Encodable.decidableEqOfEncodable _
  letI : ∀ s : Finset ι, Encodable (∀ i : s, {x : α i // x ≠ 0}) := fun _ ↦
    .ofEquiv _ <| .piCongrLeft' _ Encodable.fintypeEquivFin
  .ofEquiv _ DFinsupp.sigmaFinsetFunEquiv

instance [Countable ι] [∀ i, Countable (α i)] : Countable (Π₀ i, α i) := by
  classical
    let _ := Encodable.ofCountable ι
    let _ := fun i ↦ Encodable.ofCountable (α i)
    infer_instance
```
