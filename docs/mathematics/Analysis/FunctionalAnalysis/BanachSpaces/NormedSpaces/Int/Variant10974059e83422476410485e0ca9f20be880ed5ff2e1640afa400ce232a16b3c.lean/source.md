# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Int.Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e7cdbb8d7f6bfab0139f62409d432580ddd7613` · SHA-256 `293563b1249a9efcff679c6e360727f495093dc3ccda366956038c5548d6171b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.NormCastReal.Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Johannes Hölzl, Yaël Dillies
-/

import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Topology.Instances.Int

/-! # ℤ as a normed group -/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114

open NNReal

variable {α : Type*}
namespace Int

instance instNormedAddCommGroup : NormedAddCommGroup ℤ where
  norm n := ‖(n : ℝ)‖
  dist_eq m n := by simp only [Int.dist_eq, norm, Int.cast_sub]

@[norm_cast]
theorem norm_cast_real (m : ℤ) : ‖(m : ℝ)‖ = ‖m‖ :=
  rfl

theorem norm_eq_abs (n : ℤ) : ‖n‖ = |(n : ℝ)| :=
  rfl

@[simp]
theorem norm_natCast (n : ℕ) : ‖(n : ℤ)‖ = n := by simp [Int.norm_eq_abs]

theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.NNReal.natCast_natAbs (n : ℤ) : (n.natAbs : ℝ≥0) = ‖n‖₊ :=
  NNReal.eq <|
    calc
      ((n.natAbs : ℝ≥0) : ℝ) = (n.natAbs : ℤ) := by simp only [Int.cast_natCast, NNReal.coe_natCast]
      _ = |(n : ℝ)| := by simp only [Int.natCast_natAbs, Int.cast_abs]
      _ = ‖n‖ := (norm_eq_abs n).symm

theorem abs_le_floor_nnreal_iff (z : ℤ) (c : ℝ≥0) : |z| ≤ ⌊c⌋₊ ↔ ‖z‖₊ ≤ c := by
  rw [Int.abs_eq_natAbs, Int.ofNat_le, Nat.le_floor_iff (zero_le c), NNReal.natCast_natAbs z]

end Int

-- Now that we've installed the norm on `ℤ`,
-- we can state some lemmas about `zsmul`.
section

variable [SeminormedCommGroup α]

@[to_additive norm_zsmul_le]
theorem norm_zpow_le_mul_norm (n : ℤ) (a : α) : ‖a ^ n‖ ≤ ‖n‖ * ‖a‖ := by
  rcases n.eq_nat_or_neg with ⟨n, rfl | rfl⟩ <;> simpa using norm_pow_le_mul_norm

@[to_additive nnnorm_zsmul_le]
theorem nnnorm_zpow_le_mul_norm (n : ℤ) (a : α) : ‖a ^ n‖₊ ≤ ‖n‖₊ * ‖a‖₊ := by
  simpa only [← NNReal.coe_le_coe, NNReal.coe_mul] using norm_zpow_le_mul_norm n a

end
```
