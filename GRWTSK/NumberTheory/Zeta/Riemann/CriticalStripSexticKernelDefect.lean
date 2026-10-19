/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein

set_option autoImplicit false

/-!
# Certified variation of the actual centered sextic kernel on its first cell

A signed Bernstein table gives interval bounds, not samples. The table is tied to
30240 times the SAME centered sextic kernel by an exact polynomial identity.
The binomial factors are retained in the partition identity. Every coefficient is
checked against its interval cap. Source scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.KernelDefect
open Complex Set
noncomputable section

def normalized (u : ℝ) : ℝ := 42 * u ^ 6 - 126 * u ^ 5 + 105 * u ^ 4 - 21 * u ^ 2 + 1

def capNumerator : Fin 16 → ℕ :=
  ![128,118,89,47,50,89,115,124,124,115,89,50,47,89,118,128]

def cap (i : Fin 16) : ℝ := (capNumerator i : ℝ) / 128

def binomialWeight : Fin 7 → ℕ := ![1,6,15,20,15,6,1]

def basis (j : Fin 7) (v : ℝ) : ℝ := v ^ j.val * (1 - v) ^ (6 - j.val)

def coefficients : Fin 16 → Fin 7 → ℤ :=
  ![
    ![16777216, 100663296, 250281984, 330039296, 243427584, 95210016, 15425866],
    ![15425866, 89900376, 216879384, 277119296, 197714784, 74640768, 11640448],
    ![11640448, 65044608, 149733984, 181439936, 121764504, 42763272, 6108922],
    ![6108922, 30543792, 60667104, 59572736, 28521984, 4927488, -253952],
    ![-253952, -7974912, -35990016, -69128704, -67389216, -33002544, -6472934],
    ![-6472934, -44672664, -125739816, -185552704, -151859616, -65495424, -11648384],
    ![-11648384, -74285184, -195808416, -273248704, -213032616, -88017672, -15062102],
    ![-15062102, -92727552, -236582016, -320241664, -242589696, -97517568, -16252928],
    ![-16252928, -97517568, -242589696, -320241664, -236582016, -92727552, -15062102],
    ![-15062102, -88017672, -213032616, -273248704, -195808416, -74285184, -11648384],
    ![-11648384, -65495424, -151859616, -185552704, -125739816, -44672664, -6472934],
    ![-6472934, -33002544, -67389216, -69128704, -35990016, -7974912, -253952],
    ![-253952, 4927488, 28521984, 59572736, 60667104, 30543792, 6108922],
    ![6108922, 42763272, 121764504, 181439936, 149733984, 65044608, 11640448],
    ![11640448, 74640768, 197714784, 277119296, 216879384, 89900376, 15425866],
    ![15425866, 95210016, 243427584, 330039296, 250281984, 100663296, 16777216]
  ]

theorem polynomial_identity (i : Fin 16) (v : ℝ) :
    (∑ j : Fin 7, (coefficients i j : ℝ) * basis j v) =
      16777216 * normalized (((i.val : ℝ) + v) / 16) := by
  fin_cases i <;>
    norm_num [coefficients, basis, normalized, Fin.sum_univ_succ] <;> ring

theorem partition_identity (v : ℝ) :
    (∑ j : Fin 7, (binomialWeight j : ℝ) * basis j v) = 1 := by
  norm_num [binomialWeight, basis, Fin.sum_univ_succ] <;> ring

theorem coefficient_bounds (i : Fin 16) (j : Fin 7) :
    -(16777216 * cap i) * (binomialWeight j : ℝ) ≤ (coefficients i j : ℝ) ∧
      (coefficients i j : ℝ) ≤ (16777216 * cap i) * (binomialWeight j : ℝ) := by
  fin_cases i <;> fin_cases j <;>
    norm_num [cap, capNumerator, coefficients, binomialWeight]

theorem cap_bounds (i : Fin 16) : 0 ≤ cap i ∧ cap i ≤ 1 := by
  fin_cases i <;> norm_num [cap, capNumerator]

theorem normalized_on_cell (i : Fin 16) {u : ℝ}
    (hu : (i.val : ℝ) / 16 ≤ u) (hu1 : u ≤ ((i.val : ℝ) + 1) / 16) :
    |normalized u| ≤ cap i := by
  let v : ℝ := 16 * u - (i.val : ℝ)
  have hv : 0 ≤ v := by dsimp [v]; linarith
  have hv1 : v ≤ 1 := by dsimp [v]; linarith
  have hb (j : Fin 7) : 0 ≤ basis j v := by
    unfold basis
    exact mul_nonneg (pow_nonneg hv _) (pow_nonneg (sub_nonneg.mpr hv1) _)
  have hi := polynomial_identity i v
  rw [show ((i.val : ℝ) + v) / 16 = u by dsimp [v]; ring] at hi
  have hupp : (∑ j : Fin 7, (coefficients i j : ℝ) * basis j v) ≤
      ∑ j : Fin 7, (16777216 * cap i) * (binomialWeight j : ℝ) * basis j v := by
    apply Finset.sum_le_sum
    intro j _
    exact mul_le_mul_of_nonneg_right (coefficient_bounds i j).2 (hb j)
  have hlo : (∑ j : Fin 7, -(16777216 * cap i) * (binomialWeight j : ℝ) * basis j v) ≤
      ∑ j : Fin 7, (coefficients i j : ℝ) * basis j v := by
    apply Finset.sum_le_sum
    intro j _
    exact mul_le_mul_of_nonneg_right (coefficient_bounds i j).1 (hb j)
  have su : (∑ j : Fin 7, (16777216 * cap i) * (binomialWeight j : ℝ) * basis j v) =
      16777216 * cap i := by
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, partition_identity, mul_one]
  have sl : (∑ j : Fin 7, -(16777216 * cap i) * (binomialWeight j : ℝ) * basis j v) =
      -(16777216 * cap i) := by
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, partition_identity, mul_one]
  rw [hi, su] at hupp
  rw [hi, sl] at hlo
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- This includes t=1 and t=2: the actual kernel has matching endpoint values. -/
theorem source_on_first_cell {t : ℝ} (ht : 1 ≤ t) (ht2 : t ≤ 2) :
    sixthKernel.value t = ((normalized (t - 1) / 30240 : ℝ) : ℂ) := by
  by_cases htlt : t < 2
  · have hf : ⌊t⌋₊ = 1 := (Nat.floor_eq_iff' (by decide : (1 : ℕ) ≠ 0)).mpr
      ⟨by simpa using ht, by simpa using htlt⟩
    simp only [sixthKernel, sixthRawKernel, realFractionalKernel, if_pos ht, hf]
    unfold sixthRaw normalized
    push_cast
    ring
  · have heq : t = 2 := le_antisymm ht2 (le_of_not_gt htlt)
    subst t
    norm_num [sixthKernel, sixthRawKernel, sixthRaw, realFractionalKernel, normalized]

def node (j : ℕ) : ℝ := 1 + (j : ℝ) / 16

theorem node_order (j : ℕ) : 1 ≤ node j ∧ node j ≤ node (j + 1) := by
  unfold node
  push_cast
  have hj : (0 : ℝ) ≤ j := by positivity
  constructor <;> linarith

theorem kernel_on_subcell (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    ‖sixthKernel.value t‖ ≤ cap i / 30240 := by
  have hi : (i.val : ℝ) ≤ 15 := by exact_mod_cast (show i.val ≤ 15 by omega)
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have hthi : t ≤ 2 := by dsimp [node] at ht1; push_cast at ht1; linarith
  rw [source_on_first_cell htlo hthi, Complex.norm_real, Real.norm_eq_abs,
    abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 30240)]
  exact div_le_div_of_nonneg_right (normalized_on_cell i
    (by dsimp [node] at ht; linarith)
    (by dsimp [node] at ht1; push_cast at ht1; linarith)) (by norm_num)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.KernelDefect
