# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CandidateTiltAudit.Variant2071587318717230a111b9ed509e14a49697f461d4af3074be9bd64ae26ae8e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f10cdc29b752e13c986c715504fd93d1a60c4f9f` · SHA-256 `2071587318717230a111b9ed509e14a49697f461d4af3074be9bd64ae26ae8e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality

set_option autoImplicit false
namespace CandidateTiltScratch
open MeasureTheory Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
noncomputable section

/-- An integrably bounded analytic function admits a finite contour shift at every real time. -/
theorem boundaryInverse_shift (F : ℂ → ℂ)
    (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    boundaryInverse F x = (Real.exp (x * σ) : ℂ) *
      boundaryInverse (fun z => F ((σ : ℂ) + z)) x := by
  let G : ℂ → ℂ := fun z => Complex.exp ((x : ℂ) * z) * F z
  let ψ : ℝ → ℝ := fun t => Real.exp (|x| * σ) * φ t
  have hφ0 (t : ℝ) : 0 ≤ φ t := (norm_nonneg _).trans (hb 0 t le_rfl)
  have hbound (s t : ℝ) (hs : 0 ≤ s) (hsσ : s ≤ σ) :
      ‖G ((s : ℂ) + (t : ℂ) * I)‖ ≤ ψ t := by
    have hxs : x * s ≤ |x| * σ :=
      (mul_le_mul_of_nonneg_right (le_abs_self x) hs).trans
        (mul_le_mul_of_nonneg_left hsσ (abs_nonneg x))
    dsimp only [G, ψ]
    rw [norm_mul]
    have hn : ‖Complex.exp ((x : ℂ) * ((s : ℂ) + (t : ℂ) * I))‖ =
        Real.exp (x * s) := by simp [Complex.norm_exp]
    rw [hn]
    exact mul_le_mul ((Real.exp_le_exp).mpr hxs) (hb s t hs)
      (norm_nonneg _) (by positivity)
  have hshift : (∫ t : ℝ, G ((σ : ℂ) + (t : ℂ) * I)) =
      ∫ t : ℝ, G ((t : ℂ) * I) := by
    simpa only [Complex.ofReal_zero, zero_add, G, Pi.mul_apply] using
      Zeta23.WeilEF.vertical_line_shift hσ
        (fun z hz _ => (by fun_prop :
          DifferentiableAt ℂ (fun w : ℂ => Complex.exp ((x : ℂ) * w)) z).mul (hF z hz))
        (hφ.const_mul (Real.exp (|x| * σ))) hbound
        (by simpa only [mul_zero] using htop.const_mul (Real.exp (|x| * σ)))
        (by simpa only [mul_zero] using hbot.const_mul (Real.exp (|x| * σ)))
  unfold boundaryInverse
  rw [← hshift]
  dsimp only [G]
  have hexp (t : ℝ) : Complex.exp ((x : ℂ) * ((σ : ℂ) + (t : ℂ) * I)) =
      (Real.exp (x * σ) : ℂ) * Complex.exp ((x : ℂ) * ((t : ℂ) * I)) := by
    rw [mul_add, Complex.exp_add]
    simp only [← Complex.ofReal_mul, Complex.ofReal_exp]
  simp_rw [hexp, mul_assoc]
  rw [integral_const_mul]
  ring

/-- Shifting the candidate's complex argument exactly increases its positive real offset. -/
theorem candidate_shift (X : ℕ) (ε h σ : ℝ) (z : ℂ) :
    candidate X ε h ((σ : ℂ) + z) = candidate X (ε + σ) h z := by
  simp only [candidate, Complex.ofReal_add]
  simp only [add_assoc, add_comm, add_left_comm]

/-- The source candidate's inverse satisfies the exact finite-strip exponential tilt relation. -/
theorem candidate_boundaryInverse_shift (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (x * σ) : ℂ) *
      boundaryInverse (candidate X (ε + σ) h) x := by
  obtain ⟨φ, hφ, htop, hbot, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  simpa only [candidate_shift] using boundaryInverse_shift (candidate X ε h)
    (candidate_differentiableAt X ε h hε hh.le) φ hφ hb htop hbot σ hσ x

end
end CandidateTiltScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CandidateTiltScratch.boundaryInverse_shift
#print CandidateTiltScratch.boundaryInverse_shift
#print axioms CandidateTiltScratch.boundaryInverse_shift
#check @CandidateTiltScratch.candidate_shift
#print CandidateTiltScratch.candidate_shift
#print axioms CandidateTiltScratch.candidate_shift
#check @CandidateTiltScratch.candidate_boundaryInverse_shift
#print CandidateTiltScratch.candidate_boundaryInverse_shift
#print axioms CandidateTiltScratch.candidate_boundaryInverse_shift
```
