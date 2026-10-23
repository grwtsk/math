import GRWTSK.Algebra.QuarticMatchingWeight

/-!
# Adjacency weights indexed by genuine perfect matchings

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Matching weights and their complements in the second elementary symmetric
expression are defined for every commutative ring. When four roots are
pairwise distinct in a field, the three complements are injectively indexed
by the three perfect matchings. There is no injectivity claim for repeated
roots. The permutation covariance uses a relabelled root function and
must not be confused with a canonical choice of root ordering.
-/

namespace GRWTSK.Algebra.QuarticMatchingAdjacency

open Polynomial
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingWeight
open GRWTSK.Algebra.PolygonalQuarticDescent

noncomputable section
variable {R : Type*} [CommRing R]

def complementaryAdjacency (r : Fin 4 → R) (m : PerfectMatching) : R :=
  eTwo (r 0) (r 1) (r 2) (r 3) - matchingWeight r m.1

private def first : PerfectMatching := ⟨matching01_23, by decide⟩
private def second : PerfectMatching := ⟨matching02_13, by decide⟩
private def third : PerfectMatching := ⟨matching03_12, by decide⟩

theorem adjacency_first (a b c d : R) :
    complementaryAdjacency ![a,b,c,d] first = adjacencyOne a b c d := by
  simp [complementaryAdjacency, first, adjacencyOne, matchingWeight_first]

theorem adjacency_second (a b c d : R) :
    complementaryAdjacency ![a,b,c,d] second = adjacencyTwo a b c d := by
  simp [complementaryAdjacency, second, adjacencyTwo, matchingWeight_second]

theorem adjacency_third (a b c d : R) :
    complementaryAdjacency ![a,b,c,d] third = adjacencyThree a b c d := by
  simp [complementaryAdjacency, third, adjacencyThree, matchingWeight_third]

/-- An arbitrary permutation preserves the second elementary symmetric
expression, in any commutative ring. -/
theorem eTwo_permutation (r : Fin 4 → R) (σ : Equiv.Perm (Fin 4)) :
    eTwo (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)) =
      eTwo (r 0) (r 1) (r 2) (r 3) := by
  have hprod :
      quarticFromVieta (eOne (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)))
        (eTwo (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)))
        (eThree (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)))
        (eFour (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3))) =
      quarticFromVieta (eOne (r 0) (r 1) (r 2) (r 3))
        (eTwo (r 0) (r 1) (r 2) (r 3))
        (eThree (r 0) (r 1) (r 2) (r 3))
        (eFour (r 0) (r 1) (r 2) (r 3)) := by
    rw [← four_linear_factors_vieta, ← four_linear_factors_vieta]
    simpa only [Fin.prod_univ_four] using
      Equiv.prod_comp σ (fun i : Fin 4 => Polynomial.X - Polynomial.C (r i))
  have hc := congrArg (fun p : R[X] => p.coeff 2) hprod
  simpa [quarticFromVieta, Polynomial.coeff_add, Polynomial.coeff_sub,
    Polynomial.coeff_X_pow] using hc

theorem complementaryAdjacency_relabel (r : Fin 4 → R)
    (σ : Equiv.Perm (Fin 4)) (m : PerfectMatching) :
    complementaryAdjacency r (matchingPerm σ m) =
      complementaryAdjacency (fun i => r (σ i)) m := by
  simp only [complementaryAdjacency, matchingPerm]
  rw [matchingWeight_relabel, eTwo_permutation]

variable {F : Type*} [Field F]

/-- A perfect matching is uniquely recovered from its adjacency weight
when all four root labels are distinct. -/
theorem complementaryAdjacency_injective (r : Fin 4 → F)
    (hr : Function.Injective r) :
    Function.Injective (complementaryAdjacency r) := by
  intro x y hxy
  have h12 : adjacencyOne (r 0) (r 1) (r 2) (r 3) ≠
      adjacencyTwo (r 0) (r 1) (r 2) (r 3) :=
    (GRWTSK.Algebra.PolygonalQuarticSeparable.adjacency_values_pairwise_distinct
      (r 0) (r 1) (r 2) (r 3)
      (hr.ne (by decide)) (hr.ne (by decide)) (hr.ne (by decide))
      (hr.ne (by decide)) (hr.ne (by decide)) (hr.ne (by decide))).1
  have h13 : adjacencyOne (r 0) (r 1) (r 2) (r 3) ≠
      adjacencyThree (r 0) (r 1) (r 2) (r 3) :=
    (GRWTSK.Algebra.PolygonalQuarticSeparable.adjacency_values_pairwise_distinct
      (r 0) (r 1) (r 2) (r 3)
      (hr.ne (by decide)) (hr.ne (by decide)) (hr.ne (by decide))
      (hr.ne (by decide)) (hr.ne (by decide)) (hr.ne (by decide))).2.1
  have h23 : adjacencyTwo (r 0) (r 1) (r 2) (r 3) ≠
      adjacencyThree (r 0) (r 1) (r 2) (r 3) :=
    (GRWTSK.Algebra.PolygonalQuarticSeparable.adjacency_values_pairwise_distinct
      (r 0) (r 1) (r 2) (r 3)
      (hr.ne (by decide)) (hr.ne (by decide)) (hr.ne (by decide))
      (hr.ne (by decide)) (hr.ne (by decide)) (hr.ne (by decide))).2.2
  have hall : ∀ m : PerfectMatching, m = first ∨ m = second ∨ m = third := by
    intro m
    rcases Finset.mem_insert.mp m.2 with h | h
    · exact Or.inl (Subtype.ext h)
    rcases Finset.mem_insert.mp h with h | h
    · exact Or.inr (Or.inl (Subtype.ext h))
    · exact Or.inr (Or.inr (Subtype.ext (Finset.mem_singleton.mp h)))
  rcases hall x with rfl | rfl | rfl <;>
    rcases hall y with rfl | rfl | rfl
  all_goals simp_all [adjacency_first, adjacency_second, adjacency_third]


/-- Four distinct roots of an actual separable quartic give an injective
matching-to-adjacency-value map in the splitting extension. -/
theorem actual_quartic_complementaryAdjacency_injective
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    (p : K[X]) (hsep : p.Separable)
    (e : GRWTSK.Algebra.PolygonalQuarticSplitting.QuarticRootEnumeration (L := L) p) :
    Function.Injective (complementaryAdjacency e.r) :=
  complementaryAdjacency_injective e.r
    (GRWTSK.Algebra.PolygonalQuarticSplitting.enumeration_injective_of_separable p hsep e)

/-- Root relabeling permutes the three distinct adjacency values in
exact agreement with the genuine matching permutation action. -/
theorem actual_quartic_adjacency_equivariant
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    (p : K[X])
    (e : GRWTSK.Algebra.PolygonalQuarticSplitting.QuarticRootEnumeration (L := L) p)
    (σ : Equiv.Perm (Fin 4)) (m : PerfectMatching) :
    complementaryAdjacency e.r (matchingPerm σ m) =
      complementaryAdjacency (fun i => e.r (σ i)) m :=
  complementaryAdjacency_relabel e.r σ m

end
end GRWTSK.Algebra.QuarticMatchingAdjacency
