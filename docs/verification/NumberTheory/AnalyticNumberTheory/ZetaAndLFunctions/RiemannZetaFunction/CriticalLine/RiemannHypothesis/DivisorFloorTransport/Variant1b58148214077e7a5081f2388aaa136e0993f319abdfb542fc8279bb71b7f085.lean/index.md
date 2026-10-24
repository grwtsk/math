# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorFloorTransport.Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b42a6fc1819e49d1626fc77484f758bba18b9c18",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b42a6fc1819e49d1626fc77484f758bba18b9c18`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/floor-sum-divisors--2b2a5b8f84bbf1d37324c22b.md) | 23 | `result-track:2b2a5b8f84bbf1d37324c22b2a898c1054598134254222e56f1d03a13753e1e8` |
| 2 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/divisor-prefix-eq-floor--b2461c5d12654772eb2080cb.md) | 53 | `result-track:b2461c5d12654772eb2080cb776a38ad537e6a6f11c8d8bc33f95126950138c4` |
| 3 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/residual-floor--4364aa3c54758b80923f28d9.md) | 59 | `result-track:4364aa3c54758b80923f28d97f79cf855c7140ebe10df8816d57764e27730f26` |
| 4 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/damped-floor--2288e0dd858c83f8c37b3fcf.md) | 74 | `result-track:2288e0dd858c83f8c37b3fcf1515d4e61c7f69bd35d006ada1b767e279898359` |
| 5 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--fb5a664f58912f2f99cfec7f.md) | 86 | `result-track:fb5a664f58912f2f99cfec7fa1c358779774c25cfc5b65bc5e34d5f460f99b2a` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/arithmeticresidual-eq-divisor-prefix--80e86d00474f5a02c0e3f198.md) | 99 | `result-track:80e86d00474f5a02c0e3f198410e4329efc430e561acb721e7db12aebff870f2` |
| 7 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--0561edc68d839cd9436915a5.md) | 110 | `result-track:0561edc68d839cd9436915a5ee6e3b139202a5d0bd985c5e5f6aab600bd10360` |
| 8 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorTransport/Variant1b58148214077e7a5081f2388aaa136e0993f319abdfb542fc8279bb71b7f085.lean/declarations/arithmeticresidual-zero-damping-endpoint--9374c54461f05f0839f8b9dc.md) | 120 | `result-track:9374c54461f05f0839f8b9dcb40834f2c03744abe0420eee2065cb487334781f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
