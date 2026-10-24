# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualHeatDeficit.Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `117ada60642589b4db151ec3f90a06529585b414` · SHA-256 `6591a3daa90050dc18cb7b6ed661233251c4640abaf2e64fd843db087cc7064e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualDelta.Variantd4c30723d392db0eec95b2b77ee38babe48e3cf590e598bc22d8234418713d96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4c30723d392db0eec95b2b77ee38babe48e3cf590e598bc22d8234418713d96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualDelta.Variantd4c30723d392db0eec95b2b77ee38babe48e3cf590e598bc22d8234418713d96","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"d4c30723d392db0eec95b2b77ee38babe48e3cf590e598bc22d8234418713d96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceActualHeatDeficit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceHeatDeficit
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import Mathlib.Topology.Algebra.InfiniteSum.Constructions

/-!
# Heat deficits on the actual multiplicity-bearing zeta zeros

The existing unconditional inverse-sixth zero tail supplies Gaussian
summability at every positive heat time. Each analytic-multiplicity occurrence
is counted once; regrouping gives the same natural multiplicity on distinct
zero points. The actual strip supplies the displacement bound.

Exclusion and exhaustive coverage are conditional on explicit strict deficit
certificates. No independent arithmetic/source computation of these deficits,
certificate witness, uniform signed arithmetic cap, or RH proof is supplied.

Research direction: grwtsk contributors. This particular summability transport
and conditional formal construction: OpenAI Codex, 7 October 2026.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualDelta.Variantd4c30723d392db0eec95b2b77ee38babe48e3cf590e598bc22d8234418713d96

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceActualHeatDeficit

open Filter
open scoped Topology
open SourceHeatDeficit
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject

/-- Displacement of an actual zero occurrence from the critical line. -/
def actualDelta (o : ZeroOccurrence) : ℝ := o.1.val.re - 1 / 2

/-- Imaginary height of the same actual zero occurrence. -/
def actualGamma (o : ZeroOccurrence) : ℝ := o.1.val.im

/-- Every actual occurrence has displacement in the closed half-width strip. -/
theorem actualDelta_abs_le_half (o : ZeroOccurrence) : |actualDelta o| ≤ 1 / 2 := by
  rw [abs_le]
  unfold actualDelta
  constructor <;> linarith [o.1.property.2.1, o.1.property.2.2]

/-- The shifted complex source norm separates actual displacement and height. -/
theorem shiftedValue_norm_sq (o : ZeroOccurrence) :
    ‖shiftedValue o‖ ^ 2 = actualDelta o ^ 2 + actualGamma o ^ 2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [shiftedValue, Complex.sub_re, Complex.sub_im, Complex.div_ofNat_re,
    Complex.div_ofNat_im, Complex.one_re, Complex.one_im,
    actualDelta, actualGamma]
  ring

/-- An explicit polynomial-Gaussian comparison with the sixth-power source tail. -/
theorem gaussian_polynomial_bound {t : ℝ} (ht : 0 < t) {r : ℝ} (hr : 0 ≤ r) :
    (1 + r) ^ 6 * Real.exp (-t * r ^ 2) ≤ 32 * (1 + 6 / t ^ 3) := by
  have hpoly : (1 + r) ^ 6 ≤ 32 * (1 + r ^ 6) := by
    have h := add_pow_le (by norm_num : (0 : ℝ) ≤ 1) hr 6
    norm_num at h
    exact h
  have he : Real.exp (-t * r ^ 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith [sq_nonneg r])
  have hseries := Real.pow_div_factorial_le_exp (t * r ^ 2)
    (show 0 ≤ t * r ^ 2 by positivity) 3
  norm_num at hseries
  have hm := mul_le_mul_of_nonneg_right hseries
    (Real.exp_pos (-t * r ^ 2)).le
  have hexp : Real.exp (t * r ^ 2) * Real.exp (-t * r ^ 2) = 1 := by
    rw [← Real.exp_add, show t * r ^ 2 + -t * r ^ 2 = 0 by ring, Real.exp_zero]
  rw [hexp] at hm
  have hscaled : t ^ 3 * (r ^ 6 * Real.exp (-t * r ^ 2)) ≤ 6 := by
    nlinarith [hm]
  have hdegree : r ^ 6 * Real.exp (-t * r ^ 2) ≤ 6 / t ^ 3 := by
    apply (le_div_iff₀ (pow_pos ht 3)).mpr
    nlinarith [hscaled]
  calc
    _ ≤ (32 * (1 + r ^ 6)) * Real.exp (-t * r ^ 2) :=
      mul_le_mul_of_nonneg_right hpoly (Real.exp_pos _).le
    _ ≤ _ := by nlinarith [he, hdegree]

/-- A Gaussian at actual height is dominated by the already proved radial zero tail. -/
theorem actualGaussian_le_source_weight {t : ℝ} (ht : 0 < t) (o : ZeroOccurrence) :
    Real.exp (-t * actualGamma o ^ 2) ≤
      (Real.exp (t / 4) * (32 * (1 + 6 / t ^ 3))) *
        (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
  have hd : actualDelta o ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    simpa only [sq_abs] using
      (sq_le_sq₀ (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)).2
        (actualDelta_abs_le_half o)
  have he : Real.exp (-t * actualGamma o ^ 2) ≤
      Real.exp (t / 4) * Real.exp (-t * ‖shiftedValue o‖ ^ 2) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    rw [shiftedValue_norm_sq]
    nlinarith
  have hp := gaussian_polynomial_bound ht (norm_nonneg (shiftedValue o))
  have hb : (1 + ‖shiftedValue o‖) ^ 6 * Real.exp (-t * actualGamma o ^ 2) ≤
      Real.exp (t / 4) * (32 * (1 + 6 / t ^ 3)) := by
    calc
      _ ≤ (1 + ‖shiftedValue o‖) ^ 6 *
          (Real.exp (t / 4) * Real.exp (-t * ‖shiftedValue o‖ ^ 2)) :=
        mul_le_mul_of_nonneg_left he (by positivity)
      _ = Real.exp (t / 4) *
          ((1 + ‖shiftedValue o‖) ^ 6 * Real.exp (-t * ‖shiftedValue o‖ ^ 2)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hp (Real.exp_pos _).le
  rw [show (-6 : ℝ) = -(6 : ℝ) by norm_num,
    Real.rpow_neg (by positivity), Real.rpow_ofNat, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < (1 + ‖shiftedValue o‖) ^ 6)).mpr
  simpa only [mul_comm] using hb

/-- The existing complete, multiplicity-aware sixth-power tail gives actual
Gaussian summability at every positive time, without an RH premise. -/
theorem actualGaussian_summable {t : ℝ} (ht : 0 < t) :
    Summable (fun o : ZeroOccurrence => gaussianTerm t 1 (actualGamma o)) := by
  have hs : Summable (fun o : ZeroOccurrence =>
      (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) := ZeroShellCount.zero_summability
  simpa only [gaussianTerm, Nat.cast_one, one_mul] using
    Summable.of_nonneg_of_le (fun o => (Real.exp_pos _).le)
      (actualGaussian_le_source_weight ht)
      (hs.mul_left (Real.exp (t / 4) * (32 * (1 + 6 / t ^ 3))))

/-- The actual displacement deficit is summable on all analytic-multiplicity slots. -/
theorem actualDeficit_summable {t : ℝ} (ht : 0 < t) :
    Summable (fun o : ZeroOccurrence =>
      deficitTerm t 1 (actualDelta o) (actualGamma o)) :=
  deficit_summable_of_gaussian ht.le (fun _ => 1) actualDelta actualGamma
    actualDelta_abs_le_half (actualGaussian_summable ht)

/-- Height-only Gaussian mass counts every analytic-multiplicity occurrence once. -/
def actualGaussianMass (t : ℝ) : ℝ :=
  gaussianMass t (fun _ : ZeroOccurrence => 1) actualGamma

/-- The heat deficit uses the same actual zero inventory and multiplicity slots. -/
def actualHeatDeficit (t : ℝ) : ℝ :=
  heatDeficit t (fun _ : ZeroOccurrence => 1) actualDelta actualGamma

/-- Regrouping occurrence slots recovers the genuine analytic multiplicity on distinct points. -/
theorem actualGaussianMass_eq_multiplicity_sum {t : ℝ} (ht : 0 < t) :
    actualGaussianMass t = ∑' p : ZeroPoint, gaussianTerm t (multiplicity p) p.val.im := by
  unfold actualGaussianMass gaussianMass
  calc
    _ = ∑' p : ZeroPoint, ∑' _i : Fin (multiplicity p), gaussianTerm t 1 p.val.im :=
      (actualGaussian_summable ht).tsum_sigma
    _ = _ := by
      simp only [gaussianTerm, Nat.cast_one, one_mul, tsum_const,
        Nat.card_eq_fintype_card, Fintype.card_fin, nsmul_eq_mul]

/-- The deficit counts each distinct point with precisely its analytic multiplicity. -/
theorem actualHeatDeficit_eq_multiplicity_sum {t : ℝ} (ht : 0 < t) :
    actualHeatDeficit t = ∑' p : ZeroPoint,
      deficitTerm t (multiplicity p) (p.val.re - 1 / 2) p.val.im := by
  unfold actualHeatDeficit heatDeficit
  calc
    _ = ∑' p : ZeroPoint, ∑' _i : Fin (multiplicity p),
        deficitTerm t 1 (p.val.re - 1 / 2) p.val.im :=
      (actualDeficit_summable ht).tsum_sigma
    _ = _ := by
      simp only [deficitTerm, gaussianTerm, Nat.cast_one, one_mul, tsum_const,
        Nat.card_eq_fintype_card, Fintype.card_fin, nsmul_eq_mul]
      congr 1
      funext p
      ring

/-- The actual whole deficit obeys the proved half-strip bound, with no missing zero tail. -/
theorem actualHeatDeficit_bounds {t : ℝ} (ht : 0 < t) :
    0 ≤ actualHeatDeficit t ∧ actualHeatDeficit t ≤ (t / 4) * actualGaussianMass t :=
  heatDeficit_bounds ht.le (fun _ => 1) actualDelta actualGamma
    actualDelta_abs_le_half (actualGaussian_summable ht)

/-- An independently supplied strict certificate excludes every actual zero
in the closed height/displacement region, including all multiplicities. -/
theorem actual_excludes_closed_region {t H epsilon : ℝ}
    (ht : 0 < t) (hH : 0 ≤ H) (hepsilon : 0 ≤ epsilon)
    (hcertificate : actualHeatDeficit t < detectionThreshold t H epsilon) :
    ∀ o : ZeroOccurrence, ¬(|actualGamma o| ≤ H ∧ epsilon ≤ |actualDelta o|) :=
  excludes_closed_region ht.le hH hepsilon (fun _ => 1) actualDelta actualGamma
    (fun _ => le_rfl) (actualDeficit_summable ht) hcertificate

/-- Exhaustive strict certificates force each actual displacement to vanish;
the certificates remain independent, unproved premises. -/
theorem actual_displacements_zero_of_exhausting_certificates
    (t H epsilon : ℕ → ℝ) (ht : ∀ j, 0 < t j)
    (hH : ∀ j, 0 < H j) (hepsilon : ∀ j, 0 < epsilon j)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (hcertificate : ∀ j,
      actualHeatDeficit (t j) < detectionThreshold (t j) (H j) (epsilon j)) :
    ∀ o : ZeroOccurrence, actualDelta o = 0 :=
  all_displacements_zero_of_exhausting_certificates
    (fun _ => 1) actualDelta actualGamma (fun _ => le_rfl)
    t H epsilon ht hH hepsilon hheight hwidth
    (fun j => actualDeficit_summable (ht j)) hcertificate

/-- The exact Mathlib RH target follows only if the displayed actual-zero
deficit certificates have separately been established at every exhausting region. -/
theorem riemannHypothesis_of_exhausting_actual_certificates
    (t H epsilon : ℕ → ℝ) (ht : ∀ j, 0 < t j)
    (hH : ∀ j, 0 < H j) (hepsilon : ∀ j, 0 < epsilon j)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (hcertificate : ∀ j,
      actualHeatDeficit (t j) < detectionThreshold (t j) (H j) (epsilon j)) :
    _root_.RiemannHypothesis := by
  intro s hs hz hp
  have hnon : NontrivialZetaZero s := ⟨hs, hz, hp⟩
  let p : ZeroPoint := ⟨s, hs, hnon.mem_critical_strip⟩
  let o : ZeroOccurrence := ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have h := actual_displacements_zero_of_exhausting_certificates
    t H epsilon ht hH hepsilon hheight hwidth hcertificate o
  change s.re - 1 / 2 = 0 at h
  linarith

end FormalResearch.RiemannHypothesis.SourceActualHeatDeficit
```
