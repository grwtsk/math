# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.InterfaceState.Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c` · SHA-256 `8c2b4f524ae6b12740e25fb42d32cb76c9fb369b30c149b1d76aa3e768910198`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.TwoPhaseFields.Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.TwoPhaseFields.Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a","mathematical_subject":"Analysis.Integration","original_sha256":"58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/InterfaceState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Calculus
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace
import Mathlib.Analysis.Real.Pi.Bounds
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceTransport
import Mathlib.Analysis.Calculus.Gradient.Basic
import Mathlib.Analysis.Calculus.ContDiff.Basic
import Mathlib.Analysis.Calculus.FDeriv.Comp
import Mathlib.Analysis.Normed.Lp.MeasurableSpace
import Mathlib.LinearAlgebra.Trace
import Mathlib.MeasureTheory.Integral.Bochner.Basic

/-!
# Continuum interface laws and parametrized surface energy

The phase regions are actual subsets of Euclidean space defined by a level function.
The field equations use actual derivatives, with their regularity supplied explicitly
in `ClassicalTwoPhaseAt`. This is a predicate on fields, not an existence theorem.
The normal points from the negative phase to the positive phase; the pressure jump
is inside minus outside and curvature is the divergence of this normal.

Patch area is an integral of the cross product of genuine chart derivatives. It is
parametrized area, counting multiplicity: identifying it with the Hausdorff area of
an embedded image requires a separate area formula and chart hypotheses.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.TwoPhaseFields.Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk

open MeasureTheory
open scoped RealInnerProductSpace

noncomputable section

/-- The negative bulk phase selected by the defining level function. -/
def minusRegion (level : Space → ℝ) : Set Space := {x | level x < 0}

/-- The positive bulk phase selected by the defining level function. -/
def plusRegion (level : Space → ℝ) : Set Space := {x | 0 < level x}

/-- The material interface candidate is the zero set of the level function. -/
def interfaceSet (level : Space → ℝ) : Set Space := {x | level x = 0}

/-- The two sign-defined phases cannot contain the same point. -/
theorem phases_disjoint (level : Space → ℝ) :
    Disjoint (minusRegion level) (plusRegion level) := by
  rw [Set.disjoint_left]
  intro x hminus hplus
  exact (lt_asymm (show level x < 0 from hminus) (show 0 < level x from hplus))

/-- Away from the zero set a point belongs to exactly one of the two phases. -/
theorem phases_union (level : Space → ℝ) :
    minusRegion level ∪ plusRegion level = (interfaceSet level)ᶜ := by
  ext x
  change level x < 0 ∨ 0 < level x ↔ level x ≠ 0
  exact lt_or_lt_iff_ne

/-- Divergence is the trace of the actual spatial Fréchet derivative. -/
def divergence (velocity : Space → Space) (x : Space) : ℝ :=
  LinearMap.trace ℝ Space (fderiv ℝ velocity x).toLinearMap

/-- The outward unit normal of a regular sign-defined level surface. -/
def interfaceNormal (level : Space → ℝ) (x : Space) : Space :=
  NormedSpace.normalize (gradient level x)

/-- Sum curvature with the outward-normal divergence convention. -/
def sumCurvature (level : Space → ℝ) (x : Space) : ℝ :=
  divergence (interfaceNormal level) x

/-- A nonzero actual gradient makes the declared normal a unit vector. -/
theorem interfaceNormal_norm (level : Space → ℝ) (x : Space)
    (regular : gradient level x ≠ 0) : ‖interfaceNormal level x‖ = 1 :=
  NormedSpace.norm_normalize regular

/-- The level-set transport residual using the actual time derivative and spatial gradient. -/
def kinematicResidual (level : ℝ → Space → ℝ) (velocity : ℝ → Space → Space)
    (time : ℝ) (x : Space) : ℝ :=
  deriv (fun t => level t x) time + ⟪gradient (level time) x, velocity time x⟫

/-- The speed of the zero surface along its outward normal, at a regular point. -/
def interfaceNormalSpeed (level : ℝ → Space → ℝ) (time : ℝ) (x : Space) : ℝ :=
  -deriv (fun t => level t x) time / ‖gradient (level time) x‖

/-- At a regular point the level transport equation is exactly the normal-speed law. -/
theorem kinematicResidual_zero_iff (level : ℝ → Space → ℝ)
    (velocity : ℝ → Space → Space) (time : ℝ) (x : Space)
    (regular : gradient (level time) x ≠ 0) :
    kinematicResidual level velocity time x = 0 ↔
      ⟪interfaceNormal (level time) x, velocity time x⟫ =
        interfaceNormalSpeed level time x := by
  have hn : ‖gradient (level time) x‖ ≠ 0 := norm_ne_zero_iff.mpr regular
  simp only [interfaceNormal, NormedSpace.normalize, inner_smul_left,
    starRingEnd_apply, star_trivial, interfaceNormalSpeed, kinematicResidual]
  rw [inv_mul_eq_div, div_eq_div_iff hn hn]
  constructor
  · intro h
    exact congrArg (fun c : ℝ => c * ‖gradient (level time) x‖) (by linarith)
  · intro h
    have equal := mul_right_cancel₀ hn h
    linarith

/-- Both phase velocities have the same normal component when both transport the same interface.
No equality of their tangential components is asserted. -/
theorem normal_velocity_agreement (level : ℝ → Space → ℝ)
    (minus plus : ℝ → Space → Space) (time : ℝ) (x : Space)
    (regular : gradient (level time) x ≠ 0)
    (minusLaw : kinematicResidual level minus time x = 0)
    (plusLaw : kinematicResidual level plus time x = 0) :
    ⟪interfaceNormal (level time) x, minus time x⟫ =
      ⟪interfaceNormal (level time) x, plus time x⟫ :=
  ((kinematicResidual_zero_iff level minus time x regular).mp minusLaw).trans
    ((kinematicResidual_zero_iff level plus time x regular).mp plusLaw).symm

/-- The inviscid bulk momentum residual with material acceleration and pressure gradient. -/
def momentumResidual (density : ℝ) (velocity : ℝ → Space → Space)
    (pressure : ℝ → Space → ℝ) (time : ℝ) (x : Space) : Space :=
  density • (deriv (fun t => velocity t x) time +
    fderiv ℝ (velocity time) x (velocity time x)) + gradient (pressure time) x

/-- The scalar pressure-jump residual: negative-phase pressure minus positive-phase pressure. -/
def pressureJumpResidual (tension : ℝ) (level pressureMinus pressurePlus : Space → ℝ)
    (x : Space) : ℝ :=
  pressureMinus x - pressurePlus x - tension * sumCurvature level x

/-- Capillary force per unit area with the declared curvature and normal convention. -/
def capillaryTraction (tension : ℝ) (level : Space → ℝ) (x : Space) : Space :=
  (tension * sumCurvature level x) • interfaceNormal level x

/-- The scalar Young–Laplace law supplies the corresponding oriented normal traction law. -/
theorem pressure_jump_gives_traction (tension : ℝ)
    (level pressureMinus pressurePlus : Space → ℝ) (x : Space)
    (jump : pressureJumpResidual tension level pressureMinus pressurePlus x = 0) :
    (pressureMinus x - pressurePlus x) • interfaceNormal level x =
      capillaryTraction tension level x := by
  exact congrArg (fun c : ℝ => c • interfaceNormal level x) (sub_eq_zero.mp jump)

/-- At fixed tension, actual curvature and normal together retain capillary traction. -/
theorem capillary_traction_descends (tension : ℝ) :
    DescendsThrough
      (fun state : (Space → ℝ) × Space =>
        (sumCurvature state.1 state.2, interfaceNormal state.1 state.2))
      (fun state => capillaryTraction tension state.1 state.2) := by
  intro first second equal
  have curvatureEqual := congrArg Prod.fst equal
  have normalEqual := congrArg Prod.snd equal
  change (tension * sumCurvature first.1 first.2) • interfaceNormal first.1 first.2 =
    (tension * sumCurvature second.1 second.2) • interfaceNormal second.1 second.2
  change sumCurvature first.1 first.2 = sumCurvature second.1 second.2 at curvatureEqual
  change interfaceNormal first.1 first.2 = interfaceNormal second.1 second.2 at normalEqual
  rw [curvatureEqual, normalEqual]

/-- Independent continuum fields; possession of them implies no law or regularity. -/
structure TwoPhaseFields where
  /-- Signed level function, negative on the inner phase. -/
  level : ℝ → Space → ℝ
  /-- Velocity on the negative phase, with interface trace supplied by this field. -/
  velocityMinus : ℝ → Space → Space
  /-- Velocity on the positive phase, with interface trace supplied by this field. -/
  velocityPlus : ℝ → Space → Space
  /-- Negative-phase pressure and its declared interface trace. -/
  pressureMinus : ℝ → Space → ℝ
  /-- Positive-phase pressure and its declared interface trace. -/
  pressurePlus : ℝ → Space → ℝ
  /-- Constant density of the negative phase. -/
  densityMinus : ℝ
  /-- Constant density of the positive phase. -/
  densityPlus : ℝ
  /-- Constant surface tension. -/
  tension : ℝ

/-- Local regularity needed to interpret the bulk equation through actual derivatives. -/
structure BulkRegularAt (velocity : ℝ → Space → Space) (pressure : ℝ → Space → ℝ)
    (time : ℝ) (x : Space) : Prop where
  /-- Joint differentiability supports the material-curve chain rule. -/
  spaceTimeVelocity :
    DifferentiableAt ℝ (fun z : ℝ × Space => velocity z.1 z.2) (time, x)
  /-- The time derivative of velocity exists at this space-time point. -/
  timeVelocity : DifferentiableAt ℝ (fun t => velocity t x) time
  /-- The spatial Fréchet derivative of velocity exists. -/
  spaceVelocity : DifferentiableAt ℝ (velocity time) x
  /-- The spatial pressure gradient exists. -/
  spacePressure : DifferentiableAt ℝ (pressure time) x

/-- Interface regularity and boundary identities are explicit proof obligations. -/
structure RegularInterfaceAt (level : ℝ → Space → ℝ) (time : ℝ) : Prop where
  /-- The global sign representation is continuous at this time. -/
  levelContinuous : Continuous (level time)
  /-- The negative phase really has this interface as its entire boundary. -/
  minusBoundary : frontier (minusRegion (level time)) = interfaceSet (level time)
  /-- The positive phase really has this interface as its entire boundary. -/
  plusBoundary : frontier (plusRegion (level time)) = interfaceSet (level time)
  /-- Joint local C1 regularity permits interpreting the zero set as a moving level surface. -/
  spaceTimeLevel : ∀ x ∈ interfaceSet (level time),
    ContDiffAt ℝ 1 (fun z : ℝ × Space => level z.1 z.2) (time, x)
  /-- A time derivative exists at every interface point. -/
  timeLevel : ∀ x ∈ interfaceSet (level time), DifferentiableAt ℝ (fun t => level t x) time
  /-- A spatial gradient exists at every interface point. -/
  spaceLevel : ∀ x ∈ interfaceSet (level time), DifferentiableAt ℝ (level time) x
  /-- Regularity excludes a vanishing normal at every interface point. -/
  gradientNonzero : ∀ x ∈ interfaceSet (level time), gradient (level time) x ≠ 0
  /-- The normal field has the derivative used to define curvature. -/
  normalDerivative : ∀ x ∈ interfaceSet (level time),
    DifferentiableAt ℝ (interfaceNormal (level time)) x

/-- The negative bulk phase of a regular interface is open. -/
theorem RegularInterfaceAt.minus_open {level : ℝ → Space → ℝ} {time : ℝ}
    (regular : RegularInterfaceAt level time) : IsOpen (minusRegion (level time)) :=
  isOpen_lt regular.levelContinuous continuous_const

/-- The positive bulk phase of a regular interface is open. -/
theorem RegularInterfaceAt.plus_open {level : ℝ → Space → ℝ} {time : ℝ}
    (regular : RegularInterfaceAt level time) : IsOpen (plusRegion (level time)) :=
  isOpen_lt continuous_const regular.levelContinuous

/-- The interface zero set is closed under the declared continuous representation. -/
theorem RegularInterfaceAt.interface_closed {level : ℝ → Space → ℝ} {time : ℝ}
    (regular : RegularInterfaceAt level time) : IsClosed (interfaceSet (level time)) :=
  isClosed_eq regular.levelContinuous continuous_const

/-- Exact inviscid two-phase equations at a declared time. This predicate supplies no solution,
existence, uniqueness, conservation, or continuation theorem. -/
structure ClassicalTwoPhaseAt (fields : TwoPhaseFields) (time : ℝ) : Prop where
  /-- Physical negative-phase density is positive. -/
  densityMinusPositive : 0 < fields.densityMinus
  /-- Physical positive-phase density is positive. -/
  densityPlusPositive : 0 < fields.densityPlus
  /-- Surface tension is a nonnegative constant. -/
  tensionNonnegative : 0 ≤ fields.tension
  /-- The interface is regular with the declared boundary identities. -/
  interfaceRegular : RegularInterfaceAt fields.level time
  /-- Negative-phase derivatives exist wherever its bulk equation is required. -/
  minusRegular : ∀ x ∈ minusRegion (fields.level time),
    BulkRegularAt fields.velocityMinus fields.pressureMinus time x
  /-- Positive-phase derivatives exist wherever its bulk equation is required. -/
  plusRegular : ∀ x ∈ plusRegion (fields.level time),
    BulkRegularAt fields.velocityPlus fields.pressurePlus time x
  /-- The negative velocity trace is its one-sided limit from the negative phase. -/
  minusVelocityTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.velocityMinus time) (minusRegion (fields.level time)) x
  /-- The positive velocity trace is its one-sided limit from the positive phase. -/
  plusVelocityTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.velocityPlus time) (plusRegion (fields.level time)) x
  /-- The negative pressure trace is its one-sided limit from the negative phase. -/
  minusPressureTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.pressureMinus time) (minusRegion (fields.level time)) x
  /-- The positive pressure trace is its one-sided limit from the positive phase. -/
  plusPressureTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.pressurePlus time) (plusRegion (fields.level time)) x
  /-- Euler momentum balance in the negative phase. -/
  minusMomentum : ∀ x ∈ minusRegion (fields.level time),
    momentumResidual fields.densityMinus fields.velocityMinus fields.pressureMinus time x = 0
  /-- Euler momentum balance in the positive phase. -/
  plusMomentum : ∀ x ∈ plusRegion (fields.level time),
    momentumResidual fields.densityPlus fields.velocityPlus fields.pressurePlus time x = 0
  /-- Negative-phase incompressibility. -/
  minusIncompressible : ∀ x ∈ minusRegion (fields.level time),
    divergence (fields.velocityMinus time) x = 0
  /-- Positive-phase incompressibility. -/
  plusIncompressible : ∀ x ∈ plusRegion (fields.level time),
    divergence (fields.velocityPlus time) x = 0
  /-- The negative-phase interface trace transports the interface. -/
  minusKinematic : ∀ x ∈ interfaceSet (fields.level time),
    kinematicResidual fields.level fields.velocityMinus time x = 0
  /-- The positive-phase interface trace transports the interface. -/
  plusKinematic : ∀ x ∈ interfaceSet (fields.level time),
    kinematicResidual fields.level fields.velocityPlus time x = 0
  /-- The actual curvature supplies the constant-tension pressure jump. -/
  pressureJump : ∀ x ∈ interfaceSet (fields.level time),
    pressureJumpResidual fields.tension (fields.level time)
      (fields.pressureMinus time) (fields.pressurePlus time) x = 0

/-- The same exact continuum laws hold at every time in the supplied time domain. -/
def ClassicalTwoPhaseOn (fields : TwoPhaseFields) (times : Set ℝ) : Prop :=
  ∀ time ∈ times, ClassicalTwoPhaseAt fields time

/-- A classical-law certificate yields exactly normal velocity continuity on its interface. -/
theorem ClassicalTwoPhaseAt.normal_velocity {fields : TwoPhaseFields} {time : ℝ}
    (laws : ClassicalTwoPhaseAt fields time) (x : Space)
    (onInterface : x ∈ interfaceSet (fields.level time)) :
    ⟪interfaceNormal (fields.level time) x, fields.velocityMinus time x⟫ =
      ⟪interfaceNormal (fields.level time) x, fields.velocityPlus time x⟫ :=
  normal_velocity_agreement fields.level fields.velocityMinus fields.velocityPlus time x
    (laws.interfaceRegular.gradientNonzero x onInterface)
    (laws.minusKinematic x onInterface) (laws.plusKinematic x onInterface)

/-- A pressure-jump defect vanishes exactly when its scalar interface law holds. -/
theorem pressure_jump_defect_zero_iff (tension : ℝ)
    (level pressureMinus pressurePlus : Space → ℝ) (x : Space) :
    |pressureJumpResidual tension level pressureMinus pressurePlus x| = 0 ↔
      pressureMinus x - pressurePlus x = tension * sumCurvature level x := by
  rw [abs_eq_zero, pressureJumpResidual, sub_eq_zero]

/-- The Euclidean parameter plane for a local material surface chart. -/
abbrev ParameterPlane := EuclideanSpace ℝ (Fin 2)

/-- Actual chart derivative along a standard coordinate direction. -/
def patchTangent (chart : ParameterPlane → Space) (point : ParameterPlane)
    (index : Fin 2) : Space :=
  fderiv ℝ chart point (PiLp.single 2 index (1 : ℝ))

/-- Parametrized area density, computed from two genuine chart derivatives. -/
def patchAreaDensity (chart : ParameterPlane → Space) (point : ParameterPlane) : ℝ :=
  tangentArea (patchTangent chart point 0) (patchTangent chart point 1)

/-- Oriented normalized cross product of chart derivatives; nondegeneracy makes it unit length. -/
def patchNormal (chart : ParameterPlane → Space) (point : ParameterPlane) : Space :=
  NormedSpace.normalize (cross (patchTangent chart point 0) (patchTangent chart point 1))

/-- The chart chain rule identifies matrix-transformed tangents with actual derivatives. -/
theorem patchTangent_comp (material : Space → Space) (chart : ParameterPlane → Space)
    (point : ParameterPlane) (F : Deformation)
    (chartRegular : DifferentiableAt ℝ chart point)
    (materialRegular : DifferentiableAt ℝ material (chart point))
    (representsDerivative : ∀ v, fderiv ℝ material (chart point) v = act F v)
    (index : Fin 2) :
    patchTangent (material ∘ chart) point index = act F (patchTangent chart point index) := by
  unfold patchTangent
  rw [fderiv_comp point materialRegular chartRegular]
  exact representsDerivative _

/-- The local area formula for actual composed chart derivatives at determinant one. -/
theorem patchAreaDensity_comp (material : Space → Space) (chart : ParameterPlane → Space)
    (point : ParameterPlane) (F : Deformation)
    (chartRegular : DifferentiableAt ℝ chart point)
    (materialRegular : DifferentiableAt ℝ material (chart point))
    (representsDerivative : ∀ v, fderiv ℝ material (chart point) v = act F v)
    (volumePreserving : F.det = 1) :
    patchAreaDensity (material ∘ chart) point = patchAreaDensity chart point *
      ‖act (F⁻¹).transpose (patchNormal chart point)‖ := by
  unfold patchAreaDensity
  rw [patchTangent_comp material chart point F chartRegular materialRegular representsDerivative 0,
    patchTangent_comp material chart point F chartRegular materialRegular representsDerivative 1]
  exact tangentArea_act_eq_normalized_inverse_transpose F _ _ volumePreserving

/-- The normalized chart cross product has length one on a nondegenerate chart. -/
theorem patchNormal_norm (chart : ParameterPlane → Space) (point : ParameterPlane)
    (nondegenerate : cross (patchTangent chart point 0) (patchTangent chart point 1) ≠ 0) :
    ‖patchNormal chart point‖ = 1 := NormedSpace.norm_normalize nondegenerate

/-- A finite regular parametrized patch has actual derivatives and nondegenerate tangents
almost everywhere, and an integrable area density against the declared parameter measure. -/
structure RegularFinitePatch (chart : ParameterPlane → Space)
    (measure : Measure ParameterPlane) : Prop where
  /-- Actual chart derivatives exist almost everywhere in the declared domain. -/
  differentiable : ∀ᵐ point ∂measure, DifferentiableAt ℝ chart point
  /-- Tangent parallelograms are nondegenerate almost everywhere. -/
  nondegenerate : ∀ᵐ point ∂measure,
    cross (patchTangent chart point 0) (patchTangent chart point 1) ≠ 0
  /-- The genuine nonnegative area density is integrable. -/
  areaIntegrable : Integrable (patchAreaDensity chart) measure

/-- Weighted parametrized area, with multiplicity. Physical finite area additionally requires
Lebesgue parameter measure, chart regularity, and integrable density. -/
def patchArea (chart : ParameterPlane → Space) (measure : Measure ParameterPlane) : ℝ :=
  ∫ point, patchAreaDensity chart point ∂measure

/-- Weighted constant-tension patch energy; interpreted as finite energy only with integrability. -/
def patchEnergy (tension : ℝ) (chart : ParameterPlane → Space)
    (measure : Measure ParameterPlane) : ℝ :=
  ∫ point, tension * patchAreaDensity chart point ∂measure

/-- The fixed-tension identity between Bochner integrals; finiteness is a separate obligation. -/
theorem patchEnergy_eq_tension_mul_area (tension : ℝ) (chart : ParameterPlane → Space)
    (measure : Measure ParameterPlane) :
    patchEnergy tension chart measure = tension * patchArea chart measure :=
  integral_const_mul tension _

/-- At fixed tension and parameter measure the energy target descends through the area carrier. -/
theorem patch_energy_descends (tension : ℝ) (measure : Measure ParameterPlane) :
    DescendsThrough (fun chart => patchArea chart measure)
      (fun chart => patchEnergy tension chart measure) := by
  intro first second equal
  change patchEnergy tension first measure = patchEnergy tension second measure
  rw [patchEnergy_eq_tension_mul_area, patchEnergy_eq_tension_mul_area]
  exact congrArg (fun a : ℝ => tension * a) equal

/-- Integrable chart area gives an integrable constant-tension energy density. -/
theorem RegularFinitePatch.energy_integrable {chart : ParameterPlane → Space}
    {measure : Measure ParameterPlane} (regular : RegularFinitePatch chart measure)
    (tension : ℝ) : Integrable (fun point => tension * patchAreaDensity chart point) measure :=
  regular.areaIntegrable.const_mul tension

/-- The finite patch energy pullback follows from actual chart derivatives and determinant one.
The weighted transported-area integrability hypothesis is explicit, not inferred from pointwise
regularity or incompressibility. No global embedded-surface area formula is used. -/
theorem material_patch_energy (material : Space → Space) (chart : ParameterPlane → Space)
    (deformation : ParameterPlane → Deformation) (measure : Measure ParameterPlane)
    (tension : ℝ) (regular : RegularFinitePatch chart measure)
    (materialRegular : ∀ᵐ point ∂measure, DifferentiableAt ℝ material (chart point))
    (representsDerivative : ∀ᵐ point ∂measure,
      ∀ v, fderiv ℝ material (chart point) v = act (deformation point) v)
    (volumePreserving : ∀ᵐ point ∂measure, (deformation point).det = 1)
    (transportedIntegrable : Integrable (fun point => patchAreaDensity chart point *
      ‖act ((deformation point)⁻¹).transpose (patchNormal chart point)‖) measure) :
    Integrable (fun point => tension * patchAreaDensity (material ∘ chart) point) measure ∧
      patchEnergy tension (material ∘ chart) measure = tension *
        ∫ point, patchAreaDensity chart point *
          ‖act ((deformation point)⁻¹).transpose (patchNormal chart point)‖ ∂measure := by
  have densities : patchAreaDensity (material ∘ chart) =ᵐ[measure]
      (fun point => patchAreaDensity chart point *
        ‖act ((deformation point)⁻¹).transpose (patchNormal chart point)‖) := by
    filter_upwards [regular.differentiable, materialRegular, representsDerivative,
      volumePreserving] with point hc hm hd hv
    exact patchAreaDensity_comp material chart point (deformation point) hc hm hd hv
  constructor
  · exact (transportedIntegrable.congr densities.symm).const_mul tension
  · rw [patchEnergy_eq_tension_mul_area, patchArea, integral_congr_ae densities]

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk
namespace CurvatureFixture
open scoped RealInnerProductSpace
noncomputable section

/-- A coordinate functional on the Euclidean ambient space. -/
def coord (i : Fin 3) : Space →L[ℝ] ℝ := PiLp.proj 2 (fun _ : Fin 3 => ℝ) i

/-- Orthogonal projection onto the first two coordinate axes. -/
def radial : Space →L[ℝ] Space :=
  (coord 0).smulRight (axis 0) + (coord 1).smulRight (axis 1)

/-- The radial projection has the stated coordinate expression. -/
theorem radial_apply (x : Space) : radial x = x 0 • axis 0 + x 1 • axis 1 := rfl

/-- The common surface point is fixed by radial projection. -/
theorem radial_axis_zero : radial (axis 0) = axis 0 := by
  simp [radial, coord, axis]

/-- The signed defining function of the plane through the first coordinate unit vector. -/
def planeLevel (x : Space) : ℝ := x 0 - 1

/-- The polynomial signed defining function of the unit cylinder around the third axis. -/
def cylinderLevel (x : Space) : ℝ := (1 / 2 : ℝ) * (‖radial x‖ ^ 2 - 1)

/-- The plane normal is obtained from an actual derivative of its defining function. -/
theorem plane_gradient (x : Space) : HasGradientAt planeLevel (axis 0) x := by
  apply hasGradientAt_iff_hasFDerivAt.mpr
  convert! (coord 0).hasFDerivAt.sub_const 1 using 1
  ext v
  simp [coord, axis, EuclideanSpace.inner_single_left]

/-- The cylinder defining function has its actual radial gradient everywhere. -/
theorem cylinder_gradient (x : Space) : HasGradientAt cylinderLevel (radial x) x := by
  apply hasGradientAt_iff_hasFDerivAt.mpr
  convert! (radial.hasFDerivAt.norm_sq.sub_const 1).const_mul (1 / 2 : ℝ) using 1
  ext v
  simp [axis, EuclideanSpace.inner_single_left, coord, radial]

/-- The radial norm has a genuine derivative at the common regular point. -/
theorem radial_norm_derivative :
    HasFDerivAt (fun x : Space => ‖radial x‖) (coord 0) (axis 0) := by
  have h := radial.hasFDerivAt.norm_sq.sqrt
    (show ‖radial (axis 0)‖ ^ 2 ≠ 0 by simp [radial_axis_zero])
  convert! h using 1
  · ext x
    simp
  · ext v
    simp [coord, radial_apply, axis, EuclideanSpace.inner_single_left]

/-- The actual normalized radial field differentiates to projection onto the second axis. -/
theorem radial_normal_derivative :
    HasFDerivAt (fun x : Space => NormedSpace.normalize (radial x))
      ((coord 1).smulRight (axis 1)) (axis 0) := by
  have h := ((hasDerivAt_inv (show ‖radial (axis 0)‖ ≠ 0 by
    simp [radial_axis_zero])).comp_hasFDerivAt (axis 0) radial_norm_derivative).smul
      radial.hasFDerivAt
  convert! h using 1
  ext v i
  simp [radial, coord, axis, PiLp.single_apply, ContinuousLinearMap.smulRight_apply]


/-- The level-defined outward plane normal is constant. -/
theorem plane_normal : interfaceNormal planeLevel = fun _ => axis 0 := by
  funext x
  rw [interfaceNormal, (plane_gradient x).gradient]
  exact NormedSpace.normalize_eq_self_of_norm_eq_one (axis_norm 0)

/-- The level-defined outward cylinder normal is the normalized radial field. -/
theorem cylinder_normal :
    interfaceNormal cylinderLevel = fun x => NormedSpace.normalize (radial x) := by
  funext x
  rw [interfaceNormal, (cylinder_gradient x).gradient]

/-- The trace of the actual plane-normal derivative is zero. -/
theorem plane_curvature : sumCurvature planeLevel (axis 0) = 0 := by
  simp [sumCurvature, divergence, plane_normal]

/-- The trace of the actual cylinder-normal derivative at the common point is one. -/
theorem cylinder_curvature : sumCurvature cylinderLevel (axis 0) = 1 := by
  rw [sumCurvature, divergence, cylinder_normal, radial_normal_derivative.fderiv]
  change LinearMap.trace ℝ Space ((coord 1).toLinearMap.smulRight (axis 1)) = 1
  rw [LinearMap.trace_smulRight]
  simp [coord, axis]

/-- A coordinate functional on the Euclidean parameter plane. -/
def parameterCoord (i : Fin 2) : ParameterPlane →L[ℝ] ℝ :=
  PiLp.proj 2 (fun _ : Fin 2 => ℝ) i

/-- A regular plane chart through the common surface point. -/
def planeChart (p : ParameterPlane) : Space :=
  axis 0 + p 0 • axis 1 + p 1 • axis 2

/-- The standard unit-cylinder chart, with outward cross-product orientation. -/
def cylinderChart (p : ParameterPlane) : Space :=
  Real.cos (p 0) • axis 0 + Real.sin (p 0) • axis 1 + p 1 • axis 2

/-- The explicit continuous linear derivative of the plane chart. -/
def planeDerivative : ParameterPlane →L[ℝ] Space :=
  (parameterCoord 0).smulRight (axis 1) + (parameterCoord 1).smulRight (axis 2)

/-- The explicit continuous linear derivative of the cylinder chart. -/
def cylinderDerivative (p : ParameterPlane) : ParameterPlane →L[ℝ] Space :=
  ((-Real.sin (p 0)) • parameterCoord 0).smulRight (axis 0) +
    ((Real.cos (p 0)) • parameterCoord 0).smulRight (axis 1) +
    (parameterCoord 1).smulRight (axis 2)

/-- The plane chart has its claimed genuine Fréchet derivative. -/
theorem plane_chart_derivative (p : ParameterPlane) :
    HasFDerivAt planeChart planeDerivative p :=
  (((parameterCoord 0).hasFDerivAt.smul_const (axis 1)).const_add (axis 0)).add
    ((parameterCoord 1).hasFDerivAt.smul_const (axis 2))

/-- The cylinder chart has its claimed genuine Fréchet derivative. -/
theorem cylinder_chart_derivative (p : ParameterPlane) :
    HasFDerivAt cylinderChart (cylinderDerivative p) p :=
  (((parameterCoord 0).hasFDerivAt.cos.smul_const (axis 0)).add
    ((parameterCoord 0).hasFDerivAt.sin.smul_const (axis 1))).add
    ((parameterCoord 1).hasFDerivAt.smul_const (axis 2))

/-- The first actual plane-chart tangent is the second coordinate unit vector. -/
theorem plane_patch_tangent_zero (p : ParameterPlane) : patchTangent planeChart p 0 = axis 1 := by
  rw [patchTangent, (plane_chart_derivative p).fderiv]
  simp [planeDerivative, parameterCoord]

/-- The second actual plane-chart tangent is the third coordinate unit vector. -/
theorem plane_patch_tangent_one (p : ParameterPlane) : patchTangent planeChart p 1 = axis 2 := by
  rw [patchTangent, (plane_chart_derivative p).fderiv]
  simp [planeDerivative, parameterCoord]

/-- The first actual cylinder-chart tangent follows the unit circle. -/
theorem cylinder_patch_tangent_zero (p : ParameterPlane) :
    patchTangent cylinderChart p 0 = -Real.sin (p 0) • axis 0 + Real.cos (p 0) • axis 1 := by
  rw [patchTangent, (cylinder_chart_derivative p).fderiv]
  simp [cylinderDerivative, parameterCoord]

/-- The second actual cylinder-chart tangent follows the cylinder axis. -/
theorem cylinder_patch_tangent_one (p : ParameterPlane) :
    patchTangent cylinderChart p 1 = axis 2 := by
  rw [patchTangent, (cylinder_chart_derivative p).fderiv]
  simp [cylinderDerivative, parameterCoord]

/-- The circular cylinder tangent has Euclidean norm one. -/
theorem cylinder_tangent_norm (t : ℝ) :
    ‖-Real.sin t • axis 0 + Real.cos t • axis 1‖ = 1 := by
  apply (sq_eq_sq₀ (norm_nonneg _) zero_le_one).mp
  rw [EuclideanSpace.real_norm_sq_eq]
  simp [Fin.sum_univ_succ, axis, PiLp.single_apply]

/-- The circular tangent is orthogonal to the cylinder axis. -/
theorem cylinder_tangent_orthogonal (t : ℝ) :
    ⟪-Real.sin t • axis 0 + Real.cos t • axis 1, axis 2⟫ = 0 := by
  simp [inner_add_left, inner_smul_left, axis, EuclideanSpace.inner_single_left]

/-- The actual plane-chart area density is identically one. -/
theorem plane_density (p : ParameterPlane) : patchAreaDensity planeChart p = 1 := by
  rw [patchAreaDensity, plane_patch_tangent_zero, plane_patch_tangent_one]
  apply tangentArea_eq_one_of_unit_orthogonal _ _ (axis_norm 1) (axis_norm 2)
  simp [axis, EuclideanSpace.inner_single_left]

/-- The actual cylinder-chart area density is identically one. -/
theorem cylinder_density (p : ParameterPlane) : patchAreaDensity cylinderChart p = 1 := by
  rw [patchAreaDensity, cylinder_patch_tangent_zero, cylinder_patch_tangent_one]
  exact tangentArea_eq_one_of_unit_orthogonal _ _ (cylinder_tangent_norm _) (axis_norm 2)
    (cylinder_tangent_orthogonal _)


open MeasureTheory

/-- The fixed parameter rectangle with both coordinates between negative and positive one half. -/
def parameterRectangle : Set ParameterPlane :=
  WithLp.ofLp ⁻¹' Set.Icc (fun _ : Fin 2 => (-1 / 2 : ℝ)) (fun _ => (1 / 2 : ℝ))

/-- Actual Euclidean Lebesgue measure restricted to the fixed parameter rectangle. -/
def parameterMeasure : Measure ParameterPlane := volume.restrict parameterRectangle

/-- The parameter rectangle has positive finite Lebesgue measure exactly one. -/
theorem parameterRectangle_volume : (volume : Measure ParameterPlane) parameterRectangle = 1 := by
  rw [parameterRectangle, (PiLp.volume_preserving_ofLp (Fin 2)).measure_preimage
    measurableSet_Icc.nullMeasurableSet]
  norm_num [Real.volume_Icc_pi]

/-- The restricted Lebesgue parameter measure is finite. -/
instance parameterMeasure_finite : IsFiniteMeasure parameterMeasure := by
  apply isFiniteMeasure_restrict.mpr
  rw [parameterRectangle_volume]
  simp

/-- The entire restricted parameter measure has mass one. -/
theorem parameterMeasure_univ : parameterMeasure Set.univ = 1 := by
  simp [parameterMeasure, parameterRectangle_volume]

/-- The actual plane-chart area density is integrable over the chosen rectangle. -/
theorem plane_area_integrable : Integrable (patchAreaDensity planeChart) parameterMeasure := by
  rw [show patchAreaDensity planeChart = fun _ => 1 from funext plane_density]
  exact integrable_const 1

/-- The actual cylinder-chart area density is integrable over the chosen rectangle. -/
theorem cylinder_area_integrable :
    Integrable (patchAreaDensity cylinderChart) parameterMeasure := by
  rw [show patchAreaDensity cylinderChart = fun _ => 1 from funext cylinder_density]
  exact integrable_const 1

/-- The genuine parametrized plane-patch area integral is one. -/
theorem plane_area : patchArea planeChart parameterMeasure = 1 := by
  simp [patchArea, plane_density, measureReal_def, parameterMeasure_univ]

/-- The genuine parametrized cylinder-patch area integral is one. -/
theorem cylinder_area : patchArea cylinderChart parameterMeasure = 1 := by
  simp [patchArea, cylinder_density, measureReal_def, parameterMeasure_univ]

/-- Every plane-chart point lies on its actual level surface. -/
theorem plane_chart_on_interface (p : ParameterPlane) : planeLevel (planeChart p) = 0 := by
  simp [planeLevel, planeChart, axis]

/-- Every cylinder-chart point lies on its actual level surface. -/
theorem cylinder_chart_on_interface (p : ParameterPlane) :
    cylinderLevel (cylinderChart p) = 0 := by
  unfold cylinderLevel
  rw [EuclideanSpace.real_norm_sq_eq]
  simp [radial, coord, cylinderChart, axis, PiLp.single_apply, Fin.sum_univ_succ,
    Real.cos_sq_add_sin_sq]

/-- The plane chart contains the common curvature evaluation point. -/
theorem plane_chart_zero : planeChart 0 = axis 0 := by simp [planeChart]

/-- The cylinder chart contains the same curvature evaluation point. -/
theorem cylinder_chart_zero : cylinderChart 0 = axis 0 := by simp [cylinderChart]

/-- The two-state family selects actual plane and cylinder charts. -/
def chartFamily (state : Bool) : ParameterPlane → Space :=
  if state then cylinderChart else planeChart

/-- The same two-state label selects the corresponding signed surface-defining function. -/
def levelFamily (state : Bool) : Space → ℝ :=
  if state then cylinderLevel else planeLevel

/-- Equal genuine patch areas collide while actual local curvatures differ. -/
def areaCurvatureObstruction :
    DescentObstruction (fun state => patchArea (chartFamily state) parameterMeasure)
      (fun state => sumCurvature (levelFamily state) (axis 0)) where
  left := false
  right := true
  sameCarrier := by simp [chartFamily, plane_area, cylinder_area]
  targetSeparated := by simp [levelFamily, plane_curvature, cylinder_curvature]

/-- Parametrized patch area cannot recover the actual local curvature in this family. -/
theorem curvature_not_determined_by_area :
    ¬DescendsThrough (fun state => patchArea (chartFamily state) parameterMeasure)
      (fun state => sumCurvature (levelFamily state) (axis 0)) :=
  descent_obstruction_not_descends areaCurvatureObstruction


/-- The plane patch has genuine derivatives, nondegenerate tangents, and integrable area. -/
theorem plane_regular_patch : RegularFinitePatch planeChart parameterMeasure where
  differentiable := Filter.Eventually.of_forall fun p => (plane_chart_derivative p).differentiableAt
  nondegenerate := Filter.Eventually.of_forall fun p => by
    apply norm_ne_zero_iff.mp
    change patchAreaDensity planeChart p ≠ 0
    rw [plane_density]
    norm_num
  areaIntegrable := plane_area_integrable

/-- The cylinder patch has genuine derivatives, nondegenerate tangents, and integrable area. -/
theorem cylinder_regular_patch : RegularFinitePatch cylinderChart parameterMeasure where
  differentiable := Filter.Eventually.of_forall fun p =>
    (cylinder_chart_derivative p).differentiableAt
  nondegenerate := Filter.Eventually.of_forall fun p => by
    apply norm_ne_zero_iff.mp
    change patchAreaDensity cylinderChart p ≠ 0
    rw [cylinder_density]
    norm_num
  areaIntegrable := cylinder_area_integrable

/-- The plane chart has no multiplicity anywhere. -/
theorem plane_chart_injective : Function.Injective planeChart := by
  intro p q h
  have h₀ := congrArg (fun x : Space => x 1) h
  have h₁ := congrArg (fun x : Space => x 2) h
  apply PiLp.ext
  intro i
  fin_cases i
  · simpa [planeChart, axis] using h₀
  · simpa [planeChart, axis] using h₁

/-- The cylinder chart has no repeated points on the fixed parameter rectangle. -/
theorem cylinder_chart_injective_on_rectangle : Set.InjOn cylinderChart parameterRectangle := by
  intro p hp q hq equal
  have hs := congrArg (fun x : Space => x 1) equal
  have hv := congrArg (fun x : Space => x 2) equal
  have hs' : Real.sin (p 0) = Real.sin (q 0) := by simpa [cylinderChart, axis] using hs
  have hv' : p 1 = q 1 := by simpa [cylinderChart, axis] using hv
  have hp' : p 0 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) := by
    have hlow : (-1 / 2 : ℝ) ≤ p 0 := hp.1 0
    have hhigh : p 0 ≤ (1 / 2 : ℝ) := hp.2 0
    constructor <;> linarith [Real.pi_gt_three]
  have hq' : q 0 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) := by
    have hlow : (-1 / 2 : ℝ) ≤ q 0 := hq.1 0
    have hhigh : q 0 ≤ (1 / 2 : ℝ) := hq.2 0
    constructor <;> linarith [Real.pi_gt_three]
  have hu := Real.injOn_sin hp' hq' hs'
  apply PiLp.ext
  intro i
  fin_cases i <;> assumption

/-- Both curvature evaluations use nonzero gradients and genuine level and normal derivatives. -/
theorem common_point_regular (state : Bool) :
    levelFamily state (axis 0) = 0 ∧
      gradient (levelFamily state) (axis 0) ≠ 0 ∧
      DifferentiableAt ℝ (levelFamily state) (axis 0) ∧
      DifferentiableAt ℝ (interfaceNormal (levelFamily state)) (axis 0) := by
  cases state
  · simp only [levelFamily, Bool.false_eq_true, ↓reduceIte]
    refine ⟨?_, ?_, (plane_gradient _).differentiableAt, ?_⟩
    · simpa [plane_chart_zero] using plane_chart_on_interface 0
    · rw [(plane_gradient _).gradient]
      exact norm_ne_zero_iff.mp (by simp)
    · rw [plane_normal]
      exact differentiableAt_const _
  · simp only [levelFamily, ↓reduceIte]
    refine ⟨?_, ?_, (cylinder_gradient _).differentiableAt, ?_⟩
    · simpa [cylinder_chart_zero] using cylinder_chart_on_interface 0
    · rw [(cylinder_gradient _).gradient, radial_axis_zero]
      exact norm_ne_zero_iff.mp (by simp)
    · rw [cylinder_normal]
      exact radial_normal_derivative.differentiableAt

/-- The pressure difference required by Young–Laplace at the common point, not a solution field. -/
def requiredPressureDifference (tension : ℝ) (state : Bool) : ℝ :=
  tension * sumCurvature (levelFamily state) (axis 0)

/-- For fixed nonzero tension, equal patch areas require different Young–Laplace pressure jumps. -/
def areaPressureObstruction (tension : ℝ) (nonzero : tension ≠ 0) :
    DescentObstruction (fun state => patchArea (chartFamily state) parameterMeasure)
      (requiredPressureDifference tension) where
  left := false
  right := true
  sameCarrier := areaCurvatureObstruction.sameCarrier
  targetSeparated := by
    simpa [requiredPressureDifference, levelFamily, plane_curvature, cylinder_curvature] using
      Ne.symm nonzero

/-- Fixed positive tension does not make area sufficient for the required local pressure jump. -/
theorem required_pressure_not_determined_by_area (tension : ℝ) (positive : 0 < tension) :
    ¬DescendsThrough (fun state => patchArea (chartFamily state) parameterMeasure)
      (requiredPressureDifference tension) :=
  descent_obstruction_not_descends (areaPressureObstruction tension positive.ne')

/-- No scalar function of patch area recovers the required pressure jump in this family. -/
theorem no_area_pressure_decoder (tension : ℝ) (positive : 0 < tension) :
    ¬∃ recover : ℝ → ℝ, ∀ state,
      recover (patchArea (chartFamily state) parameterMeasure) =
        requiredPressureDifference tension state :=
  descent_obstruction_no_factorization (areaPressureObstruction tension positive.ne')


/-- The common evaluation parameter lies inside the declared rectangle. -/
theorem zero_mem_parameterRectangle : (0 : ParameterPlane) ∈ parameterRectangle := by
  constructor <;> intro i <;> norm_num

/-- Both defining functions choose the same outward unit normal at the common point. -/
theorem common_normal (state : Bool) : interfaceNormal (levelFamily state) (axis 0) = axis 0 := by
  cases state <;>
    simp [levelFamily, plane_normal, cylinder_normal, radial_axis_zero,
      NormedSpace.normalize_eq_self_of_norm_eq_one (axis_norm 0)]

/-- An actual pressure-jump law requires precisely the fixture pressure-difference target. -/
theorem pressure_jump_requires_fixture_pressure (tension : ℝ) (state : Bool)
    (pressureMinus pressurePlus : Space → ℝ)
    (jump : pressureJumpResidual tension (levelFamily state)
      pressureMinus pressurePlus (axis 0) = 0) :
    pressureMinus (axis 0) - pressurePlus (axis 0) = requiredPressureDifference tension state :=
  sub_eq_zero.mp jump

end
end CurvatureFixture
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk
```
