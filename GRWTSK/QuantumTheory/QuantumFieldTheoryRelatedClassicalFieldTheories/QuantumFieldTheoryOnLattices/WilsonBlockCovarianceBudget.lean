/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib variance and Mobius-function results retain upstream attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBlockArithmeticCovariance
import Mathlib.Probability.Moments.Variance

/-!
# Noncircular finite budgets for actual Wilson block covariance

Each actual plaquette energy lies in [0,2], hence its variance is at most one.
Nonnegativity of variances of sums and differences bounds each actual pair
covariance in absolute value by one. The complete arithmetic discrepancy is
therefore bounded by its explicit marking-mismatch budget, without assuming
any unknown Wilson correlation estimate. That budget is at most 2|B||C|.
These are finite range bounds. They have no dependence on separation and do not
prove clustering, an RH comparison or a regulator-uniform physical mass gap.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory ProbabilityTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonBlockCovarianceBudget
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
variable (L : ℕ) [NeZero L]

theorem plaquette_variance_le_one (β : ℝ) (hβ : 0 ≤ β) (p : Plaquette L) :
    variance (plaquetteEnergy L p) (wilsonMeasure L β) ≤ 1 := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  have hv := variance_le_sq_of_bounded
    (ae_of_all (wilsonMeasure L β) (fun U => plaquetteEnergy_bounds L p U))
    (plaquetteEnergy_memLp L β hβ p).aemeasurable
  norm_num at hv
  exact hv

/-- The actual covariance is bounded without assuming any correlation decay. -/
theorem plaquette_covariance_abs_le_one (β : ℝ) (hβ : 0 ≤ β) (p q : Plaquette L) :
    |covariance (plaquetteEnergy L p) (plaquetteEnergy L q) (wilsonMeasure L β)| ≤ 1 := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  have hp := plaquetteEnergy_memLp L β hβ p
  have hq := plaquetteEnergy_memLp L β hβ q
  have vp := plaquette_variance_le_one L β hβ p
  have vq := plaquette_variance_le_one L β hβ q
  have hadd := variance_nonneg (plaquetteEnergy L p + plaquetteEnergy L q) (wilsonMeasure L β)
  have hsub := variance_nonneg (plaquetteEnergy L p - plaquetteEnergy L q) (wilsonMeasure L β)
  rw [variance_add hp hq] at hadd
  rw [variance_sub hp hq] at hsub
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem moebiusReal_abs_le_one (n : ℕ) : |moebiusReal n| ≤ 1 := by
  unfold moebiusReal
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

def mismatchBudget (label : Plaquette L → ℕ) (B C : Finset (Plaquette L)) : ℝ :=
  ∑ p ∈ B, ∑ q ∈ C, |1 - moebiusReal (label p) * moebiusReal (label q)|

/-- Every signed and squareful marking contribution remains in the error budget. -/
theorem covariance_comparison_bound (β : ℝ) (hβ : 0 ≤ β) (label : Plaquette L → ℕ)
    (B C : Finset (Plaquette L)) :
    |blockCovariance L β B C - markedCovariance L β label B C| ≤
      mismatchBudget L label B C := by
  rw [covariance_exact_comparison L β hβ]
  apply (Finset.abs_sum_le_sum_abs _ B).trans
  apply Finset.sum_le_sum
  intro p _
  apply (Finset.abs_sum_le_sum_abs _ C).trans
  apply Finset.sum_le_sum
  intro q _
  rw [abs_mul]
  exact (mul_le_mul_of_nonneg_left (plaquette_covariance_abs_le_one L β hβ p q)
    (abs_nonneg _)).trans_eq (mul_one _)

theorem mismatchBudget_le_card (label : Plaquette L → ℕ) (B C : Finset (Plaquette L)) :
    mismatchBudget L label B C ≤ 2 * (B.card : ℝ) * (C.card : ℝ) := by
  have hpair : ∀ p q : Plaquette L,
      |1 - moebiusReal (label p) * moebiusReal (label q)| ≤ 2 := by
    intro p q
    have hm : |moebiusReal (label p) * moebiusReal (label q)| ≤ 1 := by
      rw [abs_mul]
      exact (mul_le_mul (moebiusReal_abs_le_one (label p))
        (moebiusReal_abs_le_one (label q)) (abs_nonneg _) zero_le_one).trans_eq (one_mul _)
    have hh := abs_sub_le (1 : ℝ) (moebiusReal (label p) * moebiusReal (label q))
    norm_num at hh
    linarith
  calc
    mismatchBudget L label B C ≤ ∑ _p ∈ B, ∑ _q ∈ C, (2 : ℝ) :=
      Finset.sum_le_sum (fun p _ => Finset.sum_le_sum (fun q _ => hpair p q))
    _ = 2 * (B.card : ℝ) * (C.card : ℝ) := by simp; ring

theorem covariance_comparison_card_bound (β : ℝ) (hβ : 0 ≤ β)
    (label : Plaquette L → ℕ) (B C : Finset (Plaquette L)) :
    |blockCovariance L β B C - markedCovariance L β label B C| ≤
      2 * (B.card : ℝ) * (C.card : ℝ) :=
  (covariance_comparison_bound L β hβ label B C).trans (mismatchBudget_le_card L label B C)

end GRWTSK.Geometry.GaugeTheory.WilsonBlockCovarianceBudget
