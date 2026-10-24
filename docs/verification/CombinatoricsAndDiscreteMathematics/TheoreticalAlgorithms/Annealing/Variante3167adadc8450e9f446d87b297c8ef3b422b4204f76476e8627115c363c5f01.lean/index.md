# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Annealing.Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b85dc40fb6e82677a00f0ca8c384fac62bc423cf",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b85dc40fb6e82677a00f0ca8c384fac62bc423cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HardPolicyViolation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/hardpolicyviolation--e217b08fe67aa2730a4b14e8.md) | 23 | `declaration-track:e217b08fe67aa2730a4b14e824388fb55891e00911c5d5053d6312641a67d195` |
| 2 | `structure` | [EnergyBreakdown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/energybreakdown--be74bdeab3f5e9c91c6af839.md) | 34 | `declaration-track:be74bdeab3f5e9c91c6af8392b7453ae41a26680d21d270c90bde47167a87236` |
| 3 | `def` | [EnergyBreakdown.total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/energybreakdown-total--b6f4bca365882d7556488f76.md) | 51 | `declaration-track:b6f4bca365882d7556488f7616a2a3c6186406078cf5352caf14ea7fd2daf3fd` |
| 4 | `structure` | [AnnealingCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/annealingcandidate--efe820e8f855380a501de500.md) | 60 | `declaration-track:efe820e8f855380a501de500f6de576a7386c1353c4d87fd83661e46dfd6dbdb` |
| 5 | `def` | [AnnealingCandidate.Admissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/annealingcandidate-admissible--1074dac65cc9ed3c65a0810b.md) | 66 | `declaration-track:1074dac65cc9ed3c65a0810bdda5d0e7e10128439f1b3780f56254f87a4e2fda` |
| 6 | `theorem` | [hard_violation_is_inadmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/hard-violation-is-inadmissible--8042b82f17c9f72a93e11bfa.md) | 70 | `result-track:8042b82f17c9f72a93e11bfa04c69e7be0d0d153dacf69c94368b5fb650fe89b` |
| 7 | `structure` | [ExhaustiveSearchResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/exhaustivesearchresult--f5adeb46be639996accea163.md) | 80 | `declaration-track:f5adeb46be639996accea163d43c177462e035cadaf22e207309829d4d72f8fe` |
| 8 | `theorem` | [exhaustive_argmin_is_minimal_on_enumerated_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/exhaustive-argmin-is-minimal-on-enumerated-set--9b47be860bc0ee5148d7e632.md) | 88 | `result-track:9b47be860bc0ee5148d7e6322e9f7c13ced442680b75630f539e603e4494ee33` |
| 9 | `structure` | [HeuristicAnnealingState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/heuristicannealingstate--cbbcfbce47bc3336eb3929a7.md) | 95 | `declaration-track:cbbcfbce47bc3336eb3929a76fc2ce4f2e7de991b978d91631d4cb3e762bcb8f` |
| 10 | `def` | [HeuristicAnnealingState.authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/heuristicannealingstate-authority--872c5536a31a324ce6bee35f.md) | 105 | `declaration-track:872c5536a31a324ce6bee35f853049d52bfdda83a6e60897a707c589aa97ef92` |
| 11 | `theorem` | [heuristic_receipt_does_not_claim_global_optimality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/heuristic-receipt-does-not-claim-global-optimality--f8da882d64086ddaf3e2a3eb.md) | 110 | `result-track:f8da882d64086ddaf3e2a3eb1f4068d14451371f1b0a3497b094e2e65006843c` |
| 12 | `structure` | [WaveCollapseDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/wavecollapsedomain--75261c01c70d31c2bf2d36ae.md) | 115 | `declaration-track:75261c01c70d31c2bf2d36aea5ab0664aac00575e68166390fb0e564e738dc32` |
| 13 | `structure` | [CollapseStepReceipt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/collapsestepreceipt--817ffa5c2d1b6cbeeffc6586.md) | 123 | `declaration-track:817ffa5c2d1b6cbeeffc658671002a3adabf220e05374f1e2b36546d2a126e9f` |
| 14 | `def` | [CollapseStepReceipt.authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/collapsestepreceipt-authority--c23277ee501bc10a63ce1a35.md) | 130 | `declaration-track:c23277ee501bc10a63ce1a359512666bebd8a0cea5162f56af1ccd02a9894551` |
| 15 | `theorem` | [collapse_choice_respects_admissible_domain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/collapse-choice-respects-admissible-domain--b127610d535614fe36b5ca9d.md) | 134 | `result-track:b127610d535614fe36b5ca9dba9c5ac9a354f0edaaf3e38eca3e10fbccc086a9` |
| 16 | `structure` | [ExecutionDependencyEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/executiondependencyedge--f00ab857ac6a064a45f5dc97.md) | 140 | `declaration-track:f00ab857ac6a064a45f5dc972c5178759ee18a78444331c9bea3dbd75161d1da` |
| 17 | `theorem` | [execution_dependency_is_not_recursive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/execution-dependency-is-not-recursive--cded9b7a4b1561d9ef7b5a07.md) | 146 | `result-track:cded9b7a4b1561d9ef7b5a07b574d0b8ad3220135107bcdede6c9bb407ae1202` |
| 18 | `theorem` | [annealing_result_not_kernel_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Annealing/Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01.lean/declarations/annealing-result-not-kernel-authority--0d0880b4fcea5617aaeb7ab1.md) | 151 | `result-track:0d0880b4fcea5617aaeb7ab11edb973e8f064726beceda40247a519023b7a39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
