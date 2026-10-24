# Complete source: GRWTSK.Algebra.QuarticRootPermutation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05d06e83f90b1ba2e3a1d6160db9a7ae2971cd9b` · SHA-256 `78c736d3fa1b9230748319ce587e198d3c72d73c90369a6f451faf8e76f50577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticAutomorphismAction

/-!
# Finite root permutation representation of quartic automorphisms

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This source isolates the exact root-invariance supplier instead of assuming
that an automorphism of L acts transitively or that a Galois group is S₄.
The root-permutation homomorphism is conditional on a proof that each
automorphism permutes the enumerated roots. It is unique when the
enumeration is injective. Kernel and image are not classified here.
-/

namespace GRWTSK.Algebra.QuarticRootPermutation

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticAutomorphismAction

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- Root-preservation supplier, explicitly quantified over all
K-algebra automorphisms. This is a hypothesis, not an axiom. -/
def AllAutomorphismsPreserveRoots (p : K[X])
    (e : QuarticRootEnumeration (L := L) p) : Prop :=
  ∀ φ : L ≃ₐ[K] L, PreservesRootEnumeration p e φ

/-- Given injectivity, there is at most one permutation realizing a
specified algebra automorphism on the four root labels. -/
theorem root_permutation_unique (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) (σ τ : Equiv.Perm (Fin 4))
    (hσ : ∀ i, e.r (σ i) = φ (e.r i))
    (hτ : ∀ i, e.r (τ i) = φ (e.r i)) : σ = τ := by
  ext i
  apply he
  exact (hσ i).trans (hτ i).symm

/-- The permutation supplied by each algebra automorphism, with unique
choice justified by distinctness of the enumerated roots. -/
def rootPerm (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (he : Function.Injective e.r)
    (hp : AllAutomorphismsPreserveRoots p e)
    (φ : L ≃ₐ[K] L) : Equiv.Perm (Fin 4) :=
  Classical.choose (exists_root_permutation p e φ (hp φ))

theorem rootPerm_spec (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (he : Function.Injective e.r)
    (hp : AllAutomorphismsPreserveRoots p e)
    (φ : L ≃ₐ[K] L) (i : Fin 4) :
    e.r (rootPerm p e he hp φ i) = φ (e.r i) :=
  (Classical.choose_spec (exists_root_permutation p e φ (hp φ))) i

/-- Actual group homomorphism to S₄. All algebraic identities follow
from uniqueness; only root-preservation is a separate supplier. -/
def rootPermutationHom (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (he : Function.Injective e.r)
    (hp : AllAutomorphismsPreserveRoots p e) :
    (L ≃ₐ[K] L) →* Equiv.Perm (Fin 4) where
  toFun := rootPerm p e he hp
  map_one' := by
    apply root_permutation_unique p e he 1
    · intro i
      exact rootPerm_spec p e he hp 1 i
    · intro i
      simp
  map_mul' φ ψ := by
    apply root_permutation_unique p e he (φ * ψ)
    · intro i
      exact rootPerm_spec p e he hp (φ * ψ) i
    · intro i
      change e.r (rootPerm p e he hp φ (rootPerm p e he hp ψ i)) =
        (φ * ψ) (e.r i)
      rw [rootPerm_spec, rootPerm_spec]
      rfl

end
end GRWTSK.Algebra.QuarticRootPermutation
```
