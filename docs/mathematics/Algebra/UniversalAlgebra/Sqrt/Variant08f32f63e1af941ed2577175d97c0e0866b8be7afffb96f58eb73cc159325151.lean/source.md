# Complete source: GRWTSK.Algebra.UniversalAlgebra.Sqrt.Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7f03a7719dce82f4144eef42eb4f9f4b9c40e71` · SHA-256 `545cb9fe53adad5f3d66518a7f68cbf57fdd9cb469c98e5de191a791edf4c5b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Sqrt.Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Sqrt.Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Sqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Unbundled.Rat
import Mathlib.Data.Rat.Lemmas
import Mathlib.Data.Int.Sqrt

/-!
# Square root on rational numbers

This file defines the square root function on rational numbers `Rat.sqrt`
and proves several theorems about it.

-/



namespace GRWTSK.Algebra.UniversalAlgebra.Sqrt.Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1

namespace Rat

/-- Square root function on rational numbers, defined by taking the (integer) square root of the
numerator and the square root (on natural numbers) of the denominator. -/
@[pp_nodot]
def sqrt (q : ℚ) : ℚ := mkRat (Int.sqrt q.num) (Nat.sqrt q.den)

theorem sqrt_eq (q : ℚ) : Rat.sqrt (q * q) = |q| := by
  rw [sqrt, mul_self_num, mul_self_den, Int.sqrt_eq, Nat.sqrt_eq, abs_def, divInt_ofNat]

theorem exists_mul_self (x : ℚ) : (∃ q, q * q = x) ↔ Rat.sqrt x * Rat.sqrt x = x :=
  ⟨fun ⟨n, hn⟩ => by rw [← hn, sqrt_eq, abs_mul_abs_self], fun h => ⟨Rat.sqrt x, h⟩⟩

lemma sqrt_nonneg (q : ℚ) : 0 ≤ Rat.sqrt q := mkRat_nonneg (Int.sqrt_nonneg _) _

/-- `IsSquare` can be decided on `ℚ` by checking against the square root. -/
instance : DecidablePred (IsSquare : ℚ → Prop) :=
  fun m => decidable_of_iff' (sqrt m * sqrt m = m) <| by
    simp_rw [← exists_mul_self m, IsSquare, eq_comm]

@[simp, norm_cast]
theorem sqrt_intCast (z : ℤ) : Rat.sqrt (z : ℚ) = Int.sqrt z := by
  simp only [sqrt, num_intCast, den_intCast, Nat.sqrt_one, mkRat_one]

@[simp, norm_cast]
theorem sqrt_natCast (n : ℕ) : Rat.sqrt (n : ℚ) = Nat.sqrt n := by
  rw [← Int.cast_natCast, sqrt_intCast, Int.sqrt_natCast, Int.cast_natCast]

@[simp]
theorem sqrt_ofNat (n : ℕ) : Rat.sqrt (ofNat(n) : ℚ) = Nat.sqrt (OfNat.ofNat n) :=
  sqrt_natCast _

end Rat
```
