# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicWordFromBalancedSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e876c60acbae068b23c1fb409bcb5f358aba6e94",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e876c60acbae068b23c1fb409bcb5f358aba6e94`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedEulerActiveSupport`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicEulerFromClosedWalk`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countedBinaryEdgeInstanceSupply](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/declarations/countedbinaryedgeinstancesupply--2f328b66326804c6e41bb9d3.md) | 26 | `declaration-track:2f328b66326804c6e41bb9d33204fa0acd8db43b1a1974deec733343e07442ab` |
| 2 | `theorem` | [mem_countedBinaryEdgeInstanceSupply](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/declarations/mem-countedbinaryedgeinstancesupply--3d8adb3dca0a31601858ecd5.md) | 34 | `result-track:3d8adb3dca0a31601858ecd53265febd4c39e667767bd7d9f248d41f803cd89c` |
| 3 | `theorem` | [countedBinaryEdgeInstanceSupply_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/declarations/countedbinaryedgeinstancesupply-card--05e284e92de88d46ae5295a0.md) | 44 | `result-track:05e284e92de88d46ae5295a019a4d5799c3425fbe1204756f40d05481866d99a` |
| 4 | `theorem` | [exists_cyclicBinaryWord_of_balanced_connected_counted_support](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/declarations/exists-cyclicbinaryword-of-balanced-connected-counted-support--babcc350672566123b25bff4.md) | 83 | `result-track:babcc350672566123b25bff48effc0973046621795389a8fb8b193d135e8164b` |
| 5 | `theorem` | [cyclicCountRealizable_of_balanced_connected_counted_support](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/declarations/cycliccountrealizable-of-balanced-connected-counted-support--a66b6a8168d349070f2b7dcf.md) | 100 | `result-track:a66b6a8168d349070f2b7dcf56466cf0e3d41de8d90d1b91a8d56dc4d4ad7581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
