/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Data.Nat.PrimeFin
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-! # Fixed density-weighted Möbius coefficients
The actual integer Möbius function is cast to the reals. Prime products and
closed cutoffs are independently defined here; no growth budget is assumed. -/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions

def moebiusReal (n : ℕ) : ℝ := ((ArithmeticFunction.moebius n : ℤ) : ℝ)
def densityPrimeWeight (n : ℕ) : ℝ := ∏ p ∈ n.primeFactors, (p:ℝ)/((p:ℝ)+1)
def densityMobiusCoefficient (n : ℕ) : ℝ := moebiusReal n * densityPrimeWeight n
def densityClosedInventory (t : ℝ) : Finset ℕ := Finset.Icc 1 ⌊Real.exp t⌋₊

theorem density_mobius_coefficient_one : densityMobiusCoefficient 1 = 1 := by
  simp [densityMobiusCoefficient, densityPrimeWeight, moebiusReal]
theorem density_mobius_coefficient_zero : densityMobiusCoefficient 0 = 0 := by
  simp [densityMobiusCoefficient, moebiusReal]
theorem density_mobius_coefficient_prime {p : ℕ} (hp : p.Prime) :
    densityMobiusCoefficient p = -(p:ℝ)/((p:ℝ)+1) := by
  simp [densityMobiusCoefficient, densityPrimeWeight, moebiusReal, hp.primeFactors,
    ArithmeticFunction.moebius_apply_prime hp, neg_div]
theorem density_mobius_coefficient_zero_of_not_squarefree {n : ℕ}
    (hn : ¬Squarefree n) : densityMobiusCoefficient n = 0 := by
  simp [densityMobiusCoefficient, moebiusReal,
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn]
theorem density_prime_weight_mul_of_coprime {m n : ℕ} (h : m.Coprime n) :
    densityPrimeWeight (m*n) = densityPrimeWeight m * densityPrimeWeight n := by
  unfold densityPrimeWeight
  rw [h.primeFactors_mul, Finset.prod_union h.disjoint_primeFactors]
theorem density_coefficient_mul_of_coprime {m n : ℕ} (h : m.Coprime n) :
    densityMobiusCoefficient (m*n) = densityMobiusCoefficient m * densityMobiusCoefficient n := by
  have hm : moebiusReal (m*n) = moebiusReal m * moebiusReal n := by
    unfold moebiusReal
    exact_mod_cast ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime h
  rw [densityMobiusCoefficient, density_prime_weight_mul_of_coprime h, hm]
  simp only [densityMobiusCoefficient]
  ring
theorem density_coefficient_mul_zero_of_not_coprime {m n : ℕ} (h : ¬m.Coprime n) :
    densityMobiusCoefficient (m*n) = 0 :=
  density_mobius_coefficient_zero_of_not_squarefree (fun hs => h (Nat.coprime_of_squarefree_mul hs))
theorem density_coefficient_mul_restricted (m n : ℕ) :
    densityMobiusCoefficient (m*n) = if m.Coprime n then densityMobiusCoefficient m * densityMobiusCoefficient n else 0 := by
  split_ifs with h
  · exact density_coefficient_mul_of_coprime h
  · exact density_coefficient_mul_zero_of_not_coprime h
end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
