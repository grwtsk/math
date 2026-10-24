# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Imo1959Q1.Variant96b2820364387dd291c5738b9a1de02cb6d10229a12d90700726c81917ea4d7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64bf40b642ae355557cfcb9d2cccf198143997bf` · SHA-256 `fcb1ece0152608c8ec4e822fdf47176610b8cf2ebdcda1d7c58b22cd918ffdbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.Calculation.Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.Calculation.Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"fe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Imo/Imo1959Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Lacker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Lacker
-/
import Mathlib.Tactic.Ring
import Mathlib.Data.Nat.Prime


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Calculation.Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570

#align_import imo.imo1959_q1 from "leanprover-community/mathlib"@"5f25c089cb34db4db112556f23c50d12da81b297"

/-!
# IMO 1959 Q1

Prove that the fraction `(21n+4)/(14n+3)` is irreducible for every natural number `n`.

Since Lean doesn't have a concept of "irreducible fractions" per se, we just formalize this
as saying the numerator and denominator are relatively prime.
-/


open Nat

namespace Imo1959Q1

theorem calculation (n k : ℕ) (h1 : k ∣ 21 * n + 4) (h2 : k ∣ 14 * n + 3) : k ∣ 1 :=
  have h3 : k ∣ 2 * (21 * n + 4) := h1.mul_left 2
  have h4 : k ∣ 3 * (14 * n + 3) := h2.mul_left 3
  have h5 : 3 * (14 * n + 3) = 2 * (21 * n + 4) + 1 := by ring
  (Nat.dvd_add_right h3).mp (h5 ▸ h4)
#align imo1959_q1.calculation Imo1959Q1.calculation

end Imo1959Q1

open Imo1959Q1

theorem imo1959_q1 : ∀ n : ℕ, coprime (21 * n + 4) (14 * n + 3) := fun n =>
  coprime_of_dvd' fun k _ h1 h2 => calculation n k h1 h2
#align imo1959_q1 imo1959_q1
```
