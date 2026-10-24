# Complete source: GRWTSK.Analysis.RealAnalysis.HeatInverseData.Variant568a6e9c973fb125.SuppliedRealComparisonBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a379ce2e6675368238563fa8542fb51c96fff7a` · SHA-256 `a84c74a1f117d46428a15b45670d3bce4fad4d9c664df9017899c98b56fe4d5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact supplied inverse comparison bound
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96
Organized SHA-256: 97d53f27b51fdaac9f2124f16cdaa79fa97cdf1af07a86f362d6008844f81d0e
PMD: 510.5.010 real analysis (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole StableInverse keeps arbitrary dist:alpha -> alpha -> real and full two-sided inverse data, plus existence of nonnegative C bounding dist of inverse images. No metric, symmetry, triangle, separation, continuity or norm axioms are inferred. Bound theorem is exact projection. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125.TwoSidedInverse

import Folder.Spectral.Heat
import Folder.Spectral.Residual
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Research.HeatInvertibility

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.heat_invertibility
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


open Folder
open GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125

namespace GRWTSK.Analysis.RealAnalysis.HeatInverseData.Variant568a6e9c973fb125

structure StableInverse
    (α : Type _)
    (dist : α → α → ℝ)
    (H : α → α) where
  inverse : HasTwoSidedInverse α H
  lipschitz : ∃ C : ℝ, 0 ≤ C ∧
    ∀ x y, dist (inverse.inv x) (inverse.inv y) ≤ C * dist x y

theorem stable_inverse_has_lipschitz_bound
    {α : Type _}
    {dist : α → α → ℝ}
    {H : α → α}
    (S : StableInverse α dist H) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ x y, dist (S.inverse.inv x) (S.inverse.inv y) ≤ C * dist x y :=
  S.lipschitz

end GRWTSK.Analysis.RealAnalysis.HeatInverseData.Variant568a6e9c973fb125
```
