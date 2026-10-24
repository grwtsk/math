# Complete source: GRWTSK.Algebra.GroupTheory.Defs.Variante0e482e94017bf6a0e33583253189a4c3bd4a8b737db6c1404c98fd7c7ddcf2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86b42637bfc9858bb789ae2487b72b6f105c4cb6` · SHA-256 `22ff5faaf8d71dcdea255c466f4c4eb180b4a18591a3b530bb347df7176ed6a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Monoid.Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Monoid.Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193","mathematical_subject":"Algebra.Groups","original_sha256":"14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Nat/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Monoid

/-!
# The natural numbers form a monoid

This file contains the additive and multiplicative monoid instances on the natural numbers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.GroupTheory.Monoid.Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193

public section

assert_not_exists MonoidWithZero DenselyOrdered

namespace Nat

/-! ### Instances -/

instance instMulOneClass : MulOneClass ℕ where
  one_mul := Nat.one_mul
  mul_one := Nat.mul_one

instance instAddCancelCommMonoid : AddCancelCommMonoid ℕ where
  add := Nat.add
  add_assoc := Nat.add_assoc
  zero := Nat.zero
  zero_add := Nat.zero_add
  add_zero := Nat.add_zero
  add_comm := Nat.add_comm
  nsmul m n := m * n
  nsmul_zero := Nat.zero_mul
  nsmul_succ := succ_mul
  add_left_cancel _ _ _ := Nat.add_left_cancel

instance instCommMonoid : CommMonoid ℕ where
  mul := Nat.mul
  mul_assoc := Nat.mul_assoc
  one := Nat.succ Nat.zero
  one_mul := Nat.one_mul
  mul_one := Nat.mul_one
  mul_comm := Nat.mul_comm
  npow m n := n ^ m
  npow_zero := Nat.pow_zero
  npow_succ _ _ := rfl

-- These instances can also be found from the `LinearOrderedCommMonoidWithZero ℕ` instance by
-- typeclass search, but it is better practice to not rely on algebraic order theory to prove
-- purely algebraic results on concrete types. Eg the results can be made available earlier.

instance instIsMulTorsionFree : IsMulTorsionFree ℕ where
  pow_left_injective _ h _ _ := (Nat.pow_left_inj h).mp

instance instIsAddTorsionFree : IsAddTorsionFree ℕ where
  nsmul_right_injective _n hn _x _y hxy := Nat.mul_left_cancel (Nat.pos_of_ne_zero hn) hxy

/-!
### Extra instances to short-circuit type class resolution

These also prevent non-computable instances being used to construct these instances non-computably.
-/

set_option linter.style.whitespace false -- manual alignment is not recognised

instance instAddCommMonoid    : AddCommMonoid ℕ    := by infer_instance
instance instAddMonoid        : AddMonoid ℕ        := by infer_instance
instance instMonoid           : Monoid ℕ           := by infer_instance
instance instCommSemigroup    : CommSemigroup ℕ    := by infer_instance
instance instSemigroup        : Semigroup ℕ        := by infer_instance
instance instAddCommSemigroup : AddCommSemigroup ℕ := by infer_instance
instance instAddSemigroup     : AddSemigroup ℕ     := by infer_instance
instance instOne              : One ℕ              := inferInstance

set_option linter.style.whitespace true

/-! ### Miscellaneous lemmas -/

-- We set the simp priority slightly lower than default; later more general lemmas will replace it.
@[simp 900] protected lemma nsmul_eq_mul (m n : ℕ) : m • n = m * n := rfl

end Nat
```
