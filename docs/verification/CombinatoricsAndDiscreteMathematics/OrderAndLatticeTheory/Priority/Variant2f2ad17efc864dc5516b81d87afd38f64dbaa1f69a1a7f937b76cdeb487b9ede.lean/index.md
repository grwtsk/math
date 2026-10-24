# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Priority.Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c15f1ea379e6f97065036c43eee3f9b4801cf20",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c15f1ea379e6f97065036c43eee3f9b4801cf20`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Coordinates` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PriorityKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/prioritykey--d9c495b1da544ef103d5e33f.md) | 16 | `declaration-track:d9c495b1da544ef103d5e33f90e5780f5d3d87d81f381b68f477490cc975dfa5` |
| 2 | `def` | [BeaconFamily.priorityKey](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/beaconfamily-prioritykey--aee115cd5887a26f3e50f34a.md) | 24 | `declaration-track:aee115cd5887a26f3e50f34a085e8f320d99c6f3757155f760fa0499df83a4fe` |
| 3 | `inductive` | [ComparatorOrderKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/comparatororderkind--d8bb8f5b5c238a242c7bc3f9.md) | 55 | `declaration-track:d8bb8f5b5c238a242c7bc3f93ffe975bf5c306e354352125400be4b3883599c2` |
| 4 | `structure` | [ProofCarryingComparator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/proofcarryingcomparator--1c61bc9ecbb3722304b64899.md) | 61 | `declaration-track:1c61bc9ecbb3722304b6489956548bc475ef19abc904766b6d37581958145f00` |
| 5 | `def` | [PriorityLess](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/priorityless--a6482e4704cd394f2c1222bc.md) | 76 | `declaration-track:a6482e4704cd394f2c1222bce041088dfd3ca40e39052f92e380a7bcd8ceeabe` |
| 6 | `theorem` | [priorityLess_iff_compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/priorityless-iff-compare--adb4373767e339442d5fa08e.md) | 83 | `result-track:adb4373767e339442d5fa08e900c4e57e53f32f45864c4bd47d76573c1d4191d` |
| 7 | `theorem` | [priorityLess_irreflexive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/priorityless-irreflexive--4ff2706bcc8e167a438e806a.md) | 92 | `result-track:4ff2706bcc8e167a438e806a0020084e673aa694da1e55fc2d9036e84c168ea8` |
| 8 | `theorem` | [priorityLess_transitive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/declarations/priorityless-transitive--c43eee0a9a56d9888e0c0bc5.md) | 100 | `result-track:c43eee0a9a56d9888e0c0bc536eae5ddf231a6a54cf589d4ff7caae9272e34cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
