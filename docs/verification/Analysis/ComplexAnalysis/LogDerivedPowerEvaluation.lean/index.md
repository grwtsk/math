# Verification target: GRWTSK.Analysis.Complex.LogDerivedPowerEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a418a1a2d9cc029bef119b9ec81119db3d3a285",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/LogDerivedPowerEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a418a1a2d9cc029bef119b9ec81119db3d3a285`.

Source path: `GRWTSK/Analysis/Complex/LogDerivedPowerEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/LogDerivedPowerEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalLogEnclosure`](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentKernelEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerInput](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/powerinput--a25096659d43b7e0650849be.md) | 33 | `declaration-track:a25096659d43b7e0650849be86452be73b3344078fa7f6947f0086ff5f104a36` |
| 2 | `def` | [toPowerEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/topowerevaluation--9d4bf565ddccb1b2992d74ec.md) | 44 | `declaration-track:9d4bf565ddccb1b2992d74ec2667c05deb989682a5dfa00d7ad143bf0791cbee` |
| 3 | `theorem` | [value_eq_polynomial](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/value-eq-polynomial--a29455f802d96b15d114c685.md) | 57 | `result-track:a29455f802d96b15d114c6851f13dcf0425cf1b9c69d0fd2e65c1fe5914d2635` |
| 4 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/sound--b1aa117d9f07f3a19065e904.md) | 61 | `result-track:b1aa117d9f07f3a19065e9046ee15b0c2ebc056d20de4676870fa26f6a659434` |
| 5 | `theorem` | [exists_log_terms](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/exists-log-terms--0e9c96ebae6c85f0d1872bee.md) | 69 | `result-track:0e9c96ebae6c85f0d1872beef7b42d4617bf18d8e608c010e9108271adc6673c` |
| 6 | `theorem` | [exists_exp_degree](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/exists-exp-degree--b93acdbd222f4ca0bde3ea80.md) | 78 | `result-track:b93acdbd222f4ca0bde3ea80c7b44f762eee0daa2fe07abe056bfbf4051134af` |
| 7 | `structure` | [PointInput](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/pointinput--6d457504614971560b5d2244.md) | 86 | `declaration-track:6d457504614971560b5d2244712785f6cd984ac5d834d8beaf8bdca3699a2e7e` |
| 8 | `def` | [toPointEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/topointevaluation--528a0f9f06c4d5826c8d63d6.md) | 102 | `declaration-track:528a0f9f06c4d5826c8d63d678821e28f83d6df5c0a7bb403718586211586381` |
| 9 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/declarations/sound--a405499cf43f6588f0e9c1a2.md) | 114 | `result-track:a405499cf43f6588f0e9c1a246598b20ce00c75d637659a37254a3dda46daef0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
