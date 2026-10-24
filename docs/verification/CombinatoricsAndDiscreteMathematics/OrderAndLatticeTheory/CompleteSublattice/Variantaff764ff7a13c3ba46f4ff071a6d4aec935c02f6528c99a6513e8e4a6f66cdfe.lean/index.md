# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteSublattice.Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eb523be561dbe3261300584e2d09886826863a4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eb523be561dbe3261300584e2d09886826863a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Sublattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompleteSublattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/completesublattice--27bb3376d740df69f7d47785.md) | 33 | `declaration-track:27bb3376d740df69f7d477853e8b804a5a600b49e193eee3bfe3b6b16b9a6320` |
| 2 | `def` | [mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/mk--25b06df78b6f4e87497f7f45.md) | 43 | `declaration-track:25b06df78b6f4e87497f7f45000d09db22dd9f90c6eca45f66a72d7ac2d18b90` |
| 3 | `instance` | [instSetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instsetlike--bba152675690b2d14dfaba7d.md) | 59 | `declaration-track:bba152675690b2d14dfaba7dccc0f4e0e9aeecf01873235b40f4ebb274c98bfe` |
| 4 | `instance` | [instBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instbot--52f6be8f57284cd1ef59176b.md) | 63 | `declaration-track:52f6be8f57284cd1ef59176b9e4bdf9e4475df24f37b472a93b78973ae1f36ec` |
| 5 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/insttop--6b46e0e9e72d8e524464b195.md) | 66 | `declaration-track:6b46e0e9e72d8e524464b1953ba1efcfe3a88b4cff863aa45ac43d7f7e5a59bf` |
| 6 | `instance` | [instSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instsupset--6917683c9773717f2b61ba81.md) | 69 | `declaration-track:6917683c9773717f2b61ba8106953a720f18286858df4db0b26607aaad4ef7f3` |
| 7 | `instance` | [instInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instinfset--4b1f1f8fc61035a2e5a532b0.md) | 72 | `declaration-track:4b1f1f8fc61035a2e5a532b03997496d7f968bf2af9cfbb90bd878c1f46ae7bd` |
| 8 | `theorem` | [sSupClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/ssupclosed--ab2e1c4c954cf854b3014f66.md) | 75 | `result-track:ab2e1c4c954cf854b3014f6607f0801b88d79ab2aa74cc6581b2bc02191817e7` |
| 9 | `theorem` | [sInfClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/sinfclosed--62a953dfa4d65e745afb1577.md) | 77 | `result-track:62a953dfa4d65e745afb1577f5e85db59de44f3e3e7826bb31cda89ec65e3325` |
| 10 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-bot--4fd00425ce540226c36baa52.md) | 79 | `result-track:4fd00425ce540226c36baa52b3714dac8cc076c72fb966757d02660cbb43fc96` |
| 11 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-top--08a9f5aa890e48a71de3256b.md) | 81 | `result-track:08a9f5aa890e48a71de3256bb2f5e13df6e9df4d0723a9a41847f2fcf7d6ace8` |
| 12 | `theorem` | [coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-ssup--6532f5b5aaa47902662b8d48.md) | 83 | `result-track:6532f5b5aaa47902662b8d488f547647ab4ec5b5a34843a3948b0ca2063c1226` |
| 13 | `theorem` | [coe_sSup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-ssup--0e830bfec8eda0666c5680bc.md) | 85 | `result-track:0e830bfec8eda0666c5680bc4b8515cf948293b459e72efacafd7e6af711d290` |
| 14 | `theorem` | [coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-sinf--cc21768768871aef4c4a4c7c.md) | 88 | `result-track:cc21768768871aef4c4a4c7c67669d139e6d667907defcd07dc3ed63e6a3cd53` |
| 15 | `theorem` | [coe_sInf'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-sinf--adb5edcdcc5ba1d891ee3ac6.md) | 90 | `result-track:adb5edcdcc5ba1d891ee3ac6ad5367319f28d02efadf4fef2452e002ead07169` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instance--8c8ab1bd0a46af09e26e762d.md) | 94 | `declaration-track:8c8ab1bd0a46af09e26e762dfc480336acb5155404f975a68ac86150279d5694` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instance--0e830d181a511d0fe7fe31e3.md) | 95 | `declaration-track:0e830d181a511d0fe7fe31e3d9258b2b1e562a3e5d4b7fef5ba369a77294c95d` |
| 18 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instcompletelattice--203346e235a2e1dbd2534d82.md) | 97 | `declaration-track:203346e235a2e1dbd2534d8289314c4b077d1f55c3f3384fba79f99ff84ced67` |
| 19 | `def` | [subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/subtype--3093c7302a5f9f7d043c767d.md) | 102 | `declaration-track:3093c7302a5f9f7d043c767df72a65e5895d87edd19c8bc834f4afe1e65864eb` |
| 20 | `lemma` | [coe_subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-subtype--d04340cb64625bc4807c41d2.md) | 107 | `result-track:d04340cb64625bc4807c41d28a5355c1cebbe2cdb338372d91a439998bfce693` |
| 21 | `lemma` | [subtype_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/subtype-apply--958ac37195843c10f5f84032.md) | 108 | `result-track:958ac37195843c10f5f840329ddb2efc53c28bc8b6f3daa0614d17d5a6f26a79` |
| 22 | `lemma` | [subtype_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/subtype-injective--56759f4a2355cdc50ab26eb5.md) | 110 | `result-track:56759f4a2355cdc50ab26eb54fc10db46cd66ca0230e17f06eaec1f5b7fe3858` |
| 23 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/map--9cba37cdc7261096fa342480.md) | 115 | `declaration-track:9cba37cdc7261096fa34248010059d2de477f4d03b665ea8ba3bba7067a39b41` |
| 24 | `theorem` | [mem_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/mem-map--d527483093d6752989dccd07.md) | 128 | `result-track:d527483093d6752989dccd073e603ebad1eb0303d1eb1d1618404566fe6607f9` |
| 25 | `def` | [comap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/comap--471166649df0deffa1e6cb5b.md) | 131 | `declaration-track:471166649df0deffa1e6cb5b595f9f08fb2abd00da929039ea45f8235a24c2b7` |
| 26 | `theorem` | [mem_comap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/mem-comap--b39757e3615a7d35152aef2f.md) | 140 | `result-track:b39757e3615a7d35152aef2f2528d770189856f0c8ad9d162b8a6bfc895097df` |
| 27 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/disjoint-iff--a2ace71a417f9941efd778ea.md) | 142 | `result-track:a2ace71a417f9941efd778ea6f46a3f40ab90335ac2155a8e6e52f8a77f54183` |
| 28 | `lemma` | [codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/codisjoint-iff--4ad5e2fc46a927d6540a4b72.md) | 147 | `result-track:4ad5e2fc46a927d6540a4b72d77a8145fa532089d0baaf34a37c8164c6d3331d` |
| 29 | `lemma` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/iscompl-iff--0d42c6c6596f796d3f9c84e7.md) | 152 | `result-track:0d42c6c6596f796d3f9c84e70c24734356ac5f39a68d6c7fd56b24041b030d17` |
| 30 | `lemma` | [isComplemented_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/iscomplemented-iff--aac7cd3b6393336cdcf68c87.md) | 156 | `result-track:aac7cd3b6393336cdcf68c87f194927f03da8bb14d3d70929bfb71b24fe71278` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/instance--179b583f3d54f96435c9ff84.md) | 163 | `declaration-track:179b583f3d54f96435c9ff84899015cc7beb86b7eb49796bb5f87c98d804cff0` |
| 32 | `def` | [copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/copy--75e222eeb47ba090ddb63f27.md) | 169 | `declaration-track:75e222eeb47ba090ddb63f27943bd8b7225fc25d183baccd499551149e96557e` |
| 33 | `lemma` | [coe_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/coe-copy--294e53adb7768757a31b2275.md) | 172 | `result-track:294e53adb7768757a31b2275801bd3b0db686243307f1411a1de30ff9c51bea8` |
| 34 | `lemma` | [copy_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/copy-eq--b5fa0a7825bd4e26bf08970c.md) | 174 | `result-track:b5fa0a7825bd4e26bf08970ce476bc2f5dc8472fef11613bf2cd543a9761150e` |
| 35 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/range--113933b53838657263287610.md) | 183 | `declaration-track:113933b53838657263287610496a34068288b8de8d4bf145c5034a8448fb82c2` |
| 36 | `theorem` | [range_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/range-coe--8a43e2f6d084ccff7b28082e.md) | 186 | `result-track:8a43e2f6d084ccff7b28082e7cbac78589cff063855d921a17ffb451850f7bca` |
| 37 | `def` | [toOrderIsoRangeOfInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantaff764ff7a13c3ba46f4ff071a6d4aec935c02f6528c99a6513e8e4a6f66cdfe.lean/declarations/toorderisorangeofinjective--5219a53dc3bf282fb0ba8c3f.md) | 189 | `declaration-track:5219a53dc3bf282fb0ba8c3f96d1678afd75a1ff7a87a25d05e57cb54760df1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
