# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonContour

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad5f0a6f9f5f70da1032bca9b35aa6b614a1eb77` · SHA-256 `7f5a4c94ebe2bafd5e8fd50fbfe23d3d7f7547869e0c0c83a9e8d7ba51860d29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonRegularPart
import GRWTSK.Analysis.Complex.IsolatedSimpleZeroContour

set_option autoImplicit false

/-!
# Exact small-circle integral from the original conditional Newton packet

The actual local simple zero, no-other-zero fact and analyticity supply a
nonvanishing divided-difference factor on the original closed disk. Its
logarithmic derivative is analytic across the root. Thus the pole-subtracted
integral is zero and the actual zeta logarithmic-derivative integral is 2*pi*i.
This is an exact analytic identity, NOT integer rounding of the earlier
centered sup-norm bound (which was too large for that sufficient test).

The source acceptance remains the ORIGINAL open premise. No data field,
returned error, radius, multiplier, schedule or source checker is changed.
The local root is already supplied conditionally; this does not independently
prove its existence or give an exhaustive count through any height. The same
conditional simplicity is used; no universal simplicity or RH follows.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / SOURCE_ACCEPTANCE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonContour

open Set Metric
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.IsolatedSimpleZeroContour
open CanonicalZeroDivisor ConcreteNewtonLocalization ConcreteNewtonBoundary ConcreteNewtonRegularPart

noncomputable section

/-- Strict inner localization puts the actual root in the OPEN outer disk. -/
theorem inner_root_in_outer_ball (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ)) :
    root.1 ∈ ball (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
  have nested : (innerRadius : ℝ) < (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    exact_mod_cast inner_radius_lt_outer
  simpa only [mem_ball, dist_eq_norm] using located.trans nested

/-- The existing actual-zero source bounds exclude other RAW zeros in this disk.
This fact is derived, not inferred by enlarging the scope of subtype uniqueness. -/
theorem outer_nonzero_away (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ)) :
    ∀ w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ), w ≠ root.1 → riemannZeta w ≠ 0 := by
  intro w member distinct
  exact (outer_pole_subtracted_bound hsource root
    (ball_subset_closedBall (inner_root_in_outer_ball root located)) w member distinct).1

/-- The same witness now has an analytic regular part on the FULL closed disk,
including the root. Its former punctured expression is not evaluated there. -/
theorem local_zero_with_analytic_regularPart (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ root : ZeroPoint, root.1.re = 1 / 2 ∧
      ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) ∧
      deriv riemannZeta root.1 ≠ 0 ∧
      (∀ w : ZeroPoint, ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (ConcreteNewtonPacket.newtonRadius : ℝ) → w = root) ∧
      AnalyticOnNhd ℂ (regularPart riemannZeta root.1)
        (closedBall (QComplex.embed ConcreteNewtonPacket.center)
          (ConcreteNewtonPacket.newtonRadius : ℝ)) ∧
      (∀ w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
        (ConcreteNewtonPacket.newtonRadius : ℝ), w ≠ root.1 →
          regularPart riemannZeta root.1 w =
            deriv riemannZeta w / riemannZeta w - 1 / (w - root.1)) ∧
      (∮ w in C(QComplex.embed ConcreteNewtonPacket.center,
        (ConcreteNewtonPacket.newtonRadius : ℝ)), regularPart riemannZeta root.1 w) = 0 := by
  obtain ⟨root, onLine, located, _, simple, unique⟩ :=
    local_zero_with_inner_geometry_of_source hsource
  have member := ball_subset_closedBall (inner_root_in_outer_ball root located)
  have away := outer_nonzero_away hsource root located
  have extension := regularPart_analytic riemannZeta root.1 _
    outer_analytic member root.2.1 simple away
  refine ⟨root, onLine, located, simple, unique, extension, ?_, ?_⟩
  · intro w hw distinct
    exact regularPart_eq_subtracted riemannZeta root.1 w root.2.1
      (factor_analytic riemannZeta root.1 _ outer_analytic member w hw)
      (factor_nonzero riemannZeta root.1 _ root.2.1 simple away w hw) distinct
  · exact regularPart_circleIntegral_zero riemannZeta
      (QComplex.embed ConcreteNewtonPacket.center) root.1 (ConcreteNewtonPacket.newtonRadius : ℝ)
      (by norm_num [ConcreteNewtonPacket.newtonRadius]) outer_analytic member root.2.1 simple away

/-- Exact integral on the original positively oriented circle, with integrability retained.
SourceAcceptance has NOT been proved by this theorem. -/
theorem outer_log_derivative_circleIntegral (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    CircleIntegrable (fun w => deriv riemannZeta w / riemannZeta w)
      (QComplex.embed ConcreteNewtonPacket.center) (ConcreteNewtonPacket.newtonRadius : ℝ) ∧
    (∮ w in C(QComplex.embed ConcreteNewtonPacket.center, (ConcreteNewtonPacket.newtonRadius : ℝ)),
      deriv riemannZeta w / riemannZeta w) = 2 * (Real.pi : ℂ) * Complex.I := by
  obtain ⟨root, _, located, _, simple, _⟩ := local_zero_with_inner_geometry_of_source hsource
  exact log_derivative_circleIntegral riemannZeta
    (QComplex.embed ConcreteNewtonPacket.center) root.1 (ConcreteNewtonPacket.newtonRadius : ℝ)
    outer_analytic (inner_root_in_outer_ball root located) root.2.1 simple
    (outer_nonzero_away hsource root located)

/-- The normalized local index is exactly one; this is not a global zero inventory. -/
theorem normalized_outer_index (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      (∮ w in C(QComplex.embed ConcreteNewtonPacket.center, (ConcreteNewtonPacket.newtonRadius : ℝ)),
        deriv riemannZeta w / riemannZeta w) = 1 := by
  rw [(outer_log_derivative_circleIntegral hsource).2]
  apply inv_mul_cancel₀
  simp [Real.pi_ne_zero, Complex.I_ne_zero]

/-- The center-based difference integrates to zero despite its nonzero pointwise pole-shift cost.
No claim that the rational center itself is a zero or a removable point is made. -/
theorem centered_comparison_circleIntegral_zero (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    (∮ w in C(QComplex.embed ConcreteNewtonPacket.center, (ConcreteNewtonPacket.newtonRadius : ℝ)),
      deriv riemannZeta w / riemannZeta w -
        (w - QComplex.embed ConcreteNewtonPacket.center)⁻¹) = 0 := by
  have positive : (0 : ℝ) < (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    norm_num [ConcreteNewtonPacket.newtonRadius]
  have centerInside : QComplex.embed ConcreteNewtonPacket.center ∈
      ball (QComplex.embed ConcreteNewtonPacket.center) (ConcreteNewtonPacket.newtonRadius : ℝ) :=
    mem_ball_self positive
  have sourceIntegral := outer_log_derivative_circleIntegral hsource
  rw [circleIntegral.integral_sub sourceIntegral.1
    (pole_circleIntegrable _ _ _ centerInside), sourceIntegral.2,
    circleIntegral.integral_sub_inv_of_mem_ball centerInside, sub_self]

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonContour
```
