# Complete source: GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f` · SHA-256 `1145a7636e5c1708acb5642e2e8fe5cbabbfe0b50ee0e1a56597a9f1a4c8f7b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-!
# Area kernels and projection in a supplied holomorphic gauge

An ACTUAL gauge from the identity cocycle supplies a trivialization of the target.
The target metric is exactly the historical transported metric, and area is unchanged.
Completed vectors realize as sections of the target bundle, with the exact old class
binding. Chart evaluations and their Riesz vectors retain the frame and its conjugate.
The L2 comparison below pulls back to the SOURCE FRAME: it does not identify raw target
coordinates with ordinary unweighted L2 or construct an intrinsic general bundle L2.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport

open MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform
open GRWTSK.Analysis.Complex.HolomorphicAreaComplete
open GRWTSK.Analysis.Complex.HolomorphicAreaReproducing
open GRWTSK.Analysis.Complex.HolomorphicAreaL2
open GRWTSK.Analysis.Complex.HolomorphicAreaProjection
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C : Cocycle D}

/-- The historical target completion with exactly the constructed transported metric. -/
abbrev GaugeAreaCompletion (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :=
  SectionCompletion (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) hOpen

/-- This is precisely the old completed gauge, not a newly selected unitary. -/
abbrev areaGauge (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    AreaCompletion hOpen ≃ₗᵢ[ℂ] GaugeAreaCompletion G hOpen :=
  gaugeCompletionEquiv G (MetricWeights.identity D) (areaMeasure D.X) hOpen

/-- Realize in the actual target bundle by the old section equivalence. -/
def realizedSection (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) : BundleSection C hOpen :=
  G.bundleSectionEquiv hOpen
    (scalarSection D hOpen (completedRealization hOpen ((areaGauge G hOpen).symm v)))

@[simp] theorem realizedSection_on_gauge (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    realizedSection G hOpen (areaGauge G hOpen v) =
      G.bundleSectionEquiv hOpen (scalarSection D hOpen (completedRealization hOpen v)) := by
  simp only [realizedSection, LinearIsometryEquiv.symm_apply_apply]

/-- Every original target finite section is recovered, not only gauge-labelled test vectors. -/
theorem realizedSection_on_class (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (transportMetric G (MetricWeights.identity D))
      (areaMeasure D.X) hOpen) :
    realizedSection G hOpen
      (toCompletion (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) hOpen
        (classOf (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) hOpen s)) =
      s.1 := by
  obtain ⟨t, rfl⟩ := (finiteEnergyEquiv G (MetricWeights.identity D) (areaMeasure D.X) hOpen).surjective s
  have he := gaugeCompletion_toCompletion G (MetricWeights.identity D) (areaMeasure D.X) hOpen
    (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen t)
  rw [gaugeEquiv_classOf] at he
  rw [← he, realizedSection_on_gauge, completedRealization_toCompletion,
    realization_classOf, finiteEnergyEquiv_value]
  apply congrArg (G.bundleSectionEquiv hOpen)
  apply BundleSection.ext_value
  funext x
  rfl

/-- All target completed vectors retain the original intrinsic metric energy. -/
theorem realizedSection_energy (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) :
    energy (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) hOpen
      (realizedSection G hOpen v) =
      completionEnergy (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) hOpen v := by
  rw [realizedSection, energy_gauge]
  change scalarEnergy hOpen (completedRealization hOpen ((areaGauge G hOpen).symm v)) = _
  simp only [completedRealization_energy, completionEnergy, (areaGauge G hOpen).symm.norm_map]

theorem realizedSection_finite (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) :
    energy (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) hOpen
      (realizedSection G hOpen v) < ∞ := by
  rw [realizedSection_energy]
  exact completionEnergy_lt_top _ _ _ _

/-- Identity-bundle coordinates agree with the same scalar section on each actual chart. -/
theorem scalarSection_coordinate (hOpen : D.IsOpenCover) (f : HolomorphicSection D.X)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    chartCoordinate (Cocycle.identity D) hOpen (scalarSection D hOpen f).value i x =
      (f : Section D.X) x := by
  rw [chartCoordinate_apply,
    (Cocycle.identity D).scalar_apply (D.select x) i x (D.select_mem x) hi]
  change 1 * (f : Section D.X) x = (f : Section D.X) x
  exact one_mul _

/-- A bounded scalar evaluation in the DECLARED target chart, using the exact inverse gauge. -/
def chartEvaluation (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    GaugeAreaCompletion G hOpen →L[ℂ] ℂ :=
  unitValue (G.frame i) ⟨x.1, hi⟩ •
    ((evaluationAt hOpen x).comp
      (areaGauge G hOpen).symm.toContinuousLinearEquiv.toContinuousLinearMap)

@[simp] theorem chartEvaluation_apply (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (v : GaugeAreaCompletion G hOpen) :
    chartEvaluation G hOpen i x hi v = unitValue (G.frame i) ⟨x.1, hi⟩ *
      evaluationAt hOpen x ((areaGauge G hOpen).symm v) := rfl

/-- The bounded functional evaluates the actual local trivialization of the realized section. -/
theorem chartEvaluation_eq_coordinate (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (v : GaugeAreaCompletion G hOpen) :
    chartEvaluation G hOpen i x hi v = chartCoordinate C hOpen (realizedSection G hOpen v).value i x := by
  rw [realizedSection, G.bundleSectionEquiv_coordinate hOpen _ i x hi,
    scalarSection_coordinate hOpen _ i x hi, chartEvaluation_apply, evaluationAt_eq_value]

/-- Riesz is applied to the constructed TARGET functional and TARGET Hilbert structure. -/
def chartKernelVector (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) : GaugeAreaCompletion G hOpen :=
  (InnerProductSpace.toDual ℂ (GaugeAreaCompletion G hOpen)).symm
    (chartEvaluation G hOpen i x hi)

theorem chartKernelVector_evaluation (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (v : GaugeAreaCompletion G hOpen) :
    inner ℂ (chartKernelVector G hOpen i x hi) v = chartEvaluation G hOpen i x hi v :=
  InnerProductSpace.toDual_symm_apply

/-- First-slot conjugate linearity forces the CONJUGATED frame factor. -/
theorem chartKernelVector_transport (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    chartKernelVector G hOpen i x hi =
      star (unitValue (G.frame i) ⟨x.1, hi⟩) • areaGauge G hOpen (kernelVector hOpen x) := by
  apply ext_inner_right ℂ
  intro v
  rw [chartKernelVector_evaluation, inner_smul_left, starRingEnd_apply, star_star,
    (areaGauge G hOpen).inner_map_eq_flip, kernelVector_evaluation]
  rfl

theorem chartKernelVector_norm (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    ‖chartKernelVector G hOpen i x hi‖ =
      ‖unitValue (G.frame i) ⟨x.1, hi⟩‖ * ‖evaluationAt hOpen x‖ := by
  rw [chartKernelVector_transport, norm_smul, norm_star, (areaGauge G hOpen).norm_map,
    kernelVector_norm]

/-- A local component of the same realized kernel, with both chart indices retained. -/
def chartKernel (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (j : ι) (y : D.X.carrier) (hj : y.1 ∈ (D.U j).carrier) : ℂ :=
  chartCoordinate C hOpen (realizedSection G hOpen (chartKernelVector G hOpen j y hj)).value i x

theorem chartKernel_eq_inner (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (j : ι) (y : D.X.carrier) (hj : y.1 ∈ (D.U j).carrier) :
    chartKernel G hOpen i x hi j y hj =
      inner ℂ (chartKernelVector G hOpen i x hi) (chartKernelVector G hOpen j y hj) := by
  rw [chartKernelVector_evaluation, chartEvaluation_eq_coordinate]
  rfl

/-- The two-variable chart law preserves endpoint, gauge and conjugation identities. -/
theorem chartKernel_transport (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (j : ι) (y : D.X.carrier) (hj : y.1 ∈ (D.U j).carrier) :
    chartKernel G hOpen i x hi j y hj =
      unitValue (G.frame i) ⟨x.1, hi⟩ * star (unitValue (G.frame j) ⟨y.1, hj⟩) * kernel hOpen x y := by
  simp only [chartKernel_eq_inner, chartKernelVector_transport, inner_smul_left,
    inner_smul_right, starRingEnd_apply, star_star, (areaGauge G hOpen).inner_map_map,
    kernel_eq_inner, mul_assoc]

/-- Holomorphy refers to the target local chart, not to a fictitious global scalar frame. -/
theorem chartKernel_holomorphic (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (i j : ι) (y : D.X.carrier) (hj : y.1 ∈ (D.U j).carrier) :
    ExtendsHolomorphically (D.U i)
      (fun z => chartKernel G hOpen i ⟨z.1, D.subset i z.2⟩ z.2 j y hj) :=
  (realizedSection G hOpen (chartKernelVector G hOpen j y hj)).holomorphic i

/-- The old multiplier intertwiner acts through this exact completed gauge. -/
theorem gauge_multiplier_intertwines (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) (v : AreaCompletion hOpen) :
    completedRepresentation (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X)
      hOpen f (areaGauge G hOpen v) =
      areaGauge G hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) := by
  rw [completedRepresentation_gauge]
  change areaGauge G hOpen
    (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f
      ((areaGauge G hOpen).symm (areaGauge G hOpen v))) = _
  rw [(areaGauge G hOpen).symm_apply_apply]

theorem chartEvaluation_multiplier (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (f : BoundedSymbol D.X) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (v : GaugeAreaCompletion G hOpen) :
    chartEvaluation G hOpen i x hi
      (completedRepresentation (transportMetric G (MetricWeights.identity D))
        (areaMeasure D.X) hOpen f v) = f.value x * chartEvaluation G hOpen i x hi v := by
  obtain ⟨w, rfl⟩ := (areaGauge G hOpen).surjective v
  rw [gauge_multiplier_intertwines]
  simp only [chartEvaluation_apply, LinearIsometryEquiv.symm_apply_apply, evaluationAt_multiplier]
  ring

/-- The TARGET multiplier's actual adjoint has the same conjugate-symbol eigenvalue. -/
theorem target_adjoint_kernel (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (f : BoundedSymbol D.X) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    (ContinuousLinearMap.adjoint
      (completedRepresentation (transportMetric G (MetricWeights.identity D))
        (areaMeasure D.X) hOpen f)) (chartKernelVector G hOpen i x hi) =
      star (f.value x) • chartKernelVector G hOpen i x hi := by
  apply ext_inner_right ℂ
  intro v
  rw [ContinuousLinearMap.adjoint_inner_left, chartKernelVector_evaluation,
    chartEvaluation_multiplier, inner_smul_left, starRingEnd_apply, star_star,
    chartKernelVector_evaluation]

/-- Ordinary L2 in the SOURCE FRAME, after applying the exact inverse gauge. -/
def pulledL2Inclusion (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    GaugeAreaCompletion G hOpen →L[ℂ] AmbientL2 D.X :=
  (l2Inclusion hOpen).comp (areaGauge G hOpen).symm.toContinuousLinearEquiv.toContinuousLinearMap

/-- This a.e. statement does not equate raw target coordinates with unweighted L2 values. -/
theorem pulledL2Inclusion_ae (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) :
    (pulledL2Inclusion G hOpen v : Section D.X) =ᵐ[areaMeasure D.X]
      (completedRealization hOpen ((areaGauge G hOpen).symm v) : Section D.X) :=
  toL2_ae hOpen ((areaGauge G hOpen).symm v)

theorem pulledL2Inclusion_norm (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) : ‖pulledL2Inclusion G hOpen v‖ = ‖v‖ := by
  change ‖l2Embedding hOpen ((areaGauge G hOpen).symm v)‖ = ‖v‖
  rw [(l2Embedding hOpen).norm_map, (areaGauge G hOpen).symm.norm_map]

/-- An actual adjoint of that source-frame inclusion, with the target completion as codomain. -/
def pulledLift (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    AmbientL2 D.X →L[ℂ] GaugeAreaCompletion G hOpen :=
  ContinuousLinearMap.adjoint (pulledL2Inclusion G hOpen)

theorem pulledLift_eq (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    pulledLift G hOpen = (areaGauge G hOpen).toContinuousLinearEquiv.toContinuousLinearMap.comp
      (bergmanLift hOpen) := by
  ext g
  apply ext_inner_left ℂ
  intro v
  change inner ℂ v (ContinuousLinearMap.adjoint (pulledL2Inclusion G hOpen) g) =
    inner ℂ v (areaGauge G hOpen (bergmanLift hOpen g))
  rw [ContinuousLinearMap.adjoint_inner_right]
  change inner ℂ (l2Inclusion hOpen ((areaGauge G hOpen).symm v)) g = _
  rw [← bergmanLift_inner]
  simpa only [LinearIsometryEquiv.apply_symm_apply] using
    ((areaGauge G hOpen).inner_map_map ((areaGauge G hOpen).symm v) (bergmanLift hOpen g)).symm

/-- Same source-frame ambient space, not an unproved new intrinsic bundle L2 projection. -/
def pulledProjection (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    AmbientL2 D.X →L[ℂ] AmbientL2 D.X :=
  (pulledL2Inclusion G hOpen).comp (pulledLift G hOpen)

/-- In the declared SOURCE FRAME, both changes cancel and leave the exact old projection. -/
theorem pulledProjection_eq (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    pulledProjection G hOpen = bergmanProjection hOpen := by
  rw [pulledProjection, pulledLift_eq]
  ext g
  change l2Inclusion hOpen
    ((areaGauge G hOpen).symm (areaGauge G hOpen (bergmanLift hOpen g))) =
      l2Inclusion hOpen (bergmanLift hOpen g)
  rw [(areaGauge G hOpen).symm_apply_apply]

/-- The adjoint output realizes as the historical projected function transported as a section. -/
theorem pulledLift_realizedSection (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (g : AmbientL2 D.X) :
    realizedSection G hOpen (pulledLift G hOpen g) =
      G.bundleSectionEquiv hOpen (scalarSection D hOpen (projectedFunction hOpen g)) := by
  rw [pulledLift_eq]
  change realizedSection G hOpen (areaGauge G hOpen (bergmanLift hOpen g)) = _
  rw [realizedSection_on_gauge]
  rfl

namespace Fixtures

open GRWTSK.Analysis.Complex.HolomorphicLineGauge.Fixtures (constantUnit constantGauge twoUnit)
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection)

/-- This genuine unit forces the complex conjugation in the Riesz transport formula. -/
def phaseUnit : ℂˣ where
  val := Complex.I
  inv := -Complex.I
  val_inv := by simp
  inv_val := by simp

abbrev phaseGauge (D : IndexedDomainCover ι) := constantGauge (Cocycle.identity D) phaseUnit

theorem phase_kernel (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    chartKernelVector (phaseGauge D) hOpen i x hi =
      (-Complex.I) • areaGauge (phaseGauge D) hOpen (kernelVector hOpen x) := by
  rw [chartKernelVector_transport]
  change star Complex.I • _ = (-Complex.I) • _
  simp

/-- A real finite-area detector rejects the incorrect un-conjugated vector factor. -/
theorem phase_wrong_sign (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    chartKernelVector (phaseGauge D) hOpen i x hi ≠
      Complex.I • areaGauge (phaseGauge D) hOpen (kernelVector hOpen x) := by
  intro h
  rw [phase_kernel] at h
  have he := congrArg (areaGauge (phaseGauge D) hOpen).symm h
  simp only [map_smul, LinearIsometryEquiv.symm_apply_apply] at he
  have hz : ((-Complex.I) - Complex.I) • kernelVector hOpen x = 0 := by
    rw [sub_smul, he, sub_self]
  rcases smul_eq_zero.mp hz with hI | hk
  · have hIm := congrArg Complex.im hI
    norm_num at hIm
  · exact kernelVector_ne_zero hOpen hArea x hk

/-- A factor-two gauge has a factor-four coordinate kernel, despite being a metric isometry. -/
theorem doubling_kernel (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (j : ι) (y : D.X.carrier) (hj : y.1 ∈ (D.U j).carrier) :
    chartKernel (constantGauge (Cocycle.identity D) twoUnit) hOpen i x hi j y hj =
      4 * kernel hOpen x y := by
  rw [chartKernel_transport]
  change (2 : ℂ) * star (2 : ℂ) * kernel hOpen x y = 4 * kernel hOpen x y
  norm_num

/-- A nonzero diagonal disproves unchanged coordinate kernels under a factor-two gauge. -/
theorem doubling_diagonal_not_invariant (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    chartKernel (constantGauge (Cocycle.identity D) twoUnit) hOpen i x hi i x hi ≠
      kernel hOpen x x := by
  intro he
  rw [doubling_kernel] at he
  have hk : kernel hOpen x x ≠ 0 := by
    intro hz
    have hp := kernel_diagonal_pos hOpen hArea x
    rw [hz, Complex.zero_re] at hp
    exact (lt_irrefl 0) hp
  have hc : (4 : ℂ) = 1 := mul_right_cancel₀ hk (by simpa only [one_mul] using he)
  norm_num at hc

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport
```
