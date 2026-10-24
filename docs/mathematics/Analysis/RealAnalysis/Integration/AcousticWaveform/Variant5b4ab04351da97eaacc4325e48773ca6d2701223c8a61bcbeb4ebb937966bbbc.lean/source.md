# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.AcousticWaveform.Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c` · SHA-256 `405f9e8188f434420e0347e4d0e7c501104a7b70d421749edd26e39aca383498`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.VolumePressure.Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.VolumePressure.Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c","mathematical_subject":"Analysis.Integration","original_sha256":"b47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/AcousticWaveform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.ContDiff.Operations
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Volume-waveform operator and its reconstruction

These are exact identities for an explicitly declared acoustic approximation:
pressure is proportional to the second derivative of a volume history, evaluated
at a retarded time. No wave equation, radiation law, or fluid solution is derived.
Physical use requires positive density, observer distance, and sound speed. All
history-recovery theorems supply actual differentiability, and all reconstruction
integrals have separately proved integrability.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.VolumePressure.Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleAcoustics

open MeasureTheory

noncomputable section

/-- The declared volume-monopole pressure operator at source time. -/
def volumePressure (density distance : ℝ) (volumeHistory : ℝ → ℝ) (time : ℝ) : ℝ :=
  density / (4 * Real.pi * distance) * deriv (deriv volumeHistory) time

/-- Observation pressure in the declared approximation, evaluated at retarded source time. -/
def retardedPressure (density distance soundSpeed : ℝ) (volumeHistory : ℝ → ℝ)
    (time : ℝ) : ℝ :=
  volumePressure density distance volumeHistory (time - distance / soundSpeed)

/-- A spherical volume history computed from its time-dependent radius. -/
def sphereVolumeHistory (radius : ℝ → ℝ) (time : ℝ) : ℝ :=
  (4 / 3 : ℝ) * Real.pi * radius time ^ 3

/-- Positive distance and sound speed give a strictly earlier retarded time. -/
theorem retarded_time_lt (distance soundSpeed time : ℝ)
    (distancePositive : 0 < distance) (speedPositive : 0 < soundSpeed) :
    time - distance / soundSpeed < time :=
  sub_lt_self _ (div_pos distancePositive speedPositive)

/-- The source-time pressure coefficient is nonzero for positive density and distance. -/
theorem pressure_coefficient_ne_zero (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance) :
    density / (4 * Real.pi * distance) ≠ 0 := by
  exact ne_of_gt (div_pos densityPositive (by positivity))

/-- A twice continuously differentiable history has a continuous genuine second derivative. -/
theorem second_derivative_continuous (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) :
    Continuous (deriv (deriv history)) :=
  (regular.deriv' : ContDiff ℝ 1 (deriv history)).continuous_deriv_one

/-- The actual derivative of spherical volume is the standard radius-area flux expression. -/
theorem sphereVolumeHistory_derivative (radius : ℝ → ℝ)
    (regular : Differentiable ℝ radius) (time : ℝ) :
    HasDerivAt (sphereVolumeHistory radius)
      (4 * Real.pi * radius time ^ 2 * deriv radius time) time := by
  convert! ((regular time).hasDerivAt.pow 3).const_mul ((4 / 3 : ℝ) * Real.pi) using 1
  dsimp [sphereVolumeHistory]
  ring

/-- The second volume derivative follows by differentiating the actual first derivative. -/
theorem sphereVolumeHistory_second_derivative (radius : ℝ → ℝ)
    (regular : ContDiff ℝ 2 radius) (time : ℝ) :
    deriv (deriv (sphereVolumeHistory radius)) time =
      4 * Real.pi * radius time *
        (2 * deriv radius time ^ 2 + radius time * deriv (deriv radius) time) := by
  have first : deriv (sphereVolumeHistory radius) =
      fun t => 4 * Real.pi * radius t ^ 2 * deriv radius t :=
    funext fun t => (sphereVolumeHistory_derivative radius
      (regular.differentiable (by norm_num)) t).deriv
  rw [first]
  have hr := (regular.differentiable (by norm_num) time).hasDerivAt
  have hrr := (regular.differentiable_deriv_two time).hasDerivAt
  convert! ((hr.pow 2).const_mul (4 * Real.pi) |>.mul hrr).deriv using 1
  dsimp
  ring

/-- The spherical pressure identity follows from actual radius and volume derivatives. -/
theorem sphere_volume_pressure (density distance : ℝ) (radius : ℝ → ℝ)
    (regular : ContDiff ℝ 2 radius) (time : ℝ) :
    volumePressure density distance (sphereVolumeHistory radius) time =
      density * radius time / distance *
        (2 * deriv radius time ^ 2 + radius time * deriv (deriv radius) time) := by
  rw [volumePressure, sphereVolumeHistory_second_derivative radius regular]
  by_cases hd : distance = 0
  · simp [hd]
  · field_simp

/-- The spherical formula uses the same retarded time for radius and both actual derivatives. -/
theorem sphere_retarded_pressure (density distance soundSpeed : ℝ) (radius : ℝ → ℝ)
    (regular : ContDiff ℝ 2 radius) (time : ℝ) :
    retardedPressure density distance soundSpeed (sphereVolumeHistory radius) time =
      density * radius (time - distance / soundSpeed) / distance *
        (2 * deriv radius (time - distance / soundSpeed) ^ 2 +
          radius (time - distance / soundSpeed) *
            deriv (deriv radius) (time - distance / soundSpeed)) :=
  sphere_volume_pressure density distance radius regular _

/-- The reconstruction kernel is integrable on every finite interval for a full-line C² history. -/
theorem reconstruction_kernel_integrable (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history)
    (initialTime time : ℝ) :
    IntervalIntegrable (fun τ => (time - τ) * deriv (deriv history) τ)
      volume initialTime time :=
  ((continuous_const.sub continuous_id).mul
    (second_derivative_continuous history regular)).intervalIntegrable _ _

/-- A direct primitive of the weighted second derivative gives the reconstruction kernel. -/
theorem reconstruction_primitive_derivative (history : ℝ → ℝ)
    (regular : ContDiff ℝ 2 history) (time τ : ℝ) :
    HasDerivAt (fun s => history s + (time - s) * deriv history s)
      ((time - τ) * deriv (deriv history) τ) τ := by
  have h := (regular.differentiable (by norm_num) τ).hasDerivAt.add
    (((hasDerivAt_const τ time).sub (hasDerivAt_id τ)).mul
      (regular.differentiable_deriv_two τ).hasDerivAt)
  convert! h using 1
  dsimp
  ring

/-- Actual volume is reconstructed from its initial value, initial slope, and second derivative. -/
theorem history_reconstruction (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history)
    (initialTime time : ℝ) :
    history time = history initialTime + (time - initialTime) * deriv history initialTime +
      ∫ τ in initialTime..time, (time - τ) * deriv (deriv history) τ := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun τ _ => reconstruction_primitive_derivative history regular time τ)
    (reconstruction_kernel_integrable history regular initialTime time)
  simp only [sub_self, zero_mul, add_zero] at h
  linarith

/-- The pressure-weighted reconstruction kernel is genuinely integrable. -/
theorem pressure_reconstruction_kernel_integrable (density distance : ℝ)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) (initialTime time : ℝ) :
    IntervalIntegrable (fun τ => (time - τ) * volumePressure density distance history τ)
      volume initialTime time := by
  have h := (reconstruction_kernel_integrable history regular initialTime time).const_mul
    (density / (4 * Real.pi * distance))
  convert! h using 1
  ext τ
  simp only [volumePressure]
  ring

/-- Pressure reconstructs the history only after the initial volume and slope have been supplied. -/
theorem history_reconstruction_from_pressure (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) (initialTime time : ℝ) :
    history time = history initialTime + (time - initialTime) * deriv history initialTime +
      (4 * Real.pi * distance / density) *
        ∫ τ in initialTime..time, (time - τ) * volumePressure density distance history τ := by
  rw [history_reconstruction history regular initialTime time]
  congr 1
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro τ _
  unfold volumePressure
  field_simp [densityPositive.ne', distancePositive.ne']

/-- Zero initial slope removes the slope term; initial volume remains necessary. -/
theorem equilibrium_history_reconstruction (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) (initialTime time : ℝ)
    (initialSlope : deriv history initialTime = 0) :
    history time = history initialTime + (4 * Real.pi * distance / density) *
      ∫ τ in initialTime..time, (time - τ) * volumePressure density distance history τ := by
  simpa [initialSlope] using history_reconstruction_from_pressure density distance
    densityPositive distancePositive history regular initialTime time

/-- Shifting an observation time forward by the travel time recovers its source-time operator. -/
theorem retarded_compensation (density distance soundSpeed : ℝ) (history : ℝ → ℝ) (time : ℝ) :
    retardedPressure density distance soundSpeed history (time + distance / soundSpeed) =
      volumePressure density distance history time := by
  simp [retardedPressure]

/-- Corrected retarded observations give the same genuine pressure reconstruction formula. -/
theorem history_reconstruction_from_retarded_pressure (density distance soundSpeed : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) (initialTime time : ℝ) :
    history time = history initialTime + (time - initialTime) * deriv history initialTime +
      (4 * Real.pi * distance / density) *
        ∫ τ in initialTime..time, (time - τ) *
          retardedPressure density distance soundSpeed history (τ + distance / soundSpeed) := by
  simpa only [retarded_compensation] using history_reconstruction_from_pressure density distance
    densityPositive distancePositive history regular initialTime time


/-- Adding an affine history has the expected actual first derivative. -/
theorem add_affine_derivative (history : ℝ → ℝ) (regular : Differentiable ℝ history)
    (constant slope time : ℝ) :
    HasDerivAt (fun t => history t + constant + slope * t) (deriv history time + slope) time := by
  convert! ((regular time).hasDerivAt.add_const constant).add
    ((hasDerivAt_id time).const_mul slope) using 1
  ring

/-- An affine addition leaves the waveform unchanged, with differentiability supplied. -/
theorem volumePressure_add_affine (density distance : ℝ) (history : ℝ → ℝ)
    (regular : ContDiff ℝ 2 history) (constant slope : ℝ) :
    volumePressure density distance (fun t => history t + constant + slope * t) =
      volumePressure density distance history := by
  have first : deriv (fun t => history t + constant + slope * t) =
      fun t => deriv history t + slope :=
    funext fun t => (add_affine_derivative history
      (regular.differentiable (by norm_num)) constant slope t).deriv
  funext time
  simp [volumePressure, first]

/-- Nonzero physical coefficients make waveform equality exactly second-derivative equality. -/
theorem volumePressure_eq_iff_second_derivative_eq (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) :
    volumePressure density distance first = volumePressure density distance second ↔
      deriv (deriv first) = deriv (deriv second) := by
  constructor
  · intro equal
    funext time
    exact mul_left_cancel₀ (pressure_coefficient_ne_zero density distance
      densityPositive distancePositive) (congrFun equal time)
  · intro equal
    funext time
    simp only [volumePressure, equal]

/-- Full-line C² histories have the same waveform exactly when their difference is affine. -/
theorem same_waveform_iff_affine_difference (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) (firstRegular : ContDiff ℝ 2 first)
    (secondRegular : ContDiff ℝ 2 second) :
    volumePressure density distance first = volumePressure density distance second ↔
      ∃ constant slope : ℝ, ∀ time, first time - second time = constant + slope * time := by
  constructor
  · intro equal
    have sameSecond := (volumePressure_eq_iff_second_derivative_eq density distance
      densityPositive distancePositive first second).mp equal
    refine ⟨first 0 - second 0, deriv first 0 - deriv second 0, fun time => ?_⟩
    have firstFormula := history_reconstruction first firstRegular 0 time
    have secondFormula := history_reconstruction second secondRegular 0 time
    rw [sameSecond] at firstFormula
    simp only [sub_zero] at firstFormula secondFormula
    nlinarith
  · rintro ⟨constant, slope, equal⟩
    have historyEqual : first = fun time => second time + constant + slope * time := by
      funext time
      linarith [equal time]
    rw [historyEqual]
    exact volumePressure_add_affine density distance second secondRegular constant slope

/-- A constant volume history has identically zero waveform. -/
theorem volumePressure_constant (density distance constant : ℝ) :
    volumePressure density distance (fun _ => constant) = fun _ => 0 := by
  funext time
  simp [volumePressure]

/-- The waveform kernel on full-line C² histories consists precisely of affine histories. -/
theorem zero_waveform_iff_affine (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) :
    volumePressure density distance history = (fun _ => 0) ↔
      ∃ constant slope : ℝ, ∀ time, history time = constant + slope * time := by
  simpa [volumePressure_constant] using same_waveform_iff_affine_difference density distance
    densityPositive distancePositive history (fun _ => 0) regular contDiff_const

/-- Waveform plus initial value and initial slope determines the entire C² history. -/
theorem history_eq_of_waveform_initial_data (density distance : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) (firstRegular : ContDiff ℝ 2 first)
    (secondRegular : ContDiff ℝ 2 second) (initialTime : ℝ)
    (sameWaveform : volumePressure density distance first = volumePressure density distance second)
    (sameInitial : first initialTime = second initialTime)
    (sameSlope : deriv first initialTime = deriv second initialTime) : first = second := by
  funext time
  rw [history_reconstruction_from_pressure density distance densityPositive distancePositive
    first firstRegular initialTime time,
    history_reconstruction_from_pressure density distance densityPositive distancePositive
      second secondRegular initialTime time, sameInitial, sameSlope, sameWaveform]

/-- Retardation is a bijective time translation, so it preserves full-waveform equality exactly. -/
theorem same_retarded_waveform_iff (density distance soundSpeed : ℝ)
    (first second : ℝ → ℝ) :
    retardedPressure density distance soundSpeed first =
        retardedPressure density distance soundSpeed second ↔
      volumePressure density distance first = volumePressure density distance second := by
  constructor
  · intro equal
    funext time
    simpa only [retarded_compensation] using congrFun equal (time + distance / soundSpeed)
  · intro equal
    funext time
    exact congrFun equal (time - distance / soundSpeed)

/-- Retarded waveform data have exactly the same affine ambiguity on full-line C² histories. -/
theorem same_retarded_waveform_iff_affine_difference (density distance soundSpeed : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) (firstRegular : ContDiff ℝ 2 first)
    (secondRegular : ContDiff ℝ 2 second) :
    retardedPressure density distance soundSpeed first =
        retardedPressure density distance soundSpeed second ↔
      ∃ constant slope : ℝ, ∀ time, first time - second time = constant + slope * time := by
  rw [same_retarded_waveform_iff]
  exact same_waveform_iff_affine_difference density distance densityPositive distancePositive
    first second firstRegular secondRegular

/-- Retarded waveform plus initial value and initial slope determines the source history. -/
theorem history_eq_of_retarded_waveform_initial_data (density distance soundSpeed : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (first second : ℝ → ℝ) (firstRegular : ContDiff ℝ 2 first)
    (secondRegular : ContDiff ℝ 2 second) (initialTime : ℝ)
    (sameWaveform : retardedPressure density distance soundSpeed first =
      retardedPressure density distance soundSpeed second)
    (sameInitial : first initialTime = second initialTime)
    (sameSlope : deriv first initialTime = deriv second initialTime) : first = second :=
  history_eq_of_waveform_initial_data density distance densityPositive distancePositive
    first second firstRegular secondRegular initialTime
    ((same_retarded_waveform_iff density distance soundSpeed first second).mp sameWaveform)
    sameInitial sameSlope


/-- Spherical volume inherits the actual C² regularity of its radius history. -/
theorem sphereVolumeHistory_contDiff (radius : ℝ → ℝ) (regular : ContDiff ℝ 2 radius) :
    ContDiff ℝ 2 (sphereVolumeHistory radius) := by
  unfold sphereVolumeHistory
  fun_prop

/-- Retarded-compensated reconstruction uses a genuinely integrable observation kernel. -/
theorem retarded_reconstruction_kernel_integrable (density distance soundSpeed : ℝ)
    (history : ℝ → ℝ) (regular : ContDiff ℝ 2 history) (initialTime time : ℝ) :
    IntervalIntegrable (fun τ => (time - τ) *
      retardedPressure density distance soundSpeed history (τ + distance / soundSpeed))
      volume initialTime time := by
  simpa only [retarded_compensation] using pressure_reconstruction_kernel_integrable
    density distance history regular initialTime time

/-- The witness domain consists only of strictly positive full-line C² volume histories. -/
abbrev PositiveC2History := {history : ℝ → ℝ // ContDiff ℝ 2 history ∧ ∀ t, 0 < history t}

/-- A positive constant defines an admissible volume history with genuine derivatives. -/
def constantHistory (value : ℝ) (positive : 0 < value) : PositiveC2History :=
  ⟨fun _ => value, contDiff_const, fun _ => positive⟩

/-- Every positive constant history has zero retarded waveform at every observer time. -/
theorem constantHistory_retarded_pressure (density distance soundSpeed value : ℝ)
    (positive : 0 < value) :
    retardedPressure density distance soundSpeed (constantHistory value positive).val =
      fun _ => 0 := by
  funext time
  simp [retardedPressure, volumePressure, constantHistory]

/-- Distinct positive constant histories give an explicit waveform-versus-history collision. -/
def waveformHistoryObstruction (density distance soundSpeed : ℝ) :
    DescentObstruction
      (fun history : PositiveC2History =>
        retardedPressure density distance soundSpeed history.val)
      (fun history => history.val) where
  left := constantHistory 1 (by norm_num)
  right := constantHistory 2 (by norm_num)
  sameCarrier := by rw [constantHistory_retarded_pressure, constantHistory_retarded_pressure]
  targetSeparated := by
    intro equal
    have h := congrFun equal 0
    norm_num [constantHistory] at h

/-- The same admissible collision loses initial volume at any supplied initial time. -/
def waveformInitialVolumeObstruction (density distance soundSpeed initialTime : ℝ) :
    DescentObstruction
      (fun history : PositiveC2History =>
        retardedPressure density distance soundSpeed history.val)
      (fun history => history.val initialTime) where
  left := constantHistory 1 (by norm_num)
  right := constantHistory 2 (by norm_num)
  sameCarrier := by rw [constantHistory_retarded_pressure, constantHistory_retarded_pressure]
  targetSeparated := by norm_num [constantHistory]

/-- Even among positive C² histories, a waveform-only decoder cannot recover the volume history. -/
theorem no_waveform_history_decoder (density distance soundSpeed : ℝ) :
    ¬∃ recover : (ℝ → ℝ) → (ℝ → ℝ), ∀ history : PositiveC2History,
      recover (retardedPressure density distance soundSpeed history.val) = history.val :=
  descent_obstruction_no_factorization (waveformHistoryObstruction density distance soundSpeed)

/-- A waveform-only decoder also cannot recover an unspecified initial volume. -/
theorem no_waveform_initial_volume_decoder (density distance soundSpeed initialTime : ℝ) :
    ¬∃ recover : (ℝ → ℝ) → ℝ, ∀ history : PositiveC2History,
      recover (retardedPressure density distance soundSpeed history.val) =
        history.val initialTime :=
  descent_obstruction_no_factorization
    (waveformInitialVolumeObstruction density distance soundSpeed initialTime)

/-- Waveform together with both initial data determines the history on the admissible domain. -/
theorem waveform_initial_data_descends (density distance soundSpeed initialTime : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance) :
    DescendsThrough
      (fun history : PositiveC2History =>
        (retardedPressure density distance soundSpeed history.val,
          history.val initialTime, deriv history.val initialTime))
      (fun history => history.val) := by
  intro first second equal
  exact history_eq_of_retarded_waveform_initial_data density distance soundSpeed
    densityPositive distancePositive first.val second.val first.property.1 second.property.1
    initialTime (congrArg Prod.fst equal) (congrArg (fun data => data.2.1) equal)
    (congrArg (fun data => data.2.2) equal)

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleAcoustics
```
