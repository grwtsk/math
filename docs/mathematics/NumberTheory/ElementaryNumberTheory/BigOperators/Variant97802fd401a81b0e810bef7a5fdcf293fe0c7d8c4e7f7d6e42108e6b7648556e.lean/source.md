# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.BigOperators.Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `304222ebb2ab882b8dbe37ee2ce09ae653ee1a97` · SHA-256 `af166f3406ab2932dae917340fa1f291dfabecd71958a31f3806733c907532ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CoprimeProdLeft.Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CoprimeProdLeft.Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Nat/GCD/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura
-/
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Algebra.BigOperators.Basic


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CoprimeProdLeft.Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e

#align_import data.nat.gcd.big_operators from "leanprover-community/mathlib"@"008205aa645b3f194c1da47025c5f110c8406eab"

/-! # Lemmas about coprimality with big products.

These lemmas are kept separate from `Data.Nat.GCD.Basic` in order to minimize imports.
-/


namespace Nat

open BigOperators

/-- See `IsCoprime.prod_left` for the corresponding lemma about `IsCoprime` -/
theorem coprime_prod_left {ι : Type*} {x : ℕ} {s : ι → ℕ} {t : Finset ι} :
    (∀ i : ι, i ∈ t → coprime (s i) x) → coprime (∏ i : ι in t, s i) x :=
  Finset.prod_induction s (fun y ↦ y.coprime x) (fun a b ↦ coprime.mul) (by simp)
#align nat.coprime_prod_left Nat.coprime_prod_left

/-- See `IsCoprime.prod_right` for the corresponding lemma about `IsCoprime` -/
theorem coprime_prod_right {ι : Type*} {x : ℕ} {s : ι → ℕ} {t : Finset ι} :
    (∀ i : ι, i ∈ t → coprime x (s i)) → coprime x (∏ i : ι in t, s i) :=
  Finset.prod_induction s (fun y ↦ x.coprime y) (fun a b ↦ coprime.mul_right) (by simp)
#align nat.coprime_prod_right Nat.coprime_prod_right

end Nat
```
