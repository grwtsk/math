/- Copyright (c) 2026 grwtsk contributors. MIT.
Source proof candidates; compilation, fresh replay and axiom audit NOT_RUN. -/
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Finset.Card
import Mathlib.Tactic.Omega

/-!
# Actual finite progression coordinates and the quadratic event census

The objects are positive-step progressions in `[0,N)`, with literal endpoint
and coordinate equations. For `k >= 2`, every natural progression with the
endpoint bound belongs to this finite inventory. The bound `N^2` counts
parameter pairs, not independent events. Distinct coordinates justify the
future Bernoulli per-event calculation; that probability calculation and the
union estimate are not supplied by this census. No OpenAI construction is used.
-/
namespace GRWTSK.Combinatorics.RamseyTheory.AnalyticControl

abbrev WindowAP (N k : ℕ) :=
  {p : Fin N × Fin N // 0 < p.2.val ∧ p.1.val + (k - 1) * p.2.val < N}

/-- Every coordinate is an actual point of the selected finite interval. -/
def WindowAP.point {N k : ℕ} (p : WindowAP N k) (j : Fin k) : Fin N :=
  ⟨p.val.1.val + j.val * p.val.2.val, by
    have hj : j.val ≤ k - 1 := by omega
    have hmul := Nat.mul_le_mul_right p.val.2.val hj
    have hb := p.property.2
    omega⟩

theorem WindowAP.point_strictMono {N k : ℕ} (p : WindowAP N k) :
    StrictMono p.point := by
  intro i j hij
  change p.val.1.val + i.val * p.val.2.val <
    p.val.1.val + j.val * p.val.2.val
  exact Nat.add_lt_add_left
    (Nat.mul_lt_mul_of_pos_right hij p.property.1) _

theorem WindowAP.point_injective {N k : ℕ} (p : WindowAP N k) :
    Function.Injective p.point := p.point_strictMono.injective

/-- At most N squared parameterized progression events; no independence claim. -/
theorem windowAP_card_le (N k : ℕ) :
    Fintype.card (WindowAP N k) ≤ N * N := by
  simpa only [Fintype.card_prod, Fintype.card_fin] using
    (Fintype.card_subtype_le
      (fun p : Fin N × Fin N => 0 < p.2.val ∧ p.1.val + (k - 1) * p.2.val < N))

/-- For length at least two, bounding the endpoint also bounds the step.
This supplies completeness of the finite parameter inventory. -/
theorem exists_windowAP_of_endpoint {N k a d : ℕ} (hk : 2 ≤ k)
    (hd : 0 < d) (hb : a + (k - 1) * d < N) :
    ∃ p : WindowAP N k, p.val.1.val = a ∧ p.val.2.val = d := by
  have hpred : 1 ≤ k - 1 := by omega
  have hmul := Nat.mul_le_mul_right d hpred
  have ha : a < N := by omega
  have hstep : d < N := by simpa only [one_mul] using
    (lt_of_le_of_lt hmul (by omega : (k - 1) * d < N))
  exact ⟨⟨(⟨a, ha⟩, ⟨d, hstep⟩), hd, hb⟩, rfl, rfl⟩

end GRWTSK.Combinatorics.RamseyTheory.AnalyticControl
