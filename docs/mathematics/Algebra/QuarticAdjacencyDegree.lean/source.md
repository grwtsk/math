# Complete source: GRWTSK.Algebra.QuarticAdjacencyDegree

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1957aa9cdc7b2257bda0c228082928e191bad66b` · SHA-256 `456a2ef90432061548afea4a2563c0281b4179455c20895fc23e9291a177062f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticStabilizerOrder

/-!
# Relative degree of the quartic adjacency-generated field

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This combines the genuine finite-Galois fixed-field correspondence with
the actual root-action image intersection, without replacing the latter
by the full S₄. Exact degree-four, separability and splitting field
hypotheses supply the root enumeration, its injectivity and generation.
No quartic irreducibility, resolvent irreducibility, or S₄-image claim.
-/

namespace GRWTSK.Algebra.QuarticAdjacencyDegree

open Polynomial
open GRWTSK.Algebra.QuarticStabilizerOrder
open GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence
open GRWTSK.Algebra.QuarticRootFaithfulness
open GRWTSK.Algebra.QuarticSplittingFaithfulness
open GRWTSK.Algebra.QuarticGaloisMatching
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- Exact relative degree, counting only automorphisms whose root
permutations lie in the genuine Klein intersection. -/
theorem adjacencyField_relative_degree
    [FiniteDimensional K L] [IsGalois K L]
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (hgen : RootsGenerate p e) :
    Module.finrank (GRWTSK.Algebra.QuarticAdjacencyIntermediateField.adjacencyField p e) L =
      Nat.card (rootImageKleinIntersection p e hne he) := by
  rw [finrank_adjacencyField_eq_card_stabilizer p e]
  exact card_stabilizer_eq_card_image_intersection p e hne he hgen

/-- In the actual splitting field, separability and degree four
discharge the injectivity, generation and nonzero hypotheses. -/
theorem adjacencyField_relative_degree_of_splitting
    [FiniteDimensional K L] [IsGalois K L]
    (p : K[X]) [IsSplittingField K L p] (hdegree : p.natDegree = 4) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    Module.finrank (GRWTSK.Algebra.QuarticAdjacencyIntermediateField.adjacencyField p e) L =
      Nat.card (rootImageKleinIntersection p e
        (by intro h; simp [h] at hdegree)
        (enumeration_injective_of_separable p hsep e)) := by
  have hne : p ≠ 0 := by
    intro h
    simp [h] at hdegree
  have he := enumeration_injective_of_separable p hsep e
  exact adjacencyField_relative_degree p e hne he
    (rootsGenerate_of_isSplittingField p e hne)

end
end GRWTSK.Algebra.QuarticAdjacencyDegree
```
