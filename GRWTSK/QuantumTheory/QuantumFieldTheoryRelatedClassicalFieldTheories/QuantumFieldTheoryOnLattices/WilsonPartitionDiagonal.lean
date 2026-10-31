/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonCyclicPartition
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceKernelRows
import GRWTSK.MeasureAndIntegration.CyclicKernelIntegral

/-!
# Actual finite Wilson partition as a kernel diagonal integral

The positive-modulus ZMod representation and its ring equivalence preserve
both successor and the last-to-zero seam. The product measure is the actual
spatial-history Haar measure. This is a finite integral identity, not an
infinite-dimensional trace theorem. SOURCE_PROOF_CANDIDATE; compilation,
fresh replay, transitive axioms and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
open GRWTSK.Analysis.Integration.CyclicKernelIntegral

/-- Only the actual sliceKernel is bundled, using its maintained joint continuity. -/
def actualKernel (L : ℕ) [NeZero L] (β : ℝ) : C(Slice L SU2 × Slice L SU2, ℝ) :=
  ⟨fun p => sliceKernel L β p.1 p.2, continuous_K L β⟩

/-- The actual homogeneous Haar measure is preserved by the canonical index equivalence. -/
theorem history_index_preserving (m : ℕ) :
    MeasurePreserving
      (MeasurableEquiv.piCongrLeft (fun _ : ZMod (m+1) => Slice (m+1) SU2)
        (ZMod.finEquiv (m+1)).toEquiv)
      (Measure.pi (fun _ : Fin (m+1) => sliceHaar (m+1)))
      (spatialHistoryHaar (m+1)) := by
  exact measurePreserving_piCongrLeft
    (fun _ : ZMod (m+1) => sliceHaar (m+1)) (ZMod.finEquiv (m+1)).toEquiv

/-- Ring transport includes the modular seam, not just the nonlast successors. -/
theorem index_successor (m : ℕ) (i : Fin (m+1)) :
    ZMod.finEquiv (m+1) (i+1) = ZMod.finEquiv (m+1) i + 1 := by
  simp only [map_add, map_one]

theorem cyclicPartition_succ_eq_diagonal (m : ℕ) (β : ℝ) :
    cyclicPartition (m+1) β =
      ∫ x, positivePower (sliceHaar (m+1)) (actualKernel (m+1) β) m (x,x)
        ∂sliceHaar (m+1) := by
  -- ZMod (m+1), finEquiv, and homogeneous pi transport reduce to the same Fin model.
  -- Thus this change retains the actual measure and modular addition definitionally.
  change (∫ h : Fin (m+1) → Slice (m+1) SU2,
    ∏ i, actualKernel (m+1) β (h i,h (i+1))
      ∂Measure.pi (fun _ : Fin (m+1) => sliceHaar (m+1))) = _
  exact cyclic_integral_eq_diagonal (sliceHaar (m+1)) (actualKernel (m+1) β) m

/-- All nonzero finite regulators, including L=1; no positivity hypothesis is added. -/
theorem cyclicPartition_eq_diagonal (L : ℕ) [NeZero L] (β : ℝ) :
    cyclicPartition L β =
      ∫ x, positivePower (sliceHaar L) (actualKernel L β) (L-1) (x,x) ∂sliceHaar L := by
  cases L with
  | zero => exact (NeZero.ne 0 rfl).elim
  | succ m => simpa using cyclicPartition_succ_eq_diagonal m β

end GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
