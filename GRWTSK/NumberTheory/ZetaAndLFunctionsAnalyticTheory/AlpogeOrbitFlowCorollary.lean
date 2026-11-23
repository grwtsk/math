/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-! # Capacity perturbations in the odd-lag orbit flow

An edge of lag `i` has outgoing cost `p^i` and incoming cost one. Its origin and
endpoint need not be distinct for this finite-packing estimate. The corollary in the
companion note uses the nonzero odd residues and the source's separate weight error.
-/

namespace GRWTSK.NumberTheory.AlpogeOrbitFlowCorollary

variable {E S : Type*} [Fintype E] [Fintype S] [DecidableEq S]

/-- Total capacity consumed at a site by a nonnegative array of edge values. -/
def load (o t : E → S) (c x : E → ℝ) (s : S) : ℝ :=
  ∑ e, ((if o e = s then c e else 0) + (if t e = s then 1 else 0)) * x e

/-- All objective values of feasible real flows, including zero for nonnegative capacities. -/
def values (o t : E → S) (c : E → ℝ) (D : S → ℝ) : Set ℝ :=
  {v | ∃ x : E → ℝ, (∀ e, 0 ≤ x e) ∧ (∀ s, load o t c x s ≤ D s) ∧ v = ∑ e, x e}

private theorem total_load (o t : E → S) (c x : E → ℝ) :
    ∑ s, load o t c x s = ∑ e, (c e + 1) * x e := by
  classical
  unfold load
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro e _
  rw [← Finset.sum_mul, Finset.sum_add_distrib]
  simp

private theorem value_bound {o t : E → S} {c : E → ℝ} {D : S → ℝ} {p v : ℝ}
    (hp : 0 ≤ p) (hc : ∀ e, p ≤ c e) (hv : v ∈ values o t c D) :
    v ≤ (∑ s, D s) / (p+1) := by
  obtain ⟨x,hx,hD,rfl⟩ := hv
  apply (le_div_iff₀ (by linarith : 0 < p+1)).2
  rw [Finset.sum_mul]
  calc
    ∑ e, x e * (p+1) ≤ ∑ e, (c e + 1) * x e :=
      Finset.sum_le_sum fun e _ => by nlinarith [mul_nonneg (sub_nonneg.2 (hc e)) (hx e)]
    _ = ∑ s, load o t c x s := (total_load o t c x).symm
    _ ≤ _ := Finset.sum_le_sum fun s _ => hD s

omit [Fintype S] in
private theorem zero_value (o t : E → S) (c : E → ℝ) {D : S → ℝ} (hD : ∀ s, 0 ≤ D s) :
    0 ∈ values o t c D :=
  ⟨fun _ => 0, fun _ => le_rfl, fun s => by simpa [load] using hD s, by simp⟩

/-- Enlarging a baseline `k*w` by at most `b*w` per site changes the supremum
by at most `b * sum w / (p+1)`. No maximizer or integral optimal flow is assumed. -/
theorem flow_growth (o t : E → S) (c : E → ℝ) (w D : S → ℝ) {p k b : ℝ}
    (hp : 0 ≤ p) (hc : ∀ e, p ≤ c e) (hk : 0 < k) (hb : 0 ≤ b)
    (hw : ∀ s, 0 ≤ w s) (hD : ∀ s, 0 ≤ D s) (hu : ∀ s, D s ≤ (k+b)*w s) :
    sSup (values o t c D) ≤ sSup (values o t c (fun s => k*w s)) + b*(∑ s, w s)/(p+1) := by
  let V := values o t c (fun s => k*w s)
  have hV : BddAbove V := ⟨_, fun _ hv => value_bound hp hc hv⟩
  have hk' : 0 < k+b := by linarith
  have hfrac : 0 ≤ k/(k+b) := div_nonneg hk.le hk'.le
  have hs : sSup V ≤ k * (∑ s, w s) / (p+1) := by
    rw [Finset.mul_sum]
    apply csSup_le ⟨0, zero_value o t c (fun s => mul_nonneg hk.le (hw s))⟩
    exact fun _ hv => value_bound hp hc hv
  apply csSup_le ⟨0, zero_value o t c hD⟩
  intro v hv
  obtain ⟨x,hx,hL,hv⟩ := hv
  have hscaled : (k/(k+b))*v ∈ V := by
    refine ⟨fun e => k/(k+b)*x e, fun e => mul_nonneg hfrac (hx e), ?_, ?_⟩
    · intro s
      calc
        load o t c (fun e => k/(k+b)*x e) s = k/(k+b)*load o t c x s := by
          simp only [load, Finset.mul_sum]
          exact Finset.sum_congr rfl (fun _ _ => by ring)
        _ ≤ k/(k+b)*((k+b)*w s) := mul_le_mul_of_nonneg_left ((hL s).trans (hu s)) hfrac
        _ = k*w s := by field_simp
    · rw [hv, Finset.mul_sum]
  have h1 := le_csSup hV hscaled
  have h2 : k*v ≤ (k+b)*sSup V := by
    have h := (div_le_iff₀ hk').mp (show k*v/(k+b) ≤ sSup V by simpa only [div_mul_eq_mul_div] using h1)
    linarith
  change v ≤ sSup V + _
  have h3 := mul_le_mul_of_nonneg_left hs hb
  have hp' : 0 < p+1 := by linarith
  field_simp [ne_of_gt hp'] at h3 ⊢
  nlinarith [mul_nonneg (sub_nonneg.2 h2) hp'.le]

/-- The original perturbed objective loses at most `6 * sum w / p`. For the source's
parameters take `k` here equal to its natural-number parameter minus one. -/
theorem normalized_flow_loss (o t : E → S) (c : E → ℝ) (w D : S → ℝ) {p k : ℝ}
    (hp : 2 ≤ p) (hc : ∀ e, p ≤ c e) (hk : 2 ≤ k) (hw : ∀ s, 0 ≤ w s)
    (hl : ∀ s, (k-2)*w s ≤ D s) (hu : ∀ s, D s ≤ (k+4)*w s) :
    let γ := p / (p^2-1)
    γ * (∑ s, k*w s) - sSup (values o t c (fun s => k*w s)) - 6*(∑ s, w s)/p ≤
      γ * (∑ s, D s) - sSup (values o t c D) := by
  dsimp only
  have hD (s : S) : 0 ≤ D s := (mul_nonneg (by linarith) (hw s)).trans (hl s)
  have hx := flow_growth o t c w D (by linarith : 0 ≤ p) hc (by linarith : 0 < k)
    (by norm_num : (0 : ℝ) ≤ 4) hw hD hu
  have hbot : 0 < p^2-1 := by nlinarith [sq_nonneg (p-2)]
  have hγ : 0 ≤ p/(p^2-1) := div_nonneg (by linarith) hbot.le
  have hl' := Finset.sum_le_sum (s := Finset.univ) (fun s _ => hl s)
  rw [← Finset.mul_sum] at hl' ⊢
  have hmain := mul_le_mul_of_nonneg_left hl' hγ
  have hmass : 0 ≤ ∑ s, w s := Finset.sum_nonneg (fun s _ => hw s)
  have hc' : 2 * (p/(p^2-1)) + 4/(p+1) ≤ 6/p := by
    have h1 : 0 < p-1 := by linarith
    have h2 : 0 < p+1 := by linarith
    have h3 : 0 < p := by linarith
    rw [show p^2-1 = (p-1)*(p+1) by ring]
    field_simp
    nlinarith [sq_nonneg (p-2)]
  have hbudget := mul_le_mul_of_nonneg_right hc' hmass
  rw [add_mul, div_mul_eq_mul_div, div_mul_eq_mul_div] at hbudget
  nlinarith only [hx, hmain, hbudget]

end GRWTSK.NumberTheory.AlpogeOrbitFlowCorollary
