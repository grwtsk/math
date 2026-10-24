# Complete source: GRWTSK.Algebra.EuclideanDomain.Variantbcbf850b7342a35dbcf648874185673ab1e119b74ba0c48e378a9cc53bb4e0da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a317fafe4573b4261261446d3f75f0b693f89e87` · SHA-256 `84696a57757d3150fc86bd15182e8437b8733114542abf0a36a6cd822c4cb508`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LeftDivGcdNeZero.Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.LeftDivGcdNeZero.Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/EuclideanDomain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Chris Hughes
-/
import Mathlib.Algebra.GCDMonoid.Basic
import Mathlib.Algebra.EuclideanDomain.Basic
import Mathlib.RingTheory.Ideal.Basic
import Mathlib.RingTheory.PrincipalIdealDomain

/-!
# Lemmas about Euclidean domains

Various about Euclidean domains are proved; all of them seem to be true
more generally for principal ideal domains, so these lemmas should
probably be reproved in more generality and this file perhaps removed?

## Tags

euclidean domain
-/



namespace GRWTSK.Algebra.LeftDivGcdNeZero.Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513

section

open EuclideanDomain Set Ideal

section GCDMonoid

variable {R : Type*} [EuclideanDomain R] [GCDMonoid R] {p q : R}

theorem left_div_gcd_ne_zero {p q : R} (hp : p ≠ 0) : p / GCDMonoid.gcd p q ≠ 0 := by
  obtain ⟨r, hr⟩ := GCDMonoid.gcd_dvd_left p q
  obtain ⟨pq0, r0⟩ : GCDMonoid.gcd p q ≠ 0 ∧ r ≠ 0 := mul_ne_zero_iff.mp (hr ▸ hp)
  nth_rw 1 [hr]
  rw [mul_comm, mul_div_cancel_right₀ _ pq0]
  exact r0

theorem right_div_gcd_ne_zero {p q : R} (hq : q ≠ 0) : q / GCDMonoid.gcd p q ≠ 0 := by
  obtain ⟨r, hr⟩ := GCDMonoid.gcd_dvd_right p q
  obtain ⟨pq0, r0⟩ : GCDMonoid.gcd p q ≠ 0 ∧ r ≠ 0 := mul_ne_zero_iff.mp (hr ▸ hq)
  nth_rw 1 [hr]
  rw [mul_comm, mul_div_cancel_right₀ _ pq0]
  exact r0

theorem isCoprime_div_gcd_div_gcd (hq : q ≠ 0) :
    IsCoprime (p / GCDMonoid.gcd p q) (q / GCDMonoid.gcd p q) :=
  (gcd_isUnit_iff _ _).1 <|
    isUnit_gcd_of_eq_mul_gcd
        (EuclideanDomain.mul_div_cancel' (gcd_ne_zero_of_right hq) <| gcd_dvd_left _ _).symm
        (EuclideanDomain.mul_div_cancel' (gcd_ne_zero_of_right hq) <| gcd_dvd_right _ _).symm <|
      gcd_ne_zero_of_right hq

end GCDMonoid

namespace EuclideanDomain

/-- Create a `GCDMonoid` whose `GCDMonoid.gcd` matches `EuclideanDomain.gcd`. -/
-- Porting note: added `DecidableEq R`
def gcdMonoid (R) [EuclideanDomain R] [DecidableEq R] : GCDMonoid R where
  gcd := gcd
  lcm := lcm
  gcd_dvd_left := gcd_dvd_left
  gcd_dvd_right := gcd_dvd_right
  dvd_gcd := dvd_gcd
  gcd_mul_lcm a b := by rw [EuclideanDomain.gcd_mul_lcm]
  lcm_zero_left := lcm_zero_left
  lcm_zero_right := lcm_zero_right

variable {α : Type*} [EuclideanDomain α]

theorem span_gcd [DecidableEq α] (x y : α) :
    span ({gcd x y} : Set α) = span ({x, y} : Set α) :=
  letI := EuclideanDomain.gcdMonoid α
  _root_.span_gcd x y

theorem gcd_isUnit_iff [DecidableEq α] {x y : α} : IsUnit (gcd x y) ↔ IsCoprime x y :=
  letI := EuclideanDomain.gcdMonoid α
  _root_.gcd_isUnit_iff x y

-- this should be proved for UFDs surely?
theorem isCoprime_of_dvd {x y : α} (nonzero : ¬(x = 0 ∧ y = 0))
    (H : ∀ z ∈ nonunits α, z ≠ 0 → z ∣ x → ¬z ∣ y) : IsCoprime x y :=
  letI := Classical.decEq α
  letI := EuclideanDomain.gcdMonoid α
  _root_.isCoprime_of_dvd x y nonzero H

-- this should be proved for UFDs surely?
theorem dvd_or_coprime (x y : α) (h : Irreducible x) :
    x ∣ y ∨ IsCoprime x y :=
  letI := Classical.decEq α
  letI := EuclideanDomain.gcdMonoid α
  _root_.dvd_or_isCoprime x y h

end EuclideanDomain

end
```
