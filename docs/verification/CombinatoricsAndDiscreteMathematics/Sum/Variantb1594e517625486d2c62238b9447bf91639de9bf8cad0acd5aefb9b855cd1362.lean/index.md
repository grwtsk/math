# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91b8ea083b271b0208c90eca50c43a82daeb4ce",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91b8ea083b271b0208c90eca50c43a82daeb4ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/instance--5be97a8e85f263f8e417ee50.md) | 35 | `declaration-track:5be97a8e85f263f8e417ee504f7c143774747e6ab6c2b563b995095eb5285efb` |
| 2 | `lemma` | [toLeft_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/toleft-eq-univ--1d4364efe8ac4e5e6a629a03.md) | 45 | `result-track:1d4364efe8ac4e5e6a629a0353ea971fc87e92a9aa94d04b198537085d546532` |
| 3 | `lemma` | [toRight_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/toright-eq-empty--cdb3de9f671b467289110982.md) | 48 | `result-track:cdb3de9f671b467289110982ada3833fbee20e20c5e4fab3d34f72b235be3b0b` |
| 4 | `lemma` | [toRight_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/toright-eq-univ--e887ddd0479a6f6a6455287a.md) | 55 | `result-track:e887ddd0479a6f6a6455287a284553963e1d5b5af35c530017037f22510445b2` |
| 5 | `lemma` | [toLeft_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/toleft-eq-empty--6d3e8e0dce19940bd966d8ae.md) | 58 | `result-track:6d3e8e0dce19940bd966d8ae4aa11ae6dbbb4932a93ad51c6483a08145f727a7` |
| 6 | `lemma` | [univ_disjSum_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/univ-disjsum-univ--2fe5741bb9bc43e38331b4af.md) | 64 | `result-track:2fe5741bb9bc43e38331b4af51e36aa6618f688d5b47e45b8ed968f414d3b3a5` |
| 7 | `lemma` | [toLeft_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/toleft-univ--3a6c9a5351c2df46169bba0c.md) | 65 | `result-track:3a6c9a5351c2df46169bba0cc2d769efdbbef15f172143448d40907aefff7dd8` |
| 8 | `lemma` | [toRight_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/toright-univ--b785aac0933f042a0e7062ba.md) | 66 | `result-track:b785aac0933f042a0e7062ba6340f77920cf7fd5da82fb6468779cac13d32d03` |
| 9 | `theorem` | [Fintype.card_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/fintype-card-sum--3127ced0efc33e9b20bb7e09.md) | 71 | `result-track:3127ced0efc33e9b20bb7e09e29e243545f32c2b98f4835d7355c811525c7977` |
| 10 | `def` | [fintypeOfFintypeNe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/fintypeoffintypene--fafdec437ed0249b9b54431b.md) | 77 | `declaration-track:fafdec437ed0249b9b54431b2e2e5c1dd0f0854c49344454e4af419da8317b65` |
| 11 | `theorem` | [image_subtype_ne_univ_eq_image_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/image-subtype-ne-univ-eq-image-erase--a65a86d1a582f9ca75061bc9.md) | 81 | `result-track:a65a86d1a582f9ca75061bc960cf0978a2ded44b11def09f0eda1901996516d9` |
| 12 | `theorem` | [image_subtype_univ_ssubset_image_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/image-subtype-univ-ssubset-image-univ--b847b5d94f7fed8df4d32ef4.md) | 93 | `result-track:b847b5d94f7fed8df4d32ef4805637bab04b94fa3e9ff2fd3ced0c22c647a477` |
| 13 | `theorem` | [Finset.exists_equiv_extend_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/finset-exists-equiv-extend-of-card-eq--f843ca67ec64d02d8f7bdd3e.md) | 100 | `result-track:f843ca67ec64d02d8f7bdd3eb20c76224f6646dc30a5ae0a71f5fe8f7754e91b` |
| 14 | `theorem` | [Set.MapsTo.exists_equiv_extend_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/set-mapsto-exists-equiv-extend-of-card-eq--3adf6f2d98bf83036d646807.md) | 127 | `result-track:3adf6f2d98bf83036d646807d3fdcb0f88aa1fc7daf9928b979f70c3a29bde55` |
| 15 | `theorem` | [Fintype.card_subtype_or](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/fintype-card-subtype-or--dc27a18920ada67c6750e378.md) | 139 | `result-track:dc27a18920ada67c6750e378da2cd93d04e083a2577fc4ec712ade5f4646a1f5` |
| 16 | `theorem` | [Fintype.card_subtype_or_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/fintype-card-subtype-or-disjoint--92c8ebf1e80c5d4dc5cc7a52.md) | 146 | `result-track:92c8ebf1e80c5d4dc5cc7a52dd5baf3edbdbb0f10952dfcae51954e273c3c964` |
| 17 | `theorem` | [Fintype.card_subtype_eq_or_eq_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/fintype-card-subtype-eq-or-eq-of-ne--c6776b535b2db5ac6d2e215c.md) | 153 | `result-track:c6776b535b2db5ac6d2e215c09fbf7a7fde51227342fbd282e8a7baf1528d0d8` |
| 18 | `theorem` | [infinite_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantb1594e517625486d2c62238b9447bf91639de9bf8cad0acd5aefb9b855cd1362.lean/declarations/infinite-sum--14369a7c9e90bcbb855f8ccc.md) | 159 | `result-track:14369a7c9e90bcbb855f8ccc7b2c5ea43197a97ff4a0aee7971299ed9601814b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
