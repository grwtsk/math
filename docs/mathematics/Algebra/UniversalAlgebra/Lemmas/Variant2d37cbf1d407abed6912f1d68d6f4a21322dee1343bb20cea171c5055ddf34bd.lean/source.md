# Complete source: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant2d37cbf1d407abed6912f1d68d6f4a21322dee1343bb20cea171c5055ddf34bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7f6c6725d2422c02e82e4ccc9e25d244b159f37` · SHA-256 `479bff0d8c918d9beb8da09972392219012bd8443589d2898eea11c69b2000eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NatAbsEqIffMulSelfEq.Variant0b1daf82ed6c9df348c1ce70de09be9a74a8dc3bb675ed8b9bc8d45f10082970","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b1daf82ed6c9df348c1ce70de09be9a74a8dc3bb675ed8b9bc8d45f10082970","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatAbsEqIffMulSelfEq.Variant0b1daf82ed6c9df348c1ce70de09be9a74a8dc3bb675ed8b9bc8d45f10082970","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"0b1daf82ed6c9df348c1ce70de09be9a74a8dc3bb675ed8b9bc8d45f10082970","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Order/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Order.Ring.Abs

/-!
# Further lemmas about the integers

The distinction between this file and `Data.Int.Order.Basic` is not particularly clear.
They are separated by now to minimize the porting requirements for tactics during the transition to
mathlib4. Please feel free to reorganize these two files.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NatAbsEqIffMulSelfEq.Variant0b1daf82ed6c9df348c1ce70de09be9a74a8dc3bb675ed8b9bc8d45f10082970

open Function Nat

namespace Int

/-! ### nat abs -/

theorem natAbs_eq_iff_mul_self_eq {a b : ℤ} : a.natAbs = b.natAbs ↔ a * a = b * b := by
  rw [← abs_eq_iff_mul_self_eq, abs_eq_natAbs, abs_eq_natAbs]
  exact Int.natCast_inj.symm

theorem natAbs_lt_iff_mul_self_lt {a b : ℤ} : a.natAbs < b.natAbs ↔ a * a < b * b := by
  rw [← abs_lt_iff_mul_self_lt, abs_eq_natAbs, abs_eq_natAbs]
  exact Int.ofNat_lt.symm

theorem natAbs_le_iff_mul_self_le {a b : ℤ} : a.natAbs ≤ b.natAbs ↔ a * a ≤ b * b := by
  rw [← abs_le_iff_mul_self_le, abs_eq_natAbs, abs_eq_natAbs]
  exact Int.ofNat_le.symm

end Int
```
