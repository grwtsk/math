# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadratureStatements.Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `487f7d507ce93f95394d04e1b779b236abf2bb04` · SHA-256 `290a8ea37f98bc3348fd7caf1bd7950a9e9026a165c8a16bc80e5b4cf2c3dbc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadrature.Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogSquareQuadrature.Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f","mathematical_subject":"Analysis.Integration","original_sha256":"6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mobius-quadrature/LogSquareQuadratureStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Log-square quadrature with the actual fractional endpoint

The integer-prefix rectangular error is nonnegative and at most the final
logarithmic square. The remaining fractional interval is retained and bounded
separately, giving a two-sided error bound for every real endpoint at least one.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadrature.Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f

namespace LogSquareQuadratureScratch
open MeasureTheory Set
noncomputable section

/-- The exact integer-prefix minus integral discrepancy, retaining the fractional endpoint. -/
def logSquareQuadrature (y : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 ⌊y⌋₊, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2

theorem logSquare_monotoneOn : MonotoneOn (fun t : ℝ => (Real.log t) ^ 2) (Ici 1) := by
  intro a ha b _ hab
  exact pow_le_pow_left₀ (Real.log_nonneg ha)
    (Real.log_le_log (lt_of_lt_of_le zero_lt_one ha) hab) 2

theorem logSquare_intervalIntegrable (a b : ℝ) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    IntervalIntegrable (fun t : ℝ => (Real.log t) ^ 2) volume a b := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ((le_min ha hb).trans ht.1)
  exact ((Real.continuousAt_log ht0.ne').pow 2).continuousWithinAt

theorem logSquare_integer_bounds (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      ∫ t in 1..(N : ℝ), (Real.log t) ^ 2 ∧
    (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      (∫ t in 1..(N : ℝ), (Real.log t) ^ 2) ≤ (Real.log (N : ℝ)) ^ 2 := by
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNext : (1 : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast (by omega : 1 ≤ N + 1)
    have hle : (N : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast Nat.le_succ N
    have hi := logSquare_intervalIntegrable (N : ℝ) (N + 1 : ℕ) hN1 hNext
    have hlo : (Real.log (N : ℝ)) ^ 2 ≤
        ∫ t in (N : ℝ)..(N + 1 : ℕ), (Real.log t) ^ 2 := by
      have h := intervalIntegral.integral_mono_on hle
        (intervalIntegrable_const : IntervalIntegrable
          (fun _ : ℝ => (Real.log (N : ℝ)) ^ 2) volume (N : ℝ) (N + 1 : ℕ)) hi
        (fun t ht => logSquare_monotoneOn hN1 (hN1.trans ht.1) ht.1)
      simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
        add_sub_cancel_left, smul_eq_mul, one_mul] using h
    have hhi : (∫ t in (N : ℝ)..(N + 1 : ℕ), (Real.log t) ^ 2) ≤
        (Real.log (N + 1 : ℕ)) ^ 2 := by
      have h := intervalIntegral.integral_mono_on hle hi
        (intervalIntegrable_const : IntervalIntegrable
          (fun _ : ℝ => (Real.log (N + 1 : ℕ)) ^ 2) volume (N : ℝ) (N + 1 : ℕ))
        (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hNext ht.2)
      simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
        add_sub_cancel_left, smul_eq_mul, one_mul] using h
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    constructor <;> linarith [ih.1, ih.2]

theorem logSquareQuadrature_abs_le (y : ℝ) (hy : 1 ≤ y) :
    |logSquareQuadrature y| ≤ (Real.log y) ^ 2 := by
  let N := ⌊y⌋₊
  have hN : 1 ≤ N := Nat.le_floor (by simpa using hy)
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hNy : (N : ℝ) ≤ y := Nat.floor_le (zero_le_one.trans hy)
  have hgap : y - (N : ℝ) ≤ 1 := by
    have h := Nat.lt_floor_add_one y
    dsimp only [N]
    linarith
  have hi := logSquare_intervalIntegrable (N : ℝ) y hN1 hy
  have hzero : 0 ≤ ∫ t in (N : ℝ)..y, (Real.log t) ^ 2 :=
    intervalIntegral.integral_nonneg hNy (fun _ _ => sq_nonneg _)
  have htail : (∫ t in (N : ℝ)..y, (Real.log t) ^ 2) ≤ (Real.log y) ^ 2 := by
    have hb := intervalIntegral.integral_mono_on hNy hi
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (Real.log y) ^ 2)
        volume (N : ℝ) y)
      (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hy ht.2)
    rw [intervalIntegral.integral_const, smul_eq_mul] at hb
    exact hb.trans (mul_le_of_le_one_left (sq_nonneg _) hgap)
  have hmono := logSquare_monotoneOn hN1 hy hNy
  have hb := logSquare_integer_bounds N hN
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
  change |(∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2| ≤ _
  exact abs_le.mpr ⟨by linarith [hb.1], by linarith [hb.2]⟩

end
end LogSquareQuadratureScratch

open MeasureTheory Set
open LogSquareQuadratureScratch

example (y : ℝ) : logSquareQuadrature y =
    (∑ m ∈ Finset.Icc 1 ⌊y⌋₊, (Real.log (m : ℝ)) ^ 2) -
      ∫ t in 1..y, (Real.log t) ^ 2 := rfl

example : MonotoneOn (fun t : ℝ => (Real.log t) ^ 2) (Ici 1) :=
  LogSquareQuadratureScratch.logSquare_monotoneOn

example (a b : ℝ) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    IntervalIntegrable (fun t : ℝ => (Real.log t) ^ 2) volume a b :=
  LogSquareQuadratureScratch.logSquare_intervalIntegrable a b ha hb

example (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      ∫ t in 1..(N : ℝ), (Real.log t) ^ 2 ∧
    (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      (∫ t in 1..(N : ℝ), (Real.log t) ^ 2) ≤ (Real.log (N : ℝ)) ^ 2 :=
  LogSquareQuadratureScratch.logSquare_integer_bounds N hN

example (y : ℝ) (hy : 1 ≤ y) :
    |logSquareQuadrature y| ≤ (Real.log y) ^ 2 :=
  LogSquareQuadratureScratch.logSquareQuadrature_abs_le y hy

```
