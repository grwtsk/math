/-
CoordinateSwapReflectionExamples — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact rational point swap involution, whole original point-invocation representation and ordered-list double-swap involution. This is distinct from diagonal embedding p->(p,p). Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

example (point : BitMatrix.Runtime.Semantics.RasterPoint) :
    point.reflectDiagonal.reflectDiagonal = point :=
  BitMatrix.Runtime.Semantics.RasterPoint.reflectDiagonal_involutive point
example (invocation :
    BitMatrix.Runtime.Correspondence.DiagonalReflectionInvocation) :
    BitMatrix.Runtime.Correspondence.diagonalReflectionRepresentation.represents
      invocation invocation.point.reflectDiagonal :=
  BitMatrix.Runtime.Correspondence.executeDiagonalReflection_represents invocation
example (points : List BitMatrix.Runtime.Semantics.RasterPoint) :
    BitMatrix.Runtime.Semantics.reflectCarrierDiagonal
      (BitMatrix.Runtime.Semantics.reflectCarrierDiagonal points) = points :=
  BitMatrix.Runtime.Semantics.reflectCarrierDiagonal_involutive points
end BitMatrix.Tests.Correspondence
