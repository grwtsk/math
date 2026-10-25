# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Pow.Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23f6b4364888019860b1e849f8485217b9dc1efb` · SHA-256 `2f9e8407fdce988aeecd85bd78d95f4f8b94d219795d2dc2ab383d5c3f53c933`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.PowMinFac.Variant44807c431f157b239bb967f325396985c9a0070bbbbff922a51f7a73defef178","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44807c431f157b239bb967f325396985c9a0070bbbbff922a51f7a73defef178","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PowMinFac.Variant44807c431f157b239bb967f325396985c9a0070bbbbff922a51f7a73defef178","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"44807c431f157b239bb967f325396985c9a0070bbbbff922a51f7a73defef178","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Prime/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.Pow
import Mathlib.Data.Nat.Prime.Basic

/-!
# Prime numbers

This file develops the theory of prime numbers: natural numbers `p ≥ 2` whose only divisors are
`p` and `1`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.PowMinFac.Variant44807c431f157b239bb967f325396985c9a0070bbbbff922a51f7a73defef178

namespace Nat

theorem pow_minFac {n k : ℕ} (hk : k ≠ 0) : (n ^ k).minFac = n.minFac := by
  rcases eq_or_ne n 1 with (rfl | hn)
  · simp
  have hnk : n ^ k ≠ 1 := fun hk' => hn ((pow_eq_one_iff hk).1 hk')
  apply (minFac_le_of_dvd (minFac_prime hn).two_le ((minFac_dvd n).pow hk)).antisymm
  apply
    minFac_le_of_dvd (minFac_prime hnk).two_le
      ((minFac_prime hnk).dvd_of_dvd_pow (minFac_dvd _))

theorem Prime.pow_minFac {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) : (p ^ k).minFac = p := by
  rw [Nat.pow_minFac hk, hp.minFac_eq]

end Nat
```
