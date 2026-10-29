/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Lp/Hilbert theory and closed-submodule theory retain their upstream
authorship and Apache-2.0 license. Other imports retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceL2SelfAdjoint
import Mathlib.Topology.Algebra.Module.ClosedSubmodule
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Restrict

/-!
# The actual closed gauge-invariant real slice Hilbert space

Each gauge composition map is the maintained Lp composition isometry,
instantiated with the proved literal slice-Haar measurable equivalence.
The invariant submodule is the intersection of its actual fixed spaces.
Closedness is proved from continuous equalizers; completeness follows from
the actual ambient L2 completeness and this closedness.

Independent first-slot K invariance makes the distinguished continuous
output invariant for EVERY L2 input, with each gauge's AE pullback justified.
Thus the source-defined bounded self-adjoint map genuinely restricts.
No invariant-continuous density or L2 positivity is asserted.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2SelfAdjoint

variable (L : ℕ) [NeZero L]

/-- Composition by the actual Haar-preserving fixed slice gauge. -/
def gaugeComposition (g : SliceGauge L SU2) : RealSliceL2 L →ₗᵢ[ℝ] RealSliceL2 L :=
  Lp.compMeasurePreservingₗᵢ ℝ (sliceGaugeMeasurableEquiv L g)
    (measurePreserving_sliceGauge L g)

theorem gaugeComposition_apply_ae (g : SliceGauge L SU2) (f : RealSliceL2 L) :
    gaugeComposition L g f =ᵐ[sliceHaar L] (fun a => f (sliceGaugeAction g a)) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sliceGauge L g)

theorem gaugeComposition_norm (g : SliceGauge L SU2) (f : RealSliceL2 L) :
    ‖gaugeComposition L g f‖ = ‖f‖ := (gaugeComposition L g).norm_map f

/-- A proved inverse, not just an assumed family of isometries. -/
theorem gaugeComposition_inverse (g : SliceGauge L SU2) (f : RealSliceL2 L) :
    gaugeComposition L g⁻¹ (gaugeComposition L g f) = f := by
  apply Lp.ext
  have hg := measurePreserving_sliceGauge L g⁻¹
  have hpush := hg.quasiMeasurePreserving.ae_eq_comp (gaugeComposition_apply_ae L g f)
  filter_upwards [gaugeComposition_apply_ae L g⁻¹ (gaugeComposition L g f), hpush]
    with a ha hb
  rw [ha, hb]
  have he : sliceGaugeAction g (sliceGaugeAction g⁻¹ a) = a := by
    rw [← sliceGauge_mul, mul_inv_cancel, sliceGauge_one]
  rw [he]

/-- The genuine intersection of fixed subspaces on L2, with AE classes retained. -/
def gaugeInvariantSpace : Submodule ℝ (RealSliceL2 L) where
  carrier := {f | ∀ g : SliceGauge L SU2, gaugeComposition L g f = f}
  zero_mem' := by intro g; exact map_zero (gaugeComposition L g)
  add_mem' := by
    intro f h hf hh g
    rw [map_add, hf g, hh g]
  smul_mem' := by
    intro r f hf g
    rw [map_smul, hf g]

theorem mem_gaugeInvariantSpace (f : RealSliceL2 L) :
    f ∈ gaugeInvariantSpace L ↔ ∀ g : SliceGauge L SU2, gaugeComposition L g f = f := Iff.rfl

theorem gaugeInvariantSpace_isClosed : IsClosed (gaugeInvariantSpace L : Set (RealSliceL2 L)) := by
  have he : (gaugeInvariantSpace L : Set (RealSliceL2 L)) =
      ⋂ g : SliceGauge L SU2, {f : RealSliceL2 L | gaugeComposition L g f = f} := by
    ext f
    simp only [Set.mem_iInter, Set.mem_setOf_eq, mem_gaugeInvariantSpace]
  rw [he]
  exact isClosed_iInter (fun g => isClosed_eq (gaugeComposition L g).continuous continuous_id)

instance gaugeInvariantSpace_complete : CompleteSpace (gaugeInvariantSpace L) := by
  apply IsComplete.completeSpace_coe
  exact (gaugeInvariantSpace_isClosed L).isComplete

/-- A pointwise invariant continuous observable really belongs to this AE fixed space. -/
theorem continuous_mem_gaugeInvariantSpace (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) :
    ContinuousMap.toLp 2 (sliceHaar L) ℝ f ∈ gaugeInvariantSpace L := by
  intro g
  apply Lp.ext
  have hi := ContinuousMap.coeFn_toLp (sliceHaar L) f (p := 2) (𝕜 := ℝ)
  have hpush := (measurePreserving_sliceGauge L g).quasiMeasurePreserving.ae_eq_comp hi
  filter_upwards [gaugeComposition_apply_ae L g (ContinuousMap.toLp 2 (sliceHaar L) ℝ f),
    hi, hpush] with a hc ha hb
  rw [hc, hb, ha, hf g a]

theorem oneVector_mem_gaugeInvariantSpace : oneVector L ∈ gaugeInvariantSpace L :=
  continuous_mem_gaugeInvariantSpace L (ContinuousMap.const (Slice L SU2) 1) (fun _ _ => rfl)

/-- Actual pointwise gauge invariance of the distinguished output, for any input. -/
theorem representative_gauge (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (g : SliceGauge L SU2) (a : Slice L SU2) :
    kernelRepresentative L β hβ f (sliceGaugeAction g a) = kernelRepresentative L β hβ f a := by
  change (∫ b, sliceKernel L β (sliceGaugeAction g a) b * f b ∂sliceHaar L) = _
  apply integral_congr_ae
  exact ae_of_all _ (fun b => by
    have hk := K_gauge L β g 1 a b
    simp only [sliceGauge_one] at hk
    exact congrArg (fun t : ℝ => t * f b) hk)

/-- Range inclusion is proved using actual AE pullback under each gauge. -/
theorem operator_mem_gaugeInvariantSpace (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    operator L β hβ f ∈ gaugeInvariantSpace L := by
  intro g
  apply Lp.ext
  have hg := measurePreserving_sliceGauge L g
  have hpush := hg.quasiMeasurePreserving.ae_eq_comp (operator_apply_ae L β hβ f)
  filter_upwards [gaugeComposition_apply_ae L g (operator L β hβ f),
    operator_apply_ae L β hβ f, hpush] with a hc ha hb
  rw [hc, hb, ha, representative_gauge]

/-- The actual bounded restriction to the actual closed invariant subspace. -/
def invariantOperator (β : ℝ) (hβ : 0 ≤ β) :
    gaugeInvariantSpace L →L[ℝ] gaugeInvariantSpace L :=
  (operator L β hβ).restrict
    (fun f _ => operator_mem_gaugeInvariantSpace L β hβ f)

theorem invariantOperator_coe (β : ℝ) (hβ : 0 ≤ β) (f : gaugeInvariantSpace L) :
    (invariantOperator L β hβ f : RealSliceL2 L) = operator L β hβ f := rfl

theorem invariantOperator_norm_apply_le (β : ℝ) (hβ : 0 ≤ β) (f : gaugeInvariantSpace L) :
    ‖invariantOperator L β hβ f‖ ≤ ‖f‖ := norm_operator_apply_le L β hβ f

theorem invariantOperator_norm_le_one (β : ℝ) (hβ : 0 ≤ β) :
    ‖invariantOperator L β hβ‖ ≤ 1 :=
  ContinuousLinearMap.opNorm_le_bound _ zero_le_one (fun f => by
    simpa only [one_mul] using invariantOperator_norm_apply_le L β hβ f)

theorem invariantOperator_isSymmetric (β : ℝ) (hβ : 0 ≤ β) :
    (invariantOperator L β hβ).toLinearMap.IsSymmetric := by
  intro f g
  exact operator_isSymmetric L β hβ f g

theorem invariantOperator_isSelfAdjoint (β : ℝ) (hβ : 0 ≤ β) :
    IsSelfAdjoint (invariantOperator L β hβ) :=
  (invariantOperator_isSymmetric L β hβ).isSelfAdjoint

theorem invariantOperator_zero_mean (f : gaugeInvariantSpace L) :
    (invariantOperator L 0 (by norm_num) f : RealSliceL2 L) = mean L f • oneVector L :=
  operator_zero_mean L f

end GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
