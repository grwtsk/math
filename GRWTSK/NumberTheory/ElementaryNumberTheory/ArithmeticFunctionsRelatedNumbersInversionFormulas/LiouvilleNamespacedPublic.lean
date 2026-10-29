-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Liouville.Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Liouville.Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/ArithmeticFunction/Liouville.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
# The Liouville Function

This file defines the Liouville function `λ(n)`.

## Main Definitions

* `ArithmeticFunction.liouville` is the Liouville function `λ(n)` defined to be `1` if `n` has an
  even number of prime factors (counting multiplicity) and `-1` otherwise.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Liouville.Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c

@[expose] public section

namespace ArithmeticFunction

/-- The Liouville function `λ(n)` defined to be `1` if `n` has an even number of prime factors
(counting multiplicity) and `-1` otherwise. -/
def liouville : ArithmeticFunction ℤ where
  toFun n := if n = 0 then 0 else (-1) ^ cardFactors n
  map_zero' := by simp

theorem liouville_apply {n : ℕ} (h : n ≠ 0) : liouville n = (-1) ^ cardFactors n :=
  ite_eq_right h

theorem liouville_ne_zero {n : ℕ} (h : n ≠ 0) : liouville n ≠ 0 := by
  simp [liouville_apply h]

theorem liouville_apply_one : liouville 1 = 1 := by
  simp [liouville_apply]

theorem liouville_apply_mul (m n : ℕ) : liouville (m * n) = liouville m * liouville n := by
  by_cases hm : m = 0
  · simp [hm]
  by_cases hn : n = 0
  · simp [hn]
  simp [liouville_apply, cardFactors_mul, hm, hn, pow_add]

theorem isMultiplicative_liouville : IsMultiplicative liouville :=
  ⟨liouville_apply_one, fun {m n} _ ↦ liouville_apply_mul m n⟩

end ArithmeticFunction
