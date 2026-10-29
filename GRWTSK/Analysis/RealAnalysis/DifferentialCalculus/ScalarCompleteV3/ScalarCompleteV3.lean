-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizationDerivative.Variant924801ca0032d9aa44863703f2eed5a187520fbff8aae4121dfbb910cbec2264","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"924801ca0032d9aa44863703f2eed5a187520fbff8aae4121dfbb910cbec2264","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.NormalizationDerivative.Variant924801ca0032d9aa44863703f2eed5a187520fbff8aae4121dfbb910cbec2264","mathematical_subject":"Analysis.Calculus","original_sha256":"924801ca0032d9aa44863703f2eed5a187520fbff8aae4121dfbb910cbec2264","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle3/scale-derivative/scalar-complete-v3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
import Mathlib.Analysis.Calculus.Deriv.Support

/-!
# Scale derivative of the unchanged normalized source

The scale derivative is distinct from the spatial derivative. Ordinary scalar
calculus uses the proved C³ bump across both moving support seams. Compact
support and canonical L² membership are conclusions for the actual source.
No signed work budget or RH estimate is asserted.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizationDerivative.Variant924801ca0032d9aa44863703f2eed5a187520fbff8aae4121dfbb910cbec2264

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceScaleDerivative
open MeasureTheory Filter Set
open scoped Topology InnerProductSpace
open SourcePairing SourceScaleVariation SourceScaleL2Continuity SourceReflectionDuality
open GevreyPolynomial SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Exact scale derivative of the original rational normalization. -/
def normalizationDerivative (A : ℝ) : ℝ :=
  -(131072 / 45045 : ℝ) / A ^ 3 - 4 * (196608 / 5005 : ℝ) / A ^ 5

/-- The normalization derivative is obtained from its actual unchanged coefficients. -/
theorem sourceNormalization_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt sourceNormalization (normalizationDerivative A) A := by
  have h := ((hasDerivAt_const A ((65536 / 109395 : ℝ) / 16)).add
    ((hasDerivAt_const A (131072 / 45045 : ℝ)).div
      (((hasDerivAt_id A).pow 2).const_mul 2) (by
        change 2 * A ^ 2 ≠ 0
        positivity))).add
    ((hasDerivAt_const A (196608 / 5005 : ℝ)).div
      ((hasDerivAt_id A).pow 4) (by
        change A ^ 4 ≠ 0
        positivity))
  convert h using 1 <;> first
    | rfl
    | (dsimp [normalizationDerivative]; field_simp; ring)

/-- The original normalization's ordinary derivative has the explicit rational form. -/
theorem sourceNormalization_deriv {A : ℝ} (hA : 0 < A) :
    deriv sourceNormalization A = normalizationDerivative A :=
  (sourceNormalization_hasDerivAt hA).deriv

/-- The literal source amplitude in a single square root. -/
def scaleAmplitude (A : ℝ) : ℝ := 1 / Real.sqrt (A * sourceNormalization A)

/-- The amplitude preserves the two original positive square-root normalizations. -/
theorem scaleAmplitude_eq {A : ℝ} (hA : 0 < A) :
    scaleAmplitude A = 1 / (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  simp [scaleAmplitude, Real.sqrt_mul hA.le]

/-- The dilation-coordinate formula retains the actual normalized source amplitude. -/
theorem scaleProfile_eq_amplitude {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaleProfile A x = scaleAmplitude A *
      (deriv (deriv sourceBump) (x / A) / A ^ 2 - sourceBump (x / A) / 4) := by
  rw [scaleAmplitude_eq hA]
  unfold scaleProfile
  ring

/-- Ordinary scale differentiation of the exact positive normalization amplitude. -/
theorem scaleAmplitude_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt scaleAmplitude
      (-(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
        scaleAmplitude A) A := by
  have hn := sourceNormalization_pos hA
  have hs := ((hasDerivAt_id A).mul (sourceNormalization_hasDerivAt hA)).sqrt
    (mul_pos hA hn).ne'
  have hd := (hasDerivAt_const A (1 : ℝ)).div hs
    (Real.sqrt_pos.mpr (mul_pos hA hn)).ne'
  have hsquare := Real.sq_sqrt (mul_pos hA hn).le
  convert hd using 1 <;> first
    | rfl
    | (dsimp [scaleAmplitude]; field_simp; simp only [hsquare]; ring)

/-- The actual source scale derivative p_A; it is not the spatial derivative q'_A. -/
def scaleDerivative (A x : ℝ) : ℝ :=
  -(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
      scaleProfile A x +
    scaleAmplitude A *
      (-2 * deriv (deriv sourceBump) (x / A) / A ^ 3 -
        (x / A) * deriv (deriv (deriv sourceBump)) (x / A) / A ^ 3 +
        (x / A) * deriv sourceBump (x / A) / (4 * A))

/-- The explicit derivative is expressed directly through the unchanged q_A. -/
theorem scaleDerivative_eq_actual {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaleDerivative A x =
      -(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
          normalizedTest explicitSecondDerivative A x +
        scaleAmplitude A *
          (-2 * deriv (deriv sourceBump) (x / A) / A ^ 3 -
            (x / A) * deriv (deriv (deriv sourceBump)) (x / A) / A ^ 3 +
            (x / A) * deriv sourceBump (x / A) / (4 * A)) := by
  unfold scaleDerivative
  rw [scaleProfile_eq_source hA]

/-- Scalar scale differentiation includes the moving seams by global C³ bump calculus. -/
theorem scaleProfile_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun B => scaleProfile B x) (scaleDerivative A x) A := by
  have h0 := sourceBump_contDiff_three.differentiable (by norm_num)
  have h2 := sourceBump_contDiff_three.deriv'.deriv'.differentiable_one
  have hx := (hasDerivAt_const A x).div (hasDerivAt_id A) hA.ne'
  have hh := ((h2 (x / A)).hasDerivAt.comp A hx).div
    ((hasDerivAt_id A).pow 2) (by
      change A ^ 2 ≠ 0
      positivity)
  have hb := ((h0 (x / A)).hasDerivAt.comp A hx).div_const 4
  have hd := (scaleAmplitude_hasDerivAt hA).mul (hh.sub hb)
  have heq : (fun B => scaleAmplitude B *
      (deriv (deriv sourceBump) (x / B) / B ^ 2 - sourceBump (x / B) / 4)) =ᶠ[nhds A]
      (fun B => scaleProfile B x) := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    exact (scaleProfile_eq_amplitude hB x).symm
  apply (hd.congr_of_eventuallyEq heq.symm).congr_deriv
  unfold scaleDerivative
  rw [scaleProfile_eq_amplitude hA]
  dsimp
  field_simp
  ring

/-- The literal source, rather than a proxy, has the exact scalar scale derivative. -/
theorem normalizedSource_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun B => normalizedTest explicitSecondDerivative B x)
      (scaleDerivative A x) A := by
  apply (scaleProfile_hasDerivAt hA x).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact (scaleProfile_eq_source hB x).symm

end FormalResearch.RiemannHypothesis.SourceScaleDerivative
