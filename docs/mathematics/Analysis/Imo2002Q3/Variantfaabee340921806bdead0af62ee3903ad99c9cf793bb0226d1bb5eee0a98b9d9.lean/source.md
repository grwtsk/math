# Complete source: GRWTSK.Analysis.Imo2002Q3.Variantfaabee340921806bdead0af62ee3903ad99c9cf793bb0226d1bb5eee0a98b9d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02587c009d5638c0bd52092b0ac483dc15172d5a` · SHA-256 `b8adccd143757e7a3d22ffc0a4be3b594866cc3d9b5c6c10efaa2da322815db9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.NatDegreeNumerpol.Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NatDegreeNumerpol.Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo2002Q3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jeremy Tan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Tan
-/
module

public import Mathlib.Analysis.Polynomial.Basic
public import Mathlib.RingTheory.Polynomial.Content

/-!
# IMO 2002 Q3

Find all pairs of positive integers $m,n ≥ 3$ for which there exist infinitely many
positive integers $a$ such that $(a^m+a-1) / (a^n+a^2-1)$ is itself an integer.

## Solution

It suffices to find $(m,n)$ pairs for which $a^n+a^2-1 ∣ a^m+a-1$, where both sides are viewed as
polynomials in $a$. This automatically gives $n ≤ m$, so we have
$$a^n+a^2-1 ∣ (a^m+a-1)(a+1) - (a^n+a^2-1) = a^m(a+1) - a^n.$$
Since $a^n$ is coprime to $a^n+a^2-1$ we have $a^n+a^2-1 ∣ a^{m-n}(a+1)-1$, so $n ≤ m-n+1$.

Because $n ≥ 3$, there exists a real root $0 < r < 1$ of $a^n+a^2-1$,
whence $r^{m-n+1}+r^{m-n}-1 = 0$. But we must also have $m-n ≤ 2$, for otherwise
$$r^{m-n+1}+r^{m-n}-1 ≤ r^n+r^{m-n}-1 < r^n+r^2-1 = 0.$$
This eliminates all possibilities except $m = 5, n = 3$,
which is easily seen to satisfy the original condition.
-/


namespace GRWTSK.Analysis.NatDegreeNumerpol.Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457

public section

open Polynomial

namespace Imo2002Q3

variable {m n : ℕ} (hm : 3 ≤ m) (hn : 3 ≤ n)

include hm in
lemma natDegree_numerpol : (X ^ m + X - 1 : ℤ[X]).natDegree = m := by
  compute_degree <;> grind

include hm in
lemma monic_numerpol : (X ^ m + X - 1 : ℤ[X]).Monic := by
  apply Monic.sub_of_left
  · apply monic_X_pow_add
    rw [degree_X, Nat.one_lt_cast]
    lia
  · rw [degree_one, degree_add_eq_left_of_degree_lt]
    · simp_rw [degree_X_pow, Nat.cast_pos]
      lia
    · rw [degree_X_pow, degree_X, Nat.one_lt_cast]
      lia

include hn in
lemma natDegree_denompol : (X ^ n + X ^ 2 - 1 : ℤ[X]).natDegree = n := by
  compute_degree <;> grind

include hn in
lemma monic_denompol : (X ^ n + X ^ 2 - 1 : ℤ[X]).Monic := by
  apply Monic.sub_of_left
  · apply monic_X_pow_add
    rw [degree_X_pow, Nat.cast_lt]
    lia
  · rw [degree_one, degree_add_eq_left_of_degree_lt]
    · simp_rw [degree_X_pow, Nat.cast_pos]
      lia
    · simp_rw [degree_X_pow, Nat.cast_lt]
      lia

include hm hn in
lemma proof_body (h : {a : ℤ | 0 < a ∧ a ^ n + a ^ 2 - 1 ∣ a ^ m + a - 1}.Infinite) :
    m = 5 ∧ n = 3 := by
  replace h : (X ^ n + X ^ 2 - 1 : ℤ[X]) ∣ X ^ m + X - 1 :=
    dvd_of_infinite_eval_dvd_eval (monic_denompol hn) (h.mono (by simp))
  -- Algebraic part: `n ≤ m - n + 1`
  have db := natDegree_le_of_dvd h (monic_numerpol hm).ne_zero
  rw [natDegree_numerpol hm, natDegree_denompol hn] at db
  replace h := dvd_sub_self_right.mpr (dvd_mul_of_dvd_left h (X + 1))
  have rearr : ((X ^ m + X - 1) * (X + 1) - (X ^ n + X ^ 2 - 1) : ℤ[X]) =
      X ^ n * (X ^ (m - n + 1) + X ^ (m - n) - 1) := by
    nth_rw 1 [← Nat.sub_add_cancel db]
    ring
  rw [rearr] at h
  replace h : (X ^ n + X ^ 2 - 1 : ℤ[X]) ∣ X ^ (m - n + 1) + X ^ (m - n) - 1 := by
    refine (IsRelPrime.pow_right ?_).dvd_of_dvd_mul_left h
    nth_rw 1 [isRelPrime_comm, irreducible_X.isRelPrime_iff_not_dvd,
      show (X : ℤ[X]) = X - C 0 by simp, dvd_iff_isRoot]
    simp [show n ≠ 0 by lia]
  have de : (X ^ (m - n + 1) + X ^ (m - n) - 1 : ℤ[X]).natDegree = m - n + 1 := by
    compute_degree <;> lia
  have db₂ := natDegree_le_of_dvd h (ne_zero_of_natDegree_gt (n := 0) (by lia))
  rw [natDegree_denompol hn, de] at db₂
  -- Analytic part: given the above, `m - n ≤ 2`
  suffices m - n ≤ 2 by lia
  let hom := Int.castRingHom ℝ
  obtain ⟨r, br, hr⟩ : ∃ r ∈ Set.Ioo 0 1, (X ^ n + X ^ 2 - 1 : ℤ[X]).eval₂ hom r = 0 := by
    simp only [eval₂_sub, eval₂_add, eval₂_X_pow, eval₂_one]
    let f (r : ℝ) := r ^ n + r ^ 2 - 1
    have cf : ContinuousOn f (Set.Icc 0 1) := by fun_prop
    have ivt := intermediate_value_Ioo zero_le_one cf
    have f0 : f 0 = -1 := by simp [f]; lia
    have f1 : f 1 = 1 := by simp [f]
    rw [f0, f1] at ivt
    simpa using ivt (by simp)
  have hr₂ := eval₂_dvd hom r h
  simp only [eval₂_sub, eval₂_add, eval₂_X_pow, eval₂_one] at hr hr₂
  rw [hr, zero_dvd_iff, ← hr, sub_left_inj] at hr₂
  rw [← pow_le_pow_iff_right_of_lt_one₀ br.1 br.2] at db₂
  have fin : r ^ 2 ≤ r ^ (m - n) := by linarith
  rwa [pow_le_pow_iff_right_of_lt_one₀ br.1 br.2] at fin

include hm hn in
theorem result : {a : ℤ | 0 < a ∧ a ^ n + a ^ 2 - 1 ∣ a ^ m + a - 1}.Infinite ↔ m = 5 ∧ n = 3 := by
  refine ⟨proof_body hm hn, fun h ↦ ?_⟩
  rw [h.1, h.2]
  conv =>
    enter [1, 1, a]
    rw [show a ^ 5 + a - 1 = (a ^ 2 - a + 1) * (a ^ 3 + a ^ 2 - 1) by ring]
  simpa using! Set.Ioi_infinite 0

end Imo2002Q3
```
