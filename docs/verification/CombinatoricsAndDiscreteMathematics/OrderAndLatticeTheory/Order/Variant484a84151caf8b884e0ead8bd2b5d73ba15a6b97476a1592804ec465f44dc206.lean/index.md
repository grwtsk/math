# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "066d8dc25cd143224d57cdf6ad87f250dc9d3dce",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `066d8dc25cd143224d57cdf6ad87f250dc9d3dce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/le--e8ee8dd39b15802ecd18372a.md) | 60 | `declaration-track:e8ee8dd39b15802ecd18372a10ec3b39ff05538b412006af20b08fb815c5d28e` |
| 2 | `inductive` | [LT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/lt--e9575b58bbae8ed5c73d7822.md) | 64 | `declaration-track:e9575b58bbae8ed5c73d78226d421750ad24eb0d2afff50bbc03660707ffde29` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/instance--2a35520e21e28374947127a3.md) | 67 | `declaration-track:2a35520e21e28374947127a33c23f181036cd5646b71270a32eaf058a4be2bea` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/instance--ed2ae522929e4b15eae83c07.md) | 70 | `declaration-track:ed2ae522929e4b15eae83c077075aa5c5792e289f631b7fc379d83a6fa9ed9af` |
| 5 | `theorem` | [mk_le_mk_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/mk-le-mk-iff--82dc208aee741b2b4c27646f.md) | 74 | `result-track:82dc208aee741b2b4c27646f30ffc84bf975de27de8433c25dcdd311daa26379` |
| 6 | `theorem` | [mk_lt_mk_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/mk-lt-mk-iff--38036de6de4b3b2b1349b8d2.md) | 78 | `result-track:38036de6de4b3b2b1349b8d21c76a6882b4c45623883ff929c771295a4026d92` |
| 7 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/le-def--c8e051fb8dc841e5554bcb8c.md) | 81 | `result-track:c8e051fb8dc841e5554bcb8c235565c9a56571286740e46755054c72e3a7dd40` |
| 8 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/lt-def--b8165c90c7a7560918862050.md) | 90 | `result-track:b8165c90c7a756091886205086c9db605c6846e73821525e9909cab208c962a2` |
| 9 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/preorder--397f2b2abcec8c12f085320d.md) | 99 | `declaration-track:397f2b2abcec8c12f085320ded43c2198797b4d1c76647e7f7238936848f44df` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/instance--4712b3633cb3b22535aa0e45.md) | 112 | `declaration-track:4712b3633cb3b22535aa0e45b1cd289ac83e286df00c0bab923b370f440af867` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/instance--e17b4f7d0a35edd40c32fee7.md) | 118 | `declaration-track:e17b4f7d0a35edd40c32fee714cb0ba328a8e632437467a5d601b5e7632afe28` |
| 12 | `instance` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/le--35291d8fb910db5f9a07a415.md) | 132 | `declaration-track:35291d8fb910db5f9a07a4157c6377298c10e0b5b06d2dddcbd670efbf0b8685` |
| 13 | `instance` | [LT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/lt--7baa7e95312e2c8a69a43f0c.md) | 136 | `declaration-track:7baa7e95312e2c8a69a43f0c78dff7de082e247c175e26797e04a41a8e5e21c0` |
| 14 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/le-def--e12b9da920f3b5aace296f10.md) | 139 | `result-track:e12b9da920f3b5aace296f10b79e35e632839a8d66d2e87ba7c6a4804646174e` |
| 15 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/lt-def--d386f4788ae019c6c628b74b.md) | 143 | `result-track:d386f4788ae019c6c628b74bb54822ad65c6da1d58b89943611f34293f3461d0` |
| 16 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/preorder--5f72c9dade8f7fc55f4672d7.md) | 148 | `declaration-track:5f72c9dade8f7fc55f4672d7de3f0420a7e3114b793528e12a3a7bfb368627b3` |
| 17 | `instance` | [partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/partialorder--e7bce652f56d1c3a2d85b0dc.md) | 164 | `declaration-track:e7bce652f56d1c3a2d85b0dc99b3f530a8df852ef652a3ae9657479da12e86da` |
| 18 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/linearorder--5e4d8d92f706a6f85400ba03.md) | 172 | `declaration-track:5e4d8d92f706a6f85400ba031c5f0cef16e3d2cf5ca67b8bb31411d78244a178` |
| 19 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/orderbot--3a1eb829f8de0aba9c238091.md) | 181 | `declaration-track:3a1eb829f8de0aba9c23809175def606b5020d3f095152e196fc49bf3b9969f9` |
| 20 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/ordertop--93bf6f831fd9168c5d9e1ee9.md) | 190 | `declaration-track:93bf6f831fd9168c5d9e1ee98649c6a7b86e4f73efad3791287785124606092f` |
| 21 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/boundedorder--ed1e1f563a91bc31351744f5.md) | 199 | `declaration-track:ed1e1f563a91bc31351744f5d608e8b9502a9077fc0a9b2fb527daca9981f905` |
| 22 | `instance` | [denselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/denselyordered--c5c314ca4811d134318e556e.md) | 203 | `declaration-track:c5c314ca4811d134318e556eea5ae9dc6062df12402687b42045767bc44497a2` |
| 23 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/denselyordered-of-nomaxorder--86ddb959abe171778a01a76c.md) | 213 | `declaration-track:86ddb959abe171778a01a76c6fbe1c33f931eb3c162afdc97bab60b88be3e078` |
| 24 | `instance` | [denselyOrdered_of_noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/denselyordered-of-nominorder--7da5d8d4828e37eaa0843654.md) | 223 | `declaration-track:7da5d8d4828e37eaa08436544721ecc0dcc20cb539390a0d932f44922be24331` |
| 25 | `instance` | [noMaxOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/nomaxorder-of-nonempty--e13d19cb6462da0b176cf331.md) | 233 | `declaration-track:e13d19cb6462da0b176cf3310662bee70f88c48ba0dcefef635f52f91926e487` |
| 26 | `instance` | [noMinOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/nominorder-of-nonempty--5dbee840aa9ce54fbe8beadd.md) | 241 | `declaration-track:5dbee840aa9ce54fbe8beaddcf0cfb0b401edb408e045981cf869f7d17670a09` |
| 27 | `instance` | [noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/nomaxorder--9135d851d1ca6d37c62949e8.md) | 249 | `declaration-track:9135d851d1ca6d37c62949e840b1ef2159ab059d9aecb5df5eb1c5d832070d55` |
| 28 | `instance` | [noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant484a84151caf8b884e0ead8bd2b5d73ba15a6b97476a1592804ec465f44dc206.lean/declarations/nominorder--844a7dd461ec5fdea3d8f3ca.md) | 256 | `declaration-track:844a7dd461ec5fdea3d8f3cae9545fc4b16a6cdf63b8d3afef968cf5d78cf7aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
