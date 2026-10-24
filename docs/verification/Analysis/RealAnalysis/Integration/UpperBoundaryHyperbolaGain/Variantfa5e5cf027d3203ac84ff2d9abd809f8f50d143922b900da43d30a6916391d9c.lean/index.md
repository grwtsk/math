# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbolaGain.Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c39e26a5f73209782e9c3f7d28f9c581feee8601",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c39e26a5f73209782e9c3f7d28f9c581feee8601`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UpperBoundaryHyperbola` — import line 6; external provider; requires a separately pinned dependency.
- `scratch.mertens.EndpointMonotonicity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperSmallIndices_empty_below_quarter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/declarations/uppersmallindices-empty-below-quarter--c1f83705c45bca63646b6a75.md) | 22 | `result-track:c1f83705c45bca63646b6a75aa39d79ff452dcd51aab0d726628dd4949bc4745` |
| 2 | `theorem` | [upperSmallSum_zero_below_quarter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/declarations/uppersmallsum-zero-below-quarter--ea718ade00e98f4c227af272.md) | 32 | `result-track:ea718ade00e98f4c227af27245749f59980ae68928850a70c36a96b7835b1bf7` |
| 3 | `theorem` | [source_square_derivative_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/declarations/source-square-derivative-nonpos--58aba3fb79d3ad119ea64c95.md) | 37 | `result-track:58aba3fb79d3ad119ea64c95c8d205b1b29f6fc835e9a8248f36e7cfd468d655` |
| 4 | `theorem` | [source_square_derivative_integral_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/declarations/source-square-derivative-integral-nonpos--1a9b0c0bff578c1464849657.md) | 46 | `result-track:1a9b0c0bff578c14648496579a9804da157a11e8bdafb9df0d9b4aa67c3cebe0` |
| 5 | `theorem` | [sourceQuadraticValue_ge_core_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/declarations/sourcequadraticvalue-ge-core-hyperbola--a167ce0dd67858ce5996c0cf.md) | 55 | `result-track:a167ce0dd67858ce5996c0cf2306fbd6bc06af4a6a464975d9eb54fa5bc5404a` |
| 6 | `theorem` | [sourceQuadraticValue_negativePart_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variantfa5e5cf027d3203ac84ff2d9abd809f8f50d143922b900da43d30a6916391d9c.lean/declarations/sourcequadraticvalue-negativepart-le--63b78d17b42b7d8dcb264d42.md) | 65 | `result-track:63b78d17b42b7d8dcb264d42d76fbd3c569d1379a5bf67fd29d6b522e1c9140c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
