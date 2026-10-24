# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ENatENNReal.Variant33787b445f594098636361f141f871f204f477a12e9484e449896bd06028ef17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29a60b6a1553019b77552daf3eb494634399839d` · SHA-256 `b0f9cd8e9750d076ce42d8c822ff9013123459b473a466b50b369aa3fc6b153d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MapCoeNnreal.Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MapCoeNnreal.Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557","mathematical_subject":"Algebra.OrderTheory","original_sha256":"aa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Real/ENatENNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Basic.ENNReal.Basic
public import Mathlib.Data.ENat.Monoid
public import Mathlib.Order.Hom.WithTopBot

/-!
# Coercion from `ℕ∞` to `ℝ≥0∞`

In this file we define a coercion from `ℕ∞` to `ℝ≥0∞` and prove some basic lemmas about this map.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MapCoeNnreal.Variantaa56bfe41d958915c8e8e6b85f6c4fafd2782c07d6ef80a8d6e862298b796557

@[expose] public section

assert_not_exists Finset

open NNReal ENNReal

noncomputable section

namespace ENat

variable {m n : ℕ∞}

/-- Coercion from `ℕ∞` to `ℝ≥0∞`. -/
@[coe] def toENNReal : ℕ∞ → ℝ≥0∞ := ENat.map Nat.cast

instance hasCoeENNReal : CoeTC ℕ∞ ℝ≥0∞ := ⟨toENNReal⟩

@[simp]
theorem map_coe_nnreal : ENat.map ((↑) : ℕ → ℝ≥0) = ((↑) : ℕ∞ → ℝ≥0∞) :=
  rfl

/-- Coercion `ℕ∞ → ℝ≥0∞` as an `OrderEmbedding`. -/
@[simps! -fullyApplied]
def toENNRealOrderEmbedding : ℕ∞ ↪o ℝ≥0∞ :=
  Nat.castOrderEmbedding.withTopMap

/-- Coercion `ℕ∞ → ℝ≥0∞` as a ring homomorphism. -/
@[simps! -fullyApplied]
def toENNRealRingHom : ℕ∞ →+* ℝ≥0∞ :=
  .ENatMap (Nat.castRingHom ℝ≥0) Nat.cast_injective

@[simp, norm_cast]
theorem toENNReal_top : ((⊤ : ℕ∞) : ℝ≥0∞) = ⊤ :=
  rfl

@[simp, norm_cast]
theorem toENNReal_coe (n : ℕ) : ((n : ℕ∞) : ℝ≥0∞) = n :=
  rfl

@[simp, norm_cast]
theorem toENNReal_ofNat (n : ℕ) [n.AtLeastTwo] : ((ofNat(n) : ℕ∞) : ℝ≥0∞) = ofNat(n) :=
  rfl

@[simp, norm_cast]
theorem toENNReal_inj : (m : ℝ≥0∞) = (n : ℝ≥0∞) ↔ m = n :=
  toENNRealOrderEmbedding.eq_iff_eq

@[simp, norm_cast] lemma toENNReal_eq_top : (n : ℝ≥0∞) = ∞ ↔ n = ⊤ := by simp [← toENNReal_inj]
@[norm_cast] lemma toENNReal_ne_top : (n : ℝ≥0∞) ≠ ∞ ↔ n ≠ ⊤ := by simp

@[simp, norm_cast, gcongr]
theorem toENNReal_le : (m : ℝ≥0∞) ≤ n ↔ m ≤ n :=
  toENNRealOrderEmbedding.le_iff_le

@[simp, norm_cast, gcongr]
theorem toENNReal_lt : (m : ℝ≥0∞) < n ↔ m < n :=
  toENNRealOrderEmbedding.lt_iff_lt

@[simp, norm_cast]
lemma toENNReal_lt_top : (n : ℝ≥0∞) < ∞ ↔ n < ⊤ := by simp [← toENNReal_lt]

@[gcongr, mono]
theorem toENNReal_mono : Monotone ((↑) : ℕ∞ → ℝ≥0∞) :=
  toENNRealOrderEmbedding.monotone

@[gcongr, mono]
theorem toENNReal_strictMono : StrictMono ((↑) : ℕ∞ → ℝ≥0∞) :=
  toENNRealOrderEmbedding.strictMono

@[simp, norm_cast]
theorem toENNReal_zero : ((0 : ℕ∞) : ℝ≥0∞) = 0 :=
  map_zero toENNRealRingHom

@[simp] lemma toENNReal_eq_zero : toENNReal n = 0 ↔ n = 0 := by rw [← toENNReal_zero, toENNReal_inj]

@[simp, norm_cast]
theorem toENNReal_add (m n : ℕ∞) : ↑(m + n) = (m + n : ℝ≥0∞) :=
  map_add toENNRealRingHom m n

@[simp, norm_cast]
theorem toENNReal_one : ((1 : ℕ∞) : ℝ≥0∞) = 1 :=
  map_one toENNRealRingHom

@[simp, norm_cast]
theorem toENNReal_mul (m n : ℕ∞) : ↑(m * n) = (m * n : ℝ≥0∞) :=
  map_mul toENNRealRingHom m n

@[simp, norm_cast]
theorem toENNReal_pow (x : ℕ∞) (n : ℕ) : (x ^ n : ℕ∞) = (x : ℝ≥0∞) ^ n :=
  map_pow toENNRealRingHom x n

@[simp, norm_cast]
theorem toENNReal_min (m n : ℕ∞) : ↑(min m n) = (min m n : ℝ≥0∞) :=
  toENNReal_mono.map_min

@[simp, norm_cast]
theorem toENNReal_max (m n : ℕ∞) : ↑(max m n) = (max m n : ℝ≥0∞) :=
  toENNReal_mono.map_max

@[simp, norm_cast]
theorem toENNReal_sub (m n : ℕ∞) : ↑(m - n) = (m - n : ℝ≥0∞) :=
  WithTop.map_sub Nat.cast_tsub Nat.cast_zero m n

end ENat
```
