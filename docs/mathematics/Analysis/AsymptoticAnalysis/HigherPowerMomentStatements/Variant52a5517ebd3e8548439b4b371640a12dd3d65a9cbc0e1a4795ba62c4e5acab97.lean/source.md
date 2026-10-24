# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerMomentStatements.Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95dbaf4a1b0b86be461d1395233cc71f2e3c0043` · SHA-256 `ede3440175007846542d8345ba710cc1a4ee9d18cfac12308d67a0ab9df8eb44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.IntegerMoment.Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.IntegerMoment.Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/HigherPowerMomentStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt


namespace GRWTSK.Analysis.AsymptoticAnalysis.IntegerMoment.Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c

set_option autoImplicit false
namespace HigherPowerMomentScratch
open Real
noncomputable section

/-- A summable integer majorant for the second logarithmic prime-power moment. -/
def integerMoment (n : ℕ) : ℝ := Real.log (n : ℝ) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ))

/-- The original positive prime-power weight times its squared logarithmic location. -/
def higherMoment (p k : ℕ) : ℝ :=
  Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) * ((k : ℝ) * Real.log (p : ℝ)) ^ 2

/-- One uniform geometric ratio applies to all integer bases at least two. -/
def geometricRatio : ℝ := (2 : ℝ) ^ (-(1 / 2 : ℝ))

/-- The exponent moment retains the exponent itself and only shifts its geometric decay. -/
def exponentMoment (k : ℕ) : ℝ := (k : ℝ) ^ 2 * geometricRatio ^ (k - 3)

theorem integerMoment_nonneg (n : ℕ) : 0 ≤ integerMoment n := by
  unfold integerMoment
  positivity

theorem higherMoment_nonneg (p k : ℕ) : 0 ≤ higherMoment p k := by
  unfold higherMoment
  positivity

theorem geometricRatio_pos : 0 < geometricRatio := Real.rpow_pos_of_pos (by norm_num) _

theorem geometricRatio_lt_one : geometricRatio < 1 := by
  exact Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by norm_num)

theorem exponentMoment_nonneg (k : ℕ) : 0 ≤ exponentMoment k := by
  exact mul_nonneg (sq_nonneg _) (pow_nonneg geometricRatio_pos.le _)

theorem integerMoment_le (n : ℕ) :
    integerMoment n ≤ 1728 * (n : ℝ) ^ (-(5 / 4 : ℝ)) := by
  by_cases hn : n = 0
  · subst n
    norm_num [integerMoment]
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hlog := Real.log_natCast_le_rpow_div n (by norm_num : (0 : ℝ) < 1 / 12)
  have hcub : Real.log (n : ℝ) ^ 3 ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 :=
    pow_le_pow_left₀ (Real.log_natCast_nonneg n) hlog 3
  unfold integerMoment
  calc
    _ ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 *
        (n : ℝ) ^ (-(3 / 2 : ℝ)) :=
      mul_le_mul_of_nonneg_right hcub (Real.rpow_nonneg hn0.le _)
    _ = 1728 * ((n : ℝ) ^ (1 / 12 : ℝ)) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ)) := by ring
    _ = _ := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul hn0.le, mul_assoc, ← Real.rpow_add hn0]
      norm_num

theorem integerMoment_summable : Summable integerMoment := by
  apply Summable.of_nonneg_of_le integerMoment_nonneg integerMoment_le
  exact ((summable_nat_rpow.mpr (by norm_num : (-(5 / 4 : ℝ)) < -1)).mul_left 1728)

theorem exponentMoment_summable : Summable exponentMoment := by
  have hr : ‖geometricRatio‖ < 1 := by
    rw [Real.norm_eq_abs, abs_of_pos geometricRatio_pos]
    exact geometricRatio_lt_one
  have h2 := summable_pow_mul_geometric_of_norm_lt_one 2 hr
  have h1 := (summable_pow_mul_geometric_of_norm_lt_one 1 hr).mul_left 6
  have h0 := (summable_geometric_of_norm_lt_one hr).mul_left 9
  apply (summable_nat_add_iff 3).mp
  apply ((h2.add h1).add h0).congr
  intro k
  simp only [exponentMoment, Nat.add_sub_cancel, Nat.cast_add, Nat.cast_ofNat, pow_one]
  ring

private theorem halfPower_pow (p k : ℕ) :
    ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ k = (p : ℝ) ^ (-((k : ℝ) / 2)) := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg p)]
  congr 1
  ring

/-- Exact exponent-three extraction precedes the uniform geometric majorant. -/
theorem higherMoment_factorization (p k : ℕ) (hk : 3 ≤ k) :
    higherMoment p k = integerMoment p *
      ((k : ℝ) ^ 2 * ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3)) := by
  have hp3 : ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ 3 = (p : ℝ) ^ (-(3 / 2 : ℝ)) := by
    simpa using halfPower_pow p 3
  have hsplit : ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ k =
      ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ 3 *
      ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3) := by
    rw [← pow_add, Nat.add_sub_of_le hk]
  unfold higherMoment integerMoment
  rw [div_eq_mul_inv, ← Real.rpow_neg (Nat.cast_nonneg p),
    ← halfPower_pow p k, hsplit, hp3]
  ring

/-- Uniform bound over all bases at least two and all actual exponents at least three. -/
theorem higherMoment_le_product (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    higherMoment p k ≤ integerMoment p * exponentMoment k := by
  rw [higherMoment_factorization p k hk]
  have hratio : (p : ℝ) ^ (-(1 / 2 : ℝ)) ≤ geometricRatio := by
    apply Real.rpow_le_rpow_of_nonpos (by norm_num : (0 : ℝ) < 2)
      (by exact_mod_cast hp) (by norm_num)
  apply mul_le_mul_of_nonneg_left _ (integerMoment_nonneg p)
  exact mul_le_mul_of_nonneg_left
    (pow_le_pow_left₀ (Real.rpow_nonneg (Nat.cast_nonneg p) _) hratio _) (sq_nonneg _)

/-- Genuine product summability retains every integer base and exponent in the specified ranges. -/
theorem higherMoment_summable :
    Summable (fun q : {p : ℕ // 2 ≤ p} × {k : ℕ // 3 ≤ k} =>
      higherMoment q.1.val q.2.val) := by
  have hp := integerMoment_summable.subtype (fun p : ℕ => 2 ≤ p)
  have hk := exponentMoment_summable.subtype (fun k : ℕ => 3 ≤ k)
  have h := hp.mul_of_nonneg hk (fun p => integerMoment_nonneg p.val)
    (fun k => exponentMoment_nonneg k.val)
  exact Summable.of_nonneg_of_le (fun q => higherMoment_nonneg q.1.val q.2.val)
    (fun q => higherMoment_le_product q.1.val q.2.val q.1.property q.2.property) h

/-- The original prime/exponent occurrence product has a genuinely summable second log moment. -/
theorem primeHigherMoment_summable :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2) := by
  have hp := integerMoment_summable.subtype (fun p : ℕ => p.Prime)
  have hk := exponentMoment_summable.subtype (fun k : ℕ => 3 ≤ k)
  have h := hp.mul_of_nonneg hk (fun p => integerMoment_nonneg p.val)
    (fun k => exponentMoment_nonneg k.val)
  exact Summable.of_nonneg_of_le
    (fun q => higherMoment_nonneg q.1.val q.2.val)
    (fun q => higherMoment_le_product q.1.val q.2.val q.1.property.two_le q.2.property) h

/-- The squared logarithmic location is at least one on the actual higher-power index set. -/
theorem logLocation_sq_ge_one (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    1 ≤ ((k : ℝ) * Real.log (p : ℝ)) ^ 2 := by
  have hlog2 := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlogp := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (by exact_mod_cast hp : (2 : ℝ) ≤ p)
  have hlog : (1 / 2 : ℝ) ≤ Real.log (p : ℝ) := by norm_num at hlog2; linarith
  have hm := mul_le_mul (by exact_mod_cast hk : (3 : ℝ) ≤ k) hlog
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (Nat.cast_nonneg k)
  nlinarith

/-- The unweighted higher-power coefficient is bounded by its second logarithmic moment. -/
theorem higherWeight_le_moment (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) ≤ higherMoment p k := by
  exact le_mul_of_one_le_right (by positivity) (logLocation_sq_ge_one p k hp hk)

/-- The prime-power constant itself is a genuine absolutely convergent sum. -/
theorem primeHigherWeight_summable :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)) := by
  apply Summable.of_nonneg_of_le (fun q => by positivity) _ primeHigherMoment_summable
  intro q
  exact higherWeight_le_moment q.1.val q.2.val q.1.property.two_le q.2.property

end
end HigherPowerMomentScratch

open HigherPowerMomentScratch
noncomputable section
example (n : ℕ) : integerMoment n = Real.log (n : ℝ) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ)) := rfl

example (p k : ℕ) : higherMoment p k = Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) * ((k : ℝ) * Real.log (p : ℝ)) ^ 2 := rfl

example : geometricRatio = (2 : ℝ) ^ (-(1 / 2 : ℝ)) := rfl

example (k : ℕ) : exponentMoment k = (k : ℝ) ^ 2 * geometricRatio ^ (k - 3) := rfl

example (n : ℕ) : 0 ≤ integerMoment n :=
  HigherPowerMomentScratch.integerMoment_nonneg n

example (p k : ℕ) : 0 ≤ higherMoment p k :=
  HigherPowerMomentScratch.higherMoment_nonneg p k

example : 0 < geometricRatio :=
  HigherPowerMomentScratch.geometricRatio_pos

example : geometricRatio < 1 :=
  HigherPowerMomentScratch.geometricRatio_lt_one

example (k : ℕ) : 0 ≤ exponentMoment k :=
  HigherPowerMomentScratch.exponentMoment_nonneg k

example (n : ℕ) :
    integerMoment n ≤ 1728 * (n : ℝ) ^ (-(5 / 4 : ℝ)) :=
  HigherPowerMomentScratch.integerMoment_le n

example : Summable integerMoment :=
  HigherPowerMomentScratch.integerMoment_summable

example : Summable exponentMoment :=
  HigherPowerMomentScratch.exponentMoment_summable

example (p k : ℕ) (hk : 3 ≤ k) :
    higherMoment p k = integerMoment p *
      ((k : ℝ) ^ 2 * ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3)) :=
  HigherPowerMomentScratch.higherMoment_factorization p k hk

example (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    higherMoment p k ≤ integerMoment p * exponentMoment k :=
  HigherPowerMomentScratch.higherMoment_le_product p k hp hk

example :
    Summable (fun q : {p : ℕ // 2 ≤ p} × {k : ℕ // 3 ≤ k} =>
      higherMoment q.1.val q.2.val) :=
  HigherPowerMomentScratch.higherMoment_summable

example :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2) :=
  HigherPowerMomentScratch.primeHigherMoment_summable

example (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    1 ≤ ((k : ℝ) * Real.log (p : ℝ)) ^ 2 :=
  HigherPowerMomentScratch.logLocation_sq_ge_one p k hp hk

example (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) ≤ higherMoment p k :=
  HigherPowerMomentScratch.higherWeight_le_moment p k hp hk

example :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)) :=
  HigherPowerMomentScratch.primeHigherWeight_summable
end
```
