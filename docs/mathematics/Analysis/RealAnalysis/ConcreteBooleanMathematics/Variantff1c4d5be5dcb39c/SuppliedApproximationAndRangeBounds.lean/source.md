# Complete source: GRWTSK.Analysis.RealAnalysis.ConcreteBooleanMathematics.Variantff1c4d5be5dcb39c.SuppliedApproximationAndRangeBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1e932f76ea72de89a54829cda8f3790e67194fe` · SHA-256 `fe531bc8817ed057dae9b66e223fe4958db077eda92b9cbd53d94517dadc400d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SuppliedApproximationAndRangeBounds — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.5.010 real analysis (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two conditional projections retain complete original GammaApproximationCertificate or FloatingRangeFailureCertificate. Exact Lanczos formula/domain and supplied error/range inequalities stay explicit; no equality with analytic Gamma or constructed numerical certificate. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

example (certificate :
    BitMatrix.Runtime.Semantics.GammaApproximationCertificate) :
    BitMatrix.Runtime.Semantics.gammaDomain certificate.input ∧
      |certificate.runtimeOutput -
        BitMatrix.Runtime.Semantics.lanczosGammaModel certificate.input| ≤
          BitMatrix.Runtime.Semantics.gammaProfileMaximumError :=
  ⟨certificate.domain, certificate.withinProfileError⟩

example (certificate :
    BitMatrix.Runtime.Semantics.FloatingRangeFailureCertificate) :
    BitMatrix.Runtime.Semantics.binary64FiniteMagnitudeLimit <
      |certificate.exactOutput| :=
  certificate.exceedsBinary64FiniteRange
end BitMatrix.Tests.Correspondence
```
