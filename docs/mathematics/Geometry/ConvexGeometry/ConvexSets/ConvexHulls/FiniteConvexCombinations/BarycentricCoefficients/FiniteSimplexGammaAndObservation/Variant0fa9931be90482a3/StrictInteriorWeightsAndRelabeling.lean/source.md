# Complete source: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.StrictInteriorWeightsAndRelabeling

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd9305bbaa7bf19cee29b4c91e336a9b5b8b9f8b` · SHA-256 `eb87a72f3157a6ffd6725df05fc21da73f659ad42b22aaa6304d6acb14d6fc55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
StrictInteriorWeightsAndRelabeling — exact individually reviewed source
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

/- Whole strictly positive extension, CoeFun/ext/reindex; no surjectivity, geometry or existence law is invented. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.NormalizedWeightsAndRelabeling

/-!
# Finite simplex semantics

This module is the provider-neutral finite simplex layer used by the exact
Gamma--Dirichlet and spectral-transport developments.  A simplex point is not
an occupancy mask, ownership mask, or raster state; correspondence with those
runtime objects is stated separately.
-/

namespace BitMatrix.Probability

open scoped BigOperators

/-- The open simplex: every coordinate is strictly positive. -/
structure InteriorSimplexPoint (I : Type*) [Fintype I]
    extends SimplexPoint I where
  positive : ∀ i, 0 < weight i

namespace InteriorSimplexPoint

variable {I J : Type*} [Fintype I] [Fintype J]

instance instCoeFunInteriorSimplexPoint :
    CoeFun (InteriorSimplexPoint I) (fun _ => I → ℝ) :=
  ⟨fun point => point.weight⟩

@[ext]
theorem ext {left right : InteriorSimplexPoint I}
    (weights : ∀ i, left i = right i) : left = right := by
  cases left with
  | mk leftSimplex leftPositive =>
      cases right with
      | mk rightSimplex rightPositive =>
          have equality : leftSimplex = rightSimplex :=
            SimplexPoint.ext weights
          subst rightSimplex
          rfl

/-- Relabel an open-simplex point along an equivalence. -/
def reindex (equivalence : I ≃ J) (point : InteriorSimplexPoint I) :
    InteriorSimplexPoint J where
  toSimplexPoint := point.toSimplexPoint.reindex equivalence
  positive j := point.positive (equivalence.symm j)

@[simp]
theorem reindex_apply (equivalence : I ≃ J)
    (point : InteriorSimplexPoint I) (j : J) :
    reindex equivalence point j = point (equivalence.symm j) :=
  rfl

end InteriorSimplexPoint

end BitMatrix.Probability
```
