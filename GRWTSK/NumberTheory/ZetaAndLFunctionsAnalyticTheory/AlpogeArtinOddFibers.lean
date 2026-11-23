import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Group.Equiv.Basic
import Mathlib.Tactic

/-! Exceptional-character sums on the fibers of the host's Artin map. -/

namespace GRWTSK.AlpogeArtinOddFibers

open scoped BigOperators

variable {U G : Type*} [Fintype U] [Group U] [Group G]

/-- A character nontrivial on the Artin kernel has zero correlation with
every weight determined by the Frobenius element. -/
theorem kernel_cancellation (A : U →* G) (χ : U →* ℝ) (f : G → ℝ)
    {k : U} (hk : A k = 1) (hn : χ k ≠ 1) :
    ∑ u : U, χ u * f (A u) = 0 := by
  have h := Equiv.sum_comp (Equiv.mulLeft k) (fun u : U => χ u * f (A u))
  change (∑ u : U, χ (k*u) * f (A (k*u))) = ∑ u : U, χ u * f (A u) at h
  simp only [map_mul, hk, one_mul, mul_assoc, ← Finset.mul_sum] at h
  exact (mul_eq_zero.mp (show (χ k - 1) * (∑ u : U, χ u * f (A u)) = 0 by linarith)).resolve_left
    (sub_ne_zero.mpr hn)

/-- A quadratic real character takes value one at any element killed by
an odd power. This applies even if the host has noncyclic odd part. -/
theorem quadratic_odd (χ : G →* ℝ) (hχ : ∀ g, χ g ^ 2 = 1)
    {g : G} {j : ℕ} (hg : g ^ (2*j+1) = 1) : χ g = 1 := by
  have h := congrArg χ hg
  rw [map_one, map_pow, pow_succ, pow_mul, hχ, one_pow, one_mul] at h
  exact h

end GRWTSK.AlpogeArtinOddFibers
