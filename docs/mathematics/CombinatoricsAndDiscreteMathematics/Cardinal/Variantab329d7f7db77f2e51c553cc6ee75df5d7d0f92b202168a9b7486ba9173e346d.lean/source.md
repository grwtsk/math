# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinal.Variantab329d7f7db77f2e51c553cc6ee75df5d7d0f92b202168a9b7486ba9173e346d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f05d9b7b759898929048e9c0888125680241fb67` · SHA-256 `0977787762832ff4d5e6fec5a0e68d925e9355aad1f4a0aa6f031599d2dd3fca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CardinalMkEqLiftOfFintype.Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CardinalMkEqLiftOfFintype.Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/MonoidAlgebra/Cardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.MonoidAlgebra.Defs
public import Mathlib.SetTheory.Cardinal.Finsupp

/-!
# Cardinality of monoid algebras

This file computes the cardinality of `R[M]` in terms of `#R` and `#M`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CardinalMkEqLiftOfFintype.Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d

public section

open Cardinal Fintype

universe u v
variable (R M : Type u) (M' : Type v) [Semiring R]

namespace MonoidAlgebra

@[to_additive (attr := simp)]
lemma cardinalMk_eq_lift_of_fintype [Fintype M'] : #R[M'] = lift.{v} #R ^ card M' := by
  simp [coeffEquiv.cardinal_eq]

@[deprecated (since := "2026-03-26")]
alias cardinalMk_lift_of_fintype := cardinalMk_eq_lift_of_fintype

@[to_additive]
lemma cardinalMk_of_fintype [Fintype M] : #R[M] = #R ^ card M := by simp

@[to_additive (attr := simp)]
lemma cardinalMk_eq_max_lift_of_infinite [Infinite M'] [Nontrivial R] :
    #R[M'] = max (lift.{v} #R) (lift.{u} #M') := by simp [coeffEquiv.cardinal_eq, max_comm]

@[deprecated (since := "2026-03-26")]
alias cardinalMk_lift_of_infinite := cardinalMk_eq_max_lift_of_infinite

@[to_additive]
lemma cardinalMk_of_infinite [Infinite M] [Nontrivial R] : #R[M] = max #R #M := by simp

@[to_additive (attr := simp)]
lemma cardinalMk_eq_max_lift_of_infinite' [Nonempty M'] [Infinite R] :
    #R[M'] = max (lift.{v} #R) (lift.{u} #M') := by simp [coeffEquiv.cardinal_eq, max_comm]

@[deprecated (since := "2026-03-26")]
alias cardinalMk_lift_of_infinite' := cardinalMk_eq_max_lift_of_infinite'

@[to_additive]
lemma cardinalMk_of_infinite' [Nonempty M] [Infinite R] : #R[M] = max #R #M := by simp

@[to_additive]
instance [Infinite R] [Nonempty M'] : Infinite R[M'] :=
  ‹Nonempty M'›.elim fun m => .of_injective (single m) single_right_injective

@[to_additive]
instance [Nontrivial R] [Infinite M'] : Infinite R[M'] :=
  (exists_ne 0).elim fun r hr => .of_injective (single · r) (single_left_injective hr)

@[to_additive]
instance [Countable R] [Countable M'] : Countable R[M'] := by
  nontriviality R
  rw [← mk_le_aleph0_iff]
  cases fintypeOrInfinite M'
  · rw [cardinalMk_eq_lift_of_fintype, ← power_natCast]
    apply power_le_aleph0 <;> simp
  · rw [cardinalMk_eq_max_lift_of_infinite]
    simp

universe w in
@[to_additive]
instance [Small.{w} R] [Small.{w} M'] : Small.{w} R[M'] := by
  nontriviality R
  rw [small_iff_lift_mk_lt_univ]
  cases fintypeOrInfinite M'
  · rw [cardinalMk_eq_lift_of_fintype, ← power_natCast, lift_power,
      lift_lift, ← mk_uLift, ← lift_natCast.{u, v}, ← mk_fintype M',
      lift_lift, ← mk_uLift, power_def, ← lift_id'.{w + 1} (mk _),
      ← small_iff_lift_mk_lt_univ]
    infer_instance
  · rw [cardinalMk_eq_max_lift_of_infinite, lift_max, max_lt_iff]
    constructor
    · rwa [lift_lift, ← lift_lift.{w + 1}, ← lift_univ.{w, max (w + 1) u, v},
        lift_lt, ← small_iff_lift_mk_lt_univ]
    · rwa [lift_lift, ← lift_lift.{w + 1}, ← lift_univ.{w, max (w + 1) v, u},
        lift_lt, ← small_iff_lift_mk_lt_univ]

end MonoidAlgebra
```
