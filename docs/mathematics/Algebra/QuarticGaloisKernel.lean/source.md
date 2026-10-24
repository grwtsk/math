# Complete source: GRWTSK.Algebra.QuarticGaloisKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28422cda36006f07dedc5d74d3a5fc2d232f1d1c` · SHA-256 `aa3f5ae730477076ee8cf405ad516f920d8750c63009cd6d29a86c30ef0821d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticResolventActionKernel
import GRWTSK.Algebra.QuarticGaloisMatching

/-!
# Exact automorphism kernel of the quartic matching action

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The kernel of the induced action on the three matching classes is precisely
the preimage of the explicit four-element double-transposition kernel in S4.
This is a pullback statement for the actual root permutation representation,
not a classification of its image or a splitting-field Galois theorem.
-/

namespace GRWTSK.Algebra.QuarticGaloisKernel

open Polynomial
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency
open GRWTSK.Algebra.QuarticGaloisMatching
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- Kernel membership is the four-element finite condition on the root
permutation induced by an actual base-field automorphism. -/
theorem automorphism_matching_kernel_iff
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    φ ∈ MonoidHom.ker (actualMatchingPermutationHom p e hne he) ↔
      actualRootPerm p e hne he φ = 1 ∨
      actualRootPerm p e hne he φ = double01_23 ∨
      actualRootPerm p e hne he φ = double02_13 ∨
      actualRootPerm p e hne he φ = double03_12 := by
  change matchingActionHom (actualRootPerm p e hne he φ) = 1 ↔ _
  exact matchingActionHom_kernel_iff (actualRootPerm p e hne he φ)

/-- Fixing every actual adjacency value is exactly membership in the
kernel of the corresponding automorphism action on perfect matchings. -/
theorem automorphism_fixes_all_adjacencies_iff_kernel
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    (∀ m : PerfectMatching,
      φ (complementaryAdjacency e.r m) =
        complementaryAdjacency e.r m) ↔
      φ ∈ MonoidHom.ker (actualMatchingPermutationHom p e hne he) := by
  constructor
  · intro h
    change (actualMatchingPermutationHom p e hne he φ) = 1
    apply Equiv.ext
    intro m
    apply complementaryAdjacency_injective e.r he
    exact (actual_matching_adjacency_automorphism p e hne he φ m).symm.trans (h m)
  · intro h m
    have hm := congrArg (fun σ : Equiv.Perm PerfectMatching => σ m)
      (show actualMatchingPermutationHom p e hne he φ = 1 from h)
    rw [actual_matching_adjacency_automorphism p e hne he φ m]
    exact congrArg (complementaryAdjacency e.r) hm

/-- The fully explicit kernel criterion on actual adjacency values. -/
theorem automorphism_fixes_all_adjacencies_iff_double_transposition
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    (∀ m : PerfectMatching,
      φ (complementaryAdjacency e.r m) =
        complementaryAdjacency e.r m) ↔
      actualRootPerm p e hne he φ = 1 ∨
      actualRootPerm p e hne he φ = double01_23 ∨
      actualRootPerm p e hne he φ = double02_13 ∨
      actualRootPerm p e hne he φ = double03_12 := by
  rw [automorphism_fixes_all_adjacencies_iff_kernel p e hne he φ]
  exact automorphism_matching_kernel_iff p e hne he φ

end
end GRWTSK.Algebra.QuarticGaloisKernel
```
