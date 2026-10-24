# Complete source: GRWTSK.Algebra.Field.Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb14e51fb90676c914675402e5ea1eefdef2b771` · SHA-256 `d9d148f95ea580a8056c5134830ad10983eeabef08967eed9b62a6948b906f7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ModEq.Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ModEq.Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"da05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/EuclideanDomain/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Louis Carlin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Louis Carlin, Mario Carneiro
-/
import Mathlib.Algebra.EuclideanDomain.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Instances for Euclidean domains
* `Field.toEuclideanDomain`: shows that any field is a Euclidean domain.
-/


namespace GRWTSK.Algebra.ModEq.Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105

namespace Field

variable {K : Type*} [Field K]

-- see Note [lower instance priority]
instance (priority := 100) toEuclideanDomain : EuclideanDomain K :=
{ toCommRing := toCommRing
  quotient := (· / ·), remainder := fun a b => a - a * b / b, quotient_zero := div_zero,
  quotient_mul_add_remainder_eq := fun a b => by
    by_cases h : b = 0 <;> simp [h, mul_div_cancel₀]
  r := fun a b => a = 0 ∧ b ≠ 0,
  r_wellFounded :=
    WellFounded.intro fun _ =>
      (Acc.intro _) fun _ ⟨hb, _⟩ => (Acc.intro _) fun _ ⟨_, hnb⟩ => False.elim <| hnb hb,
  remainder_lt := fun a b hnb => by simp [hnb],
  mul_left_not_lt := fun _ _ hnb ⟨hab, hna⟩ => Or.casesOn (mul_eq_zero.1 hab) hna hnb }

@[simp]
protected theorem mod_eq (a b : K) : a % b = a - a * b / b := rfl

@[simp]
protected theorem gcd_eq [DecidableEq K] (a b : K) :
    EuclideanDomain.gcd a b = if a = 0 then b else a := by
  unfold EuclideanDomain.gcd
  split_ifs <;> simp [*, Field.mod_eq]

protected theorem gcd_zero_eq [DecidableEq K] (b : K) :
    EuclideanDomain.gcd 0 b = b := by
  rw [Field.gcd_eq, if_pos rfl]

protected theorem gcd_eq_of_ne [DecidableEq K] {a : K} (ha : a ≠ 0) (b : K) :
    EuclideanDomain.gcd a b = a := by
  rw [Field.gcd_eq, if_neg ha]

end Field
```
