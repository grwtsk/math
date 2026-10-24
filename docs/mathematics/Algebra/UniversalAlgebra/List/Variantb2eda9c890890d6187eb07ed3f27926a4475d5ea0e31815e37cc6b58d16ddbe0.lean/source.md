# Complete source: GRWTSK.Algebra.UniversalAlgebra.List.Variantb2eda9c890890d6187eb07ed3f27926a4475d5ea0e31815e37cc6b58d16ddbe0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd1131f2530a29108eeb801a3b007a5c2c829ce` · SHA-256 `c0bafb915efed1549425fd498e2393123b5f80163e6b97213c967d4c0dd58ee6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ListSumRight.Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ListSumRight.Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"c95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/Ring/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Floris van Doorn, Sébastien Gouëzel, Alex J. Best
-/
module

public import Mathlib.Algebra.GroupWithZero.Commute
public import Mathlib.Algebra.GroupWithZero.Divisibility
public import Mathlib.Algebra.Ring.Basic
public import Mathlib.Algebra.Ring.Divisibility.Basic
public import Mathlib.Algebra.Ring.Commute
public import Mathlib.Algebra.BigOperators.Group.List.Basic

/-!
# Big operators on a list in rings

This file contains the results concerning the interaction of list big operators with rings.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.ListSumRight.Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778

public section

open List

variable {ι κ M M₀ R : Type*}

namespace Commute
variable [NonUnitalNonAssocSemiring R]

lemma list_sum_right (a : R) (l : List R) (h : ∀ b ∈ l, Commute a b) : Commute a l.sum := by
  induction l with
  | nil => exact Commute.zero_right _
  | cons x xs ih =>
    rw [List.sum_cons]
    exact (h _ mem_cons_self).add_right (ih fun j hj ↦ h _ <| mem_cons_of_mem _ hj)

lemma list_sum_left (b : R) (l : List R) (h : ∀ a ∈ l, Commute a b) : Commute l.sum b :=
  ((Commute.list_sum_right _ _) fun _x hx ↦ (h _ hx).symm).symm

end Commute

namespace List
section HasDistribNeg
variable [Monoid M] [HasDistribNeg M]

@[simp]
lemma prod_map_neg (l : List M) :
    (l.map Neg.neg).prod = (-1) ^ l.length * l.prod := by
  induction l <;> simp [*, pow_succ, Commute.left_comm]

end HasDistribNeg

section MonoidWithZero
variable [MonoidWithZero M₀] {l : List M₀}

/-- If zero is an element of a list `l`, then `List.prod l = 0`. If the domain is a nontrivial
monoid with zero with no zero divisors, then this implication becomes an `iff`, see
`List.prod_eq_zero_iff`. -/
lemma prod_eq_zero : ∀ {l : List M₀}, (0 : M₀) ∈ l → l.prod = 0
  -- |  absurd h (not_mem_nil _)
  | a :: l, h => by
    rw [prod_cons]
    rcases mem_cons.1 h with ha | hl
    exacts [mul_eq_zero_of_left ha.symm _, mul_eq_zero_of_right _ (prod_eq_zero hl)]

variable [Nontrivial M₀] [NoZeroDivisors M₀]

/-- Product of elements of a list `l` equals zero if and only if `0 ∈ l`. See also
`List.prod_eq_zero` for an implication that needs weaker typeclass assumptions. -/
@[simp] lemma prod_eq_zero_iff : ∀ {l : List M₀}, l.prod = 0 ↔ (0 : M₀) ∈ l
  | [] => by simp
  | a :: l => by rw [prod_cons, mul_eq_zero, prod_eq_zero_iff, mem_cons, eq_comm]

lemma prod_ne_zero (hL : (0 : M₀) ∉ l) : l.prod ≠ 0 := mt prod_eq_zero_iff.1 hL

end MonoidWithZero

section NonUnitalNonAssocSemiring
variable [NonUnitalNonAssocSemiring R] (l : List ι) (f : ι → R) (r : R)

lemma sum_map_mul_left : (l.map fun b ↦ r * f b).sum = r * (l.map f).sum :=
  sum_map_hom l f <| AddMonoidHom.mulLeft r

lemma sum_map_mul_right : (l.map fun b ↦ f b * r).sum = (l.map f).sum * r :=
  sum_map_hom l f <| AddMonoidHom.mulRight r

end NonUnitalNonAssocSemiring

lemma dvd_sum [NonUnitalSemiring R] {a} {l : List R} (h : ∀ x ∈ l, a ∣ x) : a ∣ l.sum := by
  induction l with
  | nil => exact dvd_zero _
  | cons x l ih =>
    rw [List.sum_cons]
    exact dvd_add (h _ mem_cons_self) (ih fun x hx ↦ h x (mem_cons_of_mem _ hx))

@[simp] lemma sum_zipWith_distrib_left [NonUnitalNonAssocSemiring R] (f : ι → κ → R) (a : R) :
    ∀ (l₁ : List ι) (l₂ : List κ),
      (zipWith (fun i j ↦ a * f i j) l₁ l₂).sum = a * (zipWith f l₁ l₂).sum
  | [], _ => by simp
  | _, [] => by simp
  | i :: l₁, j :: l₂ => by simp [sum_zipWith_distrib_left, mul_add]

end List
```
