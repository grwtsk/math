/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialBlockZeroCovariance

/-!
# Distinct spatial times factor under the actual Wilson product Haar at beta zero

This source gives an unconditional finite-volume product-Haar factorization
using the maintained spatialHistoryHaar, and a size-eight time-zero/time-three
consumer. The actual cyclic normalization is that in WilsonSpatialBlockZero.
SOURCE_PROOF_CANDIDATE: compilation, replay, axiom/interface checks NOT_RUN.
No positive-beta mixing or continuum mass gap is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZeroIndependent
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZeroCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance

variable (L : ℕ) [NeZero L]

private theorem product_haar_two_coordinates
    (r s : ZMod L) (hrs : r ≠ s)
    (f g : Slice L SU2 → ℝ) :
    (∫ a : SpatialHistory L SU2, f (a r) * g (a s)
       ∂spatialHistoryHaar L) =
      (∫ a, f a ∂sliceHaar L) * (∫ a, g a ∂sliceHaar L) := by
  classical
  let h : ZMod L → Slice L SU2 → ℝ :=
    fun t => if t = r then f else if t = s then g else fun _ => 1
  have hpoint (a : SpatialHistory L SU2) :
      (∏ t : ZMod L, h t (a t)) = f (a r) * g (a s) := by
    rw [← Finset.mul_prod_erase Finset.univ (Finset.mem_univ r)]
    rw [← Finset.mul_prod_erase (Finset.univ.erase r)
      (Finset.mem_erase.mpr ⟨hrs.symm, Finset.mem_univ s⟩)]
    have ht : ∀ t ∈ (Finset.univ.erase r).erase s, h t (a t) = 1 := by
      intro t ht
      have hts : t ≠ s := (Finset.mem_erase.mp ht).1
      have htr : t ≠ r := (Finset.mem_erase.mp (Finset.mem_erase.mp ht).2).1
      simp [h, htr, hts]
    rw [Finset.prod_congr rfl ht]
    simp [h, hrs, hrs.symm]
  have hint (t : ZMod L) :
      (∫ a, h t a ∂sliceHaar L) =
        if t = r then (∫ a, f a ∂sliceHaar L)
        else if t = s then (∫ a, g a ∂sliceHaar L) else 1 := by
    by_cases hr : t = r
    · simp [h, hr]
    · by_cases hs : t = s
      · simp [h, hr, hs]
      · simp [h, hr, hs]
  calc
    _ = ∫ a : SpatialHistory L SU2,
          ∏ t : ZMod L, h t (a t) ∂spatialHistoryHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun a => (hpoint a).symm)
    _ = ∏ t : ZMod L, ∫ a, h t a ∂sliceHaar L := by
      exact integral_fintype_prod_eq_prod h
    _ = _ := by
      simp_rw [hint]
      rw [← Finset.mul_prod_erase Finset.univ (Finset.mem_univ r)]
      rw [← Finset.mul_prod_erase (Finset.univ.erase r)
        (Finset.mem_erase.mpr ⟨hrs.symm, Finset.mem_univ s⟩)]
      have ht : ∀ t ∈ (Finset.univ.erase r).erase s,
          (if t = r then (∫ a, f a ∂sliceHaar L)
           else if t = s then (∫ a, g a ∂sliceHaar L) else 1) = 1 := by
        intro t ht
        have hts : t ≠ s := (Finset.mem_erase.mp ht).1
        have htr : t ≠ r := (Finset.mem_erase.mp (Finset.mem_erase.mp ht).2).1
        simp [htr, hts]
      rw [Finset.prod_congr rfl ht]
      simp [hrs, hrs.symm]

/-- Product-Haar factorization for actual lifted spatial-block energies. -/
theorem distinctTimeHaarFactorization : DistinctTimeHaarFactorization L := by
  intro r s hrs B C
  let f : Slice L SU2 → ℝ := sliceBlockEnergy L B
  let g : Slice L SU2 → ℝ := sliceBlockEnergy L C
  have hf : AEStronglyMeasurable f (sliceHaar L) :=
    (continuous_sliceBlockEnergy L B).aestronglyMeasurable
  have hg : AEStronglyMeasurable g (sliceHaar L) :=
    (continuous_sliceBlockEnergy L C).aestronglyMeasurable
  change (∫ a : SpatialHistory L SU2, f (a r) * g (a s)
      ∂spatialHistoryHaar L) =
    (∫ a : SpatialHistory L SU2, f (a r) ∂spatialHistoryHaar L) *
    (∫ a : SpatialHistory L SU2, g (a s) ∂spatialHistoryHaar L)
  rw [product_haar_two_coordinates L r s hrs f g]
  rw [show (∫ a : SpatialHistory L SU2, f (a r) ∂spatialHistoryHaar L) =
      ∫ a, f a ∂sliceHaar L from integral_comp_eval hf]
  rw [show (∫ a : SpatialHistory L SU2, g (a s) ∂spatialHistoryHaar L) =
      ∫ a, g a ∂sliceHaar L from integral_comp_eval hg]

theorem example_temporal_blocks_covariance_zero :
    blockCovariance 8 0 (liftBlock 8 0 {exampleSpatialPlaquette})
      (liftBlock 8 3 {exampleSpatialPlaquette}) = 0 := by
  exact covariance_zero_of_haar_factorization 8
    (distinctTimeHaarFactorization 8) 0 3 (by decide) _ _

end GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZeroIndependent
