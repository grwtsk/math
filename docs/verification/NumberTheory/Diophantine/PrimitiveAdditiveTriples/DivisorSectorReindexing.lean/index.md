# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb1612f9ddd09b2b0c14f83b57718b23288b6e7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb1612f9ddd09b2b0c14f83b57718b23288b6e7`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_additivePairs_scaled_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/mem-additivepairs-scaled-iff--b3e1d24200598dc8a99efddb.md) | 15 | `result-track:b3e1d24200598dc8a99efddb1e6eb0dbb777e496a18377958e52b4fa193c26cb` |
| 2 | `theorem` | [scaledPair_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/scaledpair-injective--1919875b315c725cecf3a983.md) | 45 | `result-track:1919875b315c725cecf3a983a75a867e61225638d10e76b0eb5dd5e4f9468b39` |
| 3 | `theorem` | [commonDivisorWeightedMoment_eq_scaled_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/commondivisorweightedmoment-eq-scaled-sum--53bf984b5a8291fba4aeb8e1.md) | 55 | `result-track:53bf984b5a8291fba4aeb8e160b597f24e47f3a838cb2f35f41f7f00c5323a21` |
| 4 | `theorem` | [commonDivisorMoment_eq_scaled_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/commondivisormoment-eq-scaled-sum--c22df96ec96e165a95b51689.md) | 83 | `result-track:c22df96ec96e165a95b51689c30e9c73a023bb95c38b55e800bfe474d5d69dc7` |
| 5 | `theorem` | [primitiveWeightedMoment_eq_moebius_scaled_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/primitiveweightedmoment-eq-moebius-scaled-sum--0bb75f5c0d33ac0225168bc8.md) | 92 | `result-track:0bb75f5c0d33ac0225168bc8fcdb2131cd01c2519484ee1bebe1a8de2fbae6c7` |
| 6 | `theorem` | [typedPrimitiveWeightedMoment_eq_moebius_scaled_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/typedprimitiveweightedmoment-eq-moebius-scaled-sum--78a87c5227244722571b0bb1.md) | 105 | `result-track:78a87c5227244722571b0bb1604876adb39f0298eb263afba99f5f4497677127` |
| 7 | `theorem` | [typedPrimitiveMoment_eq_moebius_scaled_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/declarations/typedprimitivemoment-eq-moebius-scaled-sum--c08034ddee96258dbbfc4fe6.md) | 116 | `result-track:c08034ddee96258dbbfc4fe6f6c26457ad051d32d441f2647a2703b3bfdcba95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
