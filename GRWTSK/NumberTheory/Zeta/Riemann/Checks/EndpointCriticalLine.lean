/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointBernoulliSource

set_option autoImplicit false

/-!
# Critical-line transport of the literal isolated endpoint candidate

No center, radius, evaluator, tail bound, Newton datum or zero predicate changes.
The existing local SOURCE CANDIDATE and the unconditional zero symmetries imply
line membership for this one isolated point. Conjugation gives a second distinct
simple point in the negative disk. The count conclusion is ONLY 2 <= heightCount
15. All inherited finite reductions and analytic scripts remain NOT_RUN /
NOT_KERNEL_AUDITED; no accepted local certificate, complete count or RH claim.
-/
namespace GRWTSK.RiemannHypothesis.Checks.EndpointCriticalLine

open CanonicalZeroDivisor LocalZeroSymmetry
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open EndpointCorrectedNewtonCandidate (center centerData innerRadius outerRadius)

/-- Exact rational center, not a projection of an evaluated off-line parameter. -/
theorem center_on_line : (toComplex center).re = (1 / 2 : ℝ) := by
  norm_num [center, toComplex]

/-- The exact inherited disk bounds its ordinate before any use of symmetry. -/
theorem ordinate_error {z : ℂ} (h : ‖z - toComplex center‖ ≤ (innerRadius : ℝ)) :
    |z.im - (center.2 : ℝ)| ≤ (innerRadius : ℝ) :=
  ReflectionDisks.imaginary_enclosure h

theorem positive_height {z : ℂ} (h : ‖z - toComplex center‖ ≤ (innerRadius : ℝ)) :
    14 < z.im ∧ z.im < 15 := by
  obtain ⟨hl, hu⟩ := abs_le.mp (ordinate_error h)
  norm_num [center, innerRadius] at hl hu
  constructor <;> linarith

/-- The difference has zero real part only after line membership is known. -/
theorem distance_eq_ordinate {z : ℂ} (hz : z.re = (1 / 2 : ℝ)) :
    ‖z - toComplex center‖ = |z.im - (center.2 : ℝ)| := by
  exact ReflectionDisks.norm_sub_eq_imaginary (hz.trans center_on_line.symm)

/-- No extra analytic estimate, root record, count or RH assumption is supplied.
This is a composition of SOURCE CANDIDATES, not executed kernel acceptance. -/
theorem unique_simple_critical_point :
    ∃ z : ZeroPoint,
      ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      multiplicity z = 1 ∧ z.1.re = (1 / 2 : ℝ) ∧
      ∀ v : ZeroPoint, ‖v.1 - toComplex center‖ ≤ (innerRadius : ℝ) → v = z := by
  obtain ⟨z, hz, hm, hu⟩ := EndpointBernoulliSource.unique_simple_point
  exact ⟨z, hz, hm, on_line_of_unique_disk center_on_line hz hu, hu⟩

/-- The negative member is the exact conjugate of the positive member, with a
DERIVED analytic multiplicity and transported uniqueness on its own disk. -/
theorem exists_simple_critical_pair :
    ∃ z : ZeroPoint,
      z ≠ conjugatePoint z ∧
      z.1.re = (1 / 2 : ℝ) ∧ (conjugatePoint z).1.re = (1 / 2 : ℝ) ∧
      multiplicity z = 1 ∧ multiplicity (conjugatePoint z) = 1 ∧
      ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      ‖(conjugatePoint z).1 - star (toComplex center)‖ ≤ (innerRadius : ℝ) ∧
      (14 < z.1.im ∧ z.1.im < 15) ∧
      (-15 < (conjugatePoint z).1.im ∧ (conjugatePoint z).1.im < -14) ∧
      (∀ v : ZeroPoint, ‖v.1 - toComplex center‖ ≤ (innerRadius : ℝ) → v = z) ∧
      (∀ v : ZeroPoint, ‖v.1 - star (toComplex center)‖ ≤ (innerRadius : ℝ) →
        v = conjugatePoint z) := by
  obtain ⟨z, hz, hm, hline, hu⟩ := unique_simple_critical_point
  have hp := positive_height hz
  have hnonzero : z.1.im ≠ 0 := ne_of_gt (lt_trans (by norm_num : (0 : ℝ) < 14) hp.1)
  refine ⟨z, ne_conjugate_of_im_ne_zero hnonzero, hline, ?_, hm,
    conjugate_simple hm, hz, conjugate_in_disk hz, hp, ?_, hu, unique_conjugate_disk hu⟩
  · change z.1.re = (1 / 2 : ℝ)
    exact hline
  · change -15 < -z.1.im ∧ -z.1.im < -14
    constructor <;> linarith [hp.1, hp.2]

/-- The canonical source includes BOTH imaginary signs and analytic weights.
This proves a lower bound only; no upper-count or head-exhaustion premise vanishes. -/
theorem canonical_count_at_fifteen_lower : 2 ≤ heightCount (15 : ℝ) := by
  obtain ⟨z, hz, _, _, _⟩ := unique_simple_critical_point
  have hp := positive_height hz
  have hpos : 0 < z.1.im := lt_trans (by norm_num : (0 : ℝ) < 14) hp.1
  have hh : height z ≤ 15 := by
    change |z.1.im| ≤ 15
    rw [abs_of_pos hpos]
    exact hp.2.le
  exact heightCount_ge_two (ne_of_gt hpos) hh

/-- All larger closed heads contain the two points too. No statement about the
positions, number or multiplicities of additional points is inferred. -/
theorem canonical_count_lower {T : ℝ} (hT : 15 ≤ T) : 2 ≤ heightCount T :=
  canonical_count_at_fifteen_lower.trans (heightCount_mono hT)

end GRWTSK.RiemannHypothesis.Checks.EndpointCriticalLine
