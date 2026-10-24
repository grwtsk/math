# Complete source: GRWTSK.Algebra.Reduced.Variante62df1681f9c32f5e98d4723e9fcab7d8d7fa7b950ca1e892011fb1fdd38144e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b8c251f195c5c67dc76e3923d51d5e5692e6e84` · SHA-256 `2ebd5b916ec70d919238d2eb093553562b02f3606a369be8a97376164402c7ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IterateFrobeniusInj.Variant8edefcaa84821f35c03f17ba71aee378bf6b6fc4e8f418c4b77e1d4e1583dec5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8edefcaa84821f35c03f17ba71aee378bf6b6fc4e8f418c4b77e1d4e1583dec5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IterateFrobeniusInj.Variant8edefcaa84821f35c03f17ba71aee378bf6b6fc4e8f418c4b77e1d4e1583dec5","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"8edefcaa84821f35c03f17ba71aee378bf6b6fc4e8f418c4b77e1d4e1583dec5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/CharP/Reduced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Joey van Langen, Casper Putz
-/
module

public import Mathlib.Algebra.CharP.Frobenius

/-!
# Results about characteristic p reduced rings
-/


namespace GRWTSK.Algebra.IterateFrobeniusInj.Variant8edefcaa84821f35c03f17ba71aee378bf6b6fc4e8f418c4b77e1d4e1583dec5

public section

section

variable (R : Type*) [CommRing R] [IsReduced R] (p n : ℕ) [ExpChar R p]

theorem iterateFrobenius_inj : Function.Injective (iterateFrobenius R p n) := fun x y H ↦ by
  rw [← sub_eq_zero] at H ⊢
  simp_rw [iterateFrobenius_def, ← sub_pow_expChar_pow] at H
  exact IsReduced.eq_zero _ ⟨_, H⟩

theorem frobenius_inj : Function.Injective (frobenius R p) :=
  iterateFrobenius_one (R := R) p ▸ iterateFrobenius_inj R p 1

end

/-- If `ringChar R = 2`, where `R` is a finite reduced commutative ring,
then every `a : R` is a square. -/
theorem isSquare_of_charTwo' {R : Type*} [Finite R] [CommRing R] [IsReduced R] [CharP R 2]
    (a : R) : IsSquare a := by
  cases nonempty_fintype R
  exact
    Exists.imp (fun b h => pow_two b ▸ Eq.symm h)
      (((Fintype.bijective_iff_injective_and_card _).mpr ⟨frobenius_inj R 2, rfl⟩).surjective a)

variable {R : Type*} [CommRing R] [IsReduced R]

@[simp]
theorem ExpChar.pow_prime_pow_mul_eq_one_iff (p k m : ℕ) [ExpChar R p] (x : R) :
    x ^ (p ^ k * m) = 1 ↔ x ^ m = 1 := by
  rw [pow_mul']
  convert! ← (iterateFrobenius_inj R p k).eq_iff
  apply map_one
```
