# Complete source: GRWTSK.Algebra.QuarticAutomorphismAction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1afbb509e62b72b8e7344015f7d64c69b66f5f20` · SHA-256 `cec2df040fcb26b385e4fa2d12b5154a540a4e641b8c1006da38236ee83c30b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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


/-- Evaluation of a polynomial with coefficients fixed by an algebra
automorphism commutes with that automorphism. -/
theorem eval_mapped_algEquiv (p : K[X]) (φ : L ≃ₐ[K] L) (x : L) :
    φ ((p.map (algebraMap K L)).eval x) =
      (p.map (algebraMap K L)).eval (φ x) := by
  rw [← eval₂_at_apply, ← eval₂_at_apply]
  simp only [eval₂_map]
  exact (map_eval₂ φ.toRingHom (algebraMap K L) x p).trans (by
    simp)

/-- Every K-algebra automorphism preserves the zero set of the mapped
polynomial, without assuming separability. -/
theorem automorphism_preserves_quartic_root (p : K[X])
    (φ : L ≃ₐ[K] L) (x : L)
    (hx : (p.map (algebraMap K L)).IsRoot x) :
    (p.map (algebraMap K L)).IsRoot (φ x) := by
  rw [IsRoot.def] at hx ⊢
  rw [← eval_mapped_algEquiv p φ x, hx, map_zero]

/-- The automorphism image of every label of an actual root enumeration
is another root. This statement does not assume distinct roots. -/
theorem automorphism_maps_enumerated_roots (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (φ : L ≃ₐ[K] L) :
    ∀ i : Fin 4, (p.map (algebraMap K L)).IsRoot (φ (e.r i)) := by
  intro i
  apply automorphism_preserves_quartic_root p φ
  have hm : e.r i ∈ (p.map (algebraMap K L)).roots := by
    rw [e.roots_eq]
    fin_cases i <;> simp
  exact (mem_roots (by
    intro h
    have hh := congrArg Polynomial.natDegree h
    simp [e.roots_eq] at hh)).mp hm

end
end GRWTSK.Algebra.QuarticAutomorphismAction
```
