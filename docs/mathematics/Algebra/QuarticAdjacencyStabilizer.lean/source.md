# Complete source: GRWTSK.Algebra.QuarticAdjacencyStabilizer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9a019d75fb0f0999ef264c09684ec79577c8431` · SHA-256 `00464b4f389dbeb087b8985b4ab17ef70ad2ce1608923509f197c9cca6755795`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticAdjacencyIntermediateField

/-!
# Stabilizer subgroup of the adjacency-generated intermediate field

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The pointwise stabilizer is defined by a genuine subgroup of K-algebra
automorphisms. Its membership criterion is the previously stated finite
root-permutation V4 condition. The subgroup construction requires neither
normality nor an assertion about the image of the quartic Galois group.
-/

namespace GRWTSK.Algebra.QuarticAdjacencyStabilizer

open Polynomial
open GRWTSK.Algebra.QuarticAdjacencyIntermediateField
open GRWTSK.Algebra.QuarticGaloisMatching
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The genuine pointwise stabilizer of the generated intermediate field. -/
def adjacencyStabilizer (p : K[X])
    (e : QuarticRootEnumeration (L := L) p) :
    Subgroup (L ≃ₐ[K] L) where
  carrier := {φ | ∀ x : adjacencyField p e, φ x.1 = x.1}
  one_mem' := by
    intro x
    rfl
  mul_mem' := by
    intro φ ψ hφ hψ x
    change (φ * ψ) x.1 = x.1
    rw [AlgEquiv.mul_apply, hψ x, hφ x]
  inv_mem' := by
    intro φ hφ x
    apply φ.injective
    simpa using hφ x

/-- Subgroup membership is exactly the explicit V4 preimage condition;
it does not imply the ambient Galois group surjects onto S4. -/
theorem mem_adjacencyStabilizer_iff_double_transposition
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    φ ∈ adjacencyStabilizer p e ↔
      actualRootPerm p e hne he φ = 1 ∨
      actualRootPerm p e hne he φ = double01_23 ∨
      actualRootPerm p e hne he φ = double02_13 ∨
      actualRootPerm p e hne he φ = double03_12 := by
  change (∀ x : adjacencyField p e, φ x.1 = x.1) ↔ _
  exact fixes_adjacencyField_iff_double_transposition p e hne he φ

end
end GRWTSK.Algebra.QuarticAdjacencyStabilizer
```
