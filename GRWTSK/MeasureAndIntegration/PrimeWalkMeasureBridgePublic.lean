module

public import Surface.Core.AnalyticPrimeWalkLogDensity
public import Mathlib.MeasureTheory.Integral.Lebesgue.Map
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

/-!
# Discrete and continuous measure models for a prime-walk observable

This file supplies a checked interface between two genuinely different
measure models.

* `discreteWalkMeasure` pushes the atomic harmonic measure on `ℕ` forward
  along a discrete observable.
* `continuousWalkMeasure` pushes Lebesgue measure on a finite time window
  forward along a measurable trajectory.

`MeasureBridgeData` records the trajectory, the discrete samples, their
measurability, and the pointwise statement that the trajectory agrees with
the samples at natural-number times.  That agreement does **not** identify
the two pushforward measures.  The harmonic source gives the time `k` an atom
of mass `1 / k`, whereas Lebesgue measure gives the singleton time `{k}` mass
zero.  Moreover, a continuous occupation measure can still have a target
atom if the trajectory spends positive time at one value.

No interpolation is manufactured here, and no GRH, Littlewood--Paley,
maximal-function, or weak-type estimate is asserted.  A weak-`L²` tail bound
is provided only as a precisely typed predicate which later analytic work may
prove for a particular pushforward.
-/

public section

namespace Surface.Core.PrimeWalkMeasureBridge

noncomputable section

open scoped BigOperators ENNReal
open MeasureTheory Set
open Surface.Core.AnalyticPrimeWalk

/-! ## Explicit sampling interface -/

/-- A continuous trajectory and a discrete observable agree at the embedded
natural-number sample times.  This is pointwise data, not an assertion that
their source or pushforward measures coincide. -/
@[expose]
def AgreesOnNat {E : Type*} (trajectory : ℝ → E) (samples : ℕ → E) : Prop :=
  ∀ k : ℕ, trajectory (k : ℝ) = samples k

/-- Data needed to compare an atomic discrete observable with a measurable
continuous occupation trajectory.  Both measurability obligations are
fields, so the pushforwards below never rely on an implicit interpolation or
on an unverified regularity claim. -/
structure MeasureBridgeData (E : Type*) [MeasurableSpace E] where
  discreteObservable : ℕ → E
  trajectory : ℝ → E
  measurable_discreteObservable : Measurable discreteObservable
  measurable_trajectory : Measurable trajectory
  agreesOnNat : AgreesOnNat trajectory discreteObservable

/-- The structure field exposes the exact sample agreement. -/
@[surface_novel, surface_published]
theorem trajectory_natCast_eq_discrete
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (k : ℕ) :
    bridge.trajectory (k : ℝ) = bridge.discreteObservable k := by
  exact bridge.agreesOnNat k

/-! ## Source measures and pushforwards -/

/-- Lebesgue time restricted to the finite half-open window `(0,T]`.  For
`T <= 0` this is the zero measure, as expressed by `ENNReal.ofReal T` below. -/
@[expose]
def continuousSourceMeasure (T : ℝ) : Measure ℝ :=
  volume.restrict (Ioc 0 T)

/-- Harmonic source measure restricted to the discrete window `[2,N]`. -/
@[expose]
def discreteWindowSourceMeasure (N : ℕ) : Measure ℕ :=
  harmonicMeasure.restrict (Finset.Icc 2 N : Set ℕ)

/-- Global atomic pushforward of harmonic measure along the discrete
observable.  This measure need not be finite. -/
@[expose]
def discreteWalkMeasure
    {E : Type*} [MeasurableSpace E] (bridge : MeasureBridgeData E) : Measure E :=
  harmonicMeasure.map bridge.discreteObservable

/-- Finite-window atomic pushforward along the discrete observable. -/
@[expose]
def discreteWindowMeasure
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ) : Measure E :=
  (discreteWindowSourceMeasure N).map bridge.discreteObservable

/-- Finite-window Lebesgue occupation measure of the continuous trajectory. -/
@[expose]
def continuousWalkMeasure
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (T : ℝ) : Measure E :=
  (continuousSourceMeasure T).map bridge.trajectory

/-! ## Exact evaluation identities -/

/-- The global atomic pushforward evaluates a measurable target set by taking
its discrete preimage under the observable. -/
@[surface_novel, surface_published]
theorem discreteWalkMeasure_apply
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) {s : Set E} (hs : MeasurableSet s) :
    discreteWalkMeasure bridge s =
      harmonicMeasure (bridge.discreteObservable ⁻¹' s) := by
  exact Measure.map_apply bridge.measurable_discreteObservable hs

/-- The finite atomic pushforward is exactly the harmonic mass of the
preimage inside `[2,N]`. -/
@[surface_novel, surface_published]
theorem discreteWindowMeasure_apply
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ)
    {s : Set E} (hs : MeasurableSet s) :
    discreteWindowMeasure bridge N s =
      harmonicMeasure
        (bridge.discreteObservable ⁻¹' s ∩ (Finset.Icc 2 N : Set ℕ)) := by
  rw [discreteWindowMeasure, Measure.map_apply
    bridge.measurable_discreteObservable hs]
  exact Measure.restrict_apply
    (bridge.measurable_discreteObservable hs)

/-- The continuous occupation measure is exactly Lebesgue volume of the
target preimage inside `(0,T]`. -/
@[surface_novel, surface_published]
theorem continuousWalkMeasure_apply
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (T : ℝ)
    {s : Set E} (hs : MeasurableSet s) :
    continuousWalkMeasure bridge T s =
      volume (bridge.trajectory ⁻¹' s ∩ Ioc 0 T) := by
  rw [continuousWalkMeasure, Measure.map_apply bridge.measurable_trajectory hs]
  exact Measure.restrict_apply (bridge.measurable_trajectory hs)

/-- The total mass of a continuous window is its Lebesgue length. -/
@[surface_novel, surface_published]
theorem continuousWalkMeasure_univ
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (T : ℝ) :
    continuousWalkMeasure bridge T univ = ENNReal.ofReal T := by
  rw [continuousWalkMeasure_apply bridge T MeasurableSet.univ]
  simp [Real.volume_Ioc]

/-- The total mass of a discrete window is its finite harmonic normalizer. -/
@[surface_novel, surface_published]
theorem discreteWindowMeasure_univ
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ) :
    discreteWindowMeasure bridge N univ =
      ENNReal.ofReal (harmonicNormalizer N) := by
  rw [discreteWindowMeasure_apply bridge N MeasurableSet.univ]
  simp only [preimage_univ, univ_inter]
  simpa [harmonicNormalizer] using
    harmonicMeasure_finset (Finset.Icc 2 N)

/-- Every continuous occupation window is a finite measure. -/
@[surface_novel, surface_published]
theorem continuousWalkMeasure_isFinite
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (T : ℝ) :
    IsFiniteMeasure (continuousWalkMeasure bridge T) := by
  constructor
  rw [continuousWalkMeasure_univ bridge T]
  exact ENNReal.ofReal_lt_top

/-- Every finite harmonic window pushforward is a finite measure. -/
@[surface_novel, surface_published]
theorem discreteWindowMeasure_isFinite
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ) :
    IsFiniteMeasure (discreteWindowMeasure bridge N) := by
  constructor
  rw [discreteWindowMeasure_univ bridge N]
  exact ENNReal.ofReal_lt_top

/-- Indices in the finite window whose observable has the target value `y`.
Collisions are retained: every such index contributes its own harmonic atom. -/
@[expose]
def discreteFiberFinset
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ) (y : E) : Finset ℕ := by
  classical
  exact (Finset.Icc 2 N).filter fun k ↦ bridge.discreteObservable k = y

/-- Exact mass of a target singleton in the finite atomic pushforward.  This
formula correctly sums every source index mapping to that target value. -/
@[surface_novel, surface_published]
theorem discreteWindowMeasure_singleton
    {E : Type*} [MeasurableSpace E] [MeasurableSingletonClass E]
    (bridge : MeasureBridgeData E) (N : ℕ) (y : E) :
    discreteWindowMeasure bridge N {y} =
      ENNReal.ofReal
        (∑ k ∈ discreteFiberFinset bridge N y, harmonicWeight k) := by
  rw [discreteWindowMeasure_apply bridge N (measurableSet_singleton y)]
  rw [← harmonicMeasure_finset (discreteFiberFinset bridge N y)]
  congr 1
  ext k
  simp [discreteFiberFinset, and_comm]

/-- A measurable target set avoided by the entire time window has zero
continuous occupation mass.  This is the support statement available without
assuming that the trajectory image itself is measurable or closed. -/
@[surface_novel, surface_published]
theorem continuousWalkMeasure_eq_zero_of_avoids
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (T : ℝ)
    {s : Set E} (hs : MeasurableSet s)
    (havoid : ∀ t ∈ Ioc (0 : ℝ) T, bridge.trajectory t ∉ s) :
    continuousWalkMeasure bridge T s = 0 := by
  rw [continuousWalkMeasure_apply bridge T hs]
  have hempty : bridge.trajectory ⁻¹' s ∩ Ioc (0 : ℝ) T = ∅ := by
    ext t
    simp only [mem_inter_iff, mem_preimage, mem_empty_iff_false, iff_false]
    exact fun h ↦ havoid t h.2 h.1
  rw [hempty, measure_empty]

/-! ## Integration through the pushforwards -/

/-- Nonnegative integration against the continuous occupation measure is
integration of the pulled-back observable over the source time window. -/
@[surface_novel, surface_published]
theorem lintegral_continuousWalkMeasure
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (T : ℝ)
    (g : E → ℝ≥0∞) (hg : Measurable g) :
    ∫⁻ y, g y ∂continuousWalkMeasure bridge T =
      ∫⁻ t in Ioc (0 : ℝ) T, g (bridge.trajectory t) ∂volume := by
  simpa [continuousWalkMeasure, continuousSourceMeasure] using
    (MeasureTheory.lintegral_map hg bridge.measurable_trajectory
      (μ := continuousSourceMeasure T))

/-- Nonnegative integration against the finite atomic pushforward is the
pulled-back integral against harmonic measure on `[2,N]`. -/
@[surface_novel, surface_published]
theorem lintegral_discreteWindowMeasure
    {E : Type*} [MeasurableSpace E]
    (bridge : MeasureBridgeData E) (N : ℕ)
    (g : E → ℝ≥0∞) (hg : Measurable g) :
    ∫⁻ y, g y ∂discreteWindowMeasure bridge N =
      ∫⁻ k in (Finset.Icc 2 N : Set ℕ),
        g (bridge.discreteObservable k) ∂harmonicMeasure := by
  simpa [discreteWindowMeasure, discreteWindowSourceMeasure] using
    (MeasureTheory.lintegral_map hg bridge.measurable_discreteObservable
      (μ := discreteWindowSourceMeasure N))

/-! ## Why sample agreement does not identify measures -/

/-- At the source level, every real singleton sample time has zero Lebesgue
mass, while the corresponding natural-number singleton has its exact harmonic
atomic mass.  This is the formal obstruction to treating pointwise sample
agreement as equality of the two measures. -/
@[surface_novel, surface_published]
theorem source_sample_atom_contrast (T : ℝ) (k : ℕ) :
    continuousSourceMeasure T {(k : ℝ)} = 0 ∧
      harmonicMeasure {k} = ENNReal.ofReal (harmonicWeight k) := by
  constructor
  · simp [continuousSourceMeasure]
  · exact harmonicMeasure_singleton k

/-! ## A typed weak-`L²` tail predicate, with no existence claim -/

section NormTail

variable {E : Type*} [NormedAddCommGroup E] [MeasurableSpace E] [BorelSpace E]

/-- Target set on which the norm exceeds the positive threshold `lambda`. -/
@[expose]
def normTailSet (lambda : ℝ) : Set E :=
  {x : E | lambda < ‖x‖}

/-- Norm tails are Borel measurable. -/
@[surface_novel, surface_published]
theorem measurableSet_normTailSet (lambda : ℝ) :
    MeasurableSet (normTailSet (E := E) lambda) := by
  exact measurableSet_lt measurable_const measurable_norm

/-- A weak-`L²` distributional tail bound for a measure on a normed target.
This is a proposition to be established by later analysis, not a theorem about
any prime-walk trajectory in this module. -/
@[expose]
def HasWeakL2TailBound (μ : Measure E) (C : ℝ≥0∞) : Prop :=
  ∀ lambda : ℝ, 0 < lambda →
    μ (normTailSet lambda) ≤ C / (ENNReal.ofReal lambda) ^ 2

/-- The norm tail of the continuous pushforward is exactly the source-time
volume of the corresponding trajectory tail inside the finite window. -/
@[surface_novel, surface_published]
theorem continuousWalkMeasure_normTail
    (bridge : MeasureBridgeData E) (T lambda : ℝ) :
    continuousWalkMeasure bridge T (normTailSet lambda) =
      volume ({t : ℝ | lambda < ‖bridge.trajectory t‖} ∩ Ioc 0 T) := by
  simpa [normTailSet] using
    continuousWalkMeasure_apply bridge T
      (measurableSet_normTailSet (E := E) lambda)

/-- A weak-`L²` bound for the occupation measure is definitionally equivalent
to the corresponding family of finite-window source-volume inequalities. -/
@[surface_novel, surface_published]
theorem hasWeakL2TailBound_continuous_iff
    (bridge : MeasureBridgeData E) (T : ℝ) (C : ℝ≥0∞) :
    HasWeakL2TailBound (continuousWalkMeasure bridge T) C ↔
      ∀ lambda : ℝ, 0 < lambda →
        volume ({t : ℝ | lambda < ‖bridge.trajectory t‖} ∩ Ioc 0 T) ≤
          C / (ENNReal.ofReal lambda) ^ 2 := by
  unfold HasWeakL2TailBound
  constructor <;> intro h lambda hlambda
  · simpa [continuousWalkMeasure_normTail] using h lambda hlambda
  · simpa [continuousWalkMeasure_normTail] using h lambda hlambda

end NormTail

end

end Surface.Core.PrimeWalkMeasureBridge
