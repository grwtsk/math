# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaMellinFourierSourceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d9323421ef01fb690bbdec376c304f3953163b4` · SHA-256 `1e947b211433e21b531035cff1a6e5ad9b491ef5505e0c1fbbc4f933a9bf5189`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE). Analytic source ideas and
selected proof structure adapted from Apache-2.0 PrimeNumberTheoremAnd;
upstream copyright and license remain with their original authors.
Mathematical source: Kontorovich--Tao PrimeNumberTheoremAnd Wiener analysis.
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaMellinFourierSource
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

open Real Filter FourierTransform SchwartzMap
open scoped FourierTransform Topology ContDiff SchwartzMap

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis

/-- An integrated arithmetic source theorem, not a new smooth-test
limit premise: Fourier inversion provides one fixed Schwartz witness
that works for ALL arithmetic coefficients f, scales T>0 and n>=0.

The Fourier frequency is exactly log(n/T)/(2*pi), with n=0 treated
separately rather than evaluating the logarithm at zero. -/
theorem mellinFourier_source_witness_for_all_coefficients
    (Ψ : ℝ → ℂ)
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    ∃ g : 𝓢(ℝ, ℂ),
      (∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y) ∧
      (∀ (f : ℕ → ℂ) (T : ℝ), 0 < T →
        ∀ n : ℕ,
          wienerFourierCoefficient f g T n =
            f n * Ψ ((n : ℝ) / T) / (T : ℂ)) := by
  obtain ⟨g, hg⟩ :=
    wienerMellin_fourier_witness Ψ hsmooth hcompact hplus
  refine ⟨g, hg, ?_⟩
  intro f T hT n
  exact wienerFourierCoefficient_eq_smoothCoefficient
    f Ψ g hplus hg hT n

/-- At y=1 the correctly normalized Fourier frequency is zero.
The multiplier y is exactly one. -/
theorem mellinFourier_source_unit_frequency
    (Ψ : ℝ → ℂ) (g : 𝓢(ℝ, ℂ))
    (hfourier :
      ∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y) :
    (𝓕 g) 0 = Ψ 1 := by
  have h := hfourier 1 (by norm_num)
  simpa [Real.log_one] using h

/-- The Fourier angle at y=exp(2*pi) is +1, not -1 and not
2*pi. This is a hostile guard for the Mellin/Fourier sign/scale. -/
theorem mellinFourier_source_two_pi_frequency
    (Ψ : ℝ → ℂ) (g : 𝓢(ℝ, ℂ))
    (hfourier :
      ∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y) :
    (𝓕 g) 1 =
      (Real.exp (2 * Real.pi) : ℂ) *
        Ψ (Real.exp (2 * Real.pi)) := by
  have h := hfourier (Real.exp (2 * Real.pi))
    (Real.exp_pos _)
  have htwoPi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  have hangle :
      (1 / (2 * Real.pi)) *
        Real.log (Real.exp (2 * Real.pi)) = 1 := by
    rw [Real.log_exp]
    field_simp [htwoPi]
  rw [hangle] at h
  exact h

/-- The source has no pre-assumed smooth Wiener limit or PNT premise.
The remaining analytic theorem is a separate Fourier/Schwartz
Tauberian limiting corollary that consumes the actual q=1 L-series. -/
def stillOpenAnalyticObligations : List String :=
  ["adapt the maintained limiting_cor_schwartz theorem with explicit Dirichlet-series convergence",
   "carry actual q=1 Lambda pole-subtracted boundary continuity through Fourier inversion",
   "prove the Fourier-weighted tsum limiting estimate, retaining the tail integral",
   "replay the full local Mellin/Fourier kernel and tail integral at the exact math commit",
   "inspect #print axioms and the transitive dependency closure under the local coordinator"]

end GRWTSK.RiemannHypothesis.Checks
```
