import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Rational endpoint sums for the ordinary-prime harmonic block

The moments, doubling sum, quadrature bounds and truncated ordinary-prime
sum are finite rational computations. The upper and lower quadrature sums
enclose every choice of one rational sample in each mesh interval.
-/

namespace GRWTSK.XiPrimeBlockRational

/-- Rational moments at parameter r. -/
def moment : ℕ → ℚ → ℚ
  | 0, r => 1 / (r+1)
  | j+1, r => 2*((j : ℚ)+1) * moment j r / (r+2*(j : ℚ)+3)

theorem moment_nonneg (j : ℕ) {r : ℚ} (hr : 0 ≤ r) : 0 ≤ moment j r := by
  induction j with
  | zero => simp only [moment]; positivity
  | succ j ih => simp only [moment]; positivity

theorem moment_antitone (j : ℕ) {r s : ℚ} (hr : 0 ≤ r) (hrs : r ≤ s) :
    moment j s ≤ moment j r := by
  induction j with
  | zero =>
    simp only [moment]
    exact div_le_div_of_nonneg_left zero_le_one (by positivity) (by linarith)
  | succ j ih =>
    simp only [moment]
    apply le_trans (div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left ih (by positivity))
      (by have : 0 ≤ s := le_trans hr hrs; positivity))
    apply div_le_div_of_nonneg_left
    · exact mul_nonneg (by positivity) (moment_nonneg j hr)
    · positivity
    · linarith

/-- J_N(r), using j=N+i+1 for 0≤i<N. -/
def block (N : ℕ) (r : ℚ) : ℚ :=
  ∑ i ∈ Finset.range N,
    (moment (N+i) r + moment (N+i) (r+1)) / ((N : ℚ)+(i : ℚ)+1)

theorem block_nonneg (N : ℕ) {r : ℚ} (hr : 0 ≤ r) : 0 ≤ block N r := by
  apply Finset.sum_nonneg
  intro i hi
  exact div_nonneg (add_nonneg (moment_nonneg _ hr) (moment_nonneg _ (by positivity))) (by positivity)

theorem block_antitone (N : ℕ) {r s : ℚ} (hr : 0 ≤ r) (hrs : r ≤ s) :
    block N s ≤ block N r := by
  apply Finset.sum_le_sum
  intro i hi
  exact div_le_div_of_nonneg_right (add_le_add (moment_antitone _ hr hrs)
    (moment_antitone _ (by positivity) (by linarith))) (by positivity)

/-- The rational right-endpoint sum. -/
def lower (N Q : ℕ) : ℚ :=
  (∑ i ∈ Finset.range Q, block N (((i : ℚ)+1)/Q)) / Q

/-- The rational left-endpoint sum. -/
def upper (N Q : ℕ) : ℚ :=
  (∑ i ∈ Finset.range Q, block N ((i : ℚ)/Q)) / Q

/-- Any choice of rational sample points in the mesh gives a value between the endpoints. -/
theorem mesh_bounds (N Q : ℕ) (r : ℕ → ℚ)
    (hr : ∀ i < Q, (i : ℚ)/Q ≤ r i ∧ r i ≤ ((i : ℚ)+1)/Q) :
    lower N Q ≤ (∑ i ∈ Finset.range Q, block N (r i)) / Q ∧
      (∑ i ∈ Finset.range Q, block N (r i)) / Q ≤ upper N Q := by
  constructor
  · apply div_le_div_of_nonneg_right _ (by positivity)
    apply Finset.sum_le_sum
    intro i hi
    have h := hr i (Finset.mem_range.mp hi)
    exact block_antitone _ (le_trans (by positivity) h.1) h.2
  · apply div_le_div_of_nonneg_right _ (by positivity)
    apply Finset.sum_le_sum
    intro i hi
    exact block_antitone _ (by positivity) (hr i (Finset.mem_range.mp hi)).1

theorem lower_le_upper (N Q : ℕ) : lower N Q ≤ upper N Q := by
  apply div_le_div_of_nonneg_right _ (by positivity)
  apply Finset.sum_le_sum
  intro i hi
  exact block_antitone _ (by positivity)
    (div_le_div_of_nonneg_right (by linarith) (by positivity))

private theorem sum_shift (f : ℕ → ℚ) (Q : ℕ) :
    (∑ i ∈ Finset.range Q, f i) - (∑ i ∈ Finset.range Q, f (i+1)) = f 0 - f Q := by
  induction Q with
  | zero => simp
  | succ Q ih => rw [Finset.sum_range_succ, Finset.sum_range_succ]; linarith

/-- Exact width, obtained by canceling every interior mesh point. -/
theorem quadrature_width (N : ℕ) {Q : ℕ} (hQ : Q ≠ 0) :
    upper N Q - lower N Q = (block N 0 - block N 1) / Q := by
  have h := sum_shift (fun i => block N ((i : ℚ)/Q)) Q
  have hcast : (Q : ℚ) ≠ 0 := by exact_mod_cast hQ
  simp [Nat.cast_add, hcast] at h
  rw [upper, lower, ← sub_div, h]

/-- Actual ordinary primes up to and including P in the finite harmonic block. -/
def truncatedPrimeBlock (N P : ℕ) : ℚ :=
  ∑ p ∈ (Finset.range (P+1)).filter Nat.Prime, ∑ i ∈ Finset.range N,
    ((p : ℚ)^2)⁻¹ * (1-((p : ℚ)^2)⁻¹)^(N+i+1) / ((N : ℚ)+(i : ℚ)+1)

/-- Finite example with primes through 4 and two mesh intervals. -/
theorem seven_cutoff_four_mesh_two :
    truncatedPrimeBlock 7 4 < 1/32 ∧ 1/16 < lower 7 2 ∧ upper 7 2 < 5/32 := by
  decide +kernel

end GRWTSK.XiPrimeBlockRational
