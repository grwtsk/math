/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib product integration retains upstream attribution and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.CyclicKernelProduct

/-!
# Finite cyclic kernel integral as a diagonal integral

This integrates the actual finite cyclic product, including its seam. The
consumer is the periodic Wilson partition after a separate ZMod coordinate
transport. No infinite-dimensional trace is asserted. SOURCE_PROOF_CANDIDATE;
compilation, fresh replay, transitive axioms and expected interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Integration.CyclicKernelIntegral
open MeasureTheory
open GRWTSK.Analysis.Integration.FiniteKernelChain
open GRWTSK.Analysis.Integration.CyclicKernelProduct
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K : C(X × X, ℝ))

/-- Every finite loop length is positive: m=0 is the one-edge loop. -/
theorem cyclic_integral_eq_diagonal (m : ℕ) :
    (∫ h : Fin (m+1) → X, ∏ i, K (h i,h (i+1))
      ∂Measure.pi (fun _ : Fin (m+1) => μ)) =
      ∫ x, positivePower μ K m (x,x) ∂μ := by
  calc
    _ = ∫ h : Fin (m+1) → X,
        weight K m (h 0) (h 0) (fun j => h j.succ)
        ∂Measure.pi (fun _ : Fin (m+1) => μ) := by
      apply integral_congr_ae
      exact ae_of_all _ (fun h => cyclic_product K m h)
    _ = ∫ p : X × (Fin m → X), weight K m p.1 p.1 p.2
        ∂μ.prod (Measure.pi (fun _ : Fin m => μ)) := by
      rw [← ((measurePreserving_piFinSuccAbove (fun _ : Fin (m+1) => μ) 0).symm).integral_comp']
      simp only [MeasurableEquiv.piFinSuccAbove_symm_apply, Fin.insertNthEquiv,
        Fin.insertNth_zero, Equiv.coe_fn_mk, Fin.cons_zero, Fin.cons_succ]
    _ = ∫ x, ∫ u, weight K m x x u ∂Measure.pi (fun _ : Fin m => μ) ∂μ := by
      have hc : Continuous (fun p : X × (Fin m → X) => weight K m p.1 p.1 p.2) :=
        (continuous_weight K m).comp (by fun_prop)
      exact integral_prod _ (hc.integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _))
    _ = _ := by simp_rw [integral_weight]

end GRWTSK.Analysis.Integration.CyclicKernelIntegral
