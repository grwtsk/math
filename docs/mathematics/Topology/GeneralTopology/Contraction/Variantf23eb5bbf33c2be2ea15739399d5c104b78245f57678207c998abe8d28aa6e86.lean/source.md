# Complete source: GRWTSK.Topology.GeneralTopology.Contraction.Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fb9beb924e43ef641dcf736da38293cb3050d88` · SHA-256 `f23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.Kernel
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas
import Mathlib.Tactic.Ring

/-!
# Contractive law boundary

The proved theorems in this module are algebraic consequences of an explicitly
supplied law metric and contraction certificate.  No Wasserstein certificate is
manufactured from samples.
-/

namespace Mathematics.SpectralClosure

structure LawMetric (X : Type) [Fintype X] where
  distance : FiniteLaw X → FiniteLaw X → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right
  separates : ∀ left right, distance left right = 0 → left = right

structure ContractionCertificate
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X) where
  factor : ℝ
  factorNonnegative : 0 ≤ factor
  factorStrict : factor < 1
  contracts :
    ∀ left right,
      metric.distance (kernel.push left) (kernel.push right) ≤
        factor * metric.distance left right
  metricRef : SpectralId
  proofRef : SpectralId
  uniformityDomainRef : SpectralId

/-!
`UniformContractionMargin` is the one shared `q` used by every admitted scale.
It does not manufacture a contraction certificate for any scale: a
`ContractionCertificate` must still be supplied and explicitly tied to this
margin by `UsesUniformContractionMargin`.
-/

structure UniformContractionMargin where
  factor : ℝ
  factorNonnegative : 0 ≤ factor
  factorStrict : factor < 1
  factorRef : SpectralId
  uniformityDomainRef : SpectralId

def UsesUniformContractionMargin
    {X : Type} [Fintype X]
    {kernel : MarkovKernel X}
    {metric : LawMetric X}
    (margin : UniformContractionMargin)
    (certificate : ContractionCertificate kernel metric) : Prop :=
  certificate.factor = margin.factor

def IsInvariantLaw
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (law : FiniteLaw X) : Prop :=
  kernel.push law = law

/-!
Schedule independence is a property of a family of kernels, not of repeated
application of one unnamed kernel.  This record is instantiated at one scale:
all schedules act on the same separated state space, preserve the same
admissible subset and invariant law, and use the same contraction margin.
It does not assert that any concrete project family satisfies these fields.
-/

structure ScheduleKernelFamily
    (Schedule X : Type)
    [Fintype X]
    (metric : LawMetric X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin) where
  kernel : Schedule → MarkovKernel X
  commonInvariantLaw : FiniteLaw X
  invariantForEverySchedule :
    ∀ schedule,
      IsInvariantLaw (kernel schedule) commonInvariantLaw
  contractionForEverySchedule :
    ∀ schedule,
      ContractionCertificate (kernel schedule) metric
  usesCommonMargin :
    ∀ schedule,
      UsesUniformContractionMargin margin
        (contractionForEverySchedule schedule)
  preservesAdmissibility :
    ∀ schedule,
      KernelPreservesAdmissibility (kernel schedule) admissible
  familyRef : SpectralId

def ScheduleKernelFamily.iterate
    {Schedule X : Type}
    [Fintype X]
    {metric : LawMetric X}
    {admissible : X → Prop}
    {margin : UniformContractionMargin}
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X) :
    Nat → FiniteLaw X
  | 0 => initial
  | step + 1 =>
      (family.kernel (scheduleSequence step)).push
        (family.iterate scheduleSequence initial step)

@[simp] theorem ScheduleKernelFamily.iterate_zero
    {Schedule X : Type}
    [Fintype X]
    {metric : LawMetric X}
    {admissible : X → Prop}
    {margin : UniformContractionMargin}
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X) :
    family.iterate scheduleSequence initial 0 = initial :=
  rfl

@[simp] theorem ScheduleKernelFamily.iterate_succ
    {Schedule X : Type}
    [Fintype X]
    {metric : LawMetric X}
    {admissible : X → Prop}
    {margin : UniformContractionMargin}
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X)
    (step : Nat) :
    family.iterate scheduleSequence initial (step + 1) =
      (family.kernel (scheduleSequence step)).push
        (family.iterate scheduleSequence initial step) :=
  rfl

theorem arbitrary_schedule_sequence_contraction_bound
    {Schedule X : Type}
    [Fintype X]
    (metric : LawMetric X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin)
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X) :
    ∀ step,
      metric.distance
          (family.iterate scheduleSequence initial step)
          family.commonInvariantLaw ≤
        margin.factor ^ step *
          metric.distance
            initial family.commonInvariantLaw := by
  intro step
  induction step with
  | zero => simp
  | succ step inductionHypothesis =>
      have oneStep :=
        (family.contractionForEverySchedule
          (scheduleSequence step)).contracts
          (family.iterate scheduleSequence initial step)
          family.commonInvariantLaw
      rw [
        family.invariantForEverySchedule
          (scheduleSequence step)
      ] at oneStep
      rw [
        family.usesCommonMargin (scheduleSequence step)
      ] at oneStep
      rw [family.iterate_succ]
      calc
        metric.distance
            ((family.kernel (scheduleSequence step)).push
              (family.iterate scheduleSequence initial step))
            family.commonInvariantLaw ≤
          margin.factor *
            metric.distance
              (family.iterate scheduleSequence initial step)
              family.commonInvariantLaw := oneStep
        _ ≤
          margin.factor *
            (margin.factor ^ step *
              metric.distance
                initial family.commonInvariantLaw) :=
          mul_le_mul_of_nonneg_left
            inductionHypothesis margin.factorNonnegative
        _ =
          margin.factor ^ (step + 1) *
            metric.distance
              initial family.commonInvariantLaw := by
          rw [pow_succ]
          ring

theorem arbitrary_schedule_sequence_converges_in_law
    {Schedule X : Type}
    [Fintype X]
    (metric : LawMetric X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin)
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X) :
    Filter.Tendsto
      (fun step =>
        metric.distance
          (family.iterate scheduleSequence initial step)
          family.commonInvariantLaw)
      Filter.atTop
      (nhds 0) := by
  apply squeeze_zero
    (fun step =>
      metric.nonnegative
        (family.iterate scheduleSequence initial step)
        family.commonInvariantLaw)
    (arbitrary_schedule_sequence_contraction_bound
      metric admissible margin family
      scheduleSequence initial)
  simpa using
    (tendsto_pow_atTop_nhds_zero_of_lt_one
      margin.factorNonnegative margin.factorStrict).mul_const
      (metric.distance initial family.commonInvariantLaw)

theorem invariantLaw_unique_under_strict_contraction
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (certificate : ContractionCertificate kernel metric)
    (left right : FiniteLaw X)
    (leftInvariant : IsInvariantLaw kernel left)
    (rightInvariant : IsInvariantLaw kernel right) :
    left = right := by
  have contraction := certificate.contracts left right
  rw [leftInvariant, rightInvariant] at contraction
  have nonnegative := metric.nonnegative left right
  have zeroDistance : metric.distance left right = 0 := by
    nlinarith [certificate.factorStrict]
  exact metric.separates left right zeroDistance

theorem stableInvariantLawPerturbation
    (distance defect factor : ℝ)
    (_distanceNonnegative : 0 ≤ distance)
    (_defectNonnegative : 0 ≤ defect)
    (_factorNonnegative : 0 ≤ factor)
    (factorStrict : factor < 1)
    (oneStep : distance ≤ factor * distance + defect) :
    distance ≤ defect / (1 - factor) := by
  have denominatorPositive : 0 < 1 - factor := sub_pos.mpr factorStrict
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

def boundaryResidual
    (factor : ℝ)
    (localDefect : Nat → ℝ) :
    Nat → ℝ
  | 0 => 0
  | step + 1 =>
      factor * boundaryResidual factor localDefect step +
        localDefect step

def implementedTraversalBound
    (factor : ℝ)
    (localDefect : Nat → ℝ)
    (initialDefect : ℝ) :
    Nat → ℝ
  | 0 => initialDefect
  | step + 1 =>
      factor *
          implementedTraversalBound
            factor localDefect initialDefect step +
        localDefect step

@[simp] theorem boundaryResidual_zero
    (factor : ℝ)
    (localDefect : Nat → ℝ) :
    boundaryResidual factor localDefect 0 = 0 :=
  rfl

@[simp] theorem boundaryResidual_succ
    (factor : ℝ)
    (localDefect : Nat → ℝ)
    (step : Nat) :
    boundaryResidual factor localDefect (step + 1) =
      factor * boundaryResidual factor localDefect step +
        localDefect step :=
  rfl

@[simp] theorem implementedTraversalBound_zero
    (factor : ℝ)
    (localDefect : Nat → ℝ)
    (initialDefect : ℝ) :
    implementedTraversalBound
        factor localDefect initialDefect 0 =
      initialDefect :=
  rfl

@[simp] theorem implementedTraversalBound_succ
    (factor : ℝ)
    (localDefect : Nat → ℝ)
    (initialDefect : ℝ)
    (step : Nat) :
    implementedTraversalBound
        factor localDefect initialDefect (step + 1) =
      factor *
          implementedTraversalBound
            factor localDefect initialDefect step +
        localDefect step :=
  rfl

theorem implementedTraversalBound_decomposes
    (factor : ℝ)
    (localDefect : Nat → ℝ)
    (initialDefect : ℝ) :
    ∀ step,
      implementedTraversalBound
          factor localDefect initialDefect step =
        factor ^ step * initialDefect +
          boundaryResidual factor localDefect step := by
  intro step
  induction step with
  | zero => simp
  | succ step inductionHypothesis =>
      rw [implementedTraversalBound_succ, boundaryResidual_succ]
      rw [inductionHypothesis, pow_succ]
      ring

theorem iterated_variable_defect_bound
    (actual : Nat → ℝ)
    (factor : ℝ)
    (localDefect : Nat → ℝ)
    (initialDefect : ℝ)
    (factorNonnegative : 0 ≤ factor)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ index,
        actual (index + 1) ≤
          factor * actual index + localDefect index) :
    ∀ index,
      actual index ≤
        implementedTraversalBound
          factor localDefect initialDefect index := by
  intro index
  induction index with
  | zero => exact initial
  | succ index inductionHypothesis =>
      rw [implementedTraversalBound_succ]
      exact le_trans (step index)
        (add_le_add
          (mul_le_mul_of_nonneg_left
            inductionHypothesis factorNonnegative)
          (le_refl (localDefect index)))

def affineDefectBound
    (factor localDefect initialDefect : ℝ) :
    Nat → ℝ
  | 0 => initialDefect
  | step + 1 =>
      factor *
        affineDefectBound factor localDefect initialDefect step +
      localDefect

@[simp] theorem affineDefectBound_zero
    (factor localDefect initialDefect : ℝ) :
    affineDefectBound factor localDefect initialDefect 0 =
      initialDefect :=
  rfl

@[simp] theorem affineDefectBound_succ
    (factor localDefect initialDefect : ℝ)
    (step : Nat) :
    affineDefectBound factor localDefect initialDefect (step + 1) =
      factor *
        affineDefectBound factor localDefect initialDefect step +
      localDefect :=
  rfl

theorem iterated_affine_law_bound
    (actual : Nat → ℝ)
    (factor localDefect initialDefect : ℝ)
    (factorNonnegative : 0 ≤ factor)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ index,
        actual (index + 1) ≤
          factor * actual index + localDefect) :
    ∀ index,
      actual index ≤
        affineDefectBound
          factor localDefect initialDefect index := by
  intro index
  induction index with
  | zero => exact initial
  | succ index inductionHypothesis =>
      rw [affineDefectBound_succ]
      exact le_trans (step index)
        (add_le_add
          (mul_le_mul_of_nonneg_left
            inductionHypothesis factorNonnegative)
          (le_refl localDefect))

structure CrossScheduleConvergenceObligation where
  statement : Prop
  status : ProofDisposition
  convergenceMode :
    { value : String // value = "asymptotic-confluence-in-law" }

end Mathematics.SpectralClosure
```
