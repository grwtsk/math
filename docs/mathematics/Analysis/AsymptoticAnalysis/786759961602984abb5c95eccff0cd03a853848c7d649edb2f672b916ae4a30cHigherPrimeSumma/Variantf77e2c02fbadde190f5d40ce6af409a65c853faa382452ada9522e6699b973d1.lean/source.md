# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma.Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `624b234ace6b95c789cb23023337af8959fcedc0` · SHA-256 `fb73b60e802802f7c23d5c4d02c66e7dde8b515321cd958e8f576c15c35f471e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SqrtNatPow.Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SqrtNatPow.Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/78/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c--HigherPrimeSummable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.PSeries
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.NumberTheory.SumPrimeReciprocals
import Mathlib.Tactic


namespace GRWTSK.Analysis.AsymptoticAnalysis.SqrtNatPow.Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c

open scoped BigOperators

noncomputable section

theorem sqrt_nat_pow (x : ℝ) (hx : 0 ≤ x) (k : ℕ) :
    Real.sqrt (x ^ k) = Real.sqrt x ^ k := by
  induction k with
  | zero => simp
  | succ k ih => rw [pow_succ, Real.sqrt_mul (pow_nonneg hx k), ih, pow_succ]

theorem log_div_sqrt_cube_le (p : Nat.Primes) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3 ≤
      4 * (p : ℝ) ^ (-5 / 4 : ℝ) := by
  have hp : 0 < (p : ℝ) := by exact_mod_cast p.prop.pos
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.mpr hp
  have hlog := Real.log_le_rpow_div hp.le (by norm_num : 0 < (1 / 4 : ℝ))
  have hcube : Real.sqrt (p : ℝ) ^ 3 = (p : ℝ) ^ (3 / 2 : ℝ) := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul hp.le]
    norm_num
  calc
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3 ≤
        ((p : ℝ) ^ (1 / 4 : ℝ) / (1 / 4 : ℝ)) /
          Real.sqrt (p : ℝ) ^ 3 := div_le_div_of_nonneg_right hlog (by positivity)
    _ = 4 * (p : ℝ) ^ (-5 / 4 : ℝ) := by
      rw [hcube]
      calc
        _ = 4 * ((p : ℝ) ^ (1 / 4 : ℝ) / (p : ℝ) ^ (3 / 2 : ℝ)) := by ring
        _ = _ := by rw [← Real.rpow_sub hp]; norm_num

theorem prime_inv_sqrt_le_three_quarters (p : Nat.Primes) :
    (Real.sqrt (p : ℝ))⁻¹ ≤ (3 / 4 : ℝ) := by
  have hp : (2 : ℝ) ≤ p := by exact_mod_cast p.prop.two_le
  have hs := Real.sqrt_nonneg (p : ℝ)
  have hss := Real.sq_sqrt (by positivity : 0 ≤ (p : ℝ))
  have hpos : 0 < Real.sqrt (p : ℝ) := by positivity
  apply (inv_le_iff_one_le_mul₀ hpos).mpr
  nlinarith

theorem higher_prime_weight_le (p : Nat.Primes) (k : ℕ) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ (k + 3) ≤
      4 * (p : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ k := by
  have hp : (1 : ℝ) ≤ p := by exact_mod_cast p.prop.one_le
  have hs : 0 < Real.sqrt (p : ℝ) := by positivity
  calc
    _ = (Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3) *
        (Real.sqrt (p : ℝ))⁻¹ ^ k := by
      rw [pow_add, inv_pow]
      ring
    _ ≤ (4 * (p : ℝ) ^ (-5 / 4 : ℝ)) * (3 / 4 : ℝ) ^ k := by
      apply mul_le_mul
      · exact log_div_sqrt_cube_le p
      · exact pow_le_pow_left₀ (by positivity) (prime_inv_sqrt_le_three_quarters p) k
      · positivity
      · positivity

theorem summable_higher_prime_weights :
    Summable (fun pk : Nat.Primes × ℕ ↦
      Real.log (pk.1 : ℝ) / Real.sqrt (pk.1 : ℝ) ^ (pk.2 + 3)) := by
  have hgeom : Summable (fun k : ℕ ↦ (3 / 4 : ℝ) ^ k) :=
    summable_geometric_of_lt_one (by norm_num) (by norm_num)
  have hpseries : Summable (fun p : Nat.Primes ↦ (p : ℝ) ^ (-5 / 4 : ℝ)) := by
    exact Nat.Primes.summable_rpow.mpr (by norm_num : (-5 / 4 : ℝ) < -1)
  have hmajorant : Summable (fun pk : Nat.Primes × ℕ ↦
      4 * (pk.1 : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ pk.2) := by
    apply (summable_prod_of_nonneg (show 0 ≤ (fun pk : Nat.Primes × ℕ ↦
      4 * (pk.1 : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ pk.2) from
        fun _ ↦ by positivity)).mpr
    refine ⟨fun p ↦ ?_, ?_⟩
    · dsimp only
      exact hgeom.mul_left (4 * (p : ℝ) ^ (-5 / 4 : ℝ))
    dsimp only
    simp_rw [tsum_mul_left, tsum_geometric_of_lt_one (by norm_num : 0 ≤ (3 / 4 : ℝ))
      (by norm_num : (3 / 4 : ℝ) < 1)]
    exact (hpseries.mul_left 16).congr (fun p ↦ by ring)
  apply hmajorant.of_nonneg_of_le
  · intro pk
    apply div_nonneg
    · apply Real.log_nonneg
      exact_mod_cast pk.1.prop.one_le
    · positivity
  · intro pk
    exact higher_prime_weight_le pk.1 pk.2
```
