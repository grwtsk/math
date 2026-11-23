import Mathlib.Topology.MetricSpace.Ultra.Basic
import Mathlib.Data.Fintype.Lattice
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.LinearAlgebra.Quotient.Basic

/-! # Weight spacing for cyclotomic class modules

A finite presentation bounds twisted coinvariants by those of a lifted
operator. A nearest evaluation point per root bounds the remaining distances.
-/

namespace GRWTSK.AlpogeSelmerWeightSpacing

/-- A surjective intertwiner transports the full relation subgroup for
specialization of the operator at a scalar. -/
theorem image_twisted_relations {R V M : Type*} [CommRing R]
    [AddCommGroup V] [AddCommGroup M] [Module R V] [Module R M]
    (π : V →ₗ[R] M) (hπ : Function.Surjective π) (A : V →ₗ[R] V) (G : M →ₗ[R] M)
    (hG : ∀ y, π (A y) = G (π y)) (a : R) :
    (LinearMap.range (A - a • LinearMap.id)).map π =
      LinearMap.range (G - a • LinearMap.id) := by
  ext x
  constructor
  · rintro ⟨_, ⟨y, rfl⟩, rfl⟩
    refine ⟨π y, ?_⟩
    simp [hG]
  · rintro ⟨y, rfl⟩
    obtain ⟨z, rfl⟩ := hπ y
    refine ⟨((A - a • LinearMap.id : V →ₗ[R] V) z), ⟨z, rfl⟩, ?_⟩
    simp [hG]

/-- For each root select one point from a nonempty finite sample. Measured
from every sample point, its distance to the selection bounds its distance
to the root from below. -/
theorem exists_nearest_controls {X ι κ : Type*} [PseudoMetricSpace X] [IsUltrametricDist X]
    (s : Finset ι) (hs : s.Nonempty) (point : ι → X) (root : κ → X) :
    ∃ pick : κ → ι, (∀ j, pick j ∈ s) ∧ ∀ j i, i ∈ s →
      dist (point i) (point (pick j)) ≤ dist (point i) (root j) := by
  classical
  have minima (j : κ) := s.exists_min_image (fun i => dist (root j) (point i)) hs
  choose pick hp hmin using minima
  refine ⟨pick, hp, ?_⟩
  intro j i hi
  apply (dist_triangle_max (point i) (root j) (point (pick j))).trans
  exact max_le le_rfl (by simpa [dist_comm (root j) (point i)] using hmin j i hi)

/-- The number of distinct discarded indices is bounded by the degree,
including repeated roots. -/
theorem exception_count {ι κ : Type*} [DecidableEq ι] (roots : Finset κ) (pick : κ → ι) :
    (roots.image pick).card ≤ roots.card := Finset.card_image_le

/-- Multiplication of the separate root-distance bounds gives the
corresponding bound for the absolute value of a monic evaluation. -/
theorem product_root_spacing {ι κ X : Type*} [PseudoMetricSpace X]
    (roots : Finset κ) (point : ι → X) (root : κ → X) (pick : κ → ι) (i : ι)
    (hc : ∀ j ∈ roots, dist (point i) (point (pick j)) ≤ dist (point i) (root j)) :
    ∏ j ∈ roots, dist (point i) (point (pick j)) ≤
      ∏ j ∈ roots, dist (point i) (root j) := by
  apply Finset.prod_le_prod₀
  · intro j _; exact dist_nonneg
  · exact hc

/-- The products of left and right index gaps around a selected index
divide the factorial of the full number of other indices. -/
theorem factorial_gap_divisibility (i n : ℕ) (hi : i ≤ n) :
    i.factorial * (n-i).factorial ∣ n.factorial := Nat.factorial_mul_factorial_dvd_factorial hi

end GRWTSK.AlpogeSelmerWeightSpacing
