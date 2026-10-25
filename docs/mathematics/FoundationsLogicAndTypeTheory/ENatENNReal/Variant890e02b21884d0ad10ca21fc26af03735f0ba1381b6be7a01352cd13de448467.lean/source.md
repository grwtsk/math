# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ENatENNReal.Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35a644aef847680dc254bb4987c531fd82190214` · SHA-256 `30c2d6bf03a264c2bc6576b14c58f8c65c220f386f454d1410cee7c83cedb8c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MapCoeNnreal.Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MapCoeNnreal.Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Real/ENatENNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.ENat.Basic
import Mathlib.Data.Real.ENNReal


namespace GRWTSK.FoundationsLogicAndTypeTheory.MapCoeNnreal.Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f

#align_import data.real.enat_ennreal from "leanprover-community/mathlib"@"53b216bcc1146df1c4a0a86877890ea9f1f01589"

/-!
# Coercion from `ℕ∞` to `ℝ≥0∞`

In this file we define a coercion from `ℕ∞` to `ℝ≥0∞` and prove some basic lemmas about this map.
-/


open Classical NNReal ENNReal

noncomputable section

namespace ENat

variable {m n : ℕ∞}

/-- Coercion from `ℕ∞` to `ℝ≥0∞`. -/
@[coe] def toENNReal : ℕ∞ → ℝ≥0∞ := WithTop.map Nat.cast

instance hasCoeENNReal : CoeTC ℕ∞ ℝ≥0∞ := ⟨toENNReal⟩
#align enat.has_coe_ennreal ENat.hasCoeENNReal

@[simp]
theorem map_coe_nnreal : WithTop.map ((↑) : ℕ → ℝ≥0) = ((↑) : ℕ∞ → ℝ≥0∞) :=
  rfl
#align enat.map_coe_nnreal ENat.map_coe_nnreal

/-- Coercion `ℕ∞ → ℝ≥0∞` as an `OrderEmbedding`. -/
@[simps! (config := { fullyApplied := false })]
def toENNRealOrderEmbedding : ℕ∞ ↪o ℝ≥0∞ :=
  Nat.castOrderEmbedding.withTopMap
#align enat.to_ennreal_order_embedding ENat.toENNRealOrderEmbedding

/-- Coercion `ℕ∞ → ℝ≥0∞` as a ring homomorphism. -/
@[simps! (config := { fullyApplied := false })]
def toENNRealRingHom : ℕ∞ →+* ℝ≥0∞ :=
  .withTopMap (Nat.castRingHom ℝ≥0) Nat.cast_injective
#align enat.to_ennreal_ring_hom ENat.toENNRealRingHom

@[simp, norm_cast]
theorem toENNReal_top : ((⊤ : ℕ∞) : ℝ≥0∞) = ⊤ :=
  rfl
#align enat.coe_ennreal_top ENat.toENNReal_top

@[simp, norm_cast]
theorem toENNReal_coe (n : ℕ) : ((n : ℕ∞) : ℝ≥0∞) = n :=
  rfl
#align enat.coe_ennreal_coe ENat.toENNReal_coe

@[simp, norm_cast]
theorem toENNReal_ofNat (n : ℕ) [n.AtLeastTwo] : ((OfNat.ofNat n : ℕ∞) : ℝ≥0∞) = OfNat.ofNat n :=
  rfl

@[simp, norm_cast]
theorem toENNReal_le : (m : ℝ≥0∞) ≤ n ↔ m ≤ n :=
  toENNRealOrderEmbedding.le_iff_le
#align enat.coe_ennreal_le ENat.toENNReal_le

@[simp, norm_cast]
theorem toENNReal_lt : (m : ℝ≥0∞) < n ↔ m < n :=
  toENNRealOrderEmbedding.lt_iff_lt
#align enat.coe_ennreal_lt ENat.toENNReal_lt

@[mono]
theorem toENNReal_mono : Monotone ((↑) : ℕ∞ → ℝ≥0∞) :=
  toENNRealOrderEmbedding.monotone
#align enat.coe_ennreal_mono ENat.toENNReal_mono

@[mono]
theorem toENNReal_strictMono : StrictMono ((↑) : ℕ∞ → ℝ≥0∞) :=
  toENNRealOrderEmbedding.strictMono
#align enat.coe_ennreal_strict_mono ENat.toENNReal_strictMono

@[simp, norm_cast]
theorem toENNReal_zero : ((0 : ℕ∞) : ℝ≥0∞) = 0 :=
  map_zero toENNRealRingHom
#align enat.coe_ennreal_zero ENat.toENNReal_zero

@[simp]
theorem toENNReal_add (m n : ℕ∞) : ↑(m + n) = (m + n : ℝ≥0∞) :=
  map_add toENNRealRingHom m n
#align enat.coe_ennreal_add ENat.toENNReal_add

@[simp]
theorem toENNReal_one : ((1 : ℕ∞) : ℝ≥0∞) = 1 :=
  map_one toENNRealRingHom
#align enat.coe_ennreal_one ENat.toENNReal_one

#noalign enat.coe_ennreal_bit0
#noalign enat.coe_ennreal_bit1

@[simp]
theorem toENNReal_mul (m n : ℕ∞) : ↑(m * n) = (m * n : ℝ≥0∞) :=
  map_mul toENNRealRingHom m n
#align enat.coe_ennreal_mul ENat.toENNReal_mul

@[simp]
theorem toENNReal_min (m n : ℕ∞) : ↑(min m n) = (min m n : ℝ≥0∞) :=
  toENNReal_mono.map_min
#align enat.coe_ennreal_min ENat.toENNReal_min

@[simp]
theorem toENNReal_max (m n : ℕ∞) : ↑(max m n) = (max m n : ℝ≥0∞) :=
  toENNReal_mono.map_max
#align enat.coe_ennreal_max ENat.toENNReal_max

@[simp]
theorem toENNReal_sub (m n : ℕ∞) : ↑(m - n) = (m - n : ℝ≥0∞) :=
  WithTop.map_sub Nat.cast_tsub Nat.cast_zero m n
#align enat.coe_ennreal_sub ENat.toENNReal_sub

end ENat

```
