/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Fubini theory retains upstream attribution and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.TwoArcHistoryMeasure
import GRWTSK.MeasureAndIntegration.TwoArcKernelIntegral

/-!
# Two continuous insertions in the finite cyclic kernel integral

Both directed arcs and the unnormalized numerator are retained. This is a
finite probability-product identity, not a ground-state or trace formula.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Integration.TwoObservableCyclicIntegral
open MeasureTheory
open GRWTSK.Analysis.Integration.FiniteKernelChain
open GRWTSK.Analysis.Integration.TwoArcKernelProduct
open GRWTSK.Analysis.Integration.TwoArcHistoryMeasure
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K : C(X × X, ℝ))

/-- Fubini is paid by compact-continuous integrability after integrating the returning arc. -/
theorem integrate_grouped_weights (p q : ℕ) (O P : C(X, ℝ)) :
    (∫ a : X × (Fin p → X), ∫ b : X × (Fin q → X),
      O a.1 * P b.1 * weight K p a.1 b.1 a.2 * weight K q b.1 a.1 b.2
      ∂μ.prod (Measure.pi (fun _ : Fin q => μ))
      ∂μ.prod (Measure.pi (fun _ : Fin p => μ))) =
    ∫ x, ∫ y, O x * P y * positivePower μ K p (x,y) * positivePower μ K q (y,x) ∂μ ∂μ := by
  have hinner (x : X) (u : Fin p → X) :
      Continuous (fun b : X × (Fin q → X) =>
        O x * P b.1 * weight K p x b.1 u * weight K q b.1 x b.2) := by
    exact (((continuous_const.mul (P.continuous.comp continuous_fst)).mul
      ((continuous_weight K p).comp (by fun_prop))).mul
      ((continuous_weight K q).comp (by fun_prop)))
  have hfull : Continuous (fun ab : (X × (Fin p → X)) × (X × (Fin q → X)) =>
      O ab.1.1 * P ab.2.1 * weight K p ab.1.1 ab.2.1 ab.1.2 *
        weight K q ab.2.1 ab.1.1 ab.2.2) :=
    ((((O.continuous.comp (by fun_prop)).mul (P.continuous.comp (by fun_prop))).mul
      ((continuous_weight K p).comp (by fun_prop))).mul
      ((continuous_weight K q).comp (by fun_prop)))
  have hi := hfull.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  rw [integral_prod _ hi.integral_prod_left]
  apply integral_congr_ae
  refine ae_of_all _ (fun x => ?_)
  have hswap : Integrable (fun uy : (Fin p → X) × X =>
      O x * P uy.2 * weight K p x uy.2 uy.1 * positivePower μ K q (uy.2,x))
      ((Measure.pi (fun _ : Fin p => μ)).prod μ) := by
    have hc : Continuous (fun uy : (Fin p → X) × X =>
      O x * P uy.2 * weight K p x uy.2 uy.1 * positivePower μ K q (uy.2,x)) :=
      (((continuous_const.mul (P.continuous.comp continuous_snd)).mul
        ((continuous_weight K p).comp (by fun_prop))).mul
        ((positivePower μ K q).continuous.comp (by fun_prop)))
    exact hc.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ u, ∫ y, O x * P y * weight K p x y u * positivePower μ K q (y,x)
        ∂μ ∂Measure.pi (fun _ : Fin p => μ) := by
      apply integral_congr_ae
      refine ae_of_all _ (fun u => ?_)
      rw [integral_prod _ ((hinner x u).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _))]
      simp_rw [integral_const_mul, integral_weight]
    _ = ∫ y, ∫ u, O x * P y * weight K p x y u * positivePower μ K q (y,x)
        ∂Measure.pi (fun _ : Fin p => μ) ∂μ := integral_integral_swap hswap
    _ = _ := by simp_rw [← mul_assoc, integral_mul_const, integral_const_mul, integral_weight]

/-- The full history numerator, with insertions at the two actual endpoints. -/
theorem two_observable_integral (p q : ℕ) (O P : C(X, ℝ)) :
    (∫ h : Fin ((p+1)+(q+1)) → X,
      O (h ((0 : Fin (p+1)).castAdd (q+1))) *
        P (h (Fin.natAdd (p+1) (0 : Fin (q+1)))) *
          (∏ i, K (h i,h (i+1)))
      ∂Measure.pi (fun _ : Fin ((p+1)+(q+1)) => μ)) =
    ∫ x, ∫ y, O x * P y * positivePower μ K p (x,y) * positivePower μ K q (y,x) ∂μ ∂μ := by
  let D : (Fin ((p+1)+(q+1)) → X) → ℝ := fun h =>
    O (h ((0 : Fin (p+1)).castAdd (q+1))) *
      P (h (Fin.natAdd (p+1) (0 : Fin (q+1)))) * ∏ i, K (h i,h (i+1))
  calc
    _ = ∫ ab : (X × (Fin p → X)) × (X × (Fin q → X)),
        D (historyEquiv p q ab)
        ∂(μ.prod (Measure.pi (fun _ : Fin p => μ))).prod
          (μ.prod (Measure.pi (fun _ : Fin q => μ))) := by
      exact ((history_preserving μ p q).integral_comp' D).symm
    _ = ∫ ab : (X × (Fin p → X)) × (X × (Fin q → X)),
        O ab.1.1 * P ab.2.1 * weight K p ab.1.1 ab.2.1 ab.1.2 *
          weight K q ab.2.1 ab.1.1 ab.2.2
        ∂(μ.prod (Measure.pi (fun _ : Fin p => μ))).prod
          (μ.prod (Measure.pi (fun _ : Fin q => μ))) := by
      apply integral_congr_ae
      refine ae_of_all _ (fun ab => ?_)
      rw [historyEquiv_apply]
      dsimp [D]
      rw [cyclic_product_two_arcs]
      simp only [history, Fin.append_left, Fin.append_right, Fin.cons_zero]
      ring
    _ = _ := by
      have hc : Continuous (fun ab : (X × (Fin p → X)) × (X × (Fin q → X)) =>
          O ab.1.1 * P ab.2.1 * weight K p ab.1.1 ab.2.1 ab.1.2 *
            weight K q ab.2.1 ab.1.1 ab.2.2) :=
        ((((O.continuous.comp (by fun_prop)).mul (P.continuous.comp (by fun_prop))).mul
          ((continuous_weight K p).comp (by fun_prop))).mul
          ((continuous_weight K q).comp (by fun_prop)))
      rw [integral_prod _ (hc.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _))]
      exact integrate_grouped_weights μ K p q O P

end GRWTSK.Analysis.Integration.TwoObservableCyclicIntegral
