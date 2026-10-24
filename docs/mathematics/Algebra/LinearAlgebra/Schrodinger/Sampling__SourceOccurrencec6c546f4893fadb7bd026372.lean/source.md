# Complete source: GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faf1e1b5e12355f5e20fd4f3f894293704f9d4cf` · SHA-256 `1770f62cf72d2e6df963d630e57af70e3301d8314093286f055b4c9874b99030`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import GRWTSK.Algebra.LinearAlgebra.Schrodinger.SampledPotential
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform

/-- Labels classify formula families; observational equality requires its own proof. -/
inductive PotentialFamily where
  | almostMathieu | oneFrequency | multiFrequency | nonstationary
  deriving DecidableEq, Repr

def SameSampledPotential (v w : ℝ → ℝ) (α θ : ℝ) : Prop :=
  ∀ n : ℤ, sampledPotential v α θ n = sampledPotential w α θ n

def discreteAction (V : ℤ → ℝ) (ψ : ℤ → ℝ) (n : ℤ) : ℝ :=
  ψ (n+1) + ψ (n-1) + V n * ψ n

theorem equal_samples_equal_action {v w : ℝ → ℝ} {α θ : ℝ}
    (h : SameSampledPotential v w α θ) (ψ : ℤ → ℝ) (n : ℤ) :
    discreteAction (sampledPotential v α θ) ψ n =
      discreteAction (sampledPotential w α θ) ψ n := by
  simp only [discreteAction,h n]

/-- Fixed sampling can alias distinct continuous periodic formulas. -/
theorem sampled_alias :
    SameSampledPotential (fun x => Real.sin x + Real.sin (2*x)) (fun _ => 0) 0 0 ∧
    (fun x : ℝ => Real.sin x + Real.sin (2*x)) ≠ (fun _ => (0:ℝ)) := by
  constructor
  · intro n; simp [sampledPotential]
  · intro h
    have hx := congrFun h (Real.pi/2)
    have h2 : 2*(Real.pi/2)=Real.pi := by ring
    simp [h2] at hx

theorem waveform_equality_implies_samples {v w : ℝ → ℝ} (h : v = w) (α θ : ℝ) :
    SameSampledPotential v w α θ := by subst w; intro n; rfl

end GRWTSK.Analysis.Waveform
```
