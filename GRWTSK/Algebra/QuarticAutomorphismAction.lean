import GRWTSK.Algebra.QuarticMatchingWeightEquiv

/-!
# Quartic root permutations induced by algebra automorphisms

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This module states the exact automorphism-to-root-permutation interface using
the already checked root-multiset enumeration. Distinctness supplies an inverse
on the finite root labels. No normality, surjectivity onto S₄, or Galois-group
classification is asserted.

The elementary field-automorphism covariance of matching weights is valid in
every characteristic. This source makes no claim that a repeated-root
matching-weight representation is faithful.
-/

namespace GRWTSK.Algebra.QuarticAutomorphismAction

open Polynomial
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingWeight
open GRWTSK.Algebra.QuarticMatchingAdjacency
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- A separable quartic root enumeration is injective. -/
theorem root_enumeration_injective (p : K[X])
    (hsep : p.Separable) (e : QuarticRootEnumeration (L := L) p) :
    Function.Injective e.r :=
  enumeration_injective_of_separable p hsep e

/-- The exact root-image condition for a field automorphism: the transformed
enumeration is again an enumeration of the very same mapped polynomial.
This is a transparent interface for the forthcoming AlgEquiv/map-roots proof. -/
def PreservesRootEnumeration (p : K[X])
    (e : QuarticRootEnumeration (L := L) p) (φ : L ≃ₐ[K] L) : Prop :=
  ∃ e' : QuarticRootEnumeration (L := L) p,
    ∀ i, e'.r i = φ (e.r i)

/-- Given a root-preservation proof, the induced permutation exists. -/
theorem exists_root_permutation (p : K[X])
    (e : QuarticRootEnumeration (L := L) p) (φ : L ≃ₐ[K] L)
    (hφ : PreservesRootEnumeration p e φ) :
    ∃ σ : Equiv.Perm (Fin 4), ∀ i, e.r (σ i) = φ (e.r i) := by
  obtain ⟨e', he'⟩ := hφ
  obtain ⟨σ, hσ⟩ := enumerations_related_by_permutation p e e'
  exact ⟨σ, fun i => (hσ i).trans (he' i)⟩

/-- Algebra automorphisms commute with the finite matching-weight
polynomial, whether or not the four root values are distinct. -/
theorem matchingWeight_algEquiv (r : Fin 4 → L)
    (φ : L ≃ₐ[K] L) (m : Finset (Finset (Fin 4))) :
    φ (matchingWeight r m) =
      matchingWeight (fun i => φ (r i)) m := by
  simp [matchingWeight, map_sum, map_prod]

/-- Algebra automorphisms commute with complementary adjacency weights,
without asserting any faithful action when roots repeat. -/
theorem complementaryAdjacency_algEquiv (r : Fin 4 → L)
    (φ : L ≃ₐ[K] L) (m : PerfectMatching) :
    φ (complementaryAdjacency r m) =
      complementaryAdjacency (fun i => φ (r i)) m := by
  simp [complementaryAdjacency, eTwo, matchingWeight_algEquiv, map_add,
    map_mul, map_sub]

/-- Algebraic covariance combined with the finite combinatorial action,
conditional only on the explicit root-permutation equation. -/
theorem adjacency_automorphism_compatible
    (r : Fin 4 → L) (φ : L ≃ₐ[K] L)
    (σ : Equiv.Perm (Fin 4))
    (hσ : ∀ i, r (σ i) = φ (r i)) (m : PerfectMatching) :
    φ (complementaryAdjacency r m) =
      complementaryAdjacency r (matchingPerm σ m) := by
  rw [complementaryAdjacency_algEquiv,
    complementaryAdjacency_relabel]
  congr 1
  funext i
  exact (hσ i).symm

end
end GRWTSK.Algebra.QuarticAutomorphismAction
