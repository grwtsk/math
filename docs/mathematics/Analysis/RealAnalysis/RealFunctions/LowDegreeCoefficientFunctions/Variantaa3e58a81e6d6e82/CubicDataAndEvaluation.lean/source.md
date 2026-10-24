# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.LowDegreeCoefficientFunctions.Variantaa3e58a81e6d6e82.CubicDataAndEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2d6aac5b230e4bf4d437f13cb8ca753791c9371` · SHA-256 `e58293680936a4c9d27427b3f595f65df9f928f1964dd05c730fa47f7ed5d63d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CubicDataAndEvaluation — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: aa3e58a81e6d6e827aa83c821aaf5836440a9c14a2ee401875ea4f091a99dfa3
Organized SHA-256: e1b639eec5907ef827a561823fcabf9aae8e0bf11b96ee2095e48821580e7694
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole arbitrary real a/b/c/d coefficient data and exact evaluation only. No nonzero-leading-coefficient restriction, exact degree, root formula or analytic law is added. -/

import Folder.Basic

/-!
# Folder.Analysis.Cubic

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.LowDegreeCoefficientFunctions.Variantaa3e58a81e6d6e82


structure Cubic where
  a : ℝ
  b : ℝ
  c : ℝ
  d : ℝ


namespace Cubic

def eval (p : Cubic) (x : ℝ) : ℝ :=
  p.a * x ^ 3 + p.b * x ^ 2 + p.c * x + p.d


end Cubic

end GRWTSK.Analysis.RealAnalysis.RealFunctions.LowDegreeCoefficientFunctions.Variantaa3e58a81e6d6e82
```
