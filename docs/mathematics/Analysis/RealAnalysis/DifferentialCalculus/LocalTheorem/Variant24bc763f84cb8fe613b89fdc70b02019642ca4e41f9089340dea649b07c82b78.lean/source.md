# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocalTheorem.Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b333272f1c0715bbcfdd65cb845f372585c2424a` · SHA-256 `88d4b490b9378b184d9532fe83f74a0bfad4f0055bd617258e0aa5f463f48262`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InnerCutoff.Variant63af9a0939ee491ad46a63710e96b799eaa1e65e2c7b01013d7a7615ea45f0b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63af9a0939ee491ad46a63710e96b799eaa1e65e2c7b01013d7a7615ea45f0b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.InnerCutoff.Variant63af9a0939ee491ad46a63710e96b799eaa1e65e2c7b01013d7a7615ea45f0b8","mathematical_subject":"Analysis.Calculus","original_sha256":"63af9a0939ee491ad46a63710e96b799eaa1e65e2c7b01013d7a7615ea45f0b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/inner-abel-20261005/independent-replay/LocalTheorem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CenteredAbel
import Budgets
import ActualSource

/-!
Actual-source specialization of the generic endpoint-correct Abel identity.
Direction: grwtsk contributors. Proof development: OpenAI Codex.
Local proof packet only; no accepted integration or all-scale signed witness.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InnerCutoff.Variant63af9a0939ee491ad46a63710e96b799eaa1e65e2c7b01013d7a7615ea45f0b8

set_option autoImplicit false
namespace InnerAbel.Actual
open MeasureTheory Set
open CenteredAbelCandidate InnerAbel.Budgets InnerAbelSourceCandidate
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

def innerCutoff (A d : ℝ) : ℝ := Real.exp (2 * A) / d

def innerRemainder (A d : ℝ) : ℝ :=
  ∫ y in (1 : ℝ)..innerCutoff A d,
    (fracPlus y - 1 / 2) * deriv (logProfile A d) y

theorem innerRemainder_integrand_intervalIntegrable {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    IntervalIntegrable (fun y =>
      (fracPlus y - 1 / 2) * deriv (logProfile A d) y) volume 1 (innerCutoff A d) := by
  apply centered_deriv_intervalIntegrable (logProfile_contDiff (by linarith) d)
  exact (le_div_iff₀ (by linarith : 0 < d)).2 (by simpa [innerCutoff])

theorem innerCutoff_ge_one {A d : ℝ} (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    1 ≤ innerCutoff A d := by
  unfold innerCutoff
  exact (le_div_iff₀ (by linarith : 0 < d)).2 (by simpa)

theorem innerCutoff_mul {A d : ℝ} (hd : 0 < d) :
    d * innerCutoff A d = Real.exp (2 * A) := by
  unfold innerCutoff
  field_simp

theorem innerCutoff_log {A d : ℝ} (hd : 0 < d) :
    Real.log (d * innerCutoff A d) = 2 * A := by
  rw [innerCutoff_mul hd, Real.log_exp]

theorem logProfile_at_cutoff {A d : ℝ} (hA : 1 ≤ A) (hd : 1 ≤ d) :
    logProfile A d (innerCutoff A d) = 0 := by
  rw [logProfile_eq_log_mul]
  have he : Real.exp (2 * A - Real.log d) = innerCutoff A d := by
    rw [Real.exp_sub, Real.exp_log (by linarith : 0 < d)]
    rfl
  rw [plainProfile_zero_above (by linarith : 0 < A) d (by rw [he]), mul_zero]

theorem innerRemainder_eq_uncentered {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    innerRemainder A d =
      ∫ y in (1 : ℝ)..innerCutoff A d, fracPlus y * deriv (logProfile A d) y := by
  exact centered_eq_uncentered_of_endpoints_zero
    (logProfile_contDiff (by linarith) d) (innerCutoff_ge_one hd hdX)
    (logProfile_at_one A d) (logProfile_at_cutoff hA hd)

theorem innerRemainder_abs_le {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    |innerRemainder A d| ≤ (2 + 10 / A) / Real.sqrt d := by
  have hY := innerCutoff_ge_one hd hdX
  have he : innerRemainder A d =
      ∫ y in (1 : ℝ)..innerCutoff A d,
        (Int.fract y - 1 / 2) * deriv (logProfile A d) y := by
    unfold innerRemainder
    apply intervalIntegral.integral_congr
    rw [uIcc_of_le hY]
    intro y hy
    dsimp only
    rw [fracPlus_eq_fract (by linarith [hy.1])]
  rw [he]
  apply centered_error_bound hA hd hY
  intro y hy
  convert logProfile_deriv_abs_le_density hA hd hy.1 using 1
  ring

theorem innerRemainder_abs_le_twelve {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    |innerRemainder A d| ≤ 12 / Real.sqrt d :=
  (innerRemainder_abs_le hA hd hdX).trans (error_budget_le_twelve hA hd)

theorem inner_sum_eq {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    (∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊,
      Real.log m * plainProfile A 1 (d * m)) =
      (∫ y in (1 : ℝ)..innerCutoff A d,
        Real.log y / Real.sqrt (d * y) *
          sourceCorrelation explicitSecondDerivative A (Real.log (d * y))) +
      innerRemainder A d := by
  have hY := innerCutoff_ge_one hd hdX
  have h := sum_eq_integral_add_centered
    (logProfile_contDiff (by linarith : 0 < A) d) hY
  rw [logProfile_at_one A d, logProfile_at_cutoff hA hd] at h
  simp only [mul_zero, add_zero] at h
  have hs : (∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊,
      Real.log m * plainProfile A 1 (d * m)) =
      ∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊, logProfile A d m := by
    apply Finset.sum_congr rfl
    intro m hm
    have hmpos : (0 : ℝ) < m := by
      exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hm).1)
    rw [logProfile_eq_log_mul, plainProfile_scale_identity (by linarith) hmpos]
  rw [hs, h]
  congr 1
  apply intervalIntegral.integral_congr
  rw [uIcc_of_le hY]
  intro y hy
  exact logProfile_eq_literal (by linarith) (by linarith [hy.1])

theorem inner_sum_abel_estimate {A : ℝ} {d : ℕ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : (d : ℝ) ≤ Real.exp (2 * A)) :
    (∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊,
      Real.log m * plainProfile A 1 ((d : ℝ) * m)) =
      (∫ y in (1 : ℝ)..innerCutoff A d,
        Real.log y / Real.sqrt ((d : ℝ) * y) *
          sourceCorrelation explicitSecondDerivative A (Real.log ((d : ℝ) * y))) +
      innerRemainder A d ∧
    |innerRemainder A d| ≤ (2 + 10 / A) / Real.sqrt d ∧
    |innerRemainder A d| ≤ 12 / Real.sqrt d := by
  have hdr : (1 : ℝ) ≤ d := by exact_mod_cast hd
  exact ⟨inner_sum_eq hA hdr hdX, innerRemainder_abs_le hA hdr hdX,
    innerRemainder_abs_le_twelve hA hdr hdX⟩

theorem innerCutoff_log_ge_scale {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdA : d ≤ Real.exp A) :
    A ≤ Real.log (innerCutoff A d) := by
  have ha : 0 < A := by linarith
  have hd0 : 0 < d := by linarith
  have hl : Real.log d ≤ A := by
    simpa only [Real.log_exp] using Real.log_le_log hd0 hdA
  rw [innerCutoff, Real.log_div (Real.exp_ne_zero _) hd0.ne', Real.log_exp]
  linarith

theorem innerRemainder_abs_le_logarithmic {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdA : d ≤ Real.exp A) :
    |innerRemainder A d| ≤
      12 * Real.log (Real.exp (2 * A) / d) / Real.sqrt d := by
  have hX : d ≤ Real.exp (2 * A) :=
    hdA.trans (Real.exp_le_exp.mpr (by linarith))
  apply (innerRemainder_abs_le_twelve hA hd hX).trans
  have hl : 1 ≤ Real.log (innerCutoff A d) := hA.trans (innerCutoff_log_ge_scale hA hd hdA)
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
  change 12 ≤ 12 * Real.log (innerCutoff A d)
  linarith

theorem innerRemainder_at_support_equality {A d : ℝ}
    (hdX : d = Real.exp (2 * A)) : innerRemainder A d = 0 := by
  unfold innerRemainder innerCutoff
  rw [hdX, div_self (Real.exp_ne_zero _), intervalIntegral.integral_same]

#check inner_sum_abel_estimate
#check innerRemainder_abs_le_logarithmic
#print axioms inner_sum_abel_estimate
#print axioms innerRemainder_abs_le_logarithmic
#print axioms innerRemainder_eq_uncentered
#print axioms innerRemainder_at_support_equality
end
end InnerAbel.Actual
```
