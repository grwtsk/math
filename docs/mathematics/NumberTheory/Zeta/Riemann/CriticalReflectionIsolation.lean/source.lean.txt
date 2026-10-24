/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Tactic

set_option autoImplicit false

open scoped ComplexConjugate

/-!
# Critical-line rigidity from local isolation of actual zeta zeros

This is a root-level route, not another representation of the Gram window.
The existing functional-equation theorem transports an ACTUAL nontrivial zeta
zero to its critical reflection. Uniqueness can identify those zeros only when
BOTH lie in the same uniqueness region. A disk centered exactly on Re = 1/2 is
reflection-stable; an arbitrary small disk around an off-line point is not.

For the fixed-inverse map z - a * riemannZeta z, both zeros are fixed points.
A pairwise Lipschitz bound with q < 1 therefore forces their equality. The
all-disk derivative adapter is a sufficient analytic supplier of that bound;
no samples, residual-smallness claim, fixed-point existence theorem, self-map
premise, or choice of an infinite zero family is substituted for it.

The local zero-packet adapter preserves a supplied location estimate and
uniqueness. Its shape matches the local Newton supplier's existential output;
that supplier is not imported across branches. Its existence/enclosure and
whole-disk analytic premises are not constructed here. The bounded-height
consumer separately requires COMPLETE zero coverage, not a finite list of
observed zeros. No certified disk or all-height coverage is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported choice dependencies unaudited.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation

open GRWTSK.RiemannHypothesis
open Set Metric

/-- Equality with the actual critical reflection is exactly the line condition. -/
theorem reflection_fixed_iff (s : ℂ) :
    criticalReflection s = s ↔ s.re = 1 / 2 := by
  constructor
  · intro fixed
    have realEquality := congrArg Complex.re fixed
    simp [criticalReflection] at realEquality
    linarith
  · intro onLine
    apply Complex.ext <;> norm_num [criticalReflection, onLine]

/-- Reflection is an isometry; its minus sign must not be replaced by averaging. -/
theorem reflection_norm_sub (s c : ℂ) :
    ‖criticalReflection s - criticalReflection c‖ = ‖s - c‖ := by
  have identity : criticalReflection s - criticalReflection c = -conj (s - c) := by
    simp [criticalReflection]
  rw [identity, norm_neg, Complex.norm_conj]

/-- Exact centering, not merely intersection with the line, makes this disk invariant. -/
theorem reflection_mem_centered_closedBall (c s : ℂ) (r : ℝ)
    (centerOnLine : c.re = 1 / 2) (member : s ∈ closedBall c r) :
    criticalReflection s ∈ closedBall c r := by
  have centerFixed := (reflection_fixed_iff c).mpr centerOnLine
  rw [mem_closedBall, dist_eq_norm] at member ⊢
  calc
    ‖criticalReflection s - c‖ = ‖criticalReflection s - criticalReflection c‖ := by
      rw [centerFixed]
    _ = ‖s - c‖ := reflection_norm_sub s c
    _ ≤ r := member

/-- The functional equation supplies the reflected ZERO, while the region supplies membership.
The local uniqueness premise is about actual zeta values, not a surrogate function. -/
theorem critical_line_of_reflection_stable_unique (region : Set ℂ) (s : ℂ)
    (zero : NontrivialZetaZero s) (member : s ∈ region)
    (stable : ∀ z ∈ region, criticalReflection z ∈ region)
    (unique : ∀ z ∈ region, riemannZeta z = 0 → z = s) : s.re = 1 / 2 := by
  have reflectedZero : riemannZeta (criticalReflection s) = 0 := zero.critical_reflection.1
  exact (reflection_fixed_iff s).mp
    (unique (criticalReflection s) (stable s member) reflectedZero)

/-- A local Newton uniqueness conclusion is usable on an exactly centered disk. -/
theorem critical_line_of_centered_unique_zero (c s : ℂ) (r : ℝ)
    (centerOnLine : c.re = 1 / 2) (zero : NontrivialZetaZero s)
    (member : s ∈ closedBall c r)
    (unique : ∀ z ∈ closedBall c r, riemannZeta z = 0 → z = s) : s.re = 1 / 2 := by
  exact critical_line_of_reflection_stable_unique (closedBall c r) s zero member
    (fun z hz => reflection_mem_centered_closedBall c z r centerOnLine hz) unique

/-- An actual off-line pair forces every correction-map Lipschitz bound on that pair to be >= 1.
No nonzero-inverse premise is needed: this concerns already witnessed zeros, not existence. -/
theorem off_line_pair_rate_barrier (s a : ℂ) (q : ℝ)
    (zero : NontrivialZetaZero s) (offLine : s.re ≠ 1 / 2)
    (pairBound :
      ‖(s - a * riemannZeta s) -
        (criticalReflection s - a * riemannZeta (criticalReflection s))‖ ≤
          q * ‖s - criticalReflection s‖) : 1 ≤ q := by
  have reflectedZero : riemannZeta (criticalReflection s) = 0 := zero.critical_reflection.1
  have distinct : s - criticalReflection s ≠ 0 := by
    intro equal
    exact offLine ((reflection_fixed_iff s).mp (sub_eq_zero.mp equal).symm)
  have distancePositive : 0 < ‖s - criticalReflection s‖ := norm_pos_iff.mpr distinct
  have obstruction : ‖s - criticalReflection s‖ ≤ q * ‖s - criticalReflection s‖ := by
    simpa only [zero.1, reflectedZero, mul_zero, sub_zero] using pairBound
  by_contra notLarge
  have rateStrict : q < 1 := lt_of_not_ge notLarge
  have strict := mul_lt_mul_of_pos_right rateStrict distancePositive
  nlinarith

/-- Whole-disk derivative control supplies the pair estimate for the ACTUAL zeta correction.
No fixed-point selection or disk self-map theorem is needed for this exclusion implication. -/
theorem critical_line_of_derivative_contraction (c s a : ℂ) (r q : ℝ)
    (centerOnLine : c.re = 1 / 2) (zero : NontrivialZetaZero s)
    (member : s ∈ closedBall c r) (rateStrict : q < 1)
    (differentiable : ∀ z ∈ closedBall c r, DifferentiableAt ℂ riemannZeta z)
    (derivativeBound : ∀ z ∈ closedBall c r, ‖1 - a * deriv riemannZeta z‖ ≤ q) :
    s.re = 1 / 2 := by
  have reflectedMember := reflection_mem_centered_closedBall c s r centerOnLine member
  have derivative (z : ℂ) (hz : z ∈ closedBall c r) :
      HasDerivWithinAt (fun w : ℂ => w - a * riemannZeta w)
        (1 - a * deriv riemannZeta z) (closedBall c r) z :=
    ((hasDerivAt_id z).sub ((differentiable z hz).hasDerivAt.const_mul a)).hasDerivWithinAt
  have pairBound :
      ‖(s - a * riemannZeta s) -
        (criticalReflection s - a * riemannZeta (criticalReflection s))‖ ≤
          q * ‖s - criticalReflection s‖ :=
    (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
      derivative derivativeBound reflectedMember member
  by_contra offLine
  exact (not_le_of_gt rateStrict) (off_line_pair_rate_barrier s a q zero offLine pairBound)

/-- A small centered disk lies in the open strip, so a witnessed zero retains all RH exclusions.
The radius restriction is needed here for the domain adapter, not for reflection invariance. -/
theorem nontrivial_of_small_centered_disk (c s : ℂ) (r : ℝ)
    (centerOnLine : c.re = 1 / 2) (radiusSmall : r < 1 / 2)
    (member : s ∈ closedBall c r) (zero : riemannZeta s = 0) : NontrivialZetaZero s := by
  have distanceBound : ‖s - c‖ ≤ r := by simpa only [mem_closedBall, dist_eq_norm] using member
  have horizontal : |s.re - 1 / 2| ≤ r := by
    simpa only [Complex.sub_re, centerOnLine] using
      (Complex.abs_re_le_norm (s - c)).trans distanceBound
  have left : 0 < s.re := by have h := (abs_le.mp horizontal).1; linarith
  have right : s.re < 1 := by have h := (abs_le.mp horizontal).2; linarith
  refine ⟨zero, ?_, ?_⟩
  · rintro ⟨n, trivial⟩
    have realEquality := congrArg Complex.re trivial
    simp at realEquality
    have nonnegative : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    nlinarith
  · intro pole
    have realEquality : s.re = 1 := by rw [pole]; norm_num
    linarith

/-- Consume the existential output shape of the local Newton supplier without choosing a root family.
Existence, location, and uniqueness are preserved; the exact line equality is added. -/
theorem centered_zero_packet_on_line (c : ℂ) (r location : ℝ)
    (centerOnLine : c.re = 1 / 2) (radiusSmall : r < 1 / 2)
    (packet : ∃ s ∈ closedBall c r, riemannZeta s = 0 ∧ ‖s - c‖ ≤ location ∧
      ∀ z ∈ closedBall c r, riemannZeta z = 0 → z = s) :
    ∃ s ∈ closedBall c r, NontrivialZetaZero s ∧ s.re = 1 / 2 ∧ ‖s - c‖ ≤ location ∧
      ∀ z ∈ closedBall c r, riemannZeta z = 0 → z = s := by
  obtain ⟨s, member, zero, located, unique⟩ := packet
  have nontrivial := nontrivial_of_small_centered_disk c s r centerOnLine radiusSmall member zero
  exact ⟨s, member, nontrivial,
    critical_line_of_centered_unique_zero c s r centerOnLine nontrivial member unique,
    located, unique⟩

/-- Finite isolated packets establish a height result ONLY with independently proved complete coverage.
Existential elimination is local to the given zero; no global choice of certificates is made. -/
theorem rhThrough_of_centered_unique_cover (N count : ℕ)
    (center : Fin count → ℂ) (radius : Fin count → ℝ)
    (centersOnLine : ∀ i, (center i).re = 1 / 2)
    (unique : ∀ i, ∀ s ∈ closedBall (center i) (radius i), riemannZeta s = 0 →
      ∀ z ∈ closedBall (center i) (radius i), riemannZeta z = 0 → z = s)
    (coverage : ∀ s, NontrivialZetaZero s → |s.im| ≤ (N : ℝ) →
      ∃ i : Fin count, s ∈ closedBall (center i) (radius i)) : RHThrough N := by
  intro s zero height
  obtain ⟨i, member⟩ := coverage s zero height
  exact critical_line_of_centered_unique_zero (center i) s (radius i) (centersOnLine i)
    zero member (unique i s member zero.1)

/-- Two synthetic off-line points can occupy one centered disk; reflection stability alone is not uniqueness.
Neither point is asserted to be a zeta zero. -/
theorem reflection_without_uniqueness_fixture :
    criticalReflection (1 / 4 : ℂ) = (3 / 4 : ℂ) ∧
      (1 / 4 : ℂ) ≠ (3 / 4 : ℂ) ∧
      (1 / 4 : ℂ) ∈ closedBall (1 / 2 : ℂ) (1 / 4 : ℝ) ∧
      (3 / 4 : ℂ) ∈ closedBall (1 / 2 : ℂ) (1 / 4 : ℝ) := by
  norm_num [criticalReflection, mem_closedBall, dist_eq_norm]

/-- A singleton region can isolate an off-line point while excluding its reflected partner.
Uniqueness on an off-center disk cannot replace the reflection-membership proof. -/
theorem off_center_region_fixture :
    (1 / 4 : ℂ) ∈ closedBall (1 / 4 : ℂ) (0 : ℝ) ∧
      criticalReflection (1 / 4 : ℂ) ∉ closedBall (1 / 4 : ℂ) (0 : ℝ) := by
  norm_num [criticalReflection, mem_closedBall, dist_eq_norm]

/-- At q = 1 the distance inequality is compatible with a distinct reflected pair. -/
theorem nonstrict_rate_fixture :
    ‖(1 / 4 : ℂ) - criticalReflection (1 / 4 : ℂ)‖ ≤
      (1 : ℝ) * ‖(1 / 4 : ℂ) - criticalReflection (1 / 4 : ℂ)‖ ∧
      (1 / 4 : ℂ) ≠ criticalReflection (1 / 4 : ℂ) := by
  norm_num [criticalReflection]

end GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation
