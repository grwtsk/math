# Complete source: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.NormalizedWeightsAndRelabeling

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc3285e3343c6540bf7154d42132b2e024d792fa` · SHA-256 `4c3ad97474e30d5e34c71f7c2631688fc323195abd23fba1a68c195e89e8c743`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NormalizedWeightsAndRelabeling — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1
Organized SHA-256: ccf47d3956196f4d9f9944369e945e333932ef69ba4c9c0271b045fa146b812e
PMD: 510.3.020.010.010.010.010 barycentric coefficients (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete nonnegative normalized weight record, CoeFun/ext and finite-equivalence relabeling laws, no extra inhabitation premise. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

/-!
# Finite simplex semantics

This module is the provider-neutral finite simplex layer used by the exact
Gamma--Dirichlet and spectral-transport developments.  A simplex point is not
an occupancy mask, ownership mask, or raster state; correspondence with those
runtime objects is stated separately.
-/

namespace BitMatrix.Probability

open scoped BigOperators

/-- A nonnegative normalized weight family on a finite index type. -/
structure SimplexPoint (I : Type*) [Fintype I] where
  weight : I → ℝ
  nonnegative : ∀ i, 0 ≤ weight i
  normalized : ∑ i, weight i = 1

namespace SimplexPoint

variable {I J : Type*} [Fintype I] [Fintype J]

instance instCoeFunSimplexPoint : CoeFun (SimplexPoint I) (fun _ => I → ℝ) :=
  ⟨SimplexPoint.weight⟩

@[ext]
theorem ext {left right : SimplexPoint I}
    (weights : ∀ i, left i = right i) : left = right := by
  cases left with
  | mk leftWeight leftNonnegative leftNormalized =>
      cases right with
      | mk rightWeight rightNonnegative rightNormalized =>
          have equality : leftWeight = rightWeight := funext weights
          subst rightWeight
          rfl

/-- Relabel a simplex point along a finite equivalence. -/
def reindex (equivalence : I ≃ J) (point : SimplexPoint I) : SimplexPoint J where
  weight j := point (equivalence.symm j)
  nonnegative j := point.nonnegative _
  normalized := by
    rw [Equiv.sum_comp equivalence.symm point.weight]
    exact point.normalized

@[simp]
theorem reindex_apply (equivalence : I ≃ J) (point : SimplexPoint I) (j : J) :
    reindex equivalence point j = point (equivalence.symm j) :=
  rfl

@[simp]
theorem reindex_refl (point : SimplexPoint I) :
    reindex (Equiv.refl I) point = point := by
  ext i
  rfl

@[simp]
theorem reindex_trans {K : Type*} [Fintype K]
    (left : I ≃ J) (right : J ≃ K) (point : SimplexPoint I) :
    reindex right (reindex left point) = reindex (left.trans right) point := by
  ext k
  rfl

end SimplexPoint
end BitMatrix.Probability
```
