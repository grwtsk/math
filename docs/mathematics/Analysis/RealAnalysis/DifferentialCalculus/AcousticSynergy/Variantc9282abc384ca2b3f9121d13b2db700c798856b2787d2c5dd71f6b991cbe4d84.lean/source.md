# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AcousticSynergy.Variantc9282abc384ca2b3f9121d13b2db700c798856b2787d2c5dd71f6b991cbe4d84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a1b3dc46dc9997bbc78692437c3dbc74f1c70dc` · SHA-256 `2669c94aac8ce1eba75e5ce586661e37a6b6545c2cbc3c5563ba1d9f11dacde6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ModalPolicy.Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ModalPolicy.Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716","mathematical_subject":"Analysis.Calculus","original_sha256":"ce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/AcousticSynergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AcousticWaveform
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleResonance
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionJoin
import Mathlib.Data.Complex.Basic

/-!
# Target-relative recovery from declared acoustic observations

The two tests below read squared natural frequencies in the supplied spherical
formula model. They are not algorithms for extracting modes from microphone data.
Each test costs one unit under the existing per-test budget cutoff: budget one
admits both tests, without asserting their combined measured resource cost is one.
Every materialized notion receives its source identity from its caller.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ModalPolicy.Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace BubbleAcoustics

/-- The false test reads breathing frequency squared; the true test reads mode two. -/
noncomputable def modalPolicy (params : Parameters) : ObservationPolicy State Bool ℝ where
  cost := fun _ => 1
  observe := fun test state =>
    if test then shapeSquared 2 params state else breathingSquared params state

/-- A caller-identified selection of the two natural-frequency tests. -/
noncomputable def modalNotion (params : Parameters) (tests : Finset Bool)
    (identity : String) : FiniteNotion State Bool ℝ where
  sourceIdentity := identity
  policy := modalPolicy params
  tests := tests

/-- At budget one the breathing singleton retains exactly its named scalar carrier. -/
theorem breathing_notion_equivalent_iff (params : Parameters) (identity : String)
    (x y : State) :
    (modalNotion params {false} identity).Equivalent 1 x y ↔
      breathingSquared params x = breathingSquared params y := by
  constructor
  · intro h
    exact h false (by simp [modalNotion]) (by simp [modalNotion, modalPolicy])
  · intro h test member _
    have ht : test = false := by simpa [modalNotion] using member
    subst test
    exact h

/-- At budget one the shape singleton retains exactly its named scalar carrier. -/
theorem shape_notion_equivalent_iff (params : Parameters) (identity : String)
    (x y : State) :
    (modalNotion params {true} identity).Equivalent 1 x y ↔
      shapeSquared 2 params x = shapeSquared 2 params y := by
  constructor
  · intro h
    exact h true (by simp [modalNotion]) (by simp [modalNotion, modalPolicy])
  · intro h test member _
    have ht : test = true := by simpa [modalNotion] using member
    subst test
    exact h

/-- Breathing frequency alone loses the volume/tension target in this scoped model. -/
theorem breathing_notion_not_determines (params : Parameters) (identity : String) :
    ¬(modalNotion params {false} identity).DeterminesAt 1 volumeTension := by
  intro determines
  let obstruction := breathingVolumeTensionObstruction params
  exact obstruction.targetSeparated (determines
    ((breathing_notion_equivalent_iff params identity _ _).mpr obstruction.sameCarrier))

/-- Shape frequency alone loses the volume/tension target in this scoped model. -/
theorem shape_notion_not_determines (params : Parameters) (identity : String) :
    ¬(modalNotion params {true} identity).DeterminesAt 1 volumeTension := by
  intro determines
  let obstruction := shapeVolumeTensionObstruction params
  exact obstruction.targetSeparated (determines
    ((shape_notion_equivalent_iff params identity _ _).mpr obstruction.sameCarrier))

/-- The exact union of the two modal inventories determines volume and tension together. -/
theorem modal_join_determines (params : Parameters)
    (breathingIdentity shapeIdentity jointIdentity : String) :
    ((modalNotion params {false} breathingIdentity).join
      (modalNotion params {true} shapeIdentity) rfl jointIdentity).DeterminesAt
        1 volumeTension := by
  intro x y equivalent
  obtain ⟨hb, hs⟩ := (FiniteNotion.equivalent_join_iff
    (modalNotion params {false} breathingIdentity) (modalNotion params {true} shapeIdentity)
      rfl jointIdentity 1 x y).mp equivalent
  apply volumeTension_descends_joint params
  exact Prod.ext ((breathing_notion_equivalent_iff params breathingIdentity x y).mp hb)
    ((shape_notion_equivalent_iff params shapeIdentity x y).mp hs)

/-- Actual modal collision witnesses and joint recovery instantiate the existing synergy API. -/
theorem modal_volume_tension_synergy (params : Parameters)
    (breathingIdentity shapeIdentity jointIdentity : String) :
    (modalNotion params {false} breathingIdentity).SynergisticFor
      (modalNotion params {true} shapeIdentity) rfl jointIdentity 1 volumeTension :=
  ⟨breathing_notion_not_determines params breathingIdentity,
    shape_notion_not_determines params shapeIdentity,
    modal_join_determines params breathingIdentity shapeIdentity jointIdentity⟩

/-- Raising the aperture preserves the proved recovery, using the original budget semantics. -/
theorem modal_join_determines_of_budget_le (params : Parameters)
    (breathingIdentity shapeIdentity jointIdentity : String) {budget : ℕ}
    (admitted : 1 ≤ budget) :
    ((modalNotion params {false} breathingIdentity).join
      (modalNotion params {true} shapeIdentity) rfl jointIdentity).DeterminesAt
        budget volumeTension :=
  FiniteNotion.determines_of_budget_le admitted
    (modal_join_determines params breathingIdentity shapeIdentity jointIdentity)

/-- Budget zero admits neither unit-cost test, so even the union loses the target. -/
theorem modal_join_zero_not_determines (params : Parameters)
    (breathingIdentity shapeIdentity jointIdentity : String) :
    ¬((modalNotion params {false} breathingIdentity).join
      (modalNotion params {true} shapeIdentity) rfl jointIdentity).DeterminesAt
        0 volumeTension := by
  intro determines
  let obstruction := breathingVolumeTensionObstruction params
  apply obstruction.targetSeparated
  apply determines
  intro test _ affordable
  simp [FiniteNotion.join, modalNotion, modalPolicy] at affordable

/-- A separate proof connecting a readout to the modal model permits target transport. -/
theorem volume_tension_descends_of_faithful_readout {Object : Type*}
    (params : Parameters) (model : Object → State) (readout : Object → ℝ × ℝ)
    (faithful : ∀ x, readout x = breathingShapeCarrier params (model x)) :
    DescendsThrough readout (fun x => volumeTension (model x)) := by
  intro x y same
  apply volumeTension_descends_joint params
  exact (faithful x).symm.trans (same.trans (faithful y))

/-- Squared natural frequency decoded from both components of an oscillatory pole. -/
noncomputable def poleNaturalSquared (pole : ℂ) : ℝ :=
  pole.re ^ 2 + pole.im ^ 2

/-- A nonreal root of the declared real oscillator polynomial determines its constant term. -/
theorem natural_squared_of_oscillatory_pole {decay naturalSquared : ℝ} {pole : ℂ}
    (characteristic : pole ^ 2 + (2 * decay : ℝ) * pole + naturalSquared = 0)
    (oscillatory : pole.im ≠ 0) : naturalSquared = poleNaturalSquared pole := by
  have hi := congrArg Complex.im characteristic
  have hr := congrArg Complex.re characteristic
  simp only [pow_two, Complex.ofReal_mul, Complex.ofReal_ofNat, Complex.add_im,
    Complex.mul_im, Complex.mul_re, Complex.re_ofNat, Complex.ofReal_re, Complex.im_ofNat,
    Complex.ofReal_im, mul_zero, sub_zero, zero_mul, add_zero, Complex.zero_im,
    Complex.add_re, Complex.zero_re] at hi hr
  have factor : (pole.re + decay) * pole.im = 0 := by nlinarith [hi]
  have damping : pole.re + decay = 0 := (mul_eq_zero.mp factor).resolve_right oscillatory
  have hd : decay = -pole.re := by linarith
  rw [hd] at hr
  unfold poleNaturalSquared
  nlinarith [hr]

/-- Stable oscillatory poles retain both decay and the positive ringdown frequency. -/
abbrev StableOscillatoryPole := {pole : ℂ // pole.re < 0 ∧ 0 < pole.im}

/-- Equal ringdown frequencies can accompany distinct squared natural frequencies. -/
noncomputable def ringdownFrequencyObstruction :
    DescentObstruction (fun pole : StableOscillatoryPole => pole.val.im)
      (fun pole : StableOscillatoryPole => poleNaturalSquared pole.val) where
  left := ⟨⟨-1, 1⟩, by norm_num⟩
  right := ⟨⟨-2, 1⟩, by norm_num⟩
  sameCarrier := rfl
  targetSeparated := by norm_num [poleNaturalSquared]

/-- Ringdown frequency alone does not determine natural frequency squared when decay is unknown. -/
theorem natural_squared_not_determined_by_ringdown_frequency :
    ¬DescendsThrough (fun pole : StableOscillatoryPole => pole.val.im)
      (fun pole : StableOscillatoryPole => poleNaturalSquared pole.val) :=
  descent_obstruction_not_descends ringdownFrequencyObstruction

/-- Identified oscillator poles permit the modal decoder with both characteristic laws explicit. -/
theorem volume_tension_descends_of_oscillatory_poles {Object : Type*}
    (params : Parameters) (model : Object → State)
    (breathingPole shapePole : Object → ℂ) (breathingDecay shapeDecay : Object → ℝ)
    (breathingLaw : ∀ x, breathingPole x ^ 2 +
      (2 * breathingDecay x : ℝ) * breathingPole x + breathingSquared params (model x) = 0)
    (shapeLaw : ∀ x, shapePole x ^ 2 +
      (2 * shapeDecay x : ℝ) * shapePole x + shapeSquared 2 params (model x) = 0)
    (breathingOscillatory : ∀ x, (breathingPole x).im ≠ 0)
    (shapeOscillatory : ∀ x, (shapePole x).im ≠ 0) :
    DescendsThrough (fun x => (poleNaturalSquared (breathingPole x),
      poleNaturalSquared (shapePole x))) (fun x => volumeTension (model x)) := by
  apply volume_tension_descends_of_faithful_readout params model
  intro x
  exact Prod.ext
    (natural_squared_of_oscillatory_pole (breathingLaw x) (breathingOscillatory x)).symm
    (natural_squared_of_oscillatory_pole (shapeLaw x) (shapeOscillatory x)).symm

/-- Positive C² histories with explicitly zero initial slope; no radial ODE is imposed. -/
abbrev InitiallyStationaryHistory (initialTime : ℝ) :=
  {history : PositiveC2History // deriv history.val initialTime = 0}

/-- The recovery target is the entire volume function, not only its initial value. -/
noncomputable def historyTarget {initialTime : ℝ}
    (history : InitiallyStationaryHistory initialTime) : ℝ → ℝ := history.val.val

/-- One test returns constant initial volume, the other the full pressure function. -/
noncomputable def historyPolicy (density distance initialTime : ℝ) :
    ObservationPolicy (InitiallyStationaryHistory initialTime) Bool (ℝ → ℝ) where
  cost := fun _ => 1
  observe := fun test history =>
    if test then volumePressure density distance (historyTarget history)
    else fun _ => historyTarget history initialTime

/-- A caller-identified history observation inventory; one test can return a full function. -/
noncomputable def historyNotion (density distance initialTime : ℝ)
    (tests : Finset Bool) (identity : String) :
    FiniteNotion (InitiallyStationaryHistory initialTime) Bool (ℝ → ℝ) where
  sourceIdentity := identity
  policy := historyPolicy density distance initialTime
  tests := tests

/-- A unit-cost singleton compares exactly its declared history observation at budget one. -/
theorem history_singleton_equivalent_iff (density distance initialTime : ℝ)
    (test : Bool) (identity : String) (x y : InitiallyStationaryHistory initialTime) :
    (historyNotion density distance initialTime {test} identity).Equivalent 1 x y ↔
      (historyPolicy density distance initialTime).observe test x =
        (historyPolicy density distance initialTime).observe test y := by
  constructor
  · intro h
    exact h test (by simp [historyNotion]) (by simp [historyNotion, historyPolicy])
  · intro h selected member _
    have ht : selected = test := by simpa [historyNotion] using member
    subst selected
    exact h

/-- Constant positive volume is a smooth, initially stationary history. -/
noncomputable def stationaryConstant (initialTime value : ℝ) (positive : 0 < value) :
    InitiallyStationaryHistory initialTime :=
  ⟨constantHistory value positive, by simp [constantHistory]⟩

/-- A positive smooth history sharing initial volume one and zero initial slope with a constant. -/
noncomputable def stationaryQuadratic (initialTime : ℝ) :
    InitiallyStationaryHistory initialTime := by
  refine ⟨⟨fun t => 1 + (t - initialTime) ^ 2, ?_, ?_⟩, ?_⟩
  · exact contDiff_const.add ((contDiff_id.sub contDiff_const).pow 2)
  · intro t
    positivity
  · have h : HasDerivAt (fun t : ℝ => 1 + (t - initialTime) ^ 2) 0 initialTime := by
      convert! ((((hasDerivAt_id initialTime).sub_const initialTime).pow 2).const_add 1) using 1
      simp
    exact h.deriv

/-- Initial volume alone does not determine even a positive, initially stationary C² history. -/
theorem initial_volume_notion_not_determines (density distance initialTime : ℝ)
    (identity : String) :
    ¬(historyNotion density distance initialTime {false} identity).DeterminesAt
      1 historyTarget := by
  intro determines
  have equal : historyTarget (stationaryConstant initialTime 1 (by norm_num)) =
      historyTarget (stationaryQuadratic initialTime) := by
    apply determines
    apply (history_singleton_equivalent_iff _ _ _ _ _ _ _).mpr
    funext t
    simp [historyPolicy, historyTarget, stationaryConstant, stationaryQuadratic, constantHistory]
  have := congrFun equal (initialTime + 1)
  norm_num [historyTarget, stationaryConstant, stationaryQuadratic, constantHistory] at this

/-- The pressure trace alone loses absolute initial volume even within the stationary scope. -/
theorem waveform_notion_not_determines (density distance initialTime : ℝ)
    (identity : String) :
    ¬(historyNotion density distance initialTime {true} identity).DeterminesAt
      1 historyTarget := by
  intro determines
  have equal : historyTarget (stationaryConstant initialTime 1 (by norm_num)) =
      historyTarget (stationaryConstant initialTime 2 (by norm_num)) := by
    apply determines
    apply (history_singleton_equivalent_iff _ _ _ _ _ _ _).mpr
    funext t
    simp [historyPolicy, historyTarget, stationaryConstant, constantHistory, volumePressure]
  have := congrFun equal initialTime
  norm_num [historyTarget, stationaryConstant, constantHistory] at this

/-- Initial volume and the full pressure trace jointly determine the scoped history. -/
theorem initial_volume_waveform_join_determines (density distance initialTime : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (initialIdentity waveformIdentity jointIdentity : String) :
    ((historyNotion density distance initialTime {false} initialIdentity).join
      (historyNotion density distance initialTime {true} waveformIdentity) rfl
        jointIdentity).DeterminesAt 1 historyTarget := by
  intro x y equivalent
  obtain ⟨initial, waveform⟩ :=
    (FiniteNotion.equivalent_join_iff
      (historyNotion density distance initialTime {false} initialIdentity)
      (historyNotion density distance initialTime {true} waveformIdentity)
        rfl jointIdentity 1 x y).mp equivalent
  have hi := (history_singleton_equivalent_iff _ _ _ _ _ _ _).mp initial
  have hw := (history_singleton_equivalent_iff _ _ _ _ _ _ _).mp waveform
  exact history_eq_of_waveform_initial_data density distance densityPositive distancePositive
    (historyTarget x) (historyTarget y) x.val.property.1 y.val.property.1 initialTime hw
    (congrFun hi initialTime) (x.property.trans y.property.symm)

/-- Distinct history collisions and proved joint recovery give target-relative synergy. -/
theorem initial_volume_waveform_synergy (density distance initialTime : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (initialIdentity waveformIdentity jointIdentity : String) :
    (historyNotion density distance initialTime {false} initialIdentity).SynergisticFor
      (historyNotion density distance initialTime {true} waveformIdentity) rfl jointIdentity
        1 historyTarget :=
  ⟨initial_volume_notion_not_determines density distance initialTime initialIdentity,
    waveform_notion_not_determines density distance initialTime waveformIdentity,
    initial_volume_waveform_join_determines density distance initialTime densityPositive
      distancePositive initialIdentity waveformIdentity jointIdentity⟩

/-- Modal initial-volume identification plus a calibrated waveform permits full-history descent. -/
theorem history_descends_of_modal_initial_data {Object : Type*}
    (params : Parameters) (distance initialTime : ℝ) (distancePositive : 0 < distance)
    (model : Object → State) (history : Object → ℝ → ℝ)
    (regular : ∀ x, ContDiff ℝ 2 (history x))
    (initialModel : ∀ x, history x initialTime = (volumeTension (model x)).1)
    (stationary : ∀ x, deriv (history x) initialTime = 0) :
    DescendsThrough (fun x => (breathingShapeCarrier params (model x),
      volumePressure params.density distance (history x))) history := by
  intro x y same
  have modal := volumeTension_descends_joint params (congrArg Prod.fst same)
  apply history_eq_of_waveform_initial_data params.density distance params.densityPositive
    distancePositive (history x) (history y) (regular x) (regular y) initialTime
      (congrArg Prod.snd same)
  · exact (initialModel x).trans ((congrArg Prod.fst modal).trans (initialModel y).symm)
  · exact (stationary x).trans (stationary y).symm

/-- Known tension allows breathing alone to supply the initial volume needed by the waveform. -/
theorem history_descends_of_breathing_initial_data {Object : Type*}
    (params : Parameters) (distance initialTime : ℝ) (distancePositive : 0 < distance)
    (surfaceTension : {value : ℝ // 0 ≤ value}) (modelRadius : Object → SurfaceBulk.PositiveRadius)
    (history : Object → ℝ → ℝ) (regular : ∀ x, ContDiff ℝ 2 (history x))
    (initialModel : ∀ x, history x initialTime = SurfaceBulk.sphereVolumeFormula (modelRadius x))
    (stationary : ∀ x, deriv (history x) initialTime = 0) :
    DescendsThrough (fun x => (breathingSquared params (modelRadius x, surfaceTension),
      volumePressure params.density distance (history x))) history := by
  intro x y same
  have radii := breathing_fixed_tension_injective params surfaceTension (congrArg Prod.fst same)
  apply history_eq_of_waveform_initial_data params.density distance params.densityPositive
    distancePositive (history x) (history y) (regular x) (regular y) initialTime
      (congrArg Prod.snd same)
  · exact (initialModel x).trans
      ((congrArg SurfaceBulk.sphereVolumeFormula radii).trans (initialModel y).symm)
  · exact (stationary x).trans (stationary y).symm

/-- A violated shape-mode relation rejects an exact formula fit, including the zero-tension case. -/
theorem no_modal_fit_of_shape_relation_mismatch (degree : ℕ) (params : Parameters)
    (measuredTwo measuredDegree : ℝ)
    (mismatch : measuredDegree ≠ shapeCoefficient degree / 12 * measuredTwo) :
    ¬∃ state, shapeSquared 2 params state = measuredTwo ∧
      shapeSquared degree params state = measuredDegree := by
  rintro ⟨state, two, other⟩
  apply mismatch
  rw [← other, ← two]
  exact shapeSquared_from_degree_two degree params state

/-- The radius/tension scaling collision survives every shape-frequency coordinate together. -/
noncomputable def fullShapeSpectrumObstruction (params : Parameters) :
    DescentObstruction
      (fun state (degree : {n : ℕ // 2 ≤ n}) => shapeSquared degree.val params state)
      volumeTension where
  left := unitState
  right := shapeDoubleState
  sameCarrier := funext fun degree => shape_witness_equal degree.val params
  targetSeparated := (shapeVolumeTensionObstruction params).targetSeparated

/-- Adding arbitrarily many shape frequencies alone does not recover both volume and tension. -/
theorem volume_tension_not_determined_by_full_shape_spectrum (params : Parameters) :
    ¬DescendsThrough
      (fun state (degree : {n : ℕ // 2 ≤ n}) => shapeSquared degree.val params state)
      volumeTension :=
  descent_obstruction_not_descends (fullShapeSpectrumObstruction params)

end BubbleAcoustics
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
