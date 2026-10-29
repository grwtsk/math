-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AbsoluteValueMapUnitsInt.Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AbsoluteValueMapUnitsInt.Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/AbsoluteValue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.GroupWithZero.Action.Units
import Mathlib.Algebra.Module.Basic
import Mathlib.Algebra.Order.AbsoluteValue.Basic
import Mathlib.Algebra.Ring.Int.Units
import Mathlib.Data.Int.Cast.Lemmas

/-!
# Absolute values and the integers

This file contains some results on absolute values applied to integers.

## Main results

* `AbsoluteValue.map_units_int`: an absolute value sends all units of `ℤ` to `1`
* `Int.natAbsHom`: `Int.natAbs` bundled as a `MonoidWithZeroHom`
-/



namespace GRWTSK.Algebra.UniversalAlgebra.AbsoluteValueMapUnitsInt.Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc

variable {R S : Type*} [Ring R] [CommRing S] [LinearOrder S] [IsStrictOrderedRing S]

@[simp]
theorem AbsoluteValue.map_units_int (abv : AbsoluteValue ℤ S) (x : ℤˣ) : abv x = 1 := by
  rcases Int.units_eq_one_or x with (rfl | rfl) <;> simp

@[simp]
theorem AbsoluteValue.map_units_intCast [Nontrivial R] (abv : AbsoluteValue R S) (x : ℤˣ) :
    abv ((x : ℤ) : R) = 1 := by rcases Int.units_eq_one_or x with (rfl | rfl) <;> simp

@[simp]
theorem AbsoluteValue.map_units_int_smul (abv : AbsoluteValue R S) (x : ℤˣ) (y : R) :
    abv (x • y) = abv y := by rcases Int.units_eq_one_or x with (rfl | rfl) <;> simp

/-- `Int.natAbs` as a bundled monoid with zero hom. -/
@[simps]
def Int.natAbsHom : ℤ →*₀ ℕ where
  toFun := Int.natAbs
  map_mul' := Int.natAbs_mul
  map_one' := Int.natAbs_one
  map_zero' := Int.natAbs_zero
