# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourceAlphaBalance.Variantb03ba783bdc7bfecf8dd438e48374ab4db88d5f6fed18b2f5a52cc5821445435

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25fac4773377249b5fc3d4fa8d75c2f882ec0417` · SHA-256 `fb107849eb2e6112d207ce2abbf141d2533731f50ef2b32ed283ed41b6288d59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ActualQuotientMoebiusSum.Variant08abaedcaa8e460a217ac272b680a29567f3cf38ec562dec43fc5c82854cd868","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08abaedcaa8e460a217ac272b680a29567f3cf38ec562dec43fc5c82854cd868","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ActualQuotientMoebiusSum.Variant08abaedcaa8e460a217ac272b680a29567f3cf38ec562dec43fc5c82854cd868","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"08abaedcaa8e460a217ac272b680a29567f3cf38ec562dec43fc5c82854cd868","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-prime-mean/author-evidence/alpha-attempt03-context-audit-collision/SourceAlphaBalance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLargePrimeDiagonal

/-!
Actual finite Mobius mean balance with its exact natural quotient/modulus correction.
Direction and conceptual origin: grwtsk contributors.
Finite arithmetic calculation and formalization: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ActualQuotientMoebiusSum.Variant08abaedcaa8e460a217ac272b680a29567f3cf38ec562dec43fc5c82854cd868

set_option autoImplicit false
noncomputable section
namespace RH16AlphaBalance
open scoped BigOperators
open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering

theorem actual_quotient_moebius_sum (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) = 1 := by
  classical
  have hrow (n : ℕ) (hn : n ∈ Finset.Ioc 0 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
    have hnU : n ≤ U := (Finset.mem_Ioc.mp hn).2
    have hb := beta_zero_of_le U n hnU
    rw [beta_eq_delta_sub_short, short_divisor_sum_eq_indicator U n hn0] at hb
    linarith only [hb]
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, ∑ n ∈ Finset.Ioc 0 U,
        if d ∣ n then (moebius d : ℝ) else 0 := by
      apply Finset.sum_congr rfl
      intro d _
      rw [← multiples_prefix_sum U d, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> simp
    _ = ∑ n ∈ Finset.Ioc 0 U, ∑ d ∈ Finset.Icc 1 U,
        if d ∣ n then (moebius d : ℝ) else 0 := Finset.sum_comm
    _ = ∑ n ∈ Finset.Ioc 0 U, if n = 1 then (1 : ℝ) else 0 :=
      Finset.sum_congr rfl hrow
    _ = 1 := by simp [Finset.mem_Ioc, hU]

theorem actual_alpha_modulus_recovery (U : ℕ) (hU : 1 ≤ U) :
    (U : ℝ) * alpha U = 1 +
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ) := by
  classical
  have hc (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      (U : ℝ) / (d : ℝ) = ((U / d : ℕ) : ℝ) + ((U % d : ℕ) : ℝ) / (d : ℝ) := by
    have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast (show d ≠ 0 by
      have := (Finset.mem_Icc.mp hd).1; omega)
    have hdiv : ((U / d : ℕ) : ℝ) * (d : ℝ) + ((U % d : ℕ) : ℝ) = (U : ℝ) := by
      exact_mod_cast (show U / d * d + U % d = U by
        simpa only [Nat.mul_comm] using Nat.div_add_mod U d)
    field_simp
    nlinarith only [hdiv]
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U : ℝ) / (d : ℝ)) := by
      unfold alpha
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ = (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) +
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ) := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro d hd
      rw [hc d hd]
      ring
    _ = _ := by rw [actual_quotient_moebius_sum U hU]

theorem actual_alpha_abs_le_one (U : ℕ) (hU : 1 ≤ U) : |alpha U| ≤ 1 := by
  classical
  let error (d : ℕ) : ℝ := (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ)
  have he0 : error 1 = 0 := by simp [error, Nat.mod_one]
  have he (d : ℕ) (hd : d ∈ Finset.Ioc 1 U) : |error d| ≤ 1 := by
    have hd0 : 0 < d := by have := (Finset.mem_Ioc.mp hd).1; omega
    have hmu : |(moebius d : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    have hr0 : 0 ≤ (((U % d : ℕ) : ℝ) / (d : ℝ)) := by positivity
    have hr1 : (((U % d : ℕ) : ℝ) / (d : ℝ)) ≤ 1 := by
      apply (div_le_one (by exact_mod_cast hd0)).mpr
      exact_mod_cast (Nat.mod_lt U hd0).le
    dsimp only [error]
    rw [mul_div_assoc]
    rw [abs_mul, abs_of_nonneg hr0]
    nlinarith
  have hsum : |∑ d ∈ Finset.Icc 1 U, error d| ≤ (U : ℝ) - 1 := by
    rw [← Finset.Ioc_insert_left hU, Finset.sum_insert (by simp), he0, zero_add]
    calc
      _ ≤ ∑ d ∈ Finset.Ioc 1 U, |error d| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Finset.Ioc 1 U, (1 : ℝ) := Finset.sum_le_sum he
      _ = _ := by simp [Nat.cast_sub hU]
  have hr := actual_alpha_modulus_recovery U hU
  change (U : ℝ) * alpha U = 1 + ∑ d ∈ Finset.Icc 1 U, error d at hr
  have hUa : |(U : ℝ) * alpha U| ≤ (U : ℝ) := by
    rw [hr]
    exact (abs_add_le 1 _).trans (by simp only [abs_one]; linarith only [hsum])
  rw [abs_mul, abs_of_nonneg (by positivity : (0 : ℝ) ≤ U)] at hUa
  have hUp : 0 < (U : ℝ) := by exact_mod_cast (show 0 < U by omega)
  nlinarith only [hUa, hUp]

theorem actual_alpha_minus_one_bounds (U : ℕ) (hU : 1 ≤ U) :
    -2 ≤ alpha U - 1 ∧ alpha U - 1 ≤ 0 ∧ |alpha U - 1| ≤ 2 := by
  have ha := actual_alpha_abs_le_one U hU
  have hb := abs_le.mp ha
  refine ⟨by linarith, by linarith, ?_⟩
  apply abs_le.mpr
  constructor <;> linarith

end RH16AlphaBalance
```
