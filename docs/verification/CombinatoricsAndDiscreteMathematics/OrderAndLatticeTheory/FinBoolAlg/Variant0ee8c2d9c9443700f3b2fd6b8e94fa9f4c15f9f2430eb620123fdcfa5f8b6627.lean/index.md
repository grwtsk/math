# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlg.Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38ccfda8f9a30245de250924504694cfb9484eff",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38ccfda8f9a30245de250924504694cfb9484eff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlg` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinBddDistLat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/finboolalg--58a216ca9400b7b3575c9237.md) | 36 | `declaration-track:58a216ca9400b7b3575c9237f4d9d704599809ccb52754bfc703b643068f4e04` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/instance--7b84d7b580720c0581ee5752.md) | 43 | `declaration-track:7b84d7b580720c0581ee5752b7f5bd7ad4c1c8feb083cdb1f44ee4a5b3690d73` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/of--82f66f05296b5d04d67ee9b6.md) | 47 | `declaration-track:82f66f05296b5d04d67ee9b63de53db60369378328986459c67ae309a5436647` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/coe-of--10f785cc0c74173cdac422bf.md) | 50 | `result-track:10f785cc0c74173cdac422bf46014803c788d6b746317980d682222c108dc66e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/instance--e08cc314af9d3fb7fb5031bb.md) | 53 | `declaration-track:e08cc314af9d3fb7fb5031bb0c3b29713dd6d8c12214587ffdb851c47598c942` |
| 6 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/largecategory--c22823719c528102cabf8e71.md) | 56 | `declaration-track:c22823719c528102cabf8e71315d3f6d1ee0efffc4674be61b5cdebf84d78a26` |
| 7 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/concretecategory--0eb203ea7c97506ab613a261.md) | 59 | `declaration-track:0eb203ea7c97506ab613a2615de724bb42bc009f0c0fb4074c814636a9d64a9d` |
| 8 | `instance` | [hasForgetToBoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/hasforgettoboolalg--07eada986b9f0f2358106e44.md) | 62 | `declaration-track:07eada986b9f0f2358106e44958d136a20a2d978bc25002429acedd59bf77a4c` |
| 9 | `instance` | [hasForgetToFinBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/hasforgettofinbdddistlat--0302ca822ba0dfa76a91e001.md) | 65 | `declaration-track:0302ca822ba0dfa76a91e001e573dcffa9efad3b44dfdb8a5762d022872ecf2e` |
| 10 | `instance` | [forgetToBoolAlg_full](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/forgettoboolalg-full--6513e8eda338655b7dfee8b2.md) | 69 | `declaration-track:6513e8eda338655b7dfee8b22fb4a6f3e22be54c11ba2542cb079943a0362f85` |
| 11 | `instance` | [forgetToBoolAlgFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/forgettoboolalgfaithful--7d96a2979231142d48b67c8c.md) | 72 | `declaration-track:7d96a2979231142d48b67c8c992b4e39613c4b35471cd80149a0b8516fbf215f` |
| 12 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/hasforgettofinpartord--0786cf9367a29fa03d72d7c7.md) | 76 | `declaration-track:0786cf9367a29fa03d72d7c76529e47503b5e7bd166b29e0c5640df1c0d322ed` |
| 13 | `instance` | [forgetToFinPartOrdFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/forgettofinpartordfaithful--bc7b20ff86bcbf128ee9c1b4.md) | 80 | `declaration-track:bc7b20ff86bcbf128ee9c1b4bc8da8a910ff0bb91d739909359c47e183b0b6df` |
| 14 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/iso-mk--5eb1ddbb3d17b1739faa3506.md) | 88 | `declaration-track:5eb1ddbb3d17b1739faa350625d54ba3c6bca9403656ba6dd1d169fcfe009857` |
| 15 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/dual--500f9345d90dde885ca53cca.md) | 96 | `declaration-track:500f9345d90dde885ca53cca2d4d663d3ddfa1cb90f6f38d56088d644a7509a1` |
| 16 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/dualequiv--e142d442f4c5f1bb2b59c3a5.md) | 102 | `declaration-track:e142d442f4c5f1bb2b59c3a5a8aebc0f8bbb0405937e85c3fd708d7370a1eda2` |
| 17 | `theorem` | [finBoolAlg_dual_comp_forget_to_finBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/finboolalg-dual-comp-forget-to-finbdddistlat--d171f4eb9781268d62ccd668.md) | 110 | `result-track:d171f4eb9781268d62ccd668acf24fad7664d72635c707eeb3cfb4ca0d356779` |
| 18 | `def` | [fintypeToFinBoolAlgOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant0ee8c2d9c9443700f3b2fd6b8e94fa9f4c15f9f2430eb620123fdcfa5f8b6627.lean/declarations/fintypetofinboolalgop--e5383befa8a85bc512b69522.md) | 117 | `declaration-track:e5383befa8a85bc512b69522057377b1ce7025a3f57686a1e1f1d81c2f883935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
