/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderTransport
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.SpecialFunctions.Gamma.Deligne

set_option autoImplicit false

/-!
# Source-derived analytic multiplicity under critical reflection

Use the SAME riemannZeta, completedRiemannZeta, canonical ZeroPoint and finite
analytic multiplicity. The completed functional equation handles w -> 1-w;
actual conjugation of values handles w -> conj(w). The inverse Gamma factor is
entire and nonzero at the selected nontrivial zero. Its order contribution is
zero. Both completion poles are excluded before transferring analytic order.

The old conditional consumer and its preservation premise remain unchanged.
This module supplies that premise from analytic source identities, not from a
finite root list, numerical values, zero-set symmetry or a new axiom. It does
not supply any useful regional count bound, multiplicity value, root location,
complete cover, SourceAcceptance or all-height theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. All proof scripts are unelaborated.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderTransport
open Filter Set
open scoped Topology ComplexConjugate

noncomputable section

/-- The completed source is analytic at the selected zero. The actual poles
at zero and one are excluded by the unchanged nontrivial-zero predicate. -/
theorem completed_analyticAt_zeroPoint (z : ZeroPoint) :
    AnalyticAt ℂ completedRiemannZeta z.1 := by
  have left : AnalyticAt ℂ (fun w : ℂ => 1 / w) z.1 :=
    analyticAt_const.div analyticAt_id z.2.ne_zero
  have right : AnalyticAt ℂ (fun w : ℂ => 1 / (1 - w)) z.1 :=
    analyticAt_const.div (analyticAt_const.sub analyticAt_id)
      (sub_ne_zero.mpr (Ne.symm z.2.2.2))
  have expression := ((differentiable_completedZeta₀.analyticAt z.1).sub left).sub right
  exact expression.congr (Filter.Eventually.of_forall
    (fun w => (completedRiemannZeta_eq w).symm))

/-- Local equality to completion times a nonvanishing analytic factor preserves
order. A zero of the inverse Gamma factor would invalidate this step. -/
theorem zeta_order_eq_completed (z : ZeroPoint) :
    analyticOrderAt riemannZeta z.1 = analyticOrderAt completedRiemannZeta z.1 := by
  have inverseAnalytic : AnalyticAt ℂ (fun w => (Complex.Gammaℝ w)⁻¹) z.1 :=
    Complex.differentiable_Gammaℝ_inv.analyticAt z.1
  have inverseNonzero : (Complex.Gammaℝ z.1)⁻¹ ≠ 0 :=
    inv_ne_zero z.2.gamma_real_ne_zero
  have nonzeroNear : ∀ᶠ w in 𝓝 z.1, w ≠ (0 : ℂ) :=
    compl_singleton_mem_nhds z.2.ne_zero
  have localIdentity : riemannZeta =ᶠ[𝓝 z.1]
      (completedRiemannZeta * (fun w => (Complex.Gammaℝ w)⁻¹)) := by
    filter_upwards [nonzeroNear] with w hw
    simpa only [Pi.mul_apply, div_eq_mul_inv] using riemannZeta_def_of_ne_zero hw
  exact (analyticOrderAt_congr localIdentity).trans
    (order_mul_nonzero_right completedRiemannZeta (fun w => (Complex.Gammaℝ w)⁻¹)
      z.1 (completed_analyticAt_zeroPoint z) inverseAnalytic inverseNonzero)

/-- Functional-equation reflection preserves the full extended analytic order.
The coordinate derivative is -1; no derivative of zeta is assumed nonzero. -/
theorem zeta_order_one_sub (z : ZeroPoint) :
    analyticOrderAt riemannZeta (1 - z.1) = analyticOrderAt riemannZeta z.1 := by
  have equation : (completedRiemannZeta ∘ (fun w : ℂ => 1 - w)) =
      completedRiemannZeta := funext completedRiemannZeta_one_sub
  calc
    analyticOrderAt riemannZeta (1 - z.1) =
        analyticOrderAt completedRiemannZeta (1 - z.1) :=
      zeta_order_eq_completed ⟨zeroReflect z.1, z.2.reflect⟩
    _ = analyticOrderAt (completedRiemannZeta ∘ (fun w : ℂ => 1 - w)) z.1 :=
      (order_one_sub completedRiemannZeta z.1).symm
    _ = analyticOrderAt completedRiemannZeta z.1 := by rw [equation]
    _ = analyticOrderAt riemannZeta z.1 := (zeta_order_eq_completed z).symm

/-- Conjugation uses actual value equivariance and analytic germs, not just
transport of the equation zeta(z)=0. No simplicity restriction occurs. -/
theorem zeta_order_conjugate (z : ZeroPoint) :
    analyticOrderAt riemannZeta (conj z.1) = analyticOrderAt riemannZeta z.1 := by
  apply order_conjugate_of_equivariant riemannZeta z.1
  · exact fun w => riemannZeta_conj w
  · exact analyticAt_point z
  · exact analyticAt_point ⟨zeroConjugate z.1, z.2.conjugate⟩

/-- Compose the two source-derived transports at the actual reflected zero. -/
theorem zeta_order_critical_reflection (z : ZeroPoint) :
    analyticOrderAt riemannZeta (criticalReflection z.1) =
      analyticOrderAt riemannZeta z.1 := by
  calc
    analyticOrderAt riemannZeta (criticalReflection z.1) =
        analyticOrderAt riemannZeta (conj z.1) :=
      zeta_order_one_sub ⟨zeroConjugate z.1, z.2.conjugate⟩
    _ = analyticOrderAt riemannZeta z.1 := zeta_order_conjugate z

/-- This is the exact preservation equation requested by the OLD consumer.
CanonicalZeroDivisor already proves finite positive order before conversion. -/
theorem multiplicity_reflected (z : ZeroPoint) :
    multiplicity (reflected z) = multiplicity z := by
  change (analyticOrderAt riemannZeta (criticalReflection z.1)).toNat =
    (analyticOrderAt riemannZeta z.1).toNat
  exact congrArg (fun n : ℕ∞ => n.toNat) (zeta_order_critical_reflection z)

/-- A certified lower bound now transports without a separately supplied
multiplicity-equality premise. It is still a lower bound, not an exact value. -/
theorem lower_bound_reflected (z : ZeroPoint) (lower : ℕ)
    (bound : lower ≤ multiplicity z) : lower ≤ multiplicity (reflected z) := by
  rw [multiplicity_reflected]
  exact bound

/-- Supply the old preservation premise; retain membership, region stability,
the actual count upper bound and the STRICT threshold unchanged. -/
theorem critical_line_of_region_lower (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (lower upper : ℕ) (member : z ∈ regionHead T U)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (lowerBound : lower ≤ multiplicity z)
    (countBound : regionCount T U ≤ upper) (strict : upper < 2 * lower) :
    z.1.re = 1 / 2 :=
  critical_line_of_region_preserved_multiplicity T U z lower upper member stable
    (multiplicity_reflected z) lowerBound countBound strict

/-- Off-line points consume twice their actual finite analytic multiplicity.
This is a conditional obstruction, not a computed regional count. -/
theorem twice_multiplicity_le_regionCount_of_off_line
    (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (member : z ∈ regionHead T U) (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (offLine : z.1.re ≠ 1 / 2) : 2 * multiplicity z ≤ regionCount T U := by
  simpa only [multiplicity_reflected, two_mul] using
    off_line_pair_mass_le_regionCount T U z member stable offLine

/-- A bounded-height consumer still requires every-zero coverage and all count
certificates. The source theorem removes only the second multiplicity input. -/
theorem rhThrough_of_region_lower_cover (N count : ℕ)
    (region : Fin count → Set ℂ) (upper : Fin count → ℕ)
    (stable : ∀ i, ∀ s ∈ region i, criticalReflection s ∈ region i)
    (countBound : ∀ i, regionCount (N : ℝ) (region i) ≤ upper i)
    (coverage : ∀ z : ZeroPoint, height z ≤ (N : ℝ) →
      ∃ (i : Fin count) (lower : ℕ), z.1 ∈ region i ∧
        lower ≤ multiplicity z ∧ upper i < 2 * lower) : RHThrough N := by
  apply rhThrough_of_region_pair_cover N count region upper stable countBound
  intro z hz
  obtain ⟨i, lower, member, bound, strict⟩ := coverage z hz
  exact ⟨i, lower, lower, member, bound, lower_bound_reflected z lower bound,
    by simpa only [two_mul] using strict⟩

end
end GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier
