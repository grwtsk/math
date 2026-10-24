# Complete source: GRWTSK.Algebra.Rat.Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc81cfca212e30f3bbeef77d0fbf129a7dffb244` · SHA-256 `a9207db5051fcb4a21e36883bf243b8e225a8092df36f112f4edc3f91cb5a4e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MkRatEqDiv.Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MkRatEqDiv.Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Ring.Basic
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Data.Rat.Defs
import Mathlib.Algebra.Group.Nat.Defs

/-!
# The rational numbers are a commutative ring

This file contains the commutative ring instance on the rational numbers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.MkRatEqDiv.Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239

assert_not_exists OrderedCommMonoid Field PNat Nat.gcd_greatest IsDomain.toCancelMonoidWithZero

namespace Rat

/-! ### Instances -/

instance commRing : CommRing ℚ where
  __ := addCommGroup
  __ := commMonoid
  zero_mul := Rat.zero_mul
  mul_zero := Rat.mul_zero
  left_distrib := Rat.mul_add
  right_distrib := Rat.add_mul
  intCast := fun n => n
  natCast n := Int.cast n
  natCast_zero := rfl
  natCast_succ n := by
    simp only [intCast_eq_divInt, divInt_add_divInt _ _ Int.one_ne_zero Int.one_ne_zero,
      ← divInt_one_one, Int.natCast_add, Int.natCast_one, mul_one]

instance commGroupWithZero : CommGroupWithZero ℚ :=
  { exists_pair_ne := ⟨0, 1, Rat.zero_ne_one⟩
    inv_zero := by
      change Rat.inv 0 = 0
      rw [Rat.inv_def]
      rfl
    mul_inv_cancel := Rat.mul_inv_cancel
    mul_zero := mul_zero
    zero_mul := zero_mul }

instance isDomain : IsDomain ℚ := NoZeroDivisors.to_isDomain _
/-- The characteristic of `ℚ` is 0. -/
@[stacks 09FS "Second part."]
instance instCharZero : CharZero ℚ where cast_injective a b hab := by simpa using congr_arg num hab

/-!
### Extra instances to short-circuit type class resolution

These also prevent non-computable instances being used to construct these instances non-computably.
-/

instance commSemiring : CommSemiring ℚ := by infer_instance
instance semiring : Semiring ℚ := by infer_instance

/-! ### Miscellaneous lemmas -/

lemma mkRat_eq_div (n : ℤ) (d : ℕ) : mkRat n d = n / d := by
  simp only [mkRat_eq_divInt, divInt_eq_div, Int.cast_natCast]

lemma divInt_div_divInt_cancel_left {x : ℤ} (hx : x ≠ 0) (n d : ℤ) :
    n /. x / (d /. x) = n /. d := by
  rw [div_eq_mul_inv, inv_divInt', divInt_mul_divInt_cancel hx]

lemma divInt_div_divInt_cancel_right {x : ℤ} (hx : x ≠ 0) (n d : ℤ) :
    x /. n / (x /. d) = d /. n := by
  rw [div_eq_mul_inv, inv_divInt', mul_comm, divInt_mul_divInt_cancel hx]

lemma num_div_den (r : ℚ) : (r.num : ℚ) / (r.den : ℚ) = r := by
  rw [← Int.cast_natCast, ← divInt_eq_div, num_divInt_den]

@[simp] lemma divInt_pow (num : ℕ) (den : ℤ) (n : ℕ) : (num /. den) ^ n = num ^ n /. den ^ n := by
  simp [divInt_eq_div, div_pow, Int.natCast_pow]

@[simp] lemma mkRat_pow (num den : ℕ) (n : ℕ) : mkRat num den ^ n = mkRat (num ^ n) (den ^ n) := by
  rw [mkRat_eq_divInt, mkRat_eq_divInt, divInt_pow, Int.natCast_pow]

lemma natCast_eq_divInt (n : ℕ) : ↑n = n /. 1 := by rw [← Int.cast_natCast, intCast_eq_divInt]

@[simp] lemma mul_den_eq_num (q : ℚ) : q * q.den = q.num := by
  suffices (q.num /. ↑q.den) * (↑q.den /. 1) = q.num /. 1 by
    conv => pattern (occs := 1) q; (rw [← num_divInt_den q])
    simp only [intCast_eq_divInt, natCast_eq_divInt, num_divInt_den] at this ⊢; assumption
  have : (q.den : ℤ) ≠ 0 := mod_cast q.den_ne_zero
  rw [divInt_mul_divInt _ _ this Int.one_ne_zero, mul_comm (q.den : ℤ) 1, divInt_mul_right this]

@[simp] lemma den_mul_eq_num (q : ℚ) : q.den * q = q.num := by rw [mul_comm, mul_den_eq_num]

end Rat
```
