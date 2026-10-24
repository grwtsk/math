# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.SuppliedCubicEndpointValue.Variant063515532f1beec8.EndpointValueEquality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `babf84c7af2710ae83196ecad5450dc9c9133330` · SHA-256 `a7d45d040b6bb49912dcbcfddca10b39cc0a333440e51be78e6205e221d877bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EndpointValueEquality — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5
Organized SHA-256: 6f11a97e0c335c1b313665abe67e2f27357fd5f5797c73e458b65ff7d03378b8
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Entire original cubic/lo/hi/value record plus actual value_eq_integral equation and full supplied-S projection. Original CubicIntegration provider is retained unchanged, not replaced by new336/337 types. Its integral name denotes a captured endpoint difference; no actual interval-integral construction or independent correctness theorem is added. -/

import Folder.Analysis.CubicIntegration

/-!
# Folder.Analysis.CubicSemantics

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_semantics
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.SuppliedCubicEndpointValue.Variant063515532f1beec8

open Folder.Analysis

structure CubicCellSemantics where
  cubic : Cubic
  lo : ℝ
  hi : ℝ
  value : ℝ
  value_eq_integral : value = cubic.integral lo hi


theorem CubicCellSemantics.correct
    (S : CubicCellSemantics) :
    S.value = S.cubic.integral S.lo S.hi :=
  S.value_eq_integral


end GRWTSK.Analysis.RealAnalysis.RealFunctions.SuppliedCubicEndpointValue.Variant063515532f1beec8
```
