-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.DegreeRadicalLe.Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.DegreeRadicalLe.Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48","mathematical_subject":"Algebra.Polynomials","original_sha256":"76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Radical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jineon Baek, Seewoo Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jineon Baek, Seewoo Lee
-/
module

public import Mathlib.Algebra.Polynomial.FieldDivision
public import Mathlib.RingTheory.Polynomial.Wronskian
public import Mathlib.RingTheory.Radical.Basic
public import Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicative

/-!
# Radical of a polynomial

This file proves some theorems on `radical` and `divRadical` of polynomials.
See `Mathlib.RingTheory.Radical.Basic` for the definition of `radical` and `divRadical`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.DegreeRadicalLe.Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48

public section

open Polynomial UniqueFactorizationMonoid EuclideanDomain

variable {k : Type*} [Field k] [DecidableEq k]

theorem degree_radical_le {a : k[X]} (h : a ≠ 0) : (radical a).degree ≤ a.degree :=
  degree_le_of_dvd radical_dvd_self h

theorem natDegree_radical_le {a : k[X]} :
    (radical a).natDegree ≤ a.natDegree := by
  by_cases ha : a = 0
  · simp [ha]
  · exact natDegree_le_of_dvd radical_dvd_self ha

theorem divRadical_dvd_derivative (a : k[X]) : divRadical a ∣ derivative a := by
  induction a using induction_on_coprime
  · case h0 =>
    rw [derivative_zero]
    apply dvd_zero
  · case h1 a ha =>
    exact (divRadical_isUnit ha).dvd
  · case hpr p i hp =>
    cases i
    · rw [pow_zero, derivative_one]
      apply dvd_zero
    · case succ i =>
      rw [← mul_dvd_mul_iff_left radical_ne_zero, radical_mul_divRadical,
        radical_pow_of_prime hp i.succ_ne_zero, derivative_pow_succ, ← mul_assoc]
      apply dvd_mul_of_dvd_left
      rw [mul_comm, mul_assoc]
      apply dvd_mul_of_dvd_right
      rw [pow_succ, mul_dvd_mul_iff_left (pow_ne_zero i hp.ne_zero), dvd_normalize_iff]
  · -- If it holds for coprime pair a and b, then it also holds for a * b.
    case hcp x y hpxy hx hy =>
    have hc : IsCoprime x y :=
      EuclideanDomain.isCoprime_of_dvd
        (fun ⟨hx, hy⟩ => not_isUnit_zero (hpxy (zero_dvd_iff.mpr hx) (zero_dvd_iff.mpr hy)))
        fun p hp _ hpx hpy => hp (hpxy hpx hpy)
    rw [divRadical_mul hc, derivative_mul]
    exact dvd_add (mul_dvd_mul hx (divRadical_dvd_self y)) (mul_dvd_mul (divRadical_dvd_self x) hy)

theorem divRadical_dvd_wronskian_left (a b : k[X]) : divRadical a ∣ wronskian a b := by
  rw [wronskian]
  apply dvd_sub
  · apply dvd_mul_of_dvd_left
    exact divRadical_dvd_self a
  · apply dvd_mul_of_dvd_left
    exact divRadical_dvd_derivative a

theorem divRadical_dvd_wronskian_right (a b : k[X]) : divRadical b ∣ wronskian a b := by
  rw [← wronskian_neg_eq, dvd_neg]
  exact divRadical_dvd_wronskian_left _ _
