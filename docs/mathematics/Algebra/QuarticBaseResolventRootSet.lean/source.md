# Complete source: GRWTSK.Algebra.QuarticBaseResolventRootSet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37f2b2199747fb6435f853cfe49f8fff8691c13a` · SHA-256 `04b54cf376fd4e49bf261ee93d9c3a8dcce7245f283338ae5594968682c73677`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticBaseResolventMatching

/-!
# Exact root set of the mapped quartic cubic resolvent

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

For a monic quartic split in L, the base-K cubic resolvent mapped to L
is an explicit product of exactly three linear factors. Its root set is
therefore precisely the three adjacency values, equivalently the image
of all perfect matchings. This equality does not require separability;
a separable quartic makes the three values distinct.

No Galois-group image or irreducibility theorem is claimed.
-/

namespace GRWTSK.Algebra.QuarticBaseResolventRootSet

open Polynomial
open GRWTSK.Algebra.QuarticBaseResolvent
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- Every root of the mapped base cubic is one of its three explicit
linear-factor adjacency roots. -/
theorem mapped_resolvent_isRoot_iff
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 +
      C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p) (x : L) :
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot x ↔
      x = adjacencyOne (e.r 0) (e.r 1) (e.r 2) (e.r 3) ∨
      x = adjacencyTwo (e.r 0) (e.r 1) (e.r 2) (e.r 3) ∨
      x = adjacencyThree (e.r 0) (e.r 1) (e.r 2) (e.r 3) := by
  rw [← actual_quartic_base_resolvent p A B C₀ D hp hs hm e]
  simp [adjacencyResolventFromRoots, Polynomial.IsRoot.def,
    Polynomial.eval_mul, Polynomial.eval_sub,
    Polynomial.eval_X, Polynomial.eval_C, mul_eq_zero, sub_eq_zero]

/-- The actual root locus of the cubic equals the range of the
three matching-indexed adjacency values. -/
theorem mapped_resolvent_rootSet_eq_matching_range
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 +
      C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p) :
    {x : L | ((baseAdjacencyResolvent A B C₀ D).map
      (algebraMap K L)).IsRoot x} =
      Set.range (complementaryAdjacency e.r) := by
  ext x
  rw [mapped_resolvent_isRoot_iff p A B C₀ D hp hs hm e x]
  constructor
  · rintro (h | h | h)
    · exact ⟨⟨matching01_23, by decide⟩, by
        simpa [GRWTSK.Algebra.QuarticMatchingAdjacency.complementaryAdjacency,
          matchingWeight, matching01_23, pair, adjacencyOne, qOne] using h.symm⟩
    · exact ⟨⟨matching02_13, by decide⟩, by
        simpa [GRWTSK.Algebra.QuarticMatchingAdjacency.complementaryAdjacency,
          matchingWeight, matching02_13, pair, adjacencyTwo, qTwo] using h.symm⟩
    · exact ⟨⟨matching03_12, by decide⟩, by
        simpa [GRWTSK.Algebra.QuarticMatchingAdjacency.complementaryAdjacency,
          matchingWeight, matching03_12, pair, adjacencyThree, qThree] using h.symm⟩
  · rintro ⟨m, rfl⟩
    have h := GRWTSK.Algebra.QuarticBaseResolventMatching.matching_value_is_resolvent_root
      p A B C₀ D hp hs hm e m
    exact (mapped_resolvent_isRoot_iff p A B C₀ D hp hs hm e
      (complementaryAdjacency e.r m)).mp h

end
end GRWTSK.Algebra.QuarticBaseResolventRootSet
```
