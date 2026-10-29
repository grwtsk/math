/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughQuotientPrimeLayer

/-!
# Split the actual quotient row with its matching boundary

The high prefix is A(q)-A(J). A row beginning above J keeps the additional
lower anchor A(a-1)-A(J). A crossing row keeps A(J)*g(J+1) on the low side.
A row ending below J is unchanged; an empty row remains empty. No endpoint,
window, weight or source horizon is altered. No signed growth estimate follows
from this finite Abel calculation alone.
SOURCE_PROOF_CANDIDATE / compilation, kernel and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughQuotientSplit

open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel (prefix difference_sum)
open GRWTSK.NumberTheory.Moebius.PickupRoughQuotientAbel

/-- General fixed anchor, with both boundary terms retained. -/
theorem abel_fixed_anchor (f g : ℕ → ℝ) {a b : ℕ} (J : ℕ)
    (ha : 1 ≤ a) (hab : a ≤ b+1) :
    (∑ q ∈ Finset.Icc a b, f q*g q) =
      (prefix f b-prefix f J)*g (b+1) -
      (prefix f (a-1)-prefix f J)*g a +
      ∑ q ∈ Finset.Icc a b, (prefix f q-prefix f J)*(g q-g (q+1)) := by
  have he := abel_window_successor f g ha hab
  have hv := prefix_split_at (fun q => g q-g (q+1)) ha hab
  have hb := difference_sum g b
  have hl := difference_sum g (a-1)
  rw [show a-1+1=a by omega] at hl
  have hd : (∑ q ∈ Finset.Icc a b, g q-g (q+1)) = g a-g (b+1) := by
    unfold prefix at hv
    linarith
  simp only [sub_mul, Finset.sum_sub_distrib, ← Finset.mul_sum, hd]
  rw [he]
  ring

/-- Crossing the split does not erase the matching Gram boundary. -/
theorem abel_crossing (f g : ℕ → ℝ) {a J b : ℕ}
    (ha : 1 ≤ a) (haJ : a ≤ J) (hJb : J < b) :
    (∑ q ∈ Finset.Icc a b, f q*g q) =
      (prefix f J*g (J+1) - prefix f (a-1)*g a +
        ∑ q ∈ Finset.Icc a J, prefix f q*(g q-g (q+1))) +
      ((prefix f b-prefix f J)*g (b+1) +
        ∑ q ∈ Finset.Icc (J+1) b,
          (prefix f q-prefix f J)*(g q-g (q+1))) := by
  have hu : Finset.Icc a b = Finset.Icc a J ∪ Finset.Icc (J+1) b := by
    ext q
    simp only [Finset.mem_Icc, Finset.mem_union]
    omega
  have hd : Disjoint (Finset.Icc a J) (Finset.Icc (J+1) b) := by
    apply Finset.disjoint_left.mpr
    intro q hq hq'
    have h1 := Finset.mem_Icc.mp hq
    have h2 := Finset.mem_Icc.mp hq'
    omega
  rw [hu, Finset.sum_union hd,
    abel_window_successor f g ha (by omega),
    abel_window_anchored f g (by omega : 1 ≤ J+1) (by omega : J+1 ≤ b+1)]
  simp

/-- Actual source row crossing J, including both unit and nonunit quotients. -/
theorem qRow_crossing (P : List ℕ) (N Y p m J : ℕ) (G : ℕ → ℕ → ℝ)
    (haJ : firstQuotient p m ≤ J) (hJb : J < lastQuotient N Y p) :
    qRow P N Y p m G =
      (weightedPrefix P N p J*G m (p*(J+1)) -
        weightedPrefix P N p (firstQuotient p m-1)*G m (p*firstQuotient p m) +
        ∑ q ∈ Finset.Icc (firstQuotient p m) J,
          weightedPrefix P N p q*(G m (p*q)-G m (p*(q+1)))) +
      ((weightedPrefix P N p (lastQuotient N Y p)-weightedPrefix P N p J)*
          G m (p*(lastQuotient N Y p+1)) +
        ∑ q ∈ Finset.Icc (J+1) (lastQuotient N Y p),
          (weightedPrefix P N p q-weightedPrefix P N p J)*
            (G m (p*q)-G m (p*(q+1)))) :=
  abel_crossing (quotientWeight P N p) (fun q => G m (p*q))
    (firstQuotient_positive p m) haJ hJb

/-- In particular, for rows beginning above J the lower correction survives. -/
theorem qRow_fixed_anchor (P : List ℕ) (N Y p m J : ℕ) (G : ℕ → ℕ → ℝ)
    (hrow : firstQuotient p m ≤ lastQuotient N Y p+1) :
    qRow P N Y p m G =
      (weightedPrefix P N p (lastQuotient N Y p)-weightedPrefix P N p J)*
          G m (p*(lastQuotient N Y p+1)) -
      (weightedPrefix P N p (firstQuotient p m-1)-weightedPrefix P N p J)*
          G m (p*firstQuotient p m) +
      ∑ q ∈ Finset.Icc (firstQuotient p m) (lastQuotient N Y p),
        (weightedPrefix P N p q-weightedPrefix P N p J)*
          (G m (p*q)-G m (p*(q+1))) :=
  abel_fixed_anchor (quotientWeight P N p) (fun q => G m (p*q)) J
    (firstQuotient_positive p m) hrow

end GRWTSK.NumberTheory.Moebius.PickupRoughQuotientSplit
