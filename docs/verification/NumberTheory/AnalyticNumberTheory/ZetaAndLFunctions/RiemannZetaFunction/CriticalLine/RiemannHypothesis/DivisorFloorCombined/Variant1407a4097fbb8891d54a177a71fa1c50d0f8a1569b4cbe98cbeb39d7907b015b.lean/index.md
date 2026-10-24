# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorFloorCombined.Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd7d3f0b149aecda87d725c9ca2201235fb2296",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd7d3f0b149aecda87d725c9ca2201235fb2296`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/dampeddivisorcoefficient--105350e7f4316650509db580.md) | 7 | `declaration-track:105350e7f4316650509db580a4bb8820c73383ef34bd101077f9f795af6a369c` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/floor-sum-divisors--3dbe14b6fb70e64bd3dc2ff2.md) | 24 | `result-track:3dbe14b6fb70e64bd3dc2ff26852966238e6d3290e5fb3c85305d83eda44a839` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/divisor-prefix-eq-floor--b809f7dddcc8ab24c9bfdd8b.md) | 54 | `result-track:b809f7dddcc8ab24c9bfdd8b24b65b1170fb12dae5f52bb17d138bdd2dfc93d8` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/residual-floor--b97ea28c8f40bfc1a3996786.md) | 60 | `result-track:b97ea28c8f40bfc1a39967865c10afe141bd78ba6941d4ebe5203f3d272daa3c` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/damped-floor--c391a6283b917b5315c45bed.md) | 75 | `result-track:c391a6283b917b5315c45beda2b81f321c81f38f2e02fafc2b0378665628365e` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--2dcc1f675d6193d735acb31c.md) | 87 | `result-track:2dcc1f675d6193d735acb31ca7c5ed0b26218e72836e9c5dcf4e77a37dee966d` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/arithmeticresidual-eq-divisor-prefix--3f09cc2e1054f0b91dc01873.md) | 100 | `result-track:3f09cc2e1054f0b91dc0187387ef6d0218489365a2f28dba1bba8a20d446f2e1` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--863aa598c94221fbc7a7b838.md) | 111 | `result-track:863aa598c94221fbc7a7b838174d9e61226b6809299b116084854e34f4e1910c` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b.lean/declarations/arithmeticresidual-zero-damping-endpoint--d1e1ff18ce8386a8fe47a9d7.md) | 121 | `result-track:d1e1ff18ce8386a8fe47a9d7f512099e3f60856bc3661b0c66baabeef8f50a2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
