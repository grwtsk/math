# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainComparison.Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f06207e8741b84c417d4754eff5be7409e8e619",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f06207e8741b84c417d4754eff5be7409e8e619`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/divisormainresidual--73c9ee58383b640737a5705b.md) | 18 | `declaration-track:73c9ee58383b640737a5705bd827e7f4d4a09dc2c8f3c70b0de787ff209e4873` |
| 2 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/arithmeticresidual-eq-main-sub-remainder--9ac326fb77f14eef1cdcc321.md) | 28 | `result-track:9ac326fb77f14eef1cdcc321b9234aba59265b641f93e5455be5dfb832596f6e` |
| 3 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/divisormaincore--2680d09041f1c19bf8477a04.md) | 39 | `declaration-track:2680d09041f1c19bf8477a049087ef92b8069c2f6462bff882b974b612d7dfac` |
| 4 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/maincore-eq-add--396dee209ed94b5b56fa44d2.md) | 43 | `result-track:396dee209ed94b5b56fa44d23b0fada2ba556110ab431720b094ce6511972665` |
| 5 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/divisormaincore-memlp--8fdbb6f215d896c4444ebfc6.md) | 58 | `result-track:8fdbb6f215d896c4444ebfc6b87b2f74379956de480480f297b0e49877ca2ff7` |
| 6 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/divisormainvector--6ab4b3c7f13103346b2d7b7a.md) | 66 | `declaration-track:6ab4b3c7f13103346b2d7b7a6d9ba6e2475016874ef1099f36f91a208b75e942` |
| 7 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/mainvector-eq-add--af7b213980569f41a49cf6c9.md) | 70 | `result-track:af7b213980569f41a49cf6c9f51515295804eab5f5b916271688031eb4f7f47e` |
| 8 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c.lean/declarations/filtered-core-main-norm-difference-le--7a1193d484a01741b34383b5.md) | 88 | `result-track:7a1193d484a01741b34383b5a26b74822dfbff52d0eb6061699b294f29829aad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
