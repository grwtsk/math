/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialBlockCovariance
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPartitionDiagonal
import GRWTSK.MeasureAndIntegration.TwoObservableCyclicIntegral

/-!
# Actual two-block Wilson product expectation with both cyclic arcs

The actual normalized finite Wilson measure is retained. The two positive
arc lengths are p+1 and q+1, including one-edge arcs. No trace, principal-vector
replacement or decay estimate is asserted. SOURCE_PROOF_CANDIDATE; compilation,
fresh kernel replay, transitive axioms and expected interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonTwoBlockArcs
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
open GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
open GRWTSK.Analysis.Integration.TwoObservableCyclicIntegral

/-- Continuous observable of the actual spatial block, not an arithmetic surrogate. -/
def sliceObservable (L : ℕ) [NeZero L] (B : Finset (SpatialPlaquette L)) : C(Slice L SU2, ℝ) :=
  ⟨sliceBlockEnergy L B, continuous_sliceBlockEnergy L B⟩

def cutIndex (p q : ℕ) : ZMod ((p+1)+(q+1)) :=
  ZMod.finEquiv ((p+1)+(q+1)) (Fin.natAdd (p+1) (0 : Fin (q+1)))

theorem cutIndex_eq_nat (p q : ℕ) :
    cutIndex p q = ((p+1 : ℕ) : ZMod ((p+1)+(q+1))) := by
  apply ZMod.val_injective
  rw [ZMod.val_natCast]
  change (p+1)+0 = (p+1) % ((p+1)+(q+1))
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

/-- Unnormalized actual cyclic insertion, before dividing by the Wilson partition. -/
theorem block_numerator (p q : ℕ) (β : ℝ)
    (B C : Finset (SpatialPlaquette ((p+1)+(q+1)))) :
    (∫ a, blockObservable ((p+1)+(q+1)) 0 B a *
      blockObservable ((p+1)+(q+1)) (cutIndex p q) C a *
      (∏ r, sliceKernel ((p+1)+(q+1)) β (a r) (a (r+1)))
      ∂spatialHistoryHaar ((p+1)+(q+1))) =
    ∫ x, ∫ y, sliceBlockEnergy ((p+1)+(q+1)) B x *
      sliceBlockEnergy ((p+1)+(q+1)) C y *
      positivePower (sliceHaar ((p+1)+(q+1))) (actualKernel ((p+1)+(q+1)) β) p (x,y) *
      positivePower (sliceHaar ((p+1)+(q+1))) (actualKernel ((p+1)+(q+1)) β) q (y,x)
      ∂sliceHaar ((p+1)+(q+1)) ∂sliceHaar ((p+1)+(q+1)) := by
  -- At this positive modulus ZMod, its ring equivalence and the homogeneous
  -- history measure reduce to the same Fin-coordinate model.
  change (∫ h : Fin ((p+1)+(q+1)) → Slice ((p+1)+(q+1)) SU2,
    sliceObservable ((p+1)+(q+1)) B (h ((0 : Fin (p+1)).castAdd (q+1))) *
      sliceObservable ((p+1)+(q+1)) C (h (Fin.natAdd (p+1) (0 : Fin (q+1)))) *
      (∏ i, actualKernel ((p+1)+(q+1)) β (h i,h (i+1)))
      ∂Measure.pi (fun _ : Fin ((p+1)+(q+1)) => sliceHaar ((p+1)+(q+1)))) = _
  exact two_observable_integral (sliceHaar ((p+1)+(q+1)))
    (actualKernel ((p+1)+(q+1)) β) p q
    (sliceObservable ((p+1)+(q+1)) B) (sliceObservable ((p+1)+(q+1)) C)

/-- Actual lifted block product expectation, with the actual finite partition denominator. -/
theorem lifted_product_eq_arcs (p q : ℕ) (β : ℝ) (hβ : 0 ≤ β)
    (B C : Finset (SpatialPlaquette ((p+1)+(q+1)))) :
    (∫ U, blockEnergy ((p+1)+(q+1)) (liftBlock ((p+1)+(q+1)) 0 B) U *
      blockEnergy ((p+1)+(q+1)) (liftBlock ((p+1)+(q+1)) ((p+1 : ℕ) : ZMod ((p+1)+(q+1))) C) U
      ∂wilsonMeasure ((p+1)+(q+1)) β) =
    (∫ x, ∫ y, sliceBlockEnergy ((p+1)+(q+1)) B x *
      sliceBlockEnergy ((p+1)+(q+1)) C y *
      positivePower (sliceHaar ((p+1)+(q+1))) (actualKernel ((p+1)+(q+1)) β) p (x,y) *
      positivePower (sliceHaar ((p+1)+(q+1))) (actualKernel ((p+1)+(q+1)) β) q (y,x)
      ∂sliceHaar ((p+1)+(q+1)) ∂sliceHaar ((p+1)+(q+1))) / cyclicPartition ((p+1)+(q+1)) β := by
  rw [lifted_block_product_mean ((p+1)+(q+1)) β hβ]
  unfold cyclicMoment
  rw [← cutIndex_eq_nat p q]
  simpa only [ContinuousMap.mul_apply] using
    congrArg (fun z : ℝ => z / cyclicPartition ((p+1)+(q+1)) β) (block_numerator p q β B C)

end GRWTSK.Geometry.GaugeTheory.WilsonTwoBlockArcs
