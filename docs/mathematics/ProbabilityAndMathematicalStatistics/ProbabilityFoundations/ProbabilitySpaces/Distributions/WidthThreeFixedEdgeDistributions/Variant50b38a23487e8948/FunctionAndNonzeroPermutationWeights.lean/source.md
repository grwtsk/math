# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.WidthThreeFixedEdgeDistributions.Variant50b38a23487e8948.FunctionAndNonzeroPermutationWeights

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d66e45eb46c4ef59752f5bce53f655323864a78` · SHA-256 `7a5cb5df5349076823e810728f57a16ececabb43e09872167a4303550b3c50df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FunctionAndNonzeroPermutationWeights — exact original finite mathematical examples
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe
Organized SHA-256: e6846df7587be550c6c98d78c78e0d3da4d6f120ce5a503b89082ff13eb9ef2c
PMD: 510.8.010.010.040 distributions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Eight exact rational width-three mass examples retain the two distinct fixed-edge laws: random-function binomial weights and permutation weights conditioned on nonzero difference. They provide no assertion that all edges of a sampled function or permutation are independent. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Dynamics.Avalanche

/-!
# Concrete avalanche tests

The permutation below swaps `011` and `100` and fixes the other six three-bit
vectors.  Exact finite evaluation proves that it is bijective and has perfect
SAC marginals, while two output-flip coordinates remain perfectly correlated.
Thus marginal avalanche balance does not imply joint independence.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.WidthThreeFixedEdgeDistributions.Variant50b38a23487e8948

namespace BitMatrix.Tests.Avalanche

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche

/-! The width-three random-function weight law is `1/8, 3/8, 3/8, 1/8`. -/

example : functionWeightMass 3 0 = 1 / 8 := by native_decide
example : functionWeightMass 3 1 = 3 / 8 := by native_decide
example : functionWeightMass 3 2 = 3 / 8 := by native_decide
example : functionWeightMass 3 3 = 1 / 8 := by native_decide

/-! The width-three permutation law is `0, 3/7, 3/7, 1/7`. -/

example : permutationWeightMass 3 0 = 0 := by native_decide
example : permutationWeightMass 3 1 = 3 / 7 := by native_decide
example : permutationWeightMass 3 2 = 3 / 7 := by native_decide
example : permutationWeightMass 3 3 = 1 / 7 := by native_decide

end BitMatrix.Tests.Avalanche

end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.WidthThreeFixedEdgeDistributions.Variant50b38a23487e8948
```
