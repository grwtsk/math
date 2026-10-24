# Complete source: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.BarycentricMergeAndDependentWeights

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27ea0ad3cfbb2108a2f50aa6420717921ec0899f` · SHA-256 `815cc0695784d6c58074fc5e22eac1c7001fcdaee1e4a35d067503d0cea9d2a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BarycentricMergeAndDependentWeights — exact individually reviewed source
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

/- Whole barycentric mixture, arbitrary-label zero-mass merge and dependent-sum weight construction with every normalization proof. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

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

namespace SimplexPoint

variable {I J : Type*} [Fintype I] [Fintype J]

/-- Barycentric combination of simplex points. -/
def barycentric
    (outer : SimplexPoint I) (inner : I → SimplexPoint J) : SimplexPoint J where
  weight j := ∑ i, outer i * inner i j
  nonnegative j := Finset.sum_nonneg fun i _ =>
    mul_nonneg (outer.nonnegative i) ((inner i).nonnegative j)
  normalized := by
    calc
      (∑ j, ∑ i, outer i * inner i j) =
          ∑ i, ∑ j, outer i * inner i j := Finset.sum_comm
      _ = ∑ i, outer i * ∑ j, inner i j := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.mul_sum]
      _ = ∑ i, outer i := by simp [SimplexPoint.normalized]
      _ = 1 := outer.normalized

@[simp]
theorem barycentric_apply
    (outer : SimplexPoint I) (inner : I → SimplexPoint J) (j : J) :
    barycentric outer inner j = ∑ i, outer i * inner i j :=
  rfl

/-- Merge refined coordinates along a finite labeling map.  Surjectivity is
not needed for normalization: unused coarse coordinates simply receive zero
mass. -/
def merge [DecidableEq I] (label : J → I) (point : SimplexPoint J) :
    SimplexPoint I where
  weight i := ∑ j, if label j = i then point j else 0
  nonnegative i := Finset.sum_nonneg fun j _ => by
    split
    · exact point.nonnegative j
    · exact le_rfl
  normalized := by
    classical
    calc
      (∑ i, ∑ j, if label j = i then point j else 0) =
          ∑ j, ∑ i, if label j = i then point j else 0 := Finset.sum_comm
      _ = ∑ j, point j := by simp
      _ = 1 := point.normalized

@[simp]
theorem merge_apply [DecidableEq I]
    (label : J → I) (point : SimplexPoint J) (i : I) :
    merge label point i = ∑ j, if label j = i then point j else 0 :=
  rfl

/-- Hierarchical field/carrier weights on a dependent sum. -/
def hierarchical {Carrier : I → Type*} [∀ i, Fintype (Carrier i)]
    (field : SimplexPoint I)
    (within : ∀ i, SimplexPoint (Carrier i)) :
    SimplexPoint (Σ i, Carrier i) where
  weight site := field site.1 * within site.1 site.2
  nonnegative site :=
    mul_nonneg (field.nonnegative site.1) ((within site.1).nonnegative site.2)
  normalized := by
    rw [Fintype.sum_sigma]
    calc
      (∑ i, ∑ carrier, field i * within i carrier) =
          ∑ i, field i * ∑ carrier, within i carrier := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.mul_sum]
      _ = ∑ i, field i := by simp [SimplexPoint.normalized]
      _ = 1 := field.normalized

@[simp]
theorem hierarchical_apply {Carrier : I → Type*} [∀ i, Fintype (Carrier i)]
    (field : SimplexPoint I)
    (within : ∀ i, SimplexPoint (Carrier i))
    (site : Σ i, Carrier i) :
    hierarchical field within site = field site.1 * within site.1 site.2 :=
  rfl

end SimplexPoint

end BitMatrix.Probability
```
