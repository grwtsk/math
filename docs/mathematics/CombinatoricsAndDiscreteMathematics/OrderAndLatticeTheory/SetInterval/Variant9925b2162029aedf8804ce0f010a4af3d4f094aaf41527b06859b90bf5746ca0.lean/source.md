# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetInterval.Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `018825e1bb23a0605ec35fcf2a131d9adf8c1760` · SHA-256 `2d5f4fa4de0b85ad64c8501fdb276f2797b1c313499e7a69c0d1640049c14797`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RangeCastInt.Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RangeCastInt.Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac","mathematical_subject":"Algebra.OrderTheory","original_sha256":"e7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/SetInterval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Order.Ring.Int
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Order.Interval.Set.OrdConnected
import Mathlib.Order.Nat
import Mathlib.Order.UpperLower.Basic

/-!
# Images of intervals under `Nat.cast : ℕ → ℤ`

In this file we prove that the image of each `Set.Ixx` interval under `Nat.cast : ℕ → ℤ`
is the corresponding interval in `ℤ`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RangeCastInt.Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac

open Set

namespace Nat

@[simp]
theorem range_cast_int : range ((↑) : ℕ → ℤ) = Ici 0 :=
  Subset.antisymm (range_subset_iff.2 Int.ofNat_nonneg) CanLift.prf

theorem image_cast_int_Icc (a b : ℕ) : (↑) '' Icc a b = Icc (a : ℤ) b :=
  (castOrderEmbedding (α := ℤ)).image_Icc (by simp [ordConnected_Ici]) a b

theorem image_cast_int_Ico (a b : ℕ) : (↑) '' Ico a b = Ico (a : ℤ) b :=
  (castOrderEmbedding (α := ℤ)).image_Ico (by simp [ordConnected_Ici]) a b

theorem image_cast_int_Ioc (a b : ℕ) : (↑) '' Ioc a b = Ioc (a : ℤ) b :=
  (castOrderEmbedding (α := ℤ)).image_Ioc (by simp [ordConnected_Ici]) a b

theorem image_cast_int_Ioo (a b : ℕ) : (↑) '' Ioo a b = Ioo (a : ℤ) b :=
  (castOrderEmbedding (α := ℤ)).image_Ioo (by simp [ordConnected_Ici]) a b

theorem image_cast_int_Iic (a : ℕ) : (↑) '' Iic a = Icc (0 : ℤ) a := by
  rw [← Icc_bot, image_cast_int_Icc]; rfl

theorem image_cast_int_Iio (a : ℕ) : (↑) '' Iio a = Ico (0 : ℤ) a := by
  rw [← Ico_bot, image_cast_int_Ico]; rfl

theorem image_cast_int_Ici (a : ℕ) : (↑) '' Ici a = Ici (a : ℤ) :=
  (castOrderEmbedding (α := ℤ)).image_Ici (by simp [isUpperSet_Ici]) a

theorem image_cast_int_Ioi (a : ℕ) : (↑) '' Ioi a = Ioi (a : ℤ) :=
  (castOrderEmbedding (α := ℤ)).image_Ioi (by simp [isUpperSet_Ici]) a

end Nat
```
