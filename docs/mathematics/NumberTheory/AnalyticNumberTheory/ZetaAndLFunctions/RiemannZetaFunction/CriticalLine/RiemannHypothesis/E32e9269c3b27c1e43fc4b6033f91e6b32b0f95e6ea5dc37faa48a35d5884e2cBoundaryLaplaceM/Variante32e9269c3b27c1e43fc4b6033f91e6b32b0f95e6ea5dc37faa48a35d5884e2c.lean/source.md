# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM.Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `426f0383a094af1c21c4e85e5297c987fff32800` · SHA-256 `e32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.BoundaryRieszLaplace

namespace FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
open MeasureTheory Filter Set

noncomputable section

private def profilePoleFactor (s : ℂ) : ℂ :=
  3938220 * (s + 1 / 2) ^ 2 / s ^ 10

private theorem profile_laplace_eventually_factor :
    boundaryProfileLaplace =ᶠ[nhds (1 / 2 : ℂ)]
      (fun s ↦ (s - 1 / 2) ^ 2 * profilePoleFactor s) := by
  have he : ∀ᶠ s : ℂ in nhds (1 / 2), 0 < s.re :=
    Complex.continuous_re.continuousAt.tendsto.eventually
      (eventually_gt_nhds (by norm_num : (0 : ℝ) < (1 / 2 : ℂ).re))
  filter_upwards [he] with s hs
  rw [boundary_profile_laplace_closed_form s hs]
  unfold profilePoleFactor
  ring

theorem first_derivative_test : deriv boundaryProfileLaplace (1 / 2 : ℂ) = 0 := by
  have hf : ContDiffAt ℂ 1 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 1 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  rw [← iteratedDeriv_one, profile_laplace_eventually_factor.iteratedDeriv_eq 1,
    iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ]
  norm_num [iteratedDeriv_pow]

theorem second_derivative_test : iteratedDeriv 2 boundaryProfileLaplace (1 / 2 : ℂ) =
    8065474560 := by
  have hf : ContDiffAt ℂ 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 2 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  have hshift : iteratedDeriv 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) = 2 := by
    have h := congrFun (iteratedDeriv_comp_sub_const
      (f := fun w : ℂ ↦ w ^ 2) (s := (1 / 2 : ℂ)) (n := 2)) (1 / 2)
    norm_num [iteratedDeriv_pow, Nat.descFactorial] at h
    exact h
  rw [profile_laplace_eventually_factor.iteratedDeriv_eq 2, iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero]
  norm_num [iteratedDeriv_pow, profilePoleFactor, iteratedDeriv_zero, hshift]

end
end FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
```
