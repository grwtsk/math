# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.SourceComponents.Variant17131ddf74e1ced3.BooleanAdjacencyAndInfluence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8150172322aa9271bc82ad0a2554054706b687e0` · SHA-256 `4a27138af18a39dbe7df45308778b3052196dcb5ca1996f872f52aa5e466951d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BooleanAdjacencyAndInfluence — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a
Organized SHA-256: 6e0a1ee1b3d1950e8385560e459bccb83a30fe79a3e8e8241beb9b4b277e8cf9
PMD: 510.7.030.010.020 adjacency (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete Bool adjacency/boundary matrices and finite directed edge-change sums, without a graph instance or probabilistic influence theorem. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Matrix
import Boolean.Cube.ListTools
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant17131ddf74e1ced3.OrderedBooleanEnumeration
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.SourceComponents.Variant17131ddf74e1ced3.BooleanFlipAndHamming

namespace Boolean.Cube

universe u

/-- The undirected adjacency matrix of the n-dimensional Boolean hypercube. -/
def Hypercube.adjacencyMatrix (n : Nat) : Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    decide
      (Hypercube.hammingDistance
        (Hypercube.pointOfIndex n i.val)
        (Hypercube.pointOfIndex n j.val) = 1)

/--
A boundary-edge matrix for a Boolean function.

A `1` at `(i,j)` means that the two indexed vertices are adjacent in the cube
and the function changes value across that edge.
-/
def Hypercube.boundaryEdgeMatrix {n : Nat} (f : Hypercube.Function n) :
    Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.adjacencyMatrix n i j &&
      Hypercube.boolDiff
        (f (Hypercube.pointOfIndex n i.val))
        (f (Hypercube.pointOfIndex n j.val))

/-- Test whether flipping coordinate `i` changes the value of `f` at `x`. -/
def Hypercube.edgeChange {n : Nat}
    (f : Hypercube.Function n) (x : Hypercube.Point n) (i : Fin n) :
    Bool :=
  Hypercube.boolDiff (f x) (f (Hypercube.flip x i))

/--
Influence count of coordinate `i`.

This counts directed cube edges from vertices `x` to `flip x i` where the
function output changes. Dividing by `2^n` gives the usual influence.
-/
def Hypercube.influenceCount {n : Nat}
    (f : Hypercube.Function n) (i : Fin n) : Nat :=
  ListTools.countTrue
    ((Hypercube.vertices n).map
      (fun x => Hypercube.edgeChange f x i))

/-- Influence count for every coordinate. -/
def Hypercube.influenceVector {n : Nat}
    (f : Hypercube.Function n) : Fin n → Nat :=
  fun i => Hypercube.influenceCount f i

/-- Total directed edge-boundary count across all coordinates. -/
def Hypercube.directedBoundaryCount {n : Nat}
    (f : Hypercube.Function n) : Nat :=
  ListTools.sumNat
    ((List.finRange n).map
      (fun i => Hypercube.influenceCount f i))

end Boolean.Cube
```
