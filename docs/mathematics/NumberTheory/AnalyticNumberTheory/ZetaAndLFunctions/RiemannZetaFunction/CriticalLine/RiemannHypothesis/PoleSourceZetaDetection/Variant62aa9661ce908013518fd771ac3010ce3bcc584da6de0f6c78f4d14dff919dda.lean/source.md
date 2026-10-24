# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleSourceZetaDetection.Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e31607c8a1a02aad72d25c79f9287e64fad5063e` · SHA-256 `62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PoleSourceDetection
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.NumberTheory.LSeries.ZetaZeros

/-!
# The actual compact source detects hypothetical off-line zeta zeros

This thin consumer reuses the canonical `NontrivialZetaZero` predicate and
Mathlib's `riemannZeta` and `riemannZetaZeros`; it introduces no alternate zero
predicate. Exact zero transport already proves the open critical-strip location.
The positive-radius analytic core is separate from these zeta-specific imports.

Source sensitivity proves neither existence nor absence of an off-line zero,
nor domination over the complete explicit formula. It supplies no proof of RH,
prime-square compensation or the uniform estimate, and does not change the
certified arithmetic frontier. Zeros of the bump transform are not identified
with zeta zeros. A hypothetical off-line nontrivial zero is merely not
annihilated by the actual source at any positive dilation.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.PoleSourceZetaDetection

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open SourceLaplaceDetection PoleSourceDetection

/-- A strip zero satisfies the canonical exact trivial-zero and pole exclusions. -/
theorem nontrivial_zeta_zero_of_strip (ρ : ℂ) (hzero : riemannZeta ρ = 0)
    (hstrip : 0 < ρ.re ∧ ρ.re < 1) : NontrivialZetaZero ρ := by
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    norm_num at hr
    linarith [hstrip.1]
  · intro hn
    have hr := congrArg Complex.re hn
    norm_num at hr
    linarith [hstrip.2]

/-- Every canonical off-line nontrivial zeta zero is detected at every positive radius. -/
theorem source_detects_off_critical_zero (A : ℝ) (hA : 0 < A) (ρ : ℂ)
    (hzero : NontrivialZetaZero ρ) (hoff : ρ.re ≠ 1 / 2) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) (ρ - 1 / 2) ≠ 0 := by
  obtain ⟨hρ0, hρ1⟩ := hzero.mem_critical_strip
  exact source_correlation_laplace_strip_ne_zero A hA ρ hρ0 hρ1 hoff

/-- The direct Mathlib zeta equation and explicit strip hypotheses give the same detection. -/
theorem source_detects_off_critical_riemann_zeta_zero (A : ℝ) (hA : 0 < A) (ρ : ℂ)
    (hzero : riemannZeta ρ = 0) (hstrip : 0 < ρ.re ∧ ρ.re < 1)
    (hoff : ρ.re ≠ 1 / 2) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) (ρ - 1 / 2) ≠ 0 :=
  source_detects_off_critical_zero A hA ρ (nontrivial_zeta_zero_of_strip ρ hzero hstrip) hoff

/-- Membership in Mathlib's actual zero set has an explicit source-detection consumer. -/
theorem source_detects_off_critical_mathlib_zero (A : ℝ) (hA : 0 < A) (ρ : ℂ)
    (hzero : ρ ∈ riemannZetaZeros) (hstrip : 0 < ρ.re ∧ ρ.re < 1)
    (hoff : ρ.re ≠ 1 / 2) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) (ρ - 1 / 2) ≠ 0 :=
  source_detects_off_critical_riemann_zeta_zero A hA ρ (mem_riemannZetaZeros.mp hzero)
    hstrip hoff

/-- One hypothetical off-line nontrivial zero is detected at every positive real dilation. -/
theorem source_detects_off_critical_zero_all_positive (ρ : ℂ)
    (hzero : NontrivialZetaZero ρ) (hoff : ρ.re ≠ 1 / 2) :
    ∀ A : ℝ, 0 < A →
      bilateralLaplace (sourceCorrelation explicitSecondDerivative A) (ρ - 1 / 2) ≠ 0 :=
  fun A hA ↦ source_detects_off_critical_zero A hA ρ hzero hoff

end FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
```
