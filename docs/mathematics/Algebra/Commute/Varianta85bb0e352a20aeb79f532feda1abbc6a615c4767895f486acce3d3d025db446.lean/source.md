# Complete source: GRWTSK.Algebra.Commute.Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f81cd57cbefe54cd74f4eaaf89f1328391ccdaa` · SHA-256 `128eb492cb1d3424521c56c17790e875185b1f8af69ea2d9d8dbe0b8bce78857`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/Commute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.GroupWithZero.Commute
import Mathlib.Algebra.Ring.Commute

/-!
# Cast of natural numbers: lemmas about `Commute`

-/


namespace GRWTSK.Algebra.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab

variable {α : Type*}

namespace Nat

section Commute

variable [NonAssocSemiring α]

theorem cast_commute (n : ℕ) (x : α) : Commute (n : α) x := by
  induction n with
  | zero => rw [Nat.cast_zero]; exact Commute.zero_left x
  | succ n ihn => rw [Nat.cast_succ]; exact ihn.add_left (Commute.one_left x)

theorem _root_.GRWTSK.Algebra.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.Commute.ofNat_left (n : ℕ) [n.AtLeastTwo] (x : α) : Commute (OfNat.ofNat n) x :=
  n.cast_commute x

theorem cast_comm (n : ℕ) (x : α) : (n : α) * x = x * n :=
  (cast_commute n x).eq

theorem commute_cast (x : α) (n : ℕ) : Commute x n :=
  (n.cast_commute x).symm

theorem _root_.GRWTSK.Algebra.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.Commute.ofNat_right (x : α) (n : ℕ) [n.AtLeastTwo] : Commute x (OfNat.ofNat n) :=
  n.commute_cast x

end Commute
end Nat

namespace SemiconjBy
variable [Semiring α] {a x y : α}

@[simp]
lemma natCast_mul_right (h : SemiconjBy a x y) (n : ℕ) : SemiconjBy a (n * x) (n * y) :=
  SemiconjBy.mul_right (Nat.commute_cast _ _) h

@[simp]
lemma natCast_mul_left (h : SemiconjBy a x y) (n : ℕ) : SemiconjBy (n * a) x y :=
  SemiconjBy.mul_left (Nat.cast_commute _ _) h

lemma natCast_mul_natCast_mul (h : SemiconjBy a x y) (m n : ℕ) :
    SemiconjBy (m * a) (n * x) (n * y) := by
  simp [h]

end SemiconjBy

namespace Commute
variable [Semiring α] {a b : α}

@[simp] lemma natCast_mul_right (h : Commute a b) (n : ℕ) : Commute a (n * b) :=
  SemiconjBy.natCast_mul_right h n

@[simp] lemma natCast_mul_left (h : Commute a b) (n : ℕ) : Commute (n * a) b :=
  SemiconjBy.natCast_mul_left h n

lemma natCast_mul_natCast_mul (h : Commute a b) (m n : ℕ) : Commute (m * a) (n * b) := by
  simp [h]

variable (a) (m n : ℕ)

lemma self_natCast_mul : Commute a (n * a) := (Commute.refl a).natCast_mul_right n

lemma natCast_mul_self : Commute (n * a) a := (Commute.refl a).natCast_mul_left n

lemma self_natCast_mul_natCast_mul : Commute (m * a) (n * a) :=
  (Commute.refl a).natCast_mul_natCast_mul m n

end Commute
```
