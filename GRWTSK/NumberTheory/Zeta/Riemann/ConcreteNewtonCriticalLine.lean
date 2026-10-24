/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation

set_option autoImplicit false

/-!
# Exact critical-line geometry for the concrete Newton packet

This module connects the numerical supplier's ORIGINAL SourceAcceptance and
local-zero conclusion to the reflection-isolation result. The center, radius,
claimed value/slope fields, returned errors, schedules and acceptance predicate
are imported without replacement. No duplicate slope evaluator or fresh
center-enclosure hypothesis is introduced.

The supplier concludes uniqueness among canonical ZeroPoint values. The
reflection adapter works at that exact scope: the functional equation produces
another ZeroPoint, and the exactly line-centered disk contains it. Uniqueness
then gives equality with the original point. No extension of uniqueness to
unrelated functions, no projection of a proposed zero and no global root choice
is used. An additional radius<1/2 premise is unnecessary for this adapter,
because the canonical subtype already includes the nontrivial-zero exclusions.

SourceAcceptance remains an OPEN mathematical premise. Small rational Newton
checks, an externally computed transcript and an exact center are not substitutes
for it. The conclusion is local to one disk; neither first-zero ordering, complete
height coverage, universal simplicity nor RH follows. The exact rational height
interval below is obtained from the ORIGINAL radius, not a tightened estimate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No execution or hold release.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonCriticalLine

open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation
open CanonicalZeroDivisor
open Set Metric

noncomputable section

/-- Use precisely the canonical-zero uniqueness supplied by the numerical pathway.
The reflected point retains the same source zero predicate and disk membership. -/
theorem zeroPoint_on_line_of_centered_unique (c : ℂ) (r : ℝ) (z : ZeroPoint)
    (centerOnLine : c.re = 1 / 2) (located : ‖z.1 - c‖ ≤ r)
    (unique : ∀ w : ZeroPoint, ‖w.1 - c‖ ≤ r → w = z) : z.1.re = 1 / 2 := by
  let reflected : ZeroPoint := ⟨criticalReflection z.1, z.2.critical_reflection⟩
  have member : z.1 ∈ closedBall c r := by
    simpa only [mem_closedBall, dist_eq_norm] using located
  have reflectedMember := reflection_mem_centered_closedBall c z.1 r centerOnLine member
  have reflectedLocated : ‖reflected.1 - c‖ ≤ r := by
    simpa only [reflected, mem_closedBall, dist_eq_norm] using reflectedMember
  have equal : reflected = z := unique reflected reflectedLocated
  have fixed : criticalReflection z.1 = z.1 := congrArg Subtype.val equal
  exact (reflection_fixed_iff z.1).mp fixed

/-- Exact centering is proved from the inherited rational record, not a decimal display. -/
theorem concrete_center_on_line :
    (QComplex.embed ConcreteNewtonPacket.center).re = 1 / 2 := by
  norm_num [QComplex.embed, ConcreteNewtonPacket.center]

/-- All original local conclusions survive; only exact critical-line equality is added.
The ORIGINAL source-acceptance equality remains a premise, not a new axiom or a weaker check. -/
theorem local_zero_on_line_of_source_acceptance
    (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ z : ZeroPoint,
      ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (ConcreteNewtonPacket.newtonRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧ z.1.re = 1 / 2 ∧
      ∀ w : ZeroPoint,
        ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
          (ConcreteNewtonPacket.newtonRadius : ℝ) → w = z := by
  obtain ⟨z, located, derivativeNonzero, unique⟩ :=
    ConcreteNewtonPacket.local_zero_of_source_acceptance hsource
  exact ⟨z, located, derivativeNonzero,
    zeroPoint_on_line_of_centered_unique (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ) z concrete_center_on_line located unique,
    unique⟩

/-- Every canonical zero in this ONE disk equals the certified local witness.
There is no claim that the disk covers all zeros at this or lower heights. -/
theorem every_local_zero_on_line_of_source_acceptance
    (hsource : ConcreteNewtonPacket.SourceAcceptance) (w : ZeroPoint)
    (located : ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ)) : w.1.re = 1 / 2 := by
  obtain ⟨z, _, _, onLine, unique⟩ := local_zero_on_line_of_source_acceptance hsource
  simpa only [unique w located] using onLine

/-- Explicit local off-line exclusion preserves all three nontrivial-zero hypotheses. -/
theorem no_off_line_zero_in_concrete_disk
    (hsource : ConcreteNewtonPacket.SourceAcceptance) (s : ℂ)
    (zero : NontrivialZetaZero s)
    (located : ‖s - QComplex.embed ConcreteNewtonPacket.center‖ ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ)) (offLine : s.re ≠ 1 / 2) : False := by
  exact offLine (every_local_zero_on_line_of_source_acceptance hsource ⟨s, zero⟩ located)

/-- These rational endpoints retain the full 1/100000 radius around the inherited center.
This elementary location estimate is not a theorem of zero existence. -/
theorem imaginary_interval_of_location (s : ℂ)
    (located : ‖s - QComplex.embed ConcreteNewtonPacket.center‖ ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    (7067357571 / 500000000 : ℝ) ≤ s.im ∧
      s.im ≤ (7067367571 / 500000000 : ℝ) := by
  have vertical : |s.im - (QComplex.embed ConcreteNewtonPacket.center).im| ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    simpa only [Complex.sub_im] using
      (Complex.abs_im_le_norm (s - QComplex.embed ConcreteNewtonPacket.center)).trans located
  have bounds := abs_le.mp vertical
  norm_num [QComplex.embed, ConcreteNewtonPacket.center, ConcreteNewtonPacket.newtonRadius]
    at bounds
  constructor <;> linarith [bounds.1, bounds.2]

/-- The conditional witness has exact line coordinate, the original location and uniqueness,
and a rational height enclosure. No claim of being the first positive zero is made. -/
theorem local_zero_with_exact_geometry_of_source_acceptance
    (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ z : ZeroPoint, z.1.re = 1 / 2 ∧
      (7067357571 / 500000000 : ℝ) ≤ z.1.im ∧
      z.1.im ≤ (7067367571 / 500000000 : ℝ) ∧
      ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (ConcreteNewtonPacket.newtonRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint,
        ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
          (ConcreteNewtonPacket.newtonRadius : ℝ) → w = z := by
  obtain ⟨z, located, derivativeNonzero, onLine, unique⟩ :=
    local_zero_on_line_of_source_acceptance hsource
  have interval := imaginary_interval_of_location z.1 located
  exact ⟨z, onLine, interval.1, interval.2, located, derivativeNonzero, unique⟩

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonCriticalLine
