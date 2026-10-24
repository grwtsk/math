# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CauchyNewtonControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f4e99b69469bc5ba287d3d7d8f6c2547482df24` · SHA-256 `7baec460be180aa2c1af9982b23a62aa306069dd42b1cbdbc1137f97e78fadf8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CauchyNewtonWitness
import GRWTSK.NumberTheory.Zeta.Riemann.FinitePowerZetaJet

set_option autoImplicit false

/-!
# Source controls for disk-wide Cauchy and Newton bounds

All decisions and proof scripts are unexecuted. An arithmetic passing example
with deliberately false center data is explicitly NOT an analytic certificate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.Checks.CauchyNewtonControls

open Metric
open CauchyNewtonWitness
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure

/-- A zero gap totalizes the rational quotient but never passes geometry. -/
theorem zero_gap_rejected :
    checkGeometry (1 / 2, 0) (1 / 4) (1 / 4) = false ∧
      curvature (1 / 2, 0) (1 / 4) (1 / 4) = 0 := by decide

theorem outer_boundaries_rejected :
    checkGeometry (1 / 4, 0) (1 / 8) (1 / 4) = false ∧
    checkGeometry (3 / 4, 0) (1 / 8) (1 / 4) = false ∧
    checkGeometry (1 / 2, 0) 0 (1 / 4) = false ∧
    checkGeometry (1 / 2, 0) (1 / 4) (1 / 8) = false := by decide

/-- The coefficient is a derived actual-zeta bound, not observed curvature. -/
theorem rational_curvature_control :
    checkGeometry (1 / 2, 0) (1 / 8) (1 / 4) = true ∧
    curvature (1 / 2, 0) (1 / 8) (1 / 4) = 768 ∧
    curvature (1 / 2, 14) (1 / 8) (1 / 4) = 15104 := by decide

/-- Concrete analytic specialization; not a numerical probe or a zero claim. -/
theorem actual_zeta_curvature_control :
    ∀ z ∈ closedBall (1 / 2 : ℂ) (1 / 8 : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ 768 := by
  have hh := curvature_bound (c := (1 / 2, 0)) (R := (1 / 8)) (S := (1 / 4))
    (by decide)
  norm_num [curvature, sizeBound, leftMargin, poleMargin,
    GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk.magnitude, toComplex] at hh
  exact hh

/-- A center-only error of zero does not imply a derivative error of zero. -/
theorem center_error_is_not_derivative_error :
    (fun z : ℂ => 17 * z) 0 = 0 ∧ deriv (fun z : ℂ => 17 * z) 0 = 17 := by
  constructor
  · norm_num
  · simpa using ((hasDerivAt_id (0 : ℂ)).const_mul 17).deriv

/-- The factorial two is necessary even for the simplest quadratic. -/
theorem quadratic_second_derivative :
    deriv (deriv (fun z : ℂ => z ^ 2)) 0 = 2 := by
  have hd : deriv (fun z : ℂ => z ^ 2) = fun z => 2 * z := by
    funext z
    simpa using ((hasDerivAt_id z).pow 2).deriv
  rw [hd]
  simpa using ((hasDerivAt_id (0 : ℂ)).const_mul 2).deriv

/-- The quotient at one is not the removable value of the normalized source. -/
theorem pole_totalization_control :
    FinitePowerZetaJet.model 1 1 = 0 ∧ CriticalStripHeightDescent.poleNormalizedZeta 1 = 1 := by
  simp [FinitePowerZetaJet.model]

/-- Deliberate false zero-centered data: not a supplied enclosure of actual zeta. -/
def fictitiousCenter : CenterData := ⟨one, zero, one, 0, 0⟩

theorem arithmetic_alone_can_pass :
    checkAt (1 / 2, 0) (1 / 1000000) (1 / 4) fictitiousCenter = true := by decide

/-- The actual source excludes the false center estimate used in the preceding test. -/
theorem fictitious_center_has_no_estimates : ¬ CenterEstimates (1 / 2, 0) fictitiousCenter := by
  intro he
  have hv : ‖riemannZeta (1 / 2 : ℂ)‖ ≤ 0 := by
    simpa [CenterEstimates, fictitiousCenter] using he.1
  have hz : riemannZeta (1 / 2 : ℂ) = 0 := norm_le_zero_iff.mp hv
  have hn : (riemannZeta (1 / 2 : ℂ)).re < 0 := by
    simpa using CriticalStripHeightDescent.riemannZeta_re_neg_on_real_critical_interval
      (s := (1 / 2 : ℝ)) (by norm_num) (by norm_num)
  rw [hz] at hn
  simpa using hn

end GRWTSK.RiemannHypothesis.Checks.CauchyNewtonControls
```
