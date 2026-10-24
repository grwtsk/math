# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContrastResidualV1Prebytes.Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3a4440c76b142e1ce0c6780750f7b86efc9cce0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3a4440c76b142e1ce0c6780750f7b86efc9cce0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedResidualRemainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean/declarations/pairedresidualremainder--9523c9ea3301306cea86439e.md) | 33 | `declaration-track:9523c9ea3301306cea86439ea561774c6997ff3b23cf7948c3d931c85660b85b` |
| 2 | `theorem` | [mertensResidual_eq_contrast_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean/declarations/mertensresidual-eq-contrast-remainder--41385e70a79c40ec04f67702.md) | 38 | `result-track:41385e70a79c40ec04f677021e0a72aad800aa1632819c44a7dc897f11ac9faf` |
| 3 | `theorem` | [pairedResidualRemainder_uniformly_bounded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0.lean/declarations/pairedresidualremainder-uniformly-bounded--558b6233bca06fec9403adab.md) | 48 | `result-track:558b6233bca06fec9403adab131e877f2dc25d919b0384ec94266a40850c4d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
