/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Tactic

/-!
# Normalized Boltzmann sensitivity to actual action differences

The normalizer ratio is proved by integration. A constant action shift has
zero oscillation and cancels. No contraction, total-variation theorem or gauge
model identification is assumed. SOURCE_PROOF_CANDIDATE; all facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousBoltzmannComparison
open MeasureTheory
variable {X : Type*} [TopologicalSpace X] [CompactSpace X]
  [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (S T : C(X, ℝ)) (β : ℝ)

def weight (x : X) : ℝ := Real.exp (-β*S x)
def partition : ℝ := ∫ x, weight S β x ∂μ
def density (x : X) : ℝ := weight S β x / partition μ S β

theorem weight_integrable : Integrable (weight S β) μ :=
  (Real.continuous_exp.comp (continuous_const.mul S.continuous)).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

theorem partition_pos : 0 < partition μ S β :=
  integral_exp_pos (weight_integrable μ S β)

theorem weight_comparison (l u : ℝ) (hβ : 0 ≤ β)
    (hST : ∀ x, l ≤ S x-T x ∧ S x-T x ≤ u) (x : X) :
    Real.exp (-β*u)*weight T β x ≤ weight S β x ∧
      weight S β x ≤ Real.exp (-β*l)*weight T β x := by
  unfold weight
  rw [← Real.exp_add, ← Real.exp_add]
  constructor <;> apply Real.exp_le_exp.mpr
  · nlinarith [mul_nonneg hβ (sub_nonneg.mpr (hST x).2)]
  · nlinarith [mul_nonneg hβ (sub_nonneg.mpr (hST x).1)]

theorem partition_comparison (l u : ℝ) (hβ : 0 ≤ β)
    (hST : ∀ x, l ≤ S x-T x ∧ S x-T x ≤ u) :
    Real.exp (-β*u)*partition μ T β ≤ partition μ S β ∧
      partition μ S β ≤ Real.exp (-β*l)*partition μ T β := by
  constructor
  · simpa only [partition, integral_const_mul] using
      integral_mono ((weight_integrable μ T β).const_mul (Real.exp (-β*u)))
        (weight_integrable μ S β) (fun x => (weight_comparison S T β l u hβ hST x).1)
  · simpa only [partition, integral_const_mul] using
      integral_mono (weight_integrable μ S β)
        ((weight_integrable μ T β).const_mul (Real.exp (-β*l)))
        (fun x => (weight_comparison S T β l u hβ hST x).2)

/-- This expression equals the ratio of the two actual normalized densities. -/
def likelihoodRatio (x : X) : ℝ :=
  (weight S β x*partition μ T β)/(weight T β x*partition μ S β)

theorem likelihoodRatio_eq_density_ratio (x : X) :
    likelihoodRatio μ S T β x = density μ S β x / density μ T β x := by
  unfold likelihoodRatio density
  field_simp [weight, ne_of_gt (partition_pos μ S β), ne_of_gt (partition_pos μ T β),
    ne_of_gt (Real.exp_pos (-β*T x))]

/-- The oscillation bound retains both partition functions until cancellation. -/
theorem likelihoodRatio_bounds (l u : ℝ) (hβ : 0 ≤ β)
    (hST : ∀ x, l ≤ S x-T x ∧ S x-T x ≤ u) (x : X) :
    Real.exp (-β*(u-l)) ≤ likelihoodRatio μ S T β x ∧
      likelihoodRatio μ S T β x ≤ Real.exp (β*(u-l)) := by
  have hw := weight_comparison S T β l u hβ hST x
  have hz := partition_comparison μ S T β l u hβ hST
  have hs := partition_pos μ S β
  have ht := partition_pos μ T β
  have hwt : 0 < weight T β x := Real.exp_pos _
  have hd : 0 < weight T β x*partition μ S β := mul_pos hwt hs
  have he₁ : Real.exp (-β*(u-l))*Real.exp (-β*l) = Real.exp (-β*u) := by
    rw [← Real.exp_add]
    congr 1 <;> ring
  have he₂ : Real.exp (β*(u-l))*Real.exp (-β*u) = Real.exp (-β*l) := by
    rw [← Real.exp_add]
    congr 1 <;> ring
  unfold likelihoodRatio
  constructor
  · apply (le_div_iff₀ hd).mpr
    calc
      _ ≤ Real.exp (-β*(u-l))*weight T β x*
          (Real.exp (-β*l)*partition μ T β) := by
        simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hz.2
          (mul_nonneg (Real.exp_pos _).le hwt.le)
      _ = Real.exp (-β*u)*weight T β x*partition μ T β := by rw [← he₁]; ring
      _ ≤ _ := mul_le_mul_of_nonneg_right hw.1 ht.le
  · apply (div_le_iff₀ hd).mpr
    calc
      _ ≤ Real.exp (-β*l)*weight T β x*partition μ T β :=
        mul_le_mul_of_nonneg_right hw.2 ht.le
      _ = Real.exp (β*(u-l))*weight T β x*
          (Real.exp (-β*u)*partition μ T β) := by rw [← he₂]; ring
      _ ≤ _ := by
        simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hz.1
          (mul_nonneg (Real.exp_pos _).le hwt.le)

end GRWTSK.Analysis.Integration.ContinuousBoltzmannComparison
