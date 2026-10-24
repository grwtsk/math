# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrelationV1Prebytes.Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77872058ff6bf312aee24293d7d0922cbc2d8c81",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77872058ff6bf312aee24293d7d0922cbc2d8c81`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean/declarations/sourcecorrelation-eq-inner--18d6e31fa83231d1658acc55.md) | 26 | `result-track:18d6e31fa83231d1658acc554b267b72d7de2b6d305dd4101f46b40caad3fd63` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean/declarations/correlationscalederivative--fd9a1274e83da831261aa03b.md) | 50 | `declaration-track:fd9a1274e83da831261aa03b29fad68eff5038eba86483466008cb578766859a` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean/declarations/sourcecorrelation-hasderivat-scale--bc271e6a40d5a4679eaca979.md) | 55 | `result-track:bc271e6a40d5a4679eaca979ce7362270183a3d283083c9a53eb2af13066eba9` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationV1Prebytes/Variantc99b42a5f31627c54765228416af0168039af68ab7158e2b742db544aa35aa6b.lean/declarations/sourcecorrelation-contdiffat-scale--edb72b4513200163770ee32a.md) | 73 | `result-track:edb72b4513200163770ee32ab5c62c0c9a8b776a915716eb42b1e79c15e48303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
