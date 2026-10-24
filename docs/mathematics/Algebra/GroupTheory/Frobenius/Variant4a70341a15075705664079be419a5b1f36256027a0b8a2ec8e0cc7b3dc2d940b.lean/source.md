# Complete source: GRWTSK.Algebra.GroupTheory.Frobenius.Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb828e90c7076f21c26441116d3d5c3c839eeb6` · SHA-256 `a179e857cea9e9f20c6543351b40d01924f0db005e366e372b749460d59593ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FrobeniusDef.Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FrobeniusDef.Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08","mathematical_subject":"Algebra.Groups","original_sha256":"8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/CharP/Frobenius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jakob Scholbach. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob Scholbach
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.CharP.Lemmas

/-!
### The Frobenius endomorphism

## Tags

Frobenius endomorphism

## Implementation notes

The definitions of `frobenius` and `iterateFrobenius` ring homomorphisms are in
`Mathlib/Algebra/CharP/Lemmas.lean` as they are needed for some results that in turn are used in
files forbidding to import algebra-related definitions (see `Mathlib/Algebra/CharP/Two.lean`).
-/


namespace GRWTSK.Algebra.GroupTheory.FrobeniusDef.Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08

section CommSemiring

variable {R : Type*} [CommSemiring R] {S : Type*} [CommSemiring S]
variable (f : R →* S) (g : R →+* S) (p m n : ℕ) [ExpChar R p] [ExpChar S p] (x y : R)

lemma frobenius_def : frobenius R p x = x ^ p := rfl

lemma iterateFrobenius_def : iterateFrobenius R p n x = x ^ p ^ n := rfl

lemma iterate_frobenius : (frobenius R p)^[n] x = x ^ p ^ n := congr_fun (pow_iterate p n) x

variable (R)

lemma iterateFrobenius_eq_pow : iterateFrobenius R p n = frobenius R p ^ n := by
  ext; simp [iterateFrobenius_def, iterate_frobenius]

lemma coe_iterateFrobenius : iterateFrobenius R p n = (frobenius R p)^[n] :=
  (pow_iterate p n).symm

lemma iterateFrobenius_one_apply : iterateFrobenius R p 1 x = x ^ p := by
  rw [iterateFrobenius_def, pow_one]

@[simp]
lemma iterateFrobenius_one : iterateFrobenius R p 1 = frobenius R p :=
  RingHom.ext (iterateFrobenius_one_apply R p)

lemma iterateFrobenius_zero_apply : iterateFrobenius R p 0 x = x := by
  rw [iterateFrobenius_def, pow_zero, pow_one]

@[simp]
lemma iterateFrobenius_zero : iterateFrobenius R p 0 = RingHom.id R :=
  RingHom.ext (iterateFrobenius_zero_apply R p)

lemma iterateFrobenius_add_apply :
    iterateFrobenius R p (m + n) x = iterateFrobenius R p m (iterateFrobenius R p n x) := by
  simp_rw [iterateFrobenius_def, add_comm m n, pow_add, pow_mul]

lemma iterateFrobenius_add :
    iterateFrobenius R p (m + n) = (iterateFrobenius R p m).comp (iterateFrobenius R p n) :=
  RingHom.ext (iterateFrobenius_add_apply R p m n)

lemma iterateFrobenius_mul_apply :
    iterateFrobenius R p (m * n) x = (iterateFrobenius R p m)^[n] x := by
  simp_rw [coe_iterateFrobenius, Function.iterate_mul]

lemma coe_iterateFrobenius_mul : iterateFrobenius R p (m * n) = (iterateFrobenius R p m)^[n] :=
  funext (iterateFrobenius_mul_apply R p m n)

variable {R}

lemma frobenius_mul : frobenius R p (x * y) = frobenius R p x * frobenius R p y :=
  map_mul (frobenius R p) x y

lemma frobenius_one : frobenius R p 1 = 1 := one_pow _

lemma MonoidHom.map_frobenius : f (frobenius R p x) = frobenius S p (f x) := map_pow f x p
lemma RingHom.map_frobenius : g (frobenius R p x) = frobenius S p (g x) := map_pow g x p

lemma MonoidHom.map_iterate_frobenius (n : ℕ) :
    f ((frobenius R p)^[n] x) = (frobenius S p)^[n] (f x) :=
  Function.Semiconj.iterate_right (f.map_frobenius p) n x

lemma MonoidHom.map_iterateFrobenius (n : ℕ) :
    f (iterateFrobenius R p n x) = iterateFrobenius S p n (f x) := by
  simp [iterateFrobenius_def]

lemma RingHom.map_iterate_frobenius (n : ℕ) :
    g ((frobenius R p)^[n] x) = (frobenius S p)^[n] (g x) :=
  g.toMonoidHom.map_iterate_frobenius p x n

lemma RingHom.map_iterateFrobenius (n : ℕ) :
    g (iterateFrobenius R p n x) = iterateFrobenius S p n (g x) :=
  g.toMonoidHom.map_iterateFrobenius p x n

lemma MonoidHom.iterate_map_frobenius (f : R →* R) (p : ℕ) [ExpChar R p] (n : ℕ) :
    f^[n] (frobenius R p x) = frobenius R p (f^[n] x) :=
  iterate_map_pow f _ _ _

lemma RingHom.iterate_map_frobenius (f : R →+* R) (p : ℕ) [ExpChar R p] (n : ℕ) :
    f^[n] (frobenius R p x) = frobenius R p (f^[n] x) := iterate_map_pow f _ _ _

/-- The Frobenius endomorphism commutes with any ring homomorphism. -/
lemma RingHom.frobenius_comm : g.comp (frobenius R p) = (frobenius S p).comp g :=
  ext <| map_frobenius g p

/-- The iterated Frobenius endomorphism commutes with any ring homomorphism. -/
lemma RingHom.iterateFrobenius_comm (n : ℕ) :
    g.comp (iterateFrobenius R p n) = (iterateFrobenius S p n).comp g :=
  ext fun x ↦ map_iterateFrobenius g p x n

variable (R S)

/-- The frobenius map of an algebra as a frobenius-semilinear map. -/
nonrec def LinearMap.frobenius [Algebra R S] : S →ₛₗ[frobenius R p] S where
  __ := frobenius S p
  map_smul' r s := show frobenius S p _ = _ by
    simp_rw [Algebra.smul_def, map_mul, ← (algebraMap R S).map_frobenius]; rfl

/-- The iterated frobenius map of an algebra as a iterated-frobenius-semilinear map. -/
nonrec def LinearMap.iterateFrobenius [Algebra R S] : S →ₛₗ[iterateFrobenius R p n] S where
  __ := iterateFrobenius S p n
  map_smul' f s := show iterateFrobenius S p n _ = _ by
    simp_rw [iterateFrobenius_def, Algebra.smul_def, mul_pow, ← map_pow]; rfl

theorem LinearMap.frobenius_def [Algebra R S] (x : S) : frobenius R S p x = x ^ p := rfl

theorem LinearMap.iterateFrobenius_def [Algebra R S] (n : ℕ) (x : S) :
    iterateFrobenius R S p n x = x ^ p ^ n := rfl

theorem frobenius_zero : frobenius R p 0 = 0 :=
  (frobenius R p).map_zero

theorem frobenius_add : frobenius R p (x + y) = frobenius R p x + frobenius R p y :=
  (frobenius R p).map_add x y

theorem frobenius_natCast (n : ℕ) : frobenius R p n = n :=
  map_natCast (frobenius R p) n

end CommSemiring

section CommRing

variable {R : Type*} [CommRing R] (p : ℕ) [ExpChar R p] (x y : R)

lemma frobenius_neg : frobenius R p (-x) = -frobenius R p x := map_neg ..

lemma frobenius_sub : frobenius R p (x - y) = frobenius R p x - frobenius R p y := map_sub ..

end CommRing
```
