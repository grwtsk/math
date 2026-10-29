/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Arzela--Ascoli retains Sébastien Gouëzel, Mario Carneiro, Yury
Kudryashov and Heather Macbeth's authorship; metric equicontinuity retains
Anatole Dedecker's, compact continuous maps Kim Morrison's. Upstream
attribution and Apache-2.0 licenses of all imports are preserved. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceKernelRows
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceL2Operator
import Mathlib.Topology.ContinuousMap.Bounded.ArzelaAscoli

/-!
# The actual L2 unit ball has a relatively compact continuous output

The signed integral difference is kept exactly before bounding its norm.
Every row is integrable for the actual L2 input. The quantitative estimate
is rowSup times the actual L1 norm, then rowSup times the actual L2 norm.
Uniform continuity of the actual compact row map and the existing sup-norm
contraction pay equicontinuity and bounded range. Maintained Arzela--Ascoli
then proves compact closure in the actual supremum-norm continuous space.
No finite lattice is treated as a finite-dimensional space of observables.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceArzelaAscoli

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelRows

variable (L : ℕ) [NeZero L]

theorem integrable_rowDifference (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (a a' : Slice L SU2) :
    Integrable (fun b => (sliceKernel L β a b - sliceKernel L β a' b) * f b)
      (sliceHaar L) := by
  simpa only [sub_mul] using
    (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a).sub
      (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a')

theorem representative_sub_eq_integral (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (a a' : Slice L SU2) :
    kernelRepresentative L β hβ f a - kernelRepresentative L β hβ f a' =
      ∫ b, (sliceKernel L β a b - sliceKernel L β a' b) * f b ∂sliceHaar L := by
  change (∫ b, sliceKernel L β a b * f b ∂sliceHaar L) -
    (∫ b, sliceKernel L β a' b * f b ∂sliceHaar L) = _
  rw [← integral_sub (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a)
    (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a')]
  simp only [sub_mul]

theorem norm_rowDifferenceIntegrand_le (β : ℝ) (f : RealSliceL2 L)
    (a a' b : Slice L SU2) :
    ‖(sliceKernel L β a b - sliceKernel L β a' b) * f b‖ ≤
      rowSup L β a a' * ‖f b‖ := by
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_right
    (by simpa only [Real.norm_eq_abs] using abs_sub_K_le_rowSup L β a a' b)
    (norm_nonneg (f b))

/-- No continuity is required of the chosen L2 input representative. -/
theorem representative_sub_le_L1 (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (a a' : Slice L SU2) :
    |kernelRepresentative L β hβ f a - kernelRepresentative L β hβ f a'| ≤
      rowSup L β a a' * ∫ b, ‖f b‖ ∂sliceHaar L := by
  rw [← Real.norm_eq_abs, representative_sub_eq_integral]
  calc
    _ ≤ ∫ b, ‖(sliceKernel L β a b - sliceKernel L β a' b) * f b‖ ∂sliceHaar L :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ b, rowSup L β a a' * ‖f b‖ ∂sliceHaar L :=
      integral_mono (integrable_rowDifference L β hβ f a a').norm
        ((integrable_L2 L f).norm.const_mul (rowSup L β a a'))
        (norm_rowDifferenceIntegrand_le L β f a a')
    _ = _ := integral_const_mul _ _

theorem representative_sub_le_L2 (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (a a' : Slice L SU2) :
    |kernelRepresentative L β hβ f a - kernelRepresentative L β hβ f a'| ≤
      rowSup L β a a' * ‖f‖ :=
  (representative_sub_le_L1 L β hβ f a a').trans
    (mul_le_mul_of_nonneg_left (integral_norm_le_L2 L f) (rowSup_nonneg L β a a'))

/-- The common modulus is the distance between actual continuous K rows. -/
theorem unitBall_dist_le_rows (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (hf : ‖f‖ ≤ 1) (a a' : Slice L SU2) :
    dist (toContinuous L β hβ f a) (toContinuous L β hβ f a') ≤
      dist (kernelRow L β a) (kernelRow L β a') := by
  rw [Real.dist_eq, ← rowSup_eq_dist]
  exact (representative_sub_le_L2 L β hβ f a a').trans
    (by simpa only [mul_one] using
      mul_le_mul_of_nonneg_left hf (rowSup_nonneg L β a a'))

theorem unitBall_uniformEquicontinuous (β : ℝ) (hβ : 0 ≤ β) :
    UniformEquicontinuous (fun f : Metric.closedBall (0 : RealSliceL2 L) 1 =>
      fun a : Slice L SU2 => toContinuous L β hβ f.val a) := by
  rw [Metric.uniformEquicontinuous_iff]
  intro ε hε
  obtain ⟨δ, hδ, hrow⟩ :=
    Metric.uniformContinuous_iff.mp (uniformContinuous_kernelRow L β) ε hε
  refine ⟨δ, hδ, fun a a' haa' f => ?_⟩
  exact (unitBall_dist_le_rows L β hβ f.val
    (by simpa only [Metric.mem_closedBall, dist_zero_right] using f.property) a a').trans_lt
      (hrow haa')

def unitBallImage (β : ℝ) (hβ : 0 ≤ β) : Set C(Slice L SU2, ℝ) :=
  toContinuous L β hβ '' Metric.closedBall (0 : RealSliceL2 L) 1

def boundedUnitBallImage (β : ℝ) (hβ : 0 ≤ β) : Set (Slice L SU2 →ᵇ ℝ) :=
  (fun f : RealSliceL2 L =>
    BoundedContinuousFunction.mkOfCompact (toContinuous L β hβ f)) ''
      Metric.closedBall (0 : RealSliceL2 L) 1

theorem boundedUnitBallImage_equicontinuous (β : ℝ) (hβ : 0 ≤ β) :
    Equicontinuous ((↑) : boundedUnitBallImage L β hβ → Slice L SU2 → ℝ) := by
  intro a
  rw [Metric.equicontinuousAt_iff]
  intro ε hε
  obtain ⟨δ, hδ, hfamily⟩ :=
    Metric.uniformEquicontinuous_iff.mp (unitBall_uniformEquicontinuous L β hβ) ε hε
  refine ⟨δ, hδ, fun a' haa' q => ?_⟩
  rcases q.property with ⟨f, hf, hq⟩
  change dist (q.val a) (q.val a') < ε
  rw [← hq]
  exact hfamily a a' (by simpa only [dist_comm] using haa') ⟨f, hf⟩

theorem boundedUnitBallImage_values (β : ℝ) (hβ : 0 ≤ β)
    (q : Slice L SU2 →ᵇ ℝ) (a : Slice L SU2) (hq : q ∈ boundedUnitBallImage L β hβ) :
    q a ∈ Set.Icc (-1 : ℝ) 1 := by
  rcases hq with ⟨f, hf, rfl⟩
  have hf' : ‖f‖ ≤ 1 := by
    simpa only [Metric.mem_closedBall, dist_zero_right] using hf
  have ha := (norm_kernelRepresentative_apply_le L β hβ f a).trans hf'
  exact abs_le.mp (by simpa only [Real.norm_eq_abs] using ha)

theorem isCompact_closure_boundedUnitBallImage (β : ℝ) (hβ : 0 ≤ β) :
    IsCompact (closure (boundedUnitBallImage L β hβ)) :=
  BoundedContinuousFunction.arzela_ascoli (Set.Icc (-1 : ℝ) 1) isCompact_Icc
    (boundedUnitBallImage L β hβ) (boundedUnitBallImage_values L β hβ)
    (boundedUnitBallImage_equicontinuous L β hβ)

/-- Compact closure in the actual continuous-map supremum norm, not pointwise topology. -/
theorem isCompact_closure_unitBallImage (β : ℝ) (hβ : 0 ≤ β) :
    IsCompact (closure (unitBallImage L β hβ)) := by
  let e := ContinuousMap.isometryEquivBoundedOfCompact (Slice L SU2) ℝ
  have hc := (isCompact_closure_boundedUnitBallImage L β hβ).image e.symm.continuous
  refine hc.closure_of_subset ?_
  rintro q ⟨f, hf, rfl⟩
  refine ⟨e (toContinuous L β hβ f), subset_closure ?_, e.symm_apply_apply _⟩
  exact ⟨f, hf, rfl⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSliceArzelaAscoli
