# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.MobiusUnitBudget.Variant82d26837d14ca56b3e5e1d44012c6dbedb06acae172108853698e6d7e5b6fb69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b85975f3cd71f41e3230493e1280b987bb4bc37e` · SHA-256 `2ee28db1558774a9cb4acc9f87c03f93856c5e77ea8e2ae0d1e2e5ff5215bee6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ReciprocalFloorIdentity.Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ReciprocalFloorIdentity.Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"cf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/postcutoff-cancellation/MobiusUnitBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport

/-! Exact Möbius floor cancellation improves the actual reciprocal-prefix bound. -/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ReciprocalFloorIdentity.Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c

set_option autoImplicit false
namespace MobiusUnitBudgetScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController DivisorFloorTransport
noncomputable section

/-- The complete signed reciprocal prefix retains the exact fractional endpoint identity. -/
theorem reciprocal_floor_identity (X : ℕ) (hX : 1 ≤ X) :
    (X : ℝ) * mobiusReciprocalSum X = 1 +
      ∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d) := by
  have hf := floor_sum_divisors X (X : ℝ)
    (fun d => (ArithmeticFunction.moebius d : ℝ)) le_rfl
  simp only [Nat.floor_natCast, CoprimeCount.sum_moebius_divisors] at hf
  simp only [sum_ite_eq', mem_Icc, le_refl, hX, and_self, if_true] at hf
  have ht : (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) *
      Int.fract ((X : ℝ) / d)) =
      (X : ℝ) * mobiusReciprocalSum X -
        ∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) * (⌊(X : ℝ) / d⌋₊ : ℝ) := by
    rw [mobiusReciprocalSum, mul_sum, ← sum_sub_distrib]
    apply sum_congr rfl
    intro d hd
    rw [Int.fract, ← natCast_floor_eq_intCast_floor
      (div_nonneg (Nat.cast_nonneg X) (Nat.cast_nonneg d))]
    ring
  linarith

/-- Exact Möbius cancellation bounds the actual reciprocal prefix by one, for every cutoff. -/
theorem mobiusReciprocalSum_abs_le_one (X : ℕ) : |mobiusReciprocalSum X| ≤ 1 := by
  by_cases hX0 : X = 0
  · simp [hX0, mobiusReciprocalSum]
  have hX : 1 ≤ X := by omega
  have hrX : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have hsum : |∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) *
      Int.fract ((X : ℝ) / d)| ≤ (X : ℝ) - 1 := by
    have hterm (d : ℕ) (hd : d ∈ Icc 1 X) :
        |(ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d)| ≤
          if d = 1 then 0 else 1 := by
      by_cases hd1 : d = 1
      · simp [hd1]
      · rw [if_neg hd1, abs_mul, abs_of_nonneg (Int.fract_nonneg _)]
        have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
          exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
        exact (mul_le_mul hm (Int.fract_lt_one _).le (Int.fract_nonneg _) zero_le_one).trans_eq
          (by norm_num)
    calc
      _ ≤ ∑ d ∈ Icc 1 X, |(ArithmeticFunction.moebius d : ℝ) *
          Int.fract ((X : ℝ) / d)| := abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Icc 1 X, if d = 1 then (0 : ℝ) else 1 := sum_le_sum hterm
      _ = _ := by
        have he : (∑ d ∈ Icc 1 X, if d = 1 then (0 : ℝ) else 1) =
            (∑ d ∈ Icc 1 X, (1 : ℝ)) - ∑ d ∈ Icc 1 X, if d = 1 then (1 : ℝ) else 0 := by
          rw [← sum_sub_distrib]
          apply sum_congr rfl
          intro d hd
          split_ifs <;> norm_num
        rw [he]
        simp [hX]
  have hb : |(X : ℝ) * mobiusReciprocalSum X| ≤ (X : ℝ) := by
    rw [reciprocal_floor_identity X hX]
    have ha := abs_add_le (1 : ℝ) (∑ d ∈ Icc 1 X,
      (ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d))
    norm_num at ha
    linarith
  rw [abs_mul, abs_of_pos hrX] at hb
  nlinarith

end
end MobiusUnitBudgetScratch
```
