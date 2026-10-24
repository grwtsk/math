# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBertrandPositivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "003448db9457ab87d48b6e1288fca0d2a1bc34f2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `003448db9457ab87d48b6e1288fca0d2a1bc34f2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCapacityRatio`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Bertrand` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_mem_thetaPrimeWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/prime-mem-thetaprimewindow--e83f02e877c820a7ef214153.md) | 39 | `result-track:e83f02e877c820a7ef2141534a3ee71d5248fa680e611167185ff98f4d33ec8f` |
| 2 | `theorem` | [thetaPrimeWindow_nonempty_of_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/thetaprimewindow-nonempty-of-ne-zero--528cc25e783e79c90d628362.md) | 54 | `result-track:528cc25e783e79c90d62836230dd32d473c2cf9c9bcafd92d75a981cd9b7b694` |
| 3 | `theorem` | [primeCoefficient_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/primecoefficient-positive--d687ff18cc4ba720cd65478c.md) | 64 | `result-track:d687ff18cc4ba720cd65478c1cd04425ec990829196e3172612aae5dff2687cf` |
| 4 | `theorem` | [pinnedPrimeWeightSummand_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightsummand-nonnegative--c8aa06387cc7143f291cb239.md) | 76 | `result-track:c8aa06387cc7143f291cb239c7139e948a30b26b8a35a8c34842e77e6a174ffe` |
| 5 | `theorem` | [pinnedPrimeWeightSummand_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightsummand-positive--d5eb01f68a01ef601980c846.md) | 83 | `result-track:d5eb01f68a01ef601980c8469c7275e946c558eed027ba480cd8c1e73b68635a` |
| 6 | `theorem` | [pinnedPrimeWeightedAmplitude_pos_of_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightedamplitude-pos-of-ne-zero--ccd6ef1d4b859b213f2dfb39.md) | 91 | `result-track:ccd6ef1d4b859b213f2dfb39c3a26a26078ad979f6f90a7d45595d9112d9143a` |
| 7 | `theorem` | [pinnedPrimeWeightedAmplitude_dyadic_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightedamplitude-dyadic-pos--b1fb61c53f94c25e4e4947f5.md) | 103 | `result-track:b1fb61c53f94c25e4e4947f57a60bbea6858a1f3450228f90665b046b2470cae` |
| 8 | `theorem` | [pinnedPrimeWeightedAmplitude_dyadic_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightedamplitude-dyadic-ne-zero--d79d9ed44f644bb3bd621aa8.md) | 111 | `result-track:d79d9ed44f644bb3bd621aa8d12fc4bed1613b5de07791d2c94350b4aef9614c` |
| 9 | `def` | [pinnedPrimeWeightBertrandRatioRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightbertrandratiorequirement--0c1035d652ea40675c3e6935.md) | 118 | `declaration-track:0c1035d652ea40675c3e6935dcef51101bd5dfa707385b2148a2b73af5fd4a5c` |
| 10 | `theorem` | [pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightfinitecapacityrequirement-iff-bertrandratiorequirement--b644dfc65f273c1db19f49f7.md) | 125 | `result-track:b644dfc65f273c1db19f49f765a2462078095e66c7ebfaacbfa1730e76ca1518` |
| 11 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_bertrandRatioRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightamplituderequirement-iff-bertrandratiorequirement--0f857d45b2eb4d34ed29439f.md) | 144 | `result-track:0f857d45b2eb4d34ed29439fd2c6a7eaabd5a5c125c0be15da222b0ef7523baa` |
| 12 | `def` | [PinnedPrimeWeightBertrandRatioCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightbertrandratiocriterionat--be00359d94bf91e7f6267644.md) | 160 | `declaration-track:be00359d94bf91e7f626764499c1e35abed1030cd7d98d044390fb805861cfb7` |
| 13 | `def` | [PinnedPrimeWeightFixedBertrandRatioCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightfixedbertrandratiocriterionat--441a187beb41fa7143bc3b9e.md) | 173 | `declaration-track:441a187beb41fa7143bc3b9e72fd4865f93af82e81d2f3f804ebffb5a79e5363` |
| 14 | `theorem` | [pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightbertrandratiocriterion-iff-capacityratiocriterion--81fec585e74275652376d0dc.md) | 187 | `result-track:81fec585e74275652376d0dcd4870cd91fe379997b2973d1a9a42b434801eee6` |
| 15 | `theorem` | [pinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightfixedbertrandratiocriterion-iff-capacityratiocriterion--e6fe791de585ed6dd7558425.md) | 212 | `result-track:e6fe791de585ed6dd7558425473464080d0a29f95ed5e7d996be11cd93f7849f` |
| 16 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_bertrandRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightruledeficitcriterion-to-bertrandratiocriterion--02a0a83a6a1c1e44e3b32718.md) | 242 | `result-track:02a0a83a6a1c1e44e3b32718ece53fdfffb5393494d2836e8582d76b671b20d8` |
| 17 | `theorem` | [pinnedPrimeWeightFixedBertrandRatioCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightfixedbertrandratiocriterion-to-recurrence--91333bc3c85410e78d5e62b7.md) | 253 | `result-track:91333bc3c85410e78d5e62b732e088ae0db0743582da401bfe441577bfd43de9` |
| 18 | `theorem` | [pinnedPrimeWeightFixedBertrandRatioCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/declarations/pinnedprimeweightfixedbertrandratiocriterion-to-descent--359fc655eba60c07575a9d22.md) | 264 | `result-track:359fc655eba60c07575a9d223a05a9b6f181402fedd5dae56e41dbf050c28f0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
