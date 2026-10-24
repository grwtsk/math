import GRWTSK.Algebra.QuarticResolventRootEquiv

/-!
# Exact kernel detection by the three quartic adjacency values

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

For a separable quartic, the matching-to-resolvent-root map is injective.
Consequently a root-label permutation fixes all three adjacency weights
exactly when it lies in the kernel of the finite matching action. This
proves a representation-theoretic comparison, not a classification of the
actual Galois image. The proof uses no characteristic restriction.
-/

namespace GRWTSK.Algebra.QuarticResolventActionKernel

open Polynomial
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency
open GRWTSK.Algebra.QuarticRootLocusEnumeration
open GRWTSK.Algebra.QuarticGaloisMatching
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {F : Type*} [Field F]

/-- Fixing all three distinct complementary adjacency weights is equivalent
to fixing all three abstract perfect matchings. -/
theorem fixes_adjacency_iff_matching_kernel
    (r : Fin 4 → F) (hr : Function.Injective r)
    (σ : Equiv.Perm (Fin 4)) :
    (∀ m : PerfectMatching,
      complementaryAdjacency r (matchingPerm σ m) =
        complementaryAdjacency r m) ↔
      matchingActionHom σ = 1 := by
  constructor
  · intro h
    apply Equiv.ext
    intro m
    apply complementaryAdjacency_injective r hr
    exact h m
  · intro h m
    have hm := congrArg (fun f : Equiv.Perm PerfectMatching => f m) h
    exact congrArg (complementaryAdjacency r) hm

/-- The exact finite kernel characterization, expressed in the values
of an injectively labelled quartic, not in merely formal partitions. -/
theorem fixes_adjacency_iff_double_transposition
    (r : Fin 4 → F) (hr : Function.Injective r)
    (σ : Equiv.Perm (Fin 4)) :
    (∀ m : PerfectMatching,
      complementaryAdjacency r (matchingPerm σ m) =
        complementaryAdjacency r m) ↔
      σ = 1 ∨ σ = double01_23 ∨
        σ = double02_13 ∨ σ = double03_12 := by
  rw [fixes_adjacency_iff_matching_kernel r hr]
  exact matchingActionHom_kernel_iff σ

/-- For an actual separable quartic, the previous criterion applies to
the genuine four-root enumeration in any splitting extension. -/
theorem actual_quartic_fixes_adjacency_iff_kernel
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    (p : K[X]) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p)
    (σ : Equiv.Perm (Fin 4)) :
    (∀ m : PerfectMatching,
      complementaryAdjacency e.r (matchingPerm σ m) =
        complementaryAdjacency e.r m) ↔
      σ = 1 ∨ σ = double01_23 ∨
        σ = double02_13 ∨ σ = double03_12 := by
  exact fixes_adjacency_iff_double_transposition e.r
    (enumeration_injective_of_separable p hsep e) σ

end
end GRWTSK.Algebra.QuarticResolventActionKernel
