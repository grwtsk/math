# Complete source: GRWTSK.Algebra.UniversalAlgebra.LeastGreatest.Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16051b2d7404ad346dd66764f1413f4832a22864` · SHA-256 `bfa029335e3a3de1484f2493b97922ceab29751b577c4a6e4ac3e84818279869`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.LeastOfBdd.Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.LeastOfBdd.Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/LeastGreatest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Order.Group.OrderIso
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Data.Nat.Find
import Mathlib.Order.Bounds.Defs

/-! # Least upper bound and greatest lower bound properties for integers

In this file we prove that a bounded above nonempty set of integers has the greatest element, and a
counterpart of this statement for the least element.

## Main definitions

* `Int.leastOfBdd`: if `P : ℤ → Prop` is a decidable predicate, `b` is a lower bound of the set
  `{m | P m}`, and there exists `m : ℤ` such that `P m` (this time, no witness is required), then
  `Int.leastOfBdd` returns the least number `m` such that `P m`, together with proofs of `P m` and
  of the minimality. This definition is computable and does not rely on the axiom of choice.
* `Int.greatestOfBdd`: a similar definition with all inequalities reversed.

## Main statements

* `Int.exists_least_of_bdd`: if `P : ℤ → Prop` is a predicate such that the set `{m : P m}` is
  bounded below and nonempty, then this set has the least element. This lemma uses classical logic
  to avoid assumption `[DecidablePred P]`. See `Int.leastOfBdd` for a constructive counterpart.

* `Int.coe_leastOfBdd_eq`: `(Int.leastOfBdd b Hb Hinh : ℤ)` does not depend on `b`.

* `Int.exists_greatest_of_bdd`, `Int.coe_greatest_of_bdd_eq`: versions of the above lemmas with all
  inequalities reversed.

## Tags

integer numbers, least element, greatest element
-/



namespace GRWTSK.Algebra.UniversalAlgebra.LeastOfBdd.Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb

namespace Int

/-- A computable version of `exists_least_of_bdd`: given a decidable predicate on the
integers, with an explicit lower bound and a proof that it is somewhere true, return
the least value for which the predicate is true. -/
def leastOfBdd {P : ℤ → Prop} [DecidablePred P] (b : ℤ) (Hb : ∀ z : ℤ, P z → b ≤ z)
    (Hinh : ∃ z : ℤ, P z) : { lb : ℤ // P lb ∧ ∀ z : ℤ, P z → lb ≤ z } :=
  have EX : ∃ n : ℕ, P (b + n) :=
    let ⟨elt, Helt⟩ := Hinh
    match elt, le.dest (Hb _ Helt), Helt with
    | _, ⟨n, rfl⟩, Hn => ⟨n, Hn⟩
  ⟨b + (Nat.find EX : ℤ), Nat.find_spec EX, fun z h =>
    match z, le.dest (Hb _ h), h with
    | _, ⟨_, rfl⟩, h => add_le_add_left (Int.ofNat_le.2 <| Nat.find_min' _ h) _⟩

/-- `Int.leastOfBdd` is the least integer satisfying a predicate which is false for all `z : ℤ` with
`z < b` for some fixed `b : ℤ`. -/
lemma isLeast_coe_leastOfBdd {P : ℤ → Prop} [DecidablePred P] (b : ℤ) (Hb : ∀ z : ℤ, P z → b ≤ z)
    (Hinh : ∃ z : ℤ, P z) : IsLeast {z | P z} (leastOfBdd b Hb Hinh : ℤ) :=
  (leastOfBdd b Hb Hinh).2

/--
If `P : ℤ → Prop` is a predicate such that the set `{m : P m}` is bounded below and nonempty,
then this set has the least element. This lemma uses classical logic to avoid assumption
`[DecidablePred P]`. See `Int.leastOfBdd` for a constructive counterpart. -/
theorem exists_least_of_bdd
    {P : ℤ → Prop}
    (Hbdd : ∃ b : ℤ, ∀ z : ℤ, P z → b ≤ z)
    (Hinh : ∃ z : ℤ, P z) : ∃ lb : ℤ, P lb ∧ ∀ z : ℤ, P z → lb ≤ z := by
  classical
  let ⟨b, Hb⟩ := Hbdd
  let ⟨lb, H⟩ := leastOfBdd b Hb Hinh
  exact ⟨lb, H⟩

theorem coe_leastOfBdd_eq {P : ℤ → Prop} [DecidablePred P] {b b' : ℤ} (Hb : ∀ z : ℤ, P z → b ≤ z)
    (Hb' : ∀ z : ℤ, P z → b' ≤ z) (Hinh : ∃ z : ℤ, P z) :
    (leastOfBdd b Hb Hinh : ℤ) = leastOfBdd b' Hb' Hinh := by
  rcases leastOfBdd b Hb Hinh with ⟨n, hn, h2n⟩
  rcases leastOfBdd b' Hb' Hinh with ⟨n', hn', h2n'⟩
  exact le_antisymm (h2n _ hn') (h2n' _ hn)

/-- A computable version of `exists_greatest_of_bdd`: given a decidable predicate on the
integers, with an explicit upper bound and a proof that it is somewhere true, return
the greatest value for which the predicate is true. -/
def greatestOfBdd {P : ℤ → Prop} [DecidablePred P] (b : ℤ) (Hb : ∀ z : ℤ, P z → z ≤ b)
    (Hinh : ∃ z : ℤ, P z) : { ub : ℤ // P ub ∧ ∀ z : ℤ, P z → z ≤ ub } :=
  have Hbdd' : ∀ z : ℤ, P (-z) → -b ≤ z := fun _ h => neg_le.1 (Hb _ h)
  have Hinh' : ∃ z : ℤ, P (-z) :=
    let ⟨elt, Helt⟩ := Hinh
    ⟨-elt, by rw [neg_neg]; exact Helt⟩
  let ⟨lb, Plb, al⟩ := leastOfBdd (-b) Hbdd' Hinh'
  ⟨-lb, Plb, fun z h => le_neg.1 <| al _ <| by rwa [neg_neg]⟩

/-- `Int.greatestOfBdd` is the greatest integer satisfying a predicate which is false for all
`z : ℤ` with `b < z` for some fixed `b : ℤ`. -/
lemma isGreatest_coe_greatestOfBdd {P : ℤ → Prop} [DecidablePred P] (b : ℤ)
    (Hb : ∀ z : ℤ, P z → z ≤ b) (Hinh : ∃ z : ℤ, P z) :
    IsGreatest {z | P z} (greatestOfBdd b Hb Hinh : ℤ) :=
  (greatestOfBdd b Hb Hinh).2

/--
If `P : ℤ → Prop` is a predicate such that the set `{m : P m}` is bounded above and nonempty,
then this set has the greatest element. This lemma uses classical logic to avoid assumption
`[DecidablePred P]`. See `Int.greatestOfBdd` for a constructive counterpart. -/
theorem exists_greatest_of_bdd
    {P : ℤ → Prop}
    (Hbdd : ∃ b : ℤ, ∀ z : ℤ, P z → z ≤ b)
    (Hinh : ∃ z : ℤ, P z) : ∃ ub : ℤ, P ub ∧ ∀ z : ℤ, P z → z ≤ ub := by
  classical
  let ⟨b, Hb⟩ := Hbdd
  let ⟨lb, H⟩ := greatestOfBdd b Hb Hinh
  exact ⟨lb, H⟩

theorem coe_greatestOfBdd_eq {P : ℤ → Prop} [DecidablePred P] {b b' : ℤ}
    (Hb : ∀ z : ℤ, P z → z ≤ b) (Hb' : ∀ z : ℤ, P z → z ≤ b') (Hinh : ∃ z : ℤ, P z) :
    (greatestOfBdd b Hb Hinh : ℤ) = greatestOfBdd b' Hb' Hinh := by
  rcases greatestOfBdd b Hb Hinh with ⟨n, hn, h2n⟩
  rcases greatestOfBdd b' Hb' Hinh with ⟨n', hn', h2n'⟩
  exact le_antisymm (h2n' _ hn) (h2n _ hn')

end Int
```
