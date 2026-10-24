/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCauchyBounds
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower

set_option autoImplicit false

/-!
# Zeta and first-derivative errors from the SAME finite power source

Cancel the exact pole factor before taking norms. The derivative error follows
from Cauchy's estimate on the analytic difference, not differentiation of a
pointwise inequality. Finite model values/derivatives still need numerical
refinement, and the power tail is not a certified finite rational computation.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.FinitePowerZetaJet

open Metric Set
open CriticalStripHeightDescent ZetaDiskCauchyBounds
open GRWTSK.Analysis.ComplexAnalysis.ClosedDiskCauchy

noncomputable section

/-- The existing pole model divided only at application points distinct from one. -/
def model (N : ℕ) (z : ℂ) : ℂ := finitePowerPoleModel N z / (z - 1)

/-- The endpoint power cannot be dropped when de-normalizing the finite model. -/
theorem model_eq_sum_endpoint (N : ℕ) {z : ℂ} (hz1 : z ≠ 1) :
    model N z = finiteDirichletPowerSum N z + (N : ℂ) ^ (1 - z) / (z - 1) := by
  unfold model finitePowerPoleModel
  field_simp [sub_ne_zero.mpr hz1] <;> ring

/-- No undefined zero-base summand enters the differentiability proof. -/
theorem finitePower_differentiable (N : ℕ) (hN : 1 ≤ N) :
    Differentiable ℂ (finitePowerPoleModel N) := by
  intro z
  have hsum : DifferentiableAt ℂ (finiteDirichletPowerSum N) z := by
    unfold finiteDirichletPowerSum
    apply DifferentiableAt.fun_sum
    intro k hk
    have hk0 : (k : ℂ) ≠ 0 := by
      exact_mod_cast (Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1))
    simp_rw [Complex.cpow_def_of_ne_zero hk0]
    fun_prop
  have hN0 : (N : ℂ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one hN))
  have hend : DifferentiableAt ℂ (fun w : ℂ => (N : ℂ) ^ (1 - w)) z := by
    simp_rw [Complex.cpow_def_of_ne_zero hN0]
    fun_prop
  exact ((differentiableAt_id.sub_const 1).mul hsum).add hend

theorem model_differentiableAt {N : ℕ} (hN : 1 ≤ N) {z : ℂ} (hz1 : z ≠ 1) :
    DifferentiableAt ℂ (model N) z :=
  (finitePower_differentiable N hN z).div (differentiableAt_id.sub_const 1)
    (sub_ne_zero.mpr hz1)

/-- The cancellation is an exact source identity, not a numerical improvement claim. -/
theorem source_residual {N : ℕ} {z : ℂ}
    (hN : 1 ≤ N) (hz : 0 < z.re) (hz1 : z ≠ 1) :
    riemannZeta z - model N z = -z * fractionalMellinTail (N : ℝ) z := by
  apply mul_left_cancel₀ (sub_ne_zero.mpr hz1)
  calc
    _ = poleNormalizedZeta z - finitePowerPoleModel N z := by
      rw [poleNormalizedZeta_of_ne hz1]
      unfold model
      field_simp [sub_ne_zero.mpr hz1] <;> ring
    _ = -(z * (z - 1)) * fractionalMellinTail (N : ℝ) z :=
      finitePower_source_residual hN hz
    _ = _ := by ring

/-- Uniform analytic error on an admitted point; no distance-to-pole loss after cancellation. -/
theorem source_error {N : ℕ} {z : ℂ} {σ B : ℝ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hz : σ ≤ z.re) (hz1 : z ≠ 1) (hB : ‖z‖ ≤ B) :
    ‖riemannZeta z - model N z‖ ≤ B * ((N : ℝ) ^ (-σ) / σ) := by
  rw [source_residual hN (hσ.trans_le hz) hz1, norm_mul, norm_neg]
  calc
    _ ≤ ‖z‖ * ((N : ℝ) ^ (-σ) / σ) := mul_le_mul_of_nonneg_left
      (fractionalMellinTail_norm_le (by exact_mod_cast hN) hσ hz) (norm_nonneg z)
    _ ≤ B * ((N : ℝ) ^ (-σ) / σ) := mul_le_mul_of_nonneg_right hB
      (div_nonneg (Real.rpow_nonneg (Nat.cast_nonneg N) _) hσ.le)

/-- Uniformity on the actual outer disk enables a derivative estimate. -/
theorem source_error_on_disk {N : ℕ} {c : ℂ} {S σ δ B : ℝ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ) (hB : ‖c‖ + S ≤ B) :
    ∀ z ∈ closedBall c S,
      ‖riemannZeta z - model N z‖ ≤ B * ((N : ℝ) ^ (-σ) / σ) := by
  intro z hz
  obtain ⟨hl, _, hb, hn⟩ := disk_bounds hσ hδ hleft hright hB hz
  exact source_error hN hσ hl hn hb

/-- A first derivative bound sourced from a disk-wide analytic remainder. -/
theorem derivative_source_error {N : ℕ} {c : ℂ} {S σ δ B : ℝ}
    (hN : 1 ≤ N) (hS : 0 < S) (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ) (hB : ‖c‖ + S ≤ B) :
    ‖deriv riemannZeta c - deriv (model N) c‖ ≤
      (B * ((N : ℝ) ^ (-σ) / σ)) / S := by
  apply derivative_error_at_center hS
    (fun z hz => differentiableAt_riemannZeta (disk_bounds hσ hδ hleft hright hB hz).2.2.2)
    (fun z hz => model_differentiableAt hN (disk_bounds hσ hδ hleft hright hB hz).2.2.2)
  intro z hz
  exact source_error_on_disk hN hσ hδ hleft hright hB z (sphere_subset_closedBall hz)

/-- Separate finite model evaluation from the infinite source remainder, in both jets. -/
theorem center_jet_errors {N : ℕ} {c v d : ℂ} {S σ δ B ε₀ ε₁ : ℝ}
    (hN : 1 ≤ N) (hS : 0 < S) (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ) (hB : ‖c‖ + S ≤ B)
    (hv : ‖model N c - v‖ ≤ ε₀) (hd : ‖deriv (model N) c - d‖ ≤ ε₁) :
    ‖riemannZeta c - v‖ ≤ B * ((N : ℝ) ^ (-σ) / σ) + ε₀ ∧
    ‖deriv riemannZeta c - d‖ ≤ (B * ((N : ℝ) ^ (-σ) / σ)) / S + ε₁ := by
  have hval := source_error_on_disk hN hσ hδ hleft hright hB c (mem_closedBall_self hS.le)
  have hder := derivative_source_error hN hS hσ hδ hleft hright hB
  constructor
  · calc
      _ = ‖(riemannZeta c - model N c) + (model N c - v)‖ := by congr 1; ring
      _ ≤ ‖riemannZeta c - model N c‖ + ‖model N c - v‖ := norm_add_le _ _
      _ ≤ _ := add_le_add hval hv
  · calc
      _ = ‖(deriv riemannZeta c - deriv (model N) c) + (deriv (model N) c - d)‖ := by
        congr 1; ring
      _ ≤ ‖deriv riemannZeta c - deriv (model N) c‖ + ‖deriv (model N) c - d‖ := norm_add_le _ _
      _ ≤ _ := add_le_add hder hd

end
end GRWTSK.RiemannHypothesis.FinitePowerZetaJet
