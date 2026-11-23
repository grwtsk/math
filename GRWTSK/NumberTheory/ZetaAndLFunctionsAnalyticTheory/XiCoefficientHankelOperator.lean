/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# The shifted Hankel pencil on the coefficient Hilbert space

For a geometrically decaying sequence, this module constructs the complex
linear Hankel operators on the usual coefficient ℓ² space. It shows that
the shifted operator factors through the forward unilateral shift. If the
first operator is injective, the resulting pencil has empty point spectrum.
-/

noncomputable section

namespace GRWTSK.NumberTheory.XiCoefficientHankelOperator

abbrev Hardy := lp (fun _ : ℕ => ℂ) 2

/-- A uniform exponential coefficient bound. -/
structure GeometricDecay (p : ℕ → ℂ) where
  C : ℝ
  q : ℝ
  C_nonneg : 0 ≤ C
  q_nonneg : 0 ≤ q
  q_lt_one : q < 1
  bound (n : ℕ) : ‖p n‖ ≤ C * q ^ n

variable {p : ℕ → ℂ} (h : GeometricDecay p)

private theorem term_bound (r i j : ℕ) (x : Hardy) :
    ‖p (r + i + j) * x j‖ ≤ (h.C * h.q ^ (r + i) * ‖x‖) * h.q ^ j := by
  rw [norm_mul]
  calc
    _ ≤ (h.C * h.q ^ (r + i + j)) * ‖x‖ :=
      mul_le_mul (h.bound _) (lp.norm_apply_le_norm (by norm_num) x j)
        (norm_nonneg _) (mul_nonneg h.C_nonneg (pow_nonneg h.q_nonneg _))
    _ = _ := by rw [pow_add]; ring

include h in
theorem row_summable_norm (r i : ℕ) (x : Hardy) :
    Summable (fun j => ‖p (r + i + j) * x j‖) := by
  apply Summable.of_nonneg_of_le (fun _ => norm_nonneg _)
    (fun j => term_bound h r i j x)
  exact (summable_geometric_of_lt_one h.q_nonneg h.q_lt_one).mul_left _

/-- The original Hankel sum for a single output coefficient. -/
def row (p : ℕ → ℂ) (r : ℕ) (x : Hardy) (i : ℕ) : ℂ :=
  ∑' j, p (r + i + j) * x j

private theorem row_bound (r : ℕ) (x : Hardy) (i : ℕ) :
    ‖row p r x i‖ ≤ (h.C * h.q ^ r * (1 - h.q)⁻¹ * ‖x‖) * h.q ^ i := by
  calc
    _ ≤ (h.C * h.q ^ (r + i) * ‖x‖) * (1 - h.q)⁻¹ :=
      tsum_of_norm_bounded ((hasSum_geometric_of_lt_one h.q_nonneg h.q_lt_one).mul_left _)
        (fun j => term_bound h r i j x)
    _ = _ := by rw [pow_add]; ring

private def powers : lp (fun _ : ℕ => ℝ) 2 :=
  ⟨fun i => h.q ^ i, by
    apply Memℓp.of_exponent_ge (q := 1) _ (by norm_num)
    apply memℓp_gen
    simpa [Real.norm_eq_abs, abs_of_nonneg h.q_nonneg] using
      (summable_geometric_of_lt_one h.q_nonneg h.q_lt_one)⟩

private def majorant (r : ℕ) (x : Hardy) : lp (fun _ : ℕ => ℝ) 2 :=
  (h.C * h.q ^ r * (1 - h.q)⁻¹ * ‖x‖) • powers h

private theorem majorizes (r : ℕ) (x : Hardy) (i : ℕ) :
    ‖row p r x i‖ ≤ ‖majorant h r x i‖ := by
  have hc := h.C_nonneg
  have hq := h.q_nonneg
  have hu := h.q_lt_one
  change _ ≤ ‖(h.C * h.q ^ r * (1 - h.q)⁻¹ * ‖x‖) * h.q ^ i‖
  rw [Real.norm_of_nonneg (by positivity)]
  exact row_bound h r x i

/-- Bounded complex linear Hankel operator on coefficient ℓ². -/
def hankel (r : ℕ) : Hardy →L[ℂ] Hardy := by
  let L : Hardy →ₗ[ℂ] Hardy :=
    { toFun := fun x => ⟨row p r x, Memℓp.mono' (lp.memℓp (majorant h r x))
                                       (majorizes h r x)⟩
      map_add' := by
        intro x y
        apply lp.ext
        funext i
        change (∑' j, p (r + i + j) * (x j + y j)) = _ + _
        simp_rw [mul_add]
        exact ((row_summable_norm h r i x).of_norm.tsum_add
          (row_summable_norm h r i y).of_norm)
      map_smul' := by
        intro c x
        apply lp.ext
        funext i
        change (∑' j, p (r + i + j) * (c * x j)) = c * ∑' j, p (r + i + j) * x j
        simp_rw [mul_left_comm (p _) c]
        exact tsum_mul_left }
  apply L.mkContinuous (h.C * h.q ^ r * (1 - h.q)⁻¹ * ‖powers h‖)
  intro x
  calc
    ‖L x‖ ≤ ‖majorant h r x‖ := lp.norm_mono (by norm_num) (majorizes h r x)
    _ = _ := by
      have hc := h.C_nonneg
      have hq := h.q_nonneg
      have hu := h.q_lt_one
      rw [majorant, norm_smul, Real.norm_of_nonneg (by positivity)]
      ring

@[simp] theorem hankel_apply (r : ℕ) (x : Hardy) (i : ℕ) :
    hankel h r x i = row p r x i := rfl

/-- The usual unilateral shift, padding the coefficient sequence with zero. -/
def shift (x : Hardy) : Hardy :=
  ⟨fun i => Nat.casesOn i 0 (fun j => x j), by
    apply memℓp_gen
    apply (summable_nat_add_iff 1).mp
    exact (lp.memℓp x).summable (by norm_num)⟩

@[simp] theorem shift_zero (x : Hardy) : shift x 0 = 0 := rfl
@[simp] theorem shift_succ (x : Hardy) (j : ℕ) : shift x (j + 1) = x j := rfl

/-- The padded shift is a linear isometry of the complex Hilbert space. -/
def forwardShift : Hardy →ₗᵢ[ℂ] Hardy where
  toFun := shift
  map_add' x y := by
    apply lp.ext
    funext i
    cases i with
    | zero => change (0 : ℂ) = 0 + 0; simp
    | succ j => rfl
  map_smul' c x := by
    apply lp.ext
    funext i
    cases i <;> simp [shift, lp.coeFn_smul]
  norm_map' x := by
    change ‖shift x‖ = ‖x‖
    have hp : 0 < (2 : ENNReal).toReal := by norm_num
    rw [lp.norm_eq_tsum_rpow hp (shift x), lp.norm_eq_tsum_rpow hp x,
      ((lp.memℓp (shift x)).summable hp).tsum_eq_zero_add]
    simp [shift]

/-- Exact index shift of the infinite Hankel sum on the full Hilbert space. -/
theorem hankel_shift (r : ℕ) (x : Hardy) :
    hankel h r (shift x) = hankel h (r + 1) x := by
  apply lp.ext
  funext i
  change (∑' j, p (r + i + j) * shift x j) = ∑' j, p (r + 1 + i + j) * x j
  rw [((row_summable_norm h r i (shift x)).of_norm).tsum_eq_zero_add]
  simp only [shift_zero, mul_zero, zero_add, shift_succ]
  congr 1
  funext j
  rw [show r + i + (j + 1) = r + 1 + i + j by omega]

theorem hankel_comp_forwardShift (r : ℕ) :
    (hankel h r).comp forwardShift.toContinuousLinearMap = hankel h (r + 1) := by
  apply ContinuousLinearMap.ext
  exact hankel_shift h r

theorem hankel_succ_injective (r : ℕ) (hinj : Function.Injective (hankel h r)) :
    Function.Injective (hankel h (r + 1)) := by
  rw [← hankel_comp_forwardShift h r]
  exact hinj.comp forwardShift.injective

/-- The forward shift has no complex eigenvectors, including at zero. -/
theorem shift_eq_smul_implies_zero (x : Hardy) (c : ℂ) (hs : shift x = c • x) :
    x = 0 := by
  have ha (i : ℕ) : shift x i = c * x i := congrArg (fun y : Hardy => y i) hs
  apply lp.ext
  funext i
  change x i = 0
  by_cases hc : c = 0
  · simpa [hc] using ha (i + 1)
  · induction i with
    | zero =>
      have he : 0 = c * x 0 := ha 0
      exact (mul_eq_zero.mp he.symm).resolve_left hc
    | succ j ih =>
      have he : x j = c * x (j + 1) := ha (j + 1)
      rw [ih] at he
      exact (mul_eq_zero.mp he.symm).resolve_left hc

/-- An injective first Hankel operator makes the ordinary coefficient-space
generalized eigenvalue equation have only its zero solution. -/
theorem pencil_eq_implies_zero (r : ℕ) (hinj : Function.Injective (hankel h r))
    (c : ℂ) (x : Hardy) (he : hankel h (r + 1) x = c • hankel h r x) : x = 0 := by
  apply shift_eq_smul_implies_zero x c
  apply hinj
  rw [hankel_shift, map_smul, he]

end GRWTSK.NumberTheory.XiCoefficientHankelOperator
