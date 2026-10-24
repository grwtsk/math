# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.IntegerMooreNeighborhood.Variant03d73452c99c6fd3.NineTranslatedOffsets

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dc8c60e4c4796fc90afd890520f486d6a4204c2` · SHA-256 `b6db859fb63df9398a1a5ef44b8886c9ac5e28f2bb6ccf08e9823ba998fe41b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NineTranslatedOffsets
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.7.010.010 counting principles (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Rational nearest rounding is floor(x+1/2), including negative ties; signed-zero records retain value/sign consistency. Axis normalization statements retain the original unrestricted Nat extent (including zero), rather than silently adding positivity. Rational line reflection keeps its nonzero-normal constructor premise; only diagonal involution/list-length identities actually proved are claimed. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- Integer pixel address. -/
structure PixelCoordinate where
  x : ℤ
  y : ℤ
  deriving DecidableEq, Repr

/-- Half-open pixel support.  It is data distinct from a cell's barycentric
coordinate origin. -/
structure PixelSupport where
  minX : ℤ
  maxX : ℤ
  minY : ℤ
  maxY : ℤ
  xNondegenerate : minX < maxX
  yNondegenerate : minY < maxY

/-- One pixel retains both its coordinate and geometric support. -/
structure Pixel where
  coordinate : PixelCoordinate
  support : PixelSupport

/-- The nine offsets in the closed Moore neighborhood, including the center. -/
def mooreNeighborhood : List PixelCoordinate :=
  [⟨-1, -1⟩, ⟨0, -1⟩, ⟨1, -1⟩,
   ⟨-1, 0⟩,  ⟨0, 0⟩,  ⟨1, 0⟩,
   ⟨-1, 1⟩,  ⟨0, 1⟩,  ⟨1, 1⟩]

/-- Translate a pixel coordinate by an offset. -/
def PixelCoordinate.translate (point offset : PixelCoordinate) : PixelCoordinate :=
  ⟨point.x + offset.x, point.y + offset.y⟩

/-- Deterministic candidate stencil centered on a pixel. -/
def candidateStencil (center : PixelCoordinate) : List PixelCoordinate :=
  mooreNeighborhood.map center.translate

@[simp] theorem candidateStencil_card (center : PixelCoordinate) :
    (candidateStencil center).length = 9 := by
  simp [candidateStencil, mooreNeighborhood]

end BitMatrix.Runtime.Semantics
```
