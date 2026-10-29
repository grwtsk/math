import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# One-dimensional elastic collision

Local attribution: grwtsk contributors.

The explicit collision map used in the 3Blue1Brown colliding-blocks sequence.
These are algebraic source proof candidates, not a collision-count theorem.
Source: Grant Sanderson, 2019,
https://www.3blue1brown.com/lessons/clacks-via-light/
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision

/-- Velocity of the first body after an elastic collision. -/
def first (m M u v : ℝ) : ℝ := ((m - M) * u + 2 * M * v) / (m + M)

/-- Velocity of the second body after an elastic collision. -/
def second (m M u v : ℝ) : ℝ := ((M - m) * v + 2 * m * u) / (m + M)

/-- The explicit update conserves total momentum. -/
theorem momentum (m M u v : ℝ) (h : m + M ≠ 0) :
    m * first m M u v + M * second m M u v = m * u + M * v := by
  unfold first second
  field_simp [h]
  <;> ring

/-- Twice the kinetic energy is conserved; no positivity is needed for this identity. -/
theorem twice_energy (m M u v : ℝ) (h : m + M ≠ 0) :
    m * (first m M u v) ^ 2 + M * (second m M u v) ^ 2 =
      m * u ^ 2 + M * v ^ 2 := by
  unfold first second
  field_simp [h]
  <;> ring

/-- A collision reverses relative velocity. This selects the physical update
rather than the unchanged solution of the two conservation equations. -/
theorem relative_velocity (m M u v : ℝ) (h : m + M ≠ 0) :
    first m M u v - second m M u v = -(u - v) := by
  unfold first second
  field_simp [h]
  <;> ring

/-- Repeating the same collision restores the first velocity. -/
theorem first_involution (m M u v : ℝ) (h : m + M ≠ 0) :
    first m M (first m M u v) (second m M u v) = u := by
  unfold first second
  field_simp [h]
  <;> ring

/-- Repeating the same collision restores the second velocity. -/
theorem second_involution (m M u v : ℝ) (h : m + M ≠ 0) :
    second m M (first m M u v) (second m M u v) = v := by
  unfold first second
  field_simp [h]
  <;> ring

/-- Equal nonzero masses exchange velocities, as in the lesson's boundary case. -/
theorem equal_mass_first (m u v : ℝ) (h : m + m ≠ 0) :
    first m m u v = v := by
  unfold first
  field_simp [h]
  <;> ring

theorem equal_mass_second (m u v : ℝ) (h : m + m ≠ 0) :
    second m m u v = u := by
  unfold second
  field_simp [h]
  <;> ring

/-- An ideal wall reverses velocity without changing kinetic energy. -/
theorem wall_twice_energy (m v : ℝ) : m * (-v) ^ 2 = m * v ^ 2 := by
  ring

/-- Mass-weighted velocity coordinates turn twice kinetic energy into a
Euclidean squared radius. Nonnegative masses are essential for this map. -/
theorem scaled_energy_eq (m M u v : ℝ) (hm : 0 ≤ m) (hM : 0 ≤ M) :
    (Real.sqrt m * u) ^ 2 + (Real.sqrt M * v) ^ 2 =
      m * u ^ 2 + M * v ^ 2 := by
  rw [mul_pow, mul_pow, Real.sq_sqrt hm, Real.sq_sqrt hM]

/-- The collision stays on the energy circle in mass-weighted velocity space.
This is the first representation bridge needed by the geometric count. -/
theorem scaled_energy_conserved (m M u v : ℝ)
    (hm : 0 ≤ m) (hM : 0 ≤ M) (h : m + M ≠ 0) :
    (Real.sqrt m * first m M u v) ^ 2 +
        (Real.sqrt M * second m M u v) ^ 2 =
      (Real.sqrt m * u) ^ 2 + (Real.sqrt M * v) ^ 2 := by
  rw [scaled_energy_eq m M _ _ hm hM, scaled_energy_eq m M u v hm hM]
  exact twice_energy m M u v h

end GRWTSK.Mechanics.Classical.ElasticCollision
