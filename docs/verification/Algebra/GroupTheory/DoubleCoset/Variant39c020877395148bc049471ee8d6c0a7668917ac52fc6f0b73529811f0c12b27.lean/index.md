# Verification target: GRWTSK.Algebra.GroupTheory.DoubleCoset.Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b64b7034f64624fa09974b59dc783ec457d2a3e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b64b7034f64624fa09974b59dc783ec457d2a3e`.

Source path: `GRWTSK/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/doset--f61d5105287a468b03b18043.md) | 33 | `declaration-track:f61d5105287a468b03b18043b052872a8b9dd72d24c1de1dc2cdecf8d19183c5` |
| 2 | `lemma` | [doset_eq_image2](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/doset-eq-image2--acd135b6776445ca78d39254.md) | 36 | `result-track:acd135b6776445ca78d39254ddfc3201c558f3b57a4722687b7163e9435094c1` |
| 3 | `theorem` | [mem_doset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/mem-doset--7543707b2eebe96c913a8b28.md) | 39 | `result-track:7543707b2eebe96c913a8b2830cddd21da2c08a14f84318d9432b62b300db8f5` |
| 4 | `theorem` | [mem_doset_self](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/mem-doset-self--3aaaab72b84b4f7ed02b3751.md) | 42 | `result-track:3aaaab72b84b4f7ed02b37514d60488c568effdba0ab806af9a11f921ae0edac` |
| 5 | `theorem` | [doset_eq_of_mem](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/doset-eq-of-mem--9bd07ae77ce4fcee9f95e726.md) | 45 | `result-track:9bd07ae77ce4fcee9f95e726955ce2175a45560020db698790a738dc0a0a3cf4` |
| 6 | `theorem` | [mem_doset_of_not_disjoint](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/mem-doset-of-not-disjoint--89dfb313f6e5ca5411828258.md) | 52 | `result-track:89dfb313f6e5ca541182825802a391a998aca4cf8bfdbbca1ef9fe68ff4c6f03` |
| 7 | `theorem` | [eq_of_not_disjoint](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/eq-of-not-disjoint--789caa44ab3f9fc8f7aab31a.md) | 60 | `result-track:789caa44ab3f9fc8f7aab31a3593876ad3fee14dbeaaf941269f2d67a3c87cf0` |
| 8 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/setoid--1b4ab978bf563aede2858c42.md) | 67 | `declaration-track:1b4ab978bf563aede2858c427f60158f8b30e2e1b16b3c916ae86e956122bf59` |
| 9 | `def` | [Quotient](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/quotient--1112ce46b7a722fe45c76cac.md) | 71 | `declaration-track:1112ce46b7a722fe45c76cac05823df99a713ef843b4bc96a553b464ba96dd6d` |
| 10 | `theorem` | [rel_iff](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/rel-iff--6a5ce962bfed6b16e7d18653.md) | 74 | `result-track:6a5ce962bfed6b16e7d1865364515164a5195ae6cff013f50b1a0ec8820e0144` |
| 11 | `theorem` | [bot_rel_eq_leftRel](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/bot-rel-eq-leftrel--17c5df82cc35f92e9b071999.md) | 80 | `result-track:17c5df82cc35f92e9b071999add18650d4f4c93e2d4f4529299e3b518c994478` |
| 12 | `theorem` | [rel_bot_eq_right_group_rel](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/rel-bot-eq-right-group-rel--62fa1bb3a42ca90fc5f27b5a.md) | 90 | `result-track:62fa1bb3a42ca90fc5f27b5a8956fce881f7f2955b14be31990811e8b6c184a9` |
| 13 | `def` | [quotToDoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/quottodoset--63c9af668b0998450e8d9e43.md) | 101 | `declaration-track:63c9af668b0998450e8d9e43e9346cb24e2d59b676af185cf7ace1e336034bee` |
| 14 | `abbrev` | [mk](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/mk--b39294249f187c078ea3c43d.md) | 105 | `declaration-track:b39294249f187c078ea3c43d1d639f6d1ac88aee6c4d33eded926093f5b14572` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/instance--a2387e9043d0093571a3779f.md) | 108 | `declaration-track:a2387e9043d0093571a3779f4b53fef18b4925fa80390317847160541d5a9719` |
| 16 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/eq--e440decc4ccb784c30ceca13.md) | 111 | `result-track:e440decc4ccb784c30ceca1344ceac6acc14a913b5b9f6be746a94bd04124043` |
| 17 | `theorem` | [out_eq'](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/out-eq--9e2c47550d0f2ec1fd820c78.md) | 116 | `result-track:9e2c47550d0f2ec1fd820c78ed1398e4631b887f2e34466bf283243de4ef86f7` |
| 18 | `theorem` | [mk_out_eq_mul](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/mk-out-eq-mul--bcf128b07b2b24151a0b9aaa.md) | 119 | `result-track:bcf128b07b2b24151a0b9aaa80ba0a1b129481c2fd30e65a2b443c29125a4640` |
| 19 | `theorem` | [mk_eq_of_doset_eq](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/mk-eq-of-doset-eq--73c133bf941c8a4632cf7a68.md) | 127 | `result-track:73c133bf941c8a4632cf7a6869bd57256dceb76dc29e1d694615721b63ddd3e9` |
| 20 | `theorem` | [disjoint_out](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/disjoint-out--381328c2820a2c7373eac00e.md) | 132 | `result-track:381328c2820a2c7373eac00eeeebdc99015191bc510a0aa0fb9f1076a14f135e` |
| 21 | `theorem` | [union_quotToDoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/union-quottodoset--97be7147dbde0dae388fc3e1.md) | 138 | `result-track:97be7147dbde0dae388fc3e12a3f558a473b6aeb68b453930f55142c2c96746f` |
| 22 | `theorem` | [doset_union_rightCoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/doset-union-rightcoset--18516bb25dc72522006716b3.md) | 147 | `result-track:18516bb25dc72522006716b341498c72c195bdeab668340ba9f51258c35e91c3` |
| 23 | `theorem` | [doset_union_leftCoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/doset-union-leftcoset--bb7a87e0468958dccb07bf8c.md) | 160 | `result-track:bb7a87e0468958dccb07bf8cbd6cc5147f92a33078e0417197d705a371302bfe` |
| 24 | `theorem` | [left_bot_eq_left_quot](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/left-bot-eq-left-quot--3a038278f52e9dab47f9e129.md) | 172 | `result-track:3a038278f52e9dab47f9e1291896b80f8d95970f94890217f537d205db784bf2` |
| 25 | `theorem` | [right_bot_eq_right_quot](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/declarations/right-bot-eq-right-quot--2c9e321351217d640bd6e1c3.md) | 179 | `result-track:2c9e321351217d640bd6e1c3ed0407e0912afe1e5f55d10bb6819d766b2d41ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
