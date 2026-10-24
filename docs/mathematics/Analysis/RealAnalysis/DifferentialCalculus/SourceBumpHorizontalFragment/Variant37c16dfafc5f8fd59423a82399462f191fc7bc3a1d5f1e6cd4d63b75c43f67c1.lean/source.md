# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpHorizontalFragment.Variant37c16dfafc5f8fd59423a82399462f191fc7bc3a1d5f1e6cd4d63b75c43f67c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `516a2df6d6d5ea4545f61977b43afffad0759d34` · SHA-256 `5c26888903cad72b3f719cfbfe5a92c3627a77b63423b289cba0516b51ac1998`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RadialBoundaryEnergyIdentity.Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RadialBoundaryEnergyIdentity.Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c","mathematical_subject":"Analysis.Calculus","original_sha256":"89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/SourceBumpHorizontalFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Horizontal source-bump modulus monotonicity from the full radial boundary energy. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RadialBoundaryEnergyIdentity.Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c

set_option autoImplicit false
namespace SourceBumpHorizontalScratch
open MeasureTheory Set
open SourceBumpMomentsScratch SourceBumpGlobalScratch
noncomputable section

/-- Retaining the boundary term gives the radial energy identity for every complex parameter. -/
theorem radial_boundary_energy_identity (z : ℂ) :
    z * bumpMoment 1 z * star (bumpMoment 0 z) =
      (radialEnergy z : ℂ) + z ^ 2 * (radialMass z : ℂ) := by
  have hpc : Continuous (radialProfile z) := by
    exact (bumpMoment_continuous 0).comp (continuous_const.mul Complex.continuous_ofReal)
  have hfc : Continuous (radialFlux z) := by
    change Continuous (fun r : ℝ => (r : ℂ)^10 * z * bumpMoment 1 (z * (r : ℂ)))
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdp : Continuous (fun r : ℝ => z * bumpMoment 1 (z * (r : ℂ))) := by
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdf : Continuous (fun r : ℝ => z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) := by
    exact ((continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul
      hpc)
  have hid := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1) hfc.continuousOn
    (hpc |>.star |>.continuousOn)
    (fun r _ => radialFlux_hasDerivAt z r)
    (fun r _ => (radialProfile_hasDerivAt z r).star)
    (hdf.intervalIntegrable 0 1) (hdp.star.intervalIntegrable 0 1)
  have hrhs : radialFlux z 1 * star (radialProfile z 1) -
      radialFlux z 0 * star (radialProfile z 0) =
        z * bumpMoment 1 z * star (bumpMoment 0 z) := by
    simp [radialFlux, radialProfile]
  rw [hrhs] at hid
  have hpoint (r : ℝ) :
      z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r * star (radialProfile z r) +
      radialFlux z r * star (z * bumpMoment 1 (z * (r : ℂ))) =
      z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
        ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    dsimp [radialFlux]
    ring
  have hiD : IntervalIntegrable
      (fun r : ℝ => ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hpc.norm.pow 2))
  have hiE : IntervalIntegrable (fun r : ℝ =>
      ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hdp.norm.pow 2))
  have heq : z ^ 2 * (radialMass z : ℂ) + (radialEnergy z : ℂ) =
      z * bumpMoment 1 z * star (bumpMoment 0 z) := by
    calc
      _ = ∫ r : ℝ in 0..1,
          z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
            ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
        rw [intervalIntegral.integral_add (hiD.const_mul (z ^ 2)) hiE,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
          intervalIntegral.integral_ofReal]
        rfl
      _ = z * bumpMoment 1 z * star (bumpMoment 0 z) := by
        rw [← hid]
        apply intervalIntegral.integral_congr
        intro r _
        exact (hpoint r).symm
  linear_combination -heq

/-- The boundary energy forces the source logarithmic numerator to have positive real part. -/
theorem bumpMoment_derivative_pairing_nonneg (z : ℂ) (hz : 0 < z.re) :
    0 ≤ (bumpMoment 1 z * star (bumpMoment 0 z)).re := by
  have he := radial_boundary_energy_identity z
  let p : ℂ := bumpMoment 1 z * star (bumpMoment 0 z)
  have he' : z * p = (radialEnergy z : ℂ) + z^2 * (radialMass z : ℂ) := by
    simpa only [p, mul_assoc] using he
  have hr' := congrArg Complex.re he'
  have hi' := congrArg Complex.im he'
  simp only [Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im, pow_two, mul_zero, sub_zero,
    zero_add] at hr' hi'
  have hid : (z.re^2 + z.im^2) * p.re =
      z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) := by
    linear_combination z.re * hr' + z.im * hi'
  have hp : 0 < z.re^2 + z.im^2 := add_pos_of_pos_of_nonneg
    (sq_pos_of_pos hz) (sq_nonneg _)
  have hnn : 0 ≤ z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) :=
    mul_nonneg hz.le (add_nonneg (radialEnergy_nonneg z)
      (mul_nonneg hp.le (radialMass_pos z).le))
  have : 0 ≤ (z.re^2 + z.im^2) * p.re := by rw [hid]; exact hnn
  exact (mul_nonneg_iff_of_pos_left hp).mp this

/-- Squared modulus has the exact real derivative on every horizontal line. -/
theorem bumpMoment_horizontal_norm_sq_hasDerivAt (t x : ℝ) :
    HasDerivAt (fun a : ℝ => ‖bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I)‖^2)
      (2 * (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I) *
        star (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I))).re) x := by
  have hd := (bumpMoment_hasDerivAt 0 ((x : ℂ) + (t : ℂ) * Complex.I)).comp
    (x : ℂ) ((hasDerivAt_id (x : ℂ)).add_const ((t : ℂ) * Complex.I))
  have hd' : HasDerivAt (fun a : ℝ => bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I))
      (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I)) x := by
    simpa only [id_eq, zero_add, mul_one] using! hd.comp_ofReal
  convert! hd'.norm_sq using 1

/-- The actual bump modulus is nondecreasing along every horizontal rightward half-line. -/
theorem bumpMoment_horizontal_norm_monotone (t : ℝ) :
    MonotoneOn (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖)
      (Ici 0) := by
  have hm : MonotoneOn
      (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖^2) (Ici 0) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 0)
    · have hc := bumpMoment_continuous 0
      apply Continuous.continuousOn
      fun_prop
    · intro x _
      exact (bumpMoment_horizontal_norm_sq_hasDerivAt t x).hasDerivWithinAt
    · intro x hx
      have hx' : 0 < x := by simpa only [interior_Ici, mem_Ioi] using hx
      exact mul_nonneg (by norm_num)
        (bumpMoment_derivative_pairing_nonneg _ (by simpa using hx'))
  intro x hx y hy hxy
  have hh := hm hx hy hxy
  nlinarith [norm_nonneg (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)),
    norm_nonneg (bumpMoment 0 ((y : ℂ) + (t : ℂ) * Complex.I))]

/-- The exact imaginary-axis bump value never exceeds its inward horizontal translate. -/
theorem bumpMoment_horizontal_norm_le (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  simpa only [Complex.ofReal_zero, zero_add] using
    bumpMoment_horizontal_norm_monotone t (show (0 : ℝ) ∈ Ici 0 from by simp)
      (show ε ∈ Ici 0 from hε) hε

end
end SourceBumpHorizontalScratch
```
