import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! Cayley and elementary-divisor identities for the arithmetic Hardy quotient. -/

namespace GRWTSK.XiHardyQuotient

/-- The Cayley disk coordinate uses the actual central involution d ↦ −d. -/
theorem cayley_inverse {a d : ℂ} (ha : a ≠ 0) (hd : d ≠ 0)
    :
    Complex.I / (2*a) * ((d/(d+2*a))⁻¹-1) = Complex.I / d := by
  field_simp
  ring

/-- Product of the disk moduli for a symmetric pair, before taking absolute values. -/
theorem paired_product {a d : ℂ} (hd : d ≠ 0) :
    ((d+2*a)/d) * ((-d+2*a)/(-d)) = 1 - (2*a/d)^2 := by
  field_simp
  ring

/-- One quotient between consecutive common inner factors selects exactly
one copy at every root whose multiplicity reaches that layer. -/
theorem layer_order (m j : ℕ) : (m-j) - (m-(j+1)) = if j < m then 1 else 0 := by
  split <;> omega

/-- Splitting multiplicities over orthogonal layers can only reduce the
rank-one defect bound. -/
theorem layer_defect (v : List ℝ) (hv : ∀ x ∈ v, 1 ≤ x) :
    (v.map (fun x => x - 1)).sum ≤ v.prod - 1 := by
  induction v with
  | nil => simp
  | cons x xs ih =>
    have hx := hv x (by simp)
    have ht : ∀ y ∈ xs, 1 ≤ y := fun y hy => hv y (List.mem_cons_of_mem x hy)
    have hp : 1 ≤ xs.prod := by
      apply List.one_le_prod
      exact ht
    have h := ih ht
    simp only [List.map_cons, List.sum_cons, List.prod_cons]
    nlinarith [mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hp)]

end GRWTSK.XiHardyQuotient
