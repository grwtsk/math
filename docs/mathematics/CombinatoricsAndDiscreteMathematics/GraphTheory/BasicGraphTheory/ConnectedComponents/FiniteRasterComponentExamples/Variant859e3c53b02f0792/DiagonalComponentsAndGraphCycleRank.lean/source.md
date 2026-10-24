# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.ConnectedComponents.FiniteRasterComponentExamples.Variant859e3c53b02f0792.DiagonalComponentsAndGraphCycleRank

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd4eb2e029e5d3f508afc24a6010f9d1c2139463` · SHA-256 `c40b4a37813b624a570edfe47f9d75ff855930f866264b43643086c97f21361f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DiagonalComponentsAndGraphCycleRank — exact original finite mathematical examples
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

/- The diagonal2x2 component counts distinguish edge and vertex adjacency. Exact graph beta-zero/beta-one examples retain finite graph formulas; these are not independently identified with cubical homology or a geometric Euler theorem. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Surgery.CanonicalRaster

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

/-- Two diagonal pixels distinguish edge from vertex adjacency. -/
def diagonalState : RasterState 2 2 := fun cell =>
  cell.row.val = cell.column.val

example : betaZero .edge diagonalState = 2 := by decide

example : betaZero .vertex diagonalState = 1 := by decide

example : betaOne .edge shiftBefore = 0 := by decide

example : betaZero .edge fullTwoByTwo = 1 := fullTwoByTwo_betaZero

example : betaOne .edge fullTwoByTwo = 1 := fullTwoByTwo_betaOne

end BitMatrix.Tests.CanonicalRasterSurgery

end GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792
```
