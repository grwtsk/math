/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

/-! Finite energy and cutoff inequalities for the density of simple real Newman heat zeros. -/

namespace GRWTSK.XiNewmanDensityEscape

/-- A binary prefix uses at most one block at each resolution. This is the
Cauchy bound before replacing its chosen blocks by the energy of the full tree. -/
theorem selected_block_energy {ι : Type*} (all chosen : Finset ι) (b : ι → ℝ)
    (hsub : chosen ⊆ all) (levels : ℕ) (hcard : chosen.card ≤ levels) :
    (∑ i ∈ chosen, b i)^2 ≤ (levels : ℝ) * ∑ i ∈ all, b i^2 := by
  have hsum : ∑ i ∈ chosen, b i^2 ≤ ∑ i ∈ all, b i^2 :=
    Finset.sum_le_sum_of_subset_of_nonneg hsub (fun i _ _ ↦ sq_nonneg _)
  exact (sq_sum_le_card_mul_sum_sq (s := chosen) (f := b)).trans
    (mul_le_mul (by exact_mod_cast hcard) hsum
      (Finset.sum_nonneg (fun i _ ↦ sq_nonneg _)) (by positivity))

/-- Counting unit intervals whose maximal error reaches the tolerance. -/
theorem bad_interval_count {ι : Type*} (all bad : Finset ι) (e : ι → ℝ)
    {d : ℝ} (hd : 0 ≤ d) (hsub : bad ⊆ all) (hbad : ∀ i ∈ bad, d ≤ e i) :
    (bad.card : ℝ)*d^2 ≤ ∑ i ∈ all, (e i)^2 := by
  calc
    (bad.card : ℝ)*d^2 = ∑ _i ∈ bad, d^2 := by simp
    _ ≤ ∑ i ∈ bad, (e i)^2 := Finset.sum_le_sum (fun i hi ↦ by
      have h := hbad i hi
      nlinarith [mul_nonneg (sub_nonneg.mpr h) (add_nonneg hd (hd.trans h))])
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg hsub (fun i _ _ ↦ sq_nonneg _)

/-- The mean-square exponent reaches its worst value at the short cutoff. -/
theorem worst_block {a u c : ℝ} (hc : 0 ≤ c) (hau : a ≤ u) (hu : u ≤ 1/2) :
    c*a*(1-a)/2 ≤ c*u*(1-u)/2 := by
  nlinarith [mul_nonneg hc (mul_nonneg (sub_nonneg.mpr hau) (show 0 ≤ 1-u-a by linarith))]

/-- Feasible seam for the Taylor remainder on the upper and lower arms. -/
theorem strip_margin {a c h : ℝ} (hgap : 0 < c*(1-a)-2)
    (hh : h ≤ (c*(1-a)-2)/4) :
    1 < (1-h)/2+c*(1-a)/4 ∧
    1 + (c*(1-a)-2)/8 ≤ (1-h)/2+c*(1-a)/4 := by constructor <;> linarith

/-- Exact optimum after the short/long cutoff approaches 1 - 2/c. -/
theorem boundary_exponent {c : ℝ} (hc : c ≠ 0) :
    1-c*(1-2/c)*(1-(1-2/c))/2 = 2/c := by
  field_simp
  ring

/-- Loss at positive distance h from the limiting short cutoff. -/
theorem boundary_slack {c h : ℝ} (hc : c ≠ 0) :
    1-c*(1-2/c-h)*(1-(1-2/c-h))/2 =
      2/c+(4-c)*h/2+c*h^2/2 := by
  field_simp
  ring


/-- Truncate the coefficients of an actual arithmetic Dirichlet series. -/
def truncate (y : ℕ) (f : ArithmeticFunction ℤ) : ArithmeticFunction ℤ :=
  ⟨fun n ↦ if n ≤ y then f n else 0, by simp⟩

/-- Through the cutoff, every divisor pair survives the two independent cuts. -/
theorem truncated_product_agrees (f g : ArithmeticFunction ℤ) {n y : ℕ}
    (hn : n ≤ y) : (truncate y f * truncate y g) n = (f*g) n := by
  rw [ArithmeticFunction.mul_apply, ArithmeticFunction.mul_apply]
  apply Finset.sum_congr rfl
  intro p hp
  have h₁ := (Nat.divisor_le (Nat.fst_mem_divisors_of_mem_antidiagonal hp)).trans hn
  have h₂ := (Nat.divisor_le (Nat.snd_mem_divisors_of_mem_antidiagonal hp)).trans hn
  simp [truncate, h₁, h₂]

/-- The product has no coefficients above the square of the cutoff. -/
theorem truncated_product_support (f g : ArithmeticFunction ℤ) {n y : ℕ}
    (hn : y*y < n) : (truncate y f * truncate y g) n = 0 := by
  rw [ArithmeticFunction.mul_apply]
  apply Finset.sum_eq_zero
  intro p hp
  have heq := (Nat.mem_divisorsAntidiagonal.mp hp).1
  by_cases h₁ : p.1 ≤ y
  · have h₂ : ¬p.2 ≤ y := fun h ↦ by
      have := Nat.mul_le_mul h₁ h
      omega
    simp [truncate, h₂]
  · simp [truncate, h₁]

/-- The short zeta polynomial times the short Möbius polynomial has exactly
the constant Dirichlet series coefficients at every index at most y. -/
theorem zeta_mollifier_prefix {y n : ℕ} (hn : n ≤ y) :
    (truncate y (ArithmeticFunction.zeta : ArithmeticFunction ℤ) *
      truncate y ArithmeticFunction.moebius) n = if n = 1 then 1 else 0 := by
  rw [truncated_product_agrees _ _ hn, ArithmeticFunction.coe_zeta_mul_moebius,
    ArithmeticFunction.one_apply]

end GRWTSK.XiNewmanDensityEscape
