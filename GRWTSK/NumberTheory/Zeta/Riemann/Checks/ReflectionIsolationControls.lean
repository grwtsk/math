/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry

set_option autoImplicit false

/-!
# Controls for local reflection isolation

Every point and predicate in this module is SYNTHETIC. None is asserted to be
an actual zeta zero. These controls refute missing logical premises, rather than
purporting to exhibit counterexamples to RH. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED. No new finite source count is defined here.
-/
namespace GRWTSK.RiemannHypothesis.Checks.ReflectionIsolationControls

noncomputable section

/-- A symmetric pair off the line, not an asserted pair of zeta zeros. -/
def leftPoint : ℂ := ⟨1 / 4, 14⟩
def middlePoint : ℂ := ⟨1 / 2, 14⟩
def rightPoint : ℂ := ⟨3 / 4, 14⟩

def syntheticSet (z : ℂ) : Prop :=
  z = leftPoint ∨ z = middlePoint ∨ z = rightPoint

theorem reflected_pair :
    criticalReflection leftPoint = rightPoint ∧
      criticalReflection rightPoint = leftPoint ∧
      leftPoint ≠ rightPoint := by
  refine ⟨?_, ?_, ?_⟩
  · apply Complex.ext <;> norm_num [criticalReflection, leftPoint, rightPoint]
  · apply Complex.ext <;> norm_num [criticalReflection, leftPoint, rightPoint]
  · intro h
    have hr := congrArg Complex.re h
    norm_num [leftPoint, rightPoint] at hr

/-- Squared distances agree, but neither member is a fixed point. -/
theorem symmetry_without_uniqueness :
    Complex.normSq (leftPoint - middlePoint) = (1 / 16 : ℝ) ∧
    Complex.normSq (rightPoint - middlePoint) = (1 / 16 : ℝ) ∧
    leftPoint.re ≠ (1 / 2 : ℝ) ∧ rightPoint.re ≠ (1 / 2 : ℝ) := by
  norm_num [Complex.normSq, leftPoint, middlePoint, rightPoint]

/-- The functional-equation reflection 1-z is NOT the line reflection 1-conj(z). -/
theorem reflections_are_different :
    criticalReflection middlePoint = middlePoint ∧ zeroReflect middlePoint ≠ middlePoint := by
  refine ⟨(ReflectionDisks.fixed_iff middlePoint).mpr (by norm_num [middlePoint]), ?_⟩
  intro h
  have hi := congrArg Complex.im h
  norm_num [zeroReflect, middlePoint] at hi

/-- Conjugation changes a positive-height center; it does not preserve that disk. -/
theorem conjugation_moves_center : star middlePoint ≠ middlePoint := by
  intro h
  have hi := congrArg Complex.im h
  norm_num [middlePoint] at hi

/-- A zero-radius disk is permitted by the geometric identities, but the center
condition remains necessary to make it reflection-invariant. -/
theorem off_line_center_not_fixed :
    ‖leftPoint - leftPoint‖ = 0 ∧ criticalReflection leftPoint ≠ leftPoint := by
  refine ⟨by simp, ?_⟩
  exact fun h => (by norm_num [leftPoint] : leftPoint.re ≠ (1 / 2 : ℝ))
    ((ReflectionDisks.fixed_iff leftPoint).mp h)

/-- Local uniqueness in an invariant disk can coexist with other off-line points
in the same symmetric ambient set. This is not a statement about zeta. -/
theorem local_isolation_does_not_exhaust :
    (∀ z, syntheticSet z → syntheticSet (criticalReflection z)) ∧
    (∀ z, syntheticSet z → ‖z - middlePoint‖ ≤ (1 / 8 : ℝ) → z = middlePoint) ∧
    syntheticSet leftPoint ∧ leftPoint.re ≠ (1 / 2 : ℝ) := by
  refine ⟨?_, ?_, Or.inl rfl, by norm_num [leftPoint]⟩
  · intro z hz
    rcases hz with rfl | rfl | rfl
    · exact Or.inr (Or.inr reflected_pair.1)
    · exact Or.inr (Or.inl reflections_are_different.1)
    · exact Or.inl reflected_pair.2.1
  · intro z hz hd
    rcases hz with rfl | rfl | rfl
    · have h := (Complex.abs_re_le_norm (leftPoint - middlePoint)).trans hd
      norm_num [Complex.sub_re, leftPoint, middlePoint] at h
    · rfl
    · have h := (Complex.abs_re_le_norm (rightPoint - middlePoint)).trans hd
      norm_num [Complex.sub_re, rightPoint, middlePoint] at h

/-- Two positively weighted found points need not be the complete source. -/
theorem lower_count_not_upper :
    (Finset.range 2 : Finset ℕ) ⊂ Finset.range 3 ∧
    2 ≤ (Finset.range 3 : Finset ℕ).card ∧
    ¬ (Finset.range 3 : Finset ℕ).card ≤ 2 := by decide

end
end GRWTSK.RiemannHypothesis.Checks.ReflectionIsolationControls
