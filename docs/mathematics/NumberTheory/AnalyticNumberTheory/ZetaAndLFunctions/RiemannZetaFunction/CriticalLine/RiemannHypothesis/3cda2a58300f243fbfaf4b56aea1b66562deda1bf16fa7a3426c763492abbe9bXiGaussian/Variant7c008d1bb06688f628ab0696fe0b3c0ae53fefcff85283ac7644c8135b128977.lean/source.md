# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian.Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db97b6f9b0ada1cc83c690d9f9c9250e95df59db` · SHA-256 `d146455333cfe544560d72042b0f71a9f9089c8bc5374a82234f93d119a3fa15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiGaussianWeightLe.Variant3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiGaussianWeightLe.Variant3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3c/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9b--XiGaussian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiSectionObstruction

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiGaussianWeightLe.Variant3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9b

namespace FormalResearch.RiemannHypothesis.XiSectionObstruction
open XiToeplitz ThetaPositiveLift
open Filter MeasureTheory Set
open scoped Topology
noncomputable section

theorem thetaPhi_gaussian_weight_le {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * Real.exp (4 * t ^ 2) ≤ thetaPhiDecayConstant * Real.exp (-t) := by
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hpi := mul_le_mul_of_nonneg_right Real.pi_gt_three.le (Real.exp_pos (4 * t)).le
  have hdebt : 10 * t + 4 * t ^ 2 ≤ (Real.pi / 2) * Real.exp (4 * t) := by
    nlinarith [sq_nonneg (4 * t - 1)]
  calc
    _ ≤ (thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) * Real.exp (4 * t ^ 2) :=
      mul_le_mul_of_nonneg_right (thetaPhi_le_superexp ht) (Real.exp_pos _).le
    _ = thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t) + 4 * t ^ 2) := by
      rw [Real.exp_add]; ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by linarith))
      thetaPhiDecayConstant_positive.le

theorem coefficient_factorial_bound (n : ℕ) :
    coefficient n * (n.factorial : ℝ) ≤ 8 * thetaPhiDecayConstant := by
  have hfac : (n.factorial : ℝ) ^ 2 ≤ ((2 * n).factorial : ℝ) := by
    exact_mod_cast (show n.factorial ^ 2 ≤ (2 * n).factorial by
      rw [pow_two, two_mul]
      exact Nat.le_of_dvd (Nat.factorial_pos _)
        (Nat.factorial_mul_factorial_dvd_factorial_add n n))
  have hfpos : (0 : ℝ) < n.factorial := by positivity
  have hi : thetaMoment n ≤ (n.factorial : ℝ) * thetaPhiDecayConstant := by
    have hbound : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
        thetaPhi t * (2 * t) ^ (2 * n) ≤
          (n.factorial : ℝ) * (thetaPhiDecayConstant * Real.exp (-t)) := by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have ht0 : 0 ≤ t := ht.le
      have hp := Real.pow_div_factorial_le_exp (4 * t ^ 2) (by positivity) n
      have hp' : (2 * t) ^ (2 * n) ≤
          (n.factorial : ℝ) * Real.exp (4 * t ^ 2) := by
        have := (div_le_iff₀ hfpos).mp hp
        rw [show (2 * t) ^ (2 * n) = (4 * t ^ 2) ^ n by
          rw [pow_mul]; congr 1; ring]
        nlinarith
      calc
        _ ≤ thetaPhi t * ((n.factorial : ℝ) * Real.exp (4 * t ^ 2)) :=
          mul_le_mul_of_nonneg_left hp' (thetaPhi_positive t ht0).le
        _ = (n.factorial : ℝ) * (thetaPhi t * Real.exp (4 * t ^ 2)) := by ring
        _ ≤ _ := mul_le_mul_of_nonneg_left (thetaPhi_gaussian_weight_le ht0) hfpos.le
    have h := integral_mono_ae (thetaMoment_integrable n)
      (((integrableOn_exp_neg_Ioi 0).const_mul thetaPhiDecayConstant).const_mul
        (n.factorial : ℝ)) hbound
    simpa only [thetaMoment, integral_const_mul, integral_exp_neg_Ioi_zero, mul_one] using h
  have hcpos := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n
  have hc := coefficient_mul_factorial n
  have hh := mul_le_mul_of_nonneg_left hfac hcpos.le
  have htotal : coefficient n * (n.factorial : ℝ) ^ 2 ≤
      8 * ((n.factorial : ℝ) * thetaPhiDecayConstant) := by
    calc
      _ ≤ coefficient n * ((2 * n).factorial : ℝ) := hh
      _ = 8 * thetaMoment n := hc
      _ ≤ _ := mul_le_mul_of_nonneg_left hi (by norm_num)
  apply (mul_le_mul_iff_left₀ hfpos).mp
  nlinarith

theorem coefficient_ratio_frequently_large (N : ℕ) :
    ∃ n : ℕ, N ≤ n ∧ coefficient (n + 1) * (n + 1 : ℕ) ≤ 2 * coefficient n := by
  by_contra! h
  let b : ℕ → ℝ := fun n => coefficient n * (n.factorial : ℝ)
  have hbpos : 0 < b N := mul_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula N) (by positivity)
  have hstep (n : ℕ) (hn : N ≤ n) : 2 * b n < b (n + 1) := by
    have hh := mul_lt_mul_of_pos_right (h n hn) (by positivity : (0 : ℝ) < n.factorial)
    simpa [b, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one, mul_assoc] using hh
  have hg (k : ℕ) : b N * (2 : ℝ) ^ k ≤ b (N + k) := by
    induction k with
    | zero => simp
    | succ k ih =>
      have hs := hstep (N + k) (by omega)
      rw [pow_succ]
      change b N * (2 ^ k * 2) ≤ b (N + k + 1)
      nlinarith
  obtain ⟨k, hk⟩ := pow_unbounded_of_one_lt
    (8 * thetaPhiDecayConstant / b N) (by norm_num : (1 : ℝ) < 2)
  have hh := (div_lt_iff₀ hbpos).mp hk
  have hu := coefficient_factorial_bound (N + k)
  have hl := hg k
  change b (N + k) ≤ 8 * thetaPhiDecayConstant at hu
  nlinarith

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
```
