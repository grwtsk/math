# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Factorial.Variant5f9f0556189a8befd155116c443402817db2a9fc8bf35173c9625927c5637198

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9fcb56792f31677aeb24ac82e795d3adb1aabeb` · SHA-256 `43bbe294f23c9558cf6a8e97f0a97b43e48fb43a8ed3941ca0d1ac4f80d3419f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeDvdFactorial.Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.PrimeDvdFactorial.Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Prime/Factorial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Prime.Basic
/-!
# Prime natural numbers and the factorial operator

-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeDvdFactorial.Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f

open Bool Subtype

open Nat

namespace Nat

theorem Prime.dvd_factorial : ∀ {n p : ℕ} (_ : Prime p), p ∣ n ! ↔ p ≤ n
  | 0, _, hp => iff_of_false hp.not_dvd_one (not_le_of_lt hp.pos)
  | n + 1, p, hp => by
    rw [factorial_succ, hp.dvd_mul, Prime.dvd_factorial hp]
    exact
      ⟨fun h => h.elim (le_of_dvd (succ_pos _)) le_succ_of_le, fun h =>
        (_root_.lt_or_eq_of_le h).elim (Or.inr ∘ le_of_lt_succ) fun h => Or.inl <| by rw [h]⟩

theorem coprime_factorial_iff {m n : ℕ} (hm : m ≠ 1) :
    m.Coprime n ! ↔ n < m.minFac := by
  rw [← not_le, iff_not_comm, Nat.Prime.not_coprime_iff_dvd]
  constructor
  · intro h
    exact ⟨m.minFac, minFac_prime hm, minFac_dvd m, Nat.dvd_factorial (minFac_pos m) h⟩
  · rintro ⟨p, hp, hdvd, hdvd'⟩
    exact le_trans (minFac_le_of_dvd hp.two_le hdvd) (hp.dvd_factorial.mp hdvd')

end Nat
```
