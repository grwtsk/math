import Mathlib.Algebra.CharP.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.Ring

/-!
# Ordinary binary characters in characteristic two

Local attribution: grwtsk contributors.
-/

namespace GRWTSK.HarmonicAnalysisOnEuclideanSpaces.BinaryCharacterObstruction

open scoped BigOperators

/-- A field of characteristic two has only the trivial multiplicative
character on a group of exponent dividing two. An additive binary group is
viewed through its multiplicative version. -/
theorem character_apply_eq_one {G F : Type*} [Monoid G] [Field F] [CharP F 2]
    (χ : G →* F) (g : G) (hg : g ^ 2 = 1) : χ g = 1 := by
  have hχ : χ g ^ 2 = 1 := by rw [← map_pow, hg, map_one]
  have htwo : (2 : F) = 0 := by exact_mod_cast CharP.cast_eq_zero F 2
  have hzero : (χ g - 1) * (χ g - 1) = 0 := calc
    _ = χ g ^ 2 - 2 * χ g + (1 : F) := by ring
    _ = 0 := by simp [hχ, htwo, one_add_one_eq_two]
  exact sub_eq_zero.mp (mul_self_eq_zero.mp hzero)

/-- Every ordinary Fourier coordinate on a finite binary group is the same
linear functional over a field of characteristic two. -/
theorem character_coordinate_eq_sum {G F : Type*} [Monoid G] [Fintype G]
    [Field F] [CharP F 2] (hG : ∀ g : G, g ^ 2 = 1)
    (χ : G →* F) (f : G → F) : ∑ g, χ g * f g = ∑ g, f g := by
  refine Finset.sum_congr rfl (fun g _ => ?_)
  rw [character_apply_eq_one χ g (hG g), one_mul]

end GRWTSK.HarmonicAnalysisOnEuclideanSpaces.BinaryCharacterObstruction
