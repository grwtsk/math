/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Calculus.Deriv.Slope
import Mathlib.Tactic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Linear contact at an edge of support

A differentiable function vanishing on the closed right ray
has derivative zero at its edge. A positive linear lower bound from the left
contradicts this derivative. No actual source, correlation, kernel or arithmetic
statement is identified by these generic calculus lemmas.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportEdgeDifferentiability

open Filter Set
open scoped Topology

theorem deriv_zero_of_zero_right {f : ℝ → ℝ} {b : ℝ}
    (differentiable : DifferentiableAt ℝ f b)
    (rightZero : ∀ x : ℝ, b ≤ x → f x = 0) : deriv f b = 0 := by
  have slopeLimit : Tendsto (fun h : ℝ ↦ h⁻¹ * (f (b + h) - f b))
      (𝓝[>] 0) (𝓝 (deriv f b)) := by
    simpa only [smul_eq_mul] using differentiable.hasDerivAt.tendsto_slope_zero_right
  have slopeZero : (fun h : ℝ ↦ h⁻¹ * (f (b + h) - f b)) =ᶠ[𝓝[>] 0]
      (fun _ ↦ (0 : ℝ)) := by
    filter_upwards [self_mem_nhdsWithin] with h positive
    change 0 < h at positive
    rw [rightZero (b + h) (by linarith), rightZero b le_rfl]
    ring
  have zeroLimit : Tendsto (fun h : ℝ ↦ h⁻¹ * (f (b + h) - f b))
      (𝓝[>] 0) (𝓝 0) :=
    tendsto_const_nhds.congr' slopeZero.symm
  exact tendsto_nhds_unique slopeLimit zeroLimit

theorem not_differentiable_of_left_linear_contact {f : ℝ → ℝ} {b c : ℝ}
    (heightPositive : 0 < c) (rightZero : ∀ x : ℝ, b ≤ x → f x = 0)
    (leftContact : ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε → c * h ≤ f (b - h)) :
    ¬ DifferentiableAt ℝ f b := by
  intro differentiable
  have derivativeZero := deriv_zero_of_zero_right differentiable rightZero
  have slopeLimit : Tendsto (fun h : ℝ ↦ h⁻¹ * (f (b + h) - f b))
      (𝓝[<] 0) (𝓝 0) := by
    simpa only [smul_eq_mul, derivativeZero] using
      differentiable.hasDerivAt.tendsto_slope_zero_left
  obtain ⟨ε, positiveε, lower⟩ := leftContact
  have near : ∀ᶠ h in 𝓝 (0 : ℝ), -ε < h := Ioi_mem_nhds (by linarith)
  have leftNear : ∀ᶠ h in 𝓝[<] (0 : ℝ), -ε < h :=
    near.filter_mono nhdsWithin_le_nhds
  have slopeBound : ∀ᶠ h in 𝓝[<] (0 : ℝ), h⁻¹ * (f (b + h) - f b) ≤ -c := by
    filter_upwards [leftNear, self_mem_nhdsWithin] with h short negative
    change h < 0 at negative
    have contact := lower (-h) (by linarith) (by linarith)
    have shifted : b - -h = b + h := by ring
    rw [shifted] at contact
    have quotient : (f (b + h) - f b) / h ≤ -c :=
      (div_le_iff_of_neg negative).mpr (by rw [rightZero b le_rfl]; nlinarith)
    simpa only [div_eq_mul_inv, mul_comm] using quotient
  have impossible : (0 : ℝ) ≤ -c := le_of_tendsto slopeLimit slopeBound
  linarith

end GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportEdgeDifferentiability
