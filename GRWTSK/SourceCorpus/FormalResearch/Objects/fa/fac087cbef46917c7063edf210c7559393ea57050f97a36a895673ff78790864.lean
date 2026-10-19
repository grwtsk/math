module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.SpecialFunctions.Bernstein
public import Mathlib.Data.Fin.Rev

/-!
# Bernstein coordinates for the Surface Bézier kernel

This module fixes the scalar conventions used by the rational Bézier layer.
It depends only on Mathlib's finite Bernstein theory and contains no braid,
tensor, prime, or GRH semantics.
-/

public section

namespace Surface.Core.Bezier

noncomputable section

open scoped BigOperators unitInterval

/-- The closed parameter interval used by every checked Bézier segment. -/
abbrev UnitInterval := Set.Icc (0 : ℝ) 1

/-- Reflection of the unit parameter interval. -/
@[surface_novel, expose]
def reverseParameter (t : UnitInterval) : UnitInterval :=
  ⟨1 - t.1, sub_nonneg.mpr t.2.2, by linarith [t.2.1]⟩

@[surface_novel, simp]
theorem reverseParameter_val (t : UnitInterval) :
    (reverseParameter t).1 = 1 - t.1 :=
  rfl

@[surface_novel, surface_published, simp]
theorem reverseParameter_reverse (t : UnitInterval) :
    reverseParameter (reverseParameter t) = t := by
  apply Subtype.ext
  simp [reverseParameter]

/-- The `i`th Bernstein basis polynomial of degree `degree`, exposed on `ℝ`.

Mathlib's native `bernstein` is a continuous map on the unit interval.  The
raw formula is convenient for exact reparameterization identities. -/
@[expose]
def bernstein (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) : ℝ :=
  (Nat.choose degree i.1 : ℝ) * t ^ i.1 * (1 - t) ^ (degree - i.1)

@[surface_adapter, surface_published, simp]
theorem bernstein_coe (degree : ℕ) (i : Fin (degree + 1))
    (t : UnitInterval) :
    bernstein degree i t.1 = _root_.bernstein degree i t := by
  rw [_root_.bernstein_apply]
  rfl

@[surface_novel, surface_published]
theorem bernstein_nonneg (degree : ℕ) (i : Fin (degree + 1))
    (t : UnitInterval) :
    0 ≤ bernstein degree i t.1 := by
  rw [bernstein_coe]
  exact _root_.bernstein_nonneg

@[surface_novel, surface_published, simp]
theorem sum_bernstein (degree : ℕ) (t : UnitInterval) :
    ∑ i : Fin (degree + 1), bernstein degree i t.1 = 1 := by
  simpa only [bernstein_coe] using _root_.bernstein.probability degree t

@[surface_novel, surface_published, simp]
theorem bernstein_zero (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 0 = if i = 0 then 1 else 0 := by
  by_cases hi : i = 0
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ 0 := fun h => hi (Fin.ext h)
    simp [bernstein, hi, hval]

@[surface_novel, surface_published, simp]
theorem bernstein_one (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 1 = if i = Fin.last degree then 1 else 0 := by
  by_cases hi : i = Fin.last degree
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ degree := fun h => hi (Fin.ext h)
    have hlt : i.1 < degree := lt_of_le_of_ne i.is_le hval
    have hsub : degree - i.1 ≠ 0 := Nat.ne_of_gt (Nat.sub_pos_of_lt hlt)
    simp [bernstein, hi, hsub]

/-- Bernstein coordinates reverse when the parameter is reflected. -/
@[surface_novel, surface_published]
theorem bernstein_rev (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) :
    bernstein degree i.rev t = bernstein degree i (1 - t) := by
  have hsum := i.add_rev_cast
  have hrev : i.rev.1 = degree - i.1 := by omega
  rw [bernstein, bernstein, hrev]
  rw [Nat.choose_symm i.is_le]
  rw [Nat.sub_sub_self i.is_le]
  ring

end

end Surface.Core.Bezier

end
