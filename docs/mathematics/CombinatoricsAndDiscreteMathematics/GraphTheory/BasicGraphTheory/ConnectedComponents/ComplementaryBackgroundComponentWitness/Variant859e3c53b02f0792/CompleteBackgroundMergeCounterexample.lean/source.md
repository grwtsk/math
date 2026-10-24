# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.ConnectedComponents.ComplementaryBackgroundComponentWitness.Variant859e3c53b02f0792.CompleteBackgroundMergeCounterexample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd80e3dcf42f695e39c2830829e2e793214334fb` · SHA-256 `dd075bc56c2bc77a8da70fcdcca608b4a4c528c165c7e901f20a1ce51e9295a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CompleteBackgroundMergeCounterexample — exact original finite mathematical examples
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52
Organized SHA-256: 8cd283783330c49c72311378d343ed1c392e9ee5e50eb642a694d2e64b3ee9c7
PMD: 510.7.030.010.060 connected components (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete before/after states, cut, dependent repair and whole repair equality proof remain together with every foreground/background link, nonempty, nonbranching and graphBetti premise. The final eight-conjunct canonical-link rejection uses the independent background-component condition; no condition is dropped or reconstructed from weaker data. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Surgery.CanonicalRaster

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterNeighborhoodExamples.Variant859e3c53b02f0792.ConfigurationsPoliciesAndExteriorLinks

/-!
# Canonical raster-surgery mutation boundaries

These compile-time tests pin the incidence, complementary adjacency, graph
Betti, exact-carrier, link, and nonbranching conditions used by the production
`controlledShift`.  A semantic mutation to any one of those definitions must
invalidate at least one witness below.
-/

namespace GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792

namespace BitMatrix.Tests.CanonicalRasterSurgery

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster
open BitMatrix.Surgery.Digital
open BitMatrix.Surgery.CanonicalRaster

/-- A foreground-tree repair engineered so every canonical link and
foreground invariant is preserved while the complementary eight-neighbor
background changes from two components to one. -/
def backgroundMergeBefore : RasterState 3 3 := fun cell =>
  decide (cell = northMiddle ∨ cell = northEast ∨
    cell = middleWest ∨ cell = center)

def backgroundMergeAfter : RasterState 3 3 := fun cell =>
  decide (cell = northWest ∨ cell = northMiddle ∨ cell = northEast ∨
    cell = middleWest ∨ cell = southWest ∨ cell = southMiddle)

def backgroundMergeCut : CutDatum 3 3 where
  source := backgroundMergeBefore
  selected := {northWest, center, southWest, southMiddle}

def backgroundMergeRepair : Repair backgroundMergeCut where
  replacement := fun cell _member => backgroundMergeAfter cell

theorem backgroundMergeRepair_apply :
    backgroundMergeRepair.apply = backgroundMergeAfter := by
  funext cell
  rcases cell with ⟨row, column⟩
  fin_cases row <;> fin_cases column <;>
    decide

example :
    foregroundLink backgroundMergeCut .edge backgroundMergeBefore =
      foregroundLink backgroundMergeCut .edge backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  decide

example : foregroundLink backgroundMergeCut .edge backgroundMergeBefore ≠ ∅ := by
  decide

example :
    backgroundLink backgroundMergeCut .vertex backgroundMergeBefore =
      backgroundLink backgroundMergeCut .vertex backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  decide

example :
    NonbranchingCubicalGraph .edge backgroundMergeBefore ∧
      NonbranchingCubicalGraph .edge backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  decide

example :
    graphBetti .edge .vertex backgroundMergeBefore =
      graphBetti .edge .vertex backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  funext degree
  rcases degree with _ | _ | degree
  · decide
  · decide
  · rfl

example :
    backgroundBetaZero .vertex backgroundMergeBefore = 2 ∧
      backgroundBetaZero .vertex backgroundMergeRepair.apply = 1 := by
  rw [backgroundMergeRepair_apply]
  decide

/-- The background-component clause is material: all earlier link and
foreground conditions hold for this repair, but the canonical condition
rejects the background merge. -/
example :
    ¬ canonicalLinkCondition .edge .vertex
      backgroundMergeCut backgroundMergeRepair := by
  intro condition
  rcases condition with
    ⟨_pair, _foregroundNonempty, _foregroundLink, _backgroundLink,
      _beforeManifold, _afterManifold, _foregroundBetti, backgroundComponents⟩
  have unequal :
      backgroundBetaZero .vertex backgroundMergeBefore ≠
        backgroundBetaZero .vertex backgroundMergeRepair.apply := by
    rw [backgroundMergeRepair_apply]
    decide
  exact unequal backgroundComponents

end BitMatrix.Tests.CanonicalRasterSurgery

end GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792
```
