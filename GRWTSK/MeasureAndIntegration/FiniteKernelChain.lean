/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite-product integration retains upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelPowers
import Mathlib.MeasureTheory.Integral.Pi

/-!
# Directed finite kernel chains

There are m internal coordinates and m+1 directed edges, from x through the
coordinates in their Fin order to y. The consumer is a positive arc of the
periodic Wilson integral. Cyclic reindexing remains separate.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axiom and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Integration.FiniteKernelChain
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K : C(X × X, ℝ))

def edgeFactors : (m : ℕ) → X → X → (Fin m → X) → Fin (m+1) → ℝ
  | 0, x, y, _ => fun _ => K (x,y)
  | m+1, x, y, u => Fin.cons (K (x,u 0))
      (edgeFactors m (u 0) y (fun i => u i.succ))

def weight : (m : ℕ) → X → X → (Fin m → X) → ℝ
  | 0, x, y, _ => K (x,y)
  | m+1, x, y, u => K (x,u 0) * weight m (u 0) y (fun i => u i.succ)

theorem weight_eq_prod (m : ℕ) (x y : X) (u : Fin m → X) :
    weight K m x y u = ∏ i, edgeFactors K m x y u i := by
  induction m generalizing x with
  | zero => simp [weight, edgeFactors]
  | succ m ih =>
    simp only [weight, edgeFactors, Fin.prod_univ_succ, Fin.cons_zero, Fin.cons_succ]
    rw [ih]

theorem continuous_weight (m : ℕ) :
    Continuous (fun p : X × X × (Fin m → X) => weight K m p.1 p.2.1 p.2.2) := by
  induction m with
  | zero => exact K.continuous.comp (by fun_prop)
  | succ m ih =>
    have ht : Continuous (fun p : X × X × (Fin (m+1) → X) =>
        (p.2.2 0, p.2.1, fun i : Fin m => p.2.2 i.succ)) := by fun_prop
    change Continuous (fun p : X × X × (Fin (m+1) → X) =>
      K (p.1,p.2.2 0) * weight K m (p.2.2 0) p.2.1 (fun i => p.2.2 i.succ))
    exact (K.continuous.comp (by fun_prop)).mul (ih.comp ht)

theorem integrable_weight (m : ℕ) (x y : X) :
    Integrable (weight K m x y) (Measure.pi (fun _ : Fin m => μ)) := by
  exact ((continuous_weight K m).comp (by fun_prop)).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- Peel the actual first internal coordinate; neighbor factors are not independent. -/
theorem integral_weight_succ (m : ℕ) (x y : X) :
    (∫ u, weight K (m+1) x y u ∂Measure.pi (fun _ : Fin (m+1) => μ)) =
      ∫ z, K (x,z) * (∫ v, weight K m z y v ∂Measure.pi (fun _ : Fin m => μ)) ∂μ := by
  calc
    _ = ∫ p : X × (Fin m → X), K (x,p.1) * weight K m p.1 y p.2
        ∂μ.prod (Measure.pi (fun _ : Fin m => μ)) := by
      rw [← ((measurePreserving_piFinSuccAbove (fun _ : Fin (m+1) => μ) 0).symm).integral_comp']
      simp only [MeasurableEquiv.piFinSuccAbove_symm_apply, Fin.insertNthEquiv,
        Fin.insertNth_zero, Equiv.coe_fn_mk, weight, Fin.cons_zero, Fin.cons_succ]
    _ = _ := by
      have hc : Continuous (fun p : X × (Fin m → X) =>
          K (x,p.1) * weight K m p.1 y p.2) :=
        (K.continuous.comp (by fun_prop)).mul
          ((continuous_weight K m).comp (by fun_prop))
      rw [integral_prod _ (hc.integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _))]
      simp only [integral_const_mul]

/-- Literal finite product-Haar path integral equals the positive-length kernel. -/
theorem integral_weight (m : ℕ) (x y : X) :
    (∫ u, weight K m x y u ∂Measure.pi (fun _ : Fin m => μ)) =
      positivePower μ K m (x,y) := by
  induction m generalizing x with
  | zero => simp [weight, positivePower]
  | succ m ih =>
    rw [integral_weight_succ]
    simp_rw [ih]
    exact (positivePower_succ_apply μ K m x y).symm

end GRWTSK.Analysis.Integration.FiniteKernelChain
