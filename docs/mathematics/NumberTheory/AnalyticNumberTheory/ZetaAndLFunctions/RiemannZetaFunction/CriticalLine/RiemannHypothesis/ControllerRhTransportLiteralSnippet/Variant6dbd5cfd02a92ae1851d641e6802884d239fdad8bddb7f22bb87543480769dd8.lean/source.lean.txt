
namespace ControllerRHTransportLiteral
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open ControllerRHTransportScratch
noncomputable section
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 :=
  nontrivial_re_le_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re = 1 / 2 :=
  nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := conditional_rh_of_mass_subsequence α hα hmass
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    ∀ (s : ℂ), riemannZeta s = 0 →
      (¬ ∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 → s.re = 1 / 2 :=
  conditional_rh_of_full_residual q hres
end
end ControllerRHTransportLiteral
