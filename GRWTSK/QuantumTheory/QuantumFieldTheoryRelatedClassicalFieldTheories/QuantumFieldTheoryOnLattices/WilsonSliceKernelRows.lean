/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib compact continuous-map theory retains Kim Morrison's authorship;
Heine--Cantor retains Patrick Massot and Yury Kudryashov's; compact-open
currying retains Reid Barton's. All imports retain their attribution and
Apache-2.0 licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceIntegralRepresentative
import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Topology.UniformSpace.HeineCantor

/-!
# Supremum distances between the actual Wilson slice kernel rows

Rows are actual continuous functions on the actual compact matrix-product
slice. Their norm difference is the literal supremum of the absolute kernel
difference, with boundedness proved before using it as an integration bound.
Joint continuity of the maintained K gives continuity into the supremum-norm
row space by compact-open currying. Actual compactness then gives uniform
continuity; no modulus or approximation certificate is assumed.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelRows

open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative

variable (L : ℕ) [NeZero L]

def kernelRow (β : ℝ) (a : Slice L SU2) : C(Slice L SU2, ℝ) :=
  ⟨fun b => sliceKernel L β a b,
    (continuous_K L β).comp (continuous_const.prodMk continuous_id)⟩

theorem continuous_kernelRow (β : ℝ) : Continuous (kernelRow L β) :=
  ContinuousMap.continuous_of_continuous_uncurry _ (continuous_K L β)

theorem uniformContinuous_kernelRow (β : ℝ) : UniformContinuous (kernelRow L β) :=
  CompactSpace.uniformContinuous_of_continuous (continuous_kernelRow L β)

/-- The finite row supremum, in the actual continuous-function norm. -/
def rowSup (β : ℝ) (a a' : Slice L SU2) : ℝ :=
  ‖kernelRow L β a - kernelRow L β a'‖

theorem rowSup_nonneg (β : ℝ) (a a' : Slice L SU2) : 0 ≤ rowSup L β a a' :=
  norm_nonneg _

theorem rowSup_eq_dist (β : ℝ) (a a' : Slice L SU2) :
    rowSup L β a a' = dist (kernelRow L β a) (kernelRow L β a') := by
  rw [dist_eq_norm]
  rfl

theorem abs_sub_K_le_rowSup (β : ℝ) (a a' b : Slice L SU2) :
    |sliceKernel L β a b - sliceKernel L β a' b| ≤ rowSup L β a a' := by
  simpa only [kernelRow, ContinuousMap.sub_apply, Real.norm_eq_abs] using
    (kernelRow L β a - kernelRow L β a').norm_coe_le_norm b

theorem bddAbove_range_abs_sub_K (β : ℝ) (a a' : Slice L SU2) :
    BddAbove (Set.range (fun b => |sliceKernel L β a b - sliceKernel L β a' b|)) := by
  refine ⟨rowSup L β a a', ?_⟩
  rintro r ⟨b, rfl⟩
  exact abs_sub_K_le_rowSup L β a a' b

theorem rowSup_eq_iSup (β : ℝ) (a a' : Slice L SU2) :
    rowSup L β a a' = ⨆ b : Slice L SU2,
      |sliceKernel L β a b - sliceKernel L β a' b| := by
  simpa only [rowSup, kernelRow, ContinuousMap.sub_apply, Real.norm_eq_abs] using
    (kernelRow L β a - kernelRow L β a').norm_eq_iSup_norm

theorem rowSup_self (β : ℝ) (a : Slice L SU2) : rowSup L β a a = 0 := by
  simp only [rowSup, sub_self, norm_zero]

theorem norm_kernelRow_le_one (β : ℝ) (hβ : 0 ≤ β) (a : Slice L SU2) :
    ‖kernelRow L β a‖ ≤ 1 :=
  (ContinuousMap.norm_le _ zero_le_one).mpr (norm_K_le_one L β hβ a)

theorem rowSup_le_two (β : ℝ) (hβ : 0 ≤ β) (a a' : Slice L SU2) :
    rowSup L β a a' ≤ 2 := by
  calc
    _ ≤ ‖kernelRow L β a‖ + ‖kernelRow L β a'‖ := norm_sub_le _ _
    _ ≤ 1 + 1 := add_le_add (norm_kernelRow_le_one L β hβ a)
      (norm_kernelRow_le_one L β hβ a')
    _ = 2 := by norm_num

theorem continuous_rowSup (β : ℝ) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => rowSup L β p.1 p.2) :=
  (((continuous_kernelRow L β).comp continuous_fst).sub
    ((continuous_kernelRow L β).comp continuous_snd)).norm

theorem uniformContinuous_rowSup (β : ℝ) :
    UniformContinuous (fun p : Slice L SU2 × Slice L SU2 => rowSup L β p.1 p.2) :=
  CompactSpace.uniformContinuous_of_continuous (continuous_rowSup L β)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelRows
