# Complete source: GRWTSK.Algebra.UniversalAlgebra.LinearOrderWithPosMulPosEqZero.Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3582815740a1d81e80573a0f5b229f9965ad317` · SHA-256 `2c83450f8cfb3b405b782dd3939fe6e86a44d4e1fd0f0306c3692cf837e1a644`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Foo.Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Foo.Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/LinearOrderWithPosMulPosEqZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Damiano Testa, Kevin Buzzard
-/
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.GroupWithZero.Canonical

/-!
An example of a `LinearOrderedCommMonoidWithZero` in which the product of two positive
elements vanishes.

This is the monoid with 3 elements `0, ε, 1` where `ε ^ 2 = 0` and everything else is forced.
The order is `0 < ε < 1`.  Since `ε ^ 2 = 0`, the product of strictly positive elements can vanish.

Relevant Zulip chat:
https://leanprover.zulipchat.com/#narrow/stream/116395-maths/topic/mul_pos
-/



namespace GRWTSK.Algebra.UniversalAlgebra.Foo.Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8

namespace Counterexample

/-- The three element monoid. -/
inductive Foo
  | zero
  | eps
  | one
  deriving DecidableEq

namespace Foo

instance inhabited : Inhabited Foo :=
  ⟨zero⟩

instance : Zero Foo :=
  ⟨zero⟩

instance : One Foo :=
  ⟨one⟩

local notation "ε" => eps

/-- The order on `Foo` is the one induced by the natural order on the image of `aux1`. -/
def aux1 : Foo → ℕ
  | 0 => 0
  | ε => 1
  | 1 => 2

/-- A tactic to prove facts by cases. -/
macro (name := boom) "boom" : tactic => `(tactic| (repeat' rintro ⟨⟩) <;> decide)

theorem aux1_inj : Function.Injective aux1 := by boom

instance linearOrder : LinearOrder Foo :=
  LinearOrder.lift' aux1 aux1_inj

/-- Multiplication on `Foo`: the only external input is that `ε ^ 2 = 0`. -/
def mul : Foo → Foo → Foo
  | 1, x => x
  | x, 1 => x
  | _, _ => 0

instance commMonoid : CommMonoid Foo where
  mul := mul
  one := 1
  one_mul := by boom
  mul_one := by boom
  mul_comm := by boom
  mul_assoc := by boom

instance : LinearOrderedCommMonoidWithZero Foo where
  __ := linearOrder
  __ := commMonoid
  zero := 0
  zero_mul := by boom
  mul_zero := by boom
  mul_le_mul_left := by rintro ⟨⟩ ⟨⟩ h ⟨⟩ <;> revert h <;> decide
  zero_le_one := by decide
  bot := 0
  bot_le := by boom

theorem not_mul_pos : ¬∀ {M : Type} [LinearOrderedCommMonoidWithZero M],
    ∀ a b : M, 0 < a → 0 < b → 0 < a * b := by
  intro h
  specialize h ε ε (by boom) (by boom)
  exact (lt_irrefl 0 (h.trans_le (by boom))).elim

example : 0 < ε ∧ ε * ε = 0 := by boom

end Foo

end Counterexample
```
