# Complete source: GRWTSK.Algebra.QuarticGaloisMatching

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecd3ff7d95dd0aa2176eb3717d52a1970ada73ff` · SHA-256 `071b39dc870ed14b26ca0ffa8e63c9c18f380b1010c5e7bc5e8713d1019387b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticRootLocusEnumeration

/-!
# Automorphism-to-root permutation and matching quotient

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The root-permutation homomorphism is constructed from the unique permutation
of the *actual* four roots, not from a proposed Galois-group classification.
Separability only supplies injectivity of the root enumeration. Composing with
the combinatorial matching action gives a homomorphism to permutations of the
three perfect matchings; this does not assert surjectivity for a particular
quartic.
-/

namespace GRWTSK.Algebra.QuarticGaloisMatching

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticRootLocusEnumeration
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The unique root permutation arising from a K-algebra automorphism. -/
def actualRootPerm (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) : Equiv.Perm (Fin 4) :=
  Classical.choose (exists_unique_root_permutation_of_rootLocus p e hne he φ)

theorem actualRootPerm_spec (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) (i : Fin 4) :
    e.r (actualRootPerm p e hne he φ i) = φ (e.r i) :=
  (Classical.choose_spec
    (exists_unique_root_permutation_of_rootLocus p e hne he φ)).1 i

/-- Root permutation respects composition by uniqueness on the actual
injective root enumeration. -/
def actualRootPermutationHom (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    (L ≃ₐ[K] L) →* Equiv.Perm (Fin 4) where
  toFun := actualRootPerm p e hne he
  map_one' := by
    ext i
    apply he
    simpa using actualRootPerm_spec p e hne he 1 i
  map_mul' φ ψ := by
    ext i
    apply he
    calc
      e.r (actualRootPerm p e hne he (φ * ψ) i) =
          (φ * ψ) (e.r i) := actualRootPerm_spec p e hne he (φ * ψ) i
      _ = φ (ψ (e.r i)) := rfl
      _ = e.r (actualRootPerm p e hne he φ
          (actualRootPerm p e hne he ψ i)) := by
            rw [actualRootPerm_spec, actualRootPerm_spec]

/-- The actual automorphism action on the three perfect matchings. -/
def actualMatchingPermutationHom (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    (L ≃ₐ[K] L) →* Equiv.Perm PerfectMatching :=
  matchingActionHom.comp (actualRootPermutationHom p e hne he)

/-- The finite matching action agrees with the algebra automorphism on
the actual adjacency weight, without an image or irreducibility claim. -/
theorem actual_matching_adjacency_automorphism
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) (m : PerfectMatching) :
    φ (complementaryAdjacency e.r m) =
      complementaryAdjacency e.r
        ((actualMatchingPermutationHom p e hne he φ) m) := by
  change φ (complementaryAdjacency e.r m) =
    complementaryAdjacency e.r (matchingPerm (actualRootPerm p e hne he φ) m)
  exact GRWTSK.Algebra.QuarticAutomorphismAction.adjacency_automorphism_compatible
    e.r φ (actualRootPerm p e hne he φ)
    (actualRootPerm_spec p e hne he φ) m

/-- The injectivity premise can be supplied by separability, and
nonzeroness by degree four, rather than new hypotheses. -/
def separableQuarticMatchingHom (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hdegree : p.natDegree = 4) (hsep : p.Separable) :
    (L ≃ₐ[K] L) →* Equiv.Perm PerfectMatching :=
  actualMatchingPermutationHom p e
    (by intro h; simp [h] at hdegree)
    (enumeration_injective_of_separable p hsep e)

end
end GRWTSK.Algebra.QuarticGaloisMatching
```
