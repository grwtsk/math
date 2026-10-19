import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Set
open scoped BigOperators
noncomputable section

/-- Strict source-tail positivity makes the consecutive ratios telescope exactly. -/
theorem thetaTail_ratio_eq_product {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail s t / thetaTail r t =
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t := by
  induction s, hrs using Nat.le_induction with
  | base => simp [(thetaTail_positive r ht).ne']
  | succ s hrs ih =>
    rw [Finset.prod_Ico_succ_top hrs, ← ih]
    field_simp [(thetaTail_positive r ht).ne', (thetaTail_positive s ht).ne']

/- The next declarations are scratch-only conditional assembly checks. The
maintained module will import the proved successor-ratio theorem and carry
none of this temporary premise. -/
section ConditionalAssembly

variable (hsucc : ∀ n : ℕ,
  AntitoneOn (fun t : ℝ => thetaTail (n + 1) t / thetaTail n t) (Ici 0))

include hsucc

/-- The pinned nonnegative-antitone finite-product API controls the whole telescope. -/
theorem thetaTail_ratio_product_antitone_of_succ (r s : ℕ) :
    AntitoneOn (fun t : ℝ =>
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t) (Ici 0) := by
  exact AntitoneOn.finsetProd (fun j _ => hsucc j)
    (fun j _ t ht => div_nonneg (thetaTail_nonnegative (j + 1) ht)
      (thetaTail_nonnegative j ht))

/-- Conditional assembly of arbitrary order ratios from the consecutive order result. -/
theorem thetaTail_div_antitone_of_succ {r s : ℕ} (hrs : r ≤ s) :
    AntitoneOn (fun t : ℝ => thetaTail s t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  change thetaTail s y / thetaTail r y ≤ thetaTail s x / thetaTail r x
  rw [thetaTail_ratio_eq_product hrs hy, thetaTail_ratio_eq_product hrs hx]
  exact thetaTail_ratio_product_antitone_of_succ hsucc r s hx hy hxy

/-- The existing exact rank-two equivalence closes the determinant statement. -/
theorem thetaTailSignRegular_two_of_succ
    (q : Fin 2 ↪o ℕ) (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  have hq : 2 * q 0 ≤ 2 * q 1 :=
    Nat.mul_le_mul_left 2 (q.monotone (by decide : (0 : Fin 2) ≤ 1))
  exact thetaTail_div_antitone_of_succ hsucc hq (ht 0) (ht 1)
    (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end ConditionalAssembly
end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.RiemannHypothesis.ThetaPositiveLift
#check thetaTail_ratio_eq_product
#check thetaTail_ratio_product_antitone_of_succ
#check thetaTail_div_antitone_of_succ
#check thetaTailSignRegular_two_of_succ
#print axioms thetaTail_ratio_eq_product
#print axioms thetaTail_ratio_product_antitone_of_succ
#print axioms thetaTail_div_antitone_of_succ
#print axioms thetaTailSignRegular_two_of_succ
