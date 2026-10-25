# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definability.Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b24397be1b1450164059bad6a9a36ec3a7a02fe",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b24397be1b1450164059bad6a9a36ec3a7a02fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.SetLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable--b25913fed9e849be905598b0.md) | 54 | `declaration-track:b25913fed9e849be905598b05077faf5f705ec1e35681727ed7362cbf8012204` |
| 2 | `theorem` | [Definable.map_expansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-map-expansion--4a25a78c1ee6a545f806fee8.md) | 59 | `result-track:4a25a78c1ee6a545f806fee83826e1c28542919ad298ece303f39f083a915808` |
| 3 | `theorem` | [definable_iff_exists_formula_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-iff-exists-formula-sum--50070be2ad0abf35c2be7006.md) | 66 | `result-track:50070be2ad0abf35c2be700634382cc70c2b9acc2636efc2680978286d82aa8e` |
| 4 | `theorem` | [empty_definable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/empty-definable-iff--69f17497151bb030d0faa3b5.md) | 81 | `result-track:69f17497151bb030d0faa3b5c5d00dca9afd5310491e599861656ad3cb28b603` |
| 5 | `theorem` | [definable_iff_empty_definable_with_params](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-iff-empty-definable-with-params--20c5b79fe1703c4b92d60b58.md) | 86 | `result-track:20c5b79fe1703c4b92d60b5841d9313125f81f201175502705bc16d545c2fdbf` |
| 6 | `theorem` | [Definable.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-mono--698a6ffee7c1cb847115179b.md) | 90 | `result-track:698a6ffee7c1cb847115179b262dc16ce0f1fc43d280dbb7f50c4b9d34828a07` |
| 7 | `theorem` | [definable_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-empty--9d580c9f7de0191ed86f073a.md) | 95 | `result-track:9d580c9f7de0191ed86f073ad69baf8034a4f271b2517c0e645bde62e45d93a2` |
| 8 | `theorem` | [definable_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-univ--2279076ed000e077028082f1.md) | 101 | `result-track:2279076ed000e077028082f1405d8362fab7523184ecb442b18045c73385b698` |
| 9 | `theorem` | [Definable.inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-inter--f44f475544af389036d3cca0.md) | 107 | `result-track:f44f475544af389036d3cca064cc281f6d41c521bb9d0d50fd9cc70b85b265da` |
| 10 | `theorem` | [Definable.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-union--d3e857c9830a959454c71fb6.md) | 116 | `result-track:d3e857c9830a959454c71fb60b4b07c23a800d3fb91e426976b395839a68e776` |
| 11 | `theorem` | [definable_finset_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-finset-inf--4a3e176df227360a13c5d373.md) | 124 | `result-track:4a3e176df227360a13c5d373bee2dbdbceafaa4c92abbe82ada21bb4653b7651` |
| 12 | `theorem` | [definable_finset_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-finset-sup--69c0f4cccdd63d03c5ef4627.md) | 131 | `result-track:69c0f4cccdd63d03c5ef4627d954fc61d461e4f591651a2076de45922b9135d0` |
| 13 | `theorem` | [definable_finset_biInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-finset-biinter--1cddd2ae0f9d25c004790d02.md) | 138 | `result-track:1cddd2ae0f9d25c004790d02c9352254eb0c52145f0740658af837fce80c28b5` |
| 14 | `theorem` | [definable_finset_biUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-finset-biunion--2cb49650763a03aa079d70ec.md) | 143 | `result-track:2cb49650763a03aa079d70ec3e8b9793a4752e6584472585add9b9af4e3fff80` |
| 15 | `theorem` | [Definable.compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-compl--09736b82b40dd7b7885c7536.md) | 149 | `result-track:09736b82b40dd7b7885c753602daf27764c787f97a4cb7c6639d247487dd28d4` |
| 16 | `theorem` | [Definable.sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-sdiff--f4e0bb3c160db79801f4c402.md) | 156 | `result-track:f4e0bb3c160db79801f4c4021d51be26addcb334afbbeafb74286570024208e8` |
| 17 | `lemma` | [Definable.himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-himp--e5aca85451def1501078bfc8.md) | 160 | `result-track:e5aca85451def1501078bfc851dc7ef670733c2731cb2365bcce7526c290adaa` |
| 18 | `theorem` | [Definable.preimage_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-preimage-comp--20877be0625d1800727e9257.md) | 163 | `result-track:20877be0625d1800727e9257e8a3235468f36f7dae572820b1dd8fb6380b802d` |
| 19 | `theorem` | [Definable.image_comp_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-image-comp-equiv--acebdb56da3037bf26fd8d17.md) | 170 | `result-track:acebdb56da3037bf26fd8d17ec74dd562cfef5cc347b890c15fb63b38a2ce385` |
| 20 | `theorem` | [definable_iff_finitely_definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-iff-finitely-definable--54d805ab45266ecc6f3f47a8.md) | 181 | `result-track:54d805ab45266ecc6f3f47a8eb5725130edb871129430cd1689d462580aa96cc` |
| 21 | `theorem` | [Definable.image_comp_sumInl_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-image-comp-suminl-fin--a8662b4ee0cc60eb41fd92a9.md) | 198 | `result-track:a8662b4ee0cc60eb41fd92a926bf328aefde324c7a8ee52624a64341e7bbe3f8` |
| 22 | `theorem` | [Definable.image_comp_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-image-comp-embedding--9b08129292a28d935e11c820.md) | 216 | `result-track:9b08129292a28d935e11c8209350007f6af6d7e791769cc20de3f2963b641896` |
| 23 | `theorem` | [Definable.image_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable-image-comp--f686923a5e3744e7707a0c35.md) | 231 | `result-track:f686923a5e3744e7707a0c352748a74d058af9bb853143ee55d376f08f63499d` |
| 24 | `def` | [Definable₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable--9d9b54ef0d02fd6d1865a6cb.md) | 269 | `declaration-track:9d9b54ef0d02fd6d1865a6cb3344845651651f14efc243cc04dc6088daa865f3` |
| 25 | `def` | [Definable₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definable--10b064074f011a239d7104af.md) | 273 | `declaration-track:10b064074f011a239d7104af375e51f86096a2a9d10918c03332a9855c3c4e55` |
| 26 | `def` | [DefinableSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/definableset--556646d1f692118d03e63e3c.md) | 288 | `declaration-track:556646d1f692118d03e63e3cf826ca1ec32a0c1bd697beb16a98f97fe9a17716` |
| 27 | `instance` | [instSetLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instsetlike--dd2b3f8344d5d949d6801e92.md) | 296 | `declaration-track:dd2b3f8344d5d949d6801e9216a54dc50646a99717954e44e43c96801557e3c2` |
| 28 | `instance` | [instTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/insttop--49e22e6db247d697fbb61379.md) | 300 | `declaration-track:49e22e6db247d697fbb61379c89a7c1023a431d9b6499c443bec48e9f550a5ea` |
| 29 | `instance` | [instBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instbot--694242130571bef88294307e.md) | 303 | `declaration-track:694242130571bef88294307e91ffbb9de748d0dbfafdfe199cf74cfb212e300a` |
| 30 | `instance` | [instSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instsup--43d3904855d0f2f1b2c6777b.md) | 306 | `declaration-track:43d3904855d0f2f1b2c6777b477255a810e88d579d590e22bc2ad617cd48f554` |
| 31 | `instance` | [instInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instinf--28a9f7ba8e9c1d52ea756039.md) | 309 | `declaration-track:28a9f7ba8e9c1d52ea756039c7e483f20fa2477a212b31acac40f918865577d1` |
| 32 | `instance` | [instHasCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/insthascompl--f5ec2874a77075640ac5c9b1.md) | 312 | `declaration-track:f5ec2874a77075640ac5c9b159e88e93d76260f11a1ecb538c3c87abdfcff996` |
| 33 | `instance` | [instSDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instsdiff--f12c909c41f3a4232076afbb.md) | 315 | `declaration-track:f12c909c41f3a4232076afbb09b823c6f60be528649245b1cec5864cfb8cfeec` |
| 34 | `instance` | [instHImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/insthimp--ec7b461027dfc5f9d29a76d6.md) | 319 | `declaration-track:ec7b461027dfc5f9d29a76d6f4295f5d718984d4e35166afebd28ebfb15e26c8` |
| 35 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instinhabited--4c5776032596be01a7ba55e5.md) | 322 | `declaration-track:4c5776032596be01a7ba55e5718f22a3af8872603d18c355d3002cee6018bf1e` |
| 36 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/le-iff--7c9e564478c8c7dc4f686ef1.md) | 325 | `result-track:7c9e564478c8c7dc4f686ef1bd8f260bbd9b70c1f480211e4d19aa4a1c58f732` |
| 37 | `theorem` | [mem_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/mem-top--3bed95276ac8cf3bd0658c54.md) | 329 | `result-track:3bed95276ac8cf3bd0658c5415dd18611f8e826fae6abf8aaf021543a0204585` |
| 38 | `theorem` | [notMem_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/notmem-bot--c67627cf41fade47d8124e06.md) | 333 | `result-track:c67627cf41fade47d8124e0680dc43ccf2bb6cd01862e78196d25a8f04f6ad60` |
| 39 | `theorem` | [mem_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/mem-sup--ab6e3cf475a34ab748d944cc.md) | 339 | `result-track:ab6e3cf475a34ab748d944cceb154d498f5987e3a410445d9d853964b7f290ab` |
| 40 | `theorem` | [mem_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/mem-inf--5cdc0d72937fe6da2fe0cad0.md) | 343 | `result-track:5cdc0d72937fe6da2fe0cad0f357f5019240a5543c63321b76f9c19db78759e2` |
| 41 | `theorem` | [mem_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/mem-compl--a61e9b5f0d1e37e9d9dc7b0f.md) | 347 | `result-track:a61e9b5f0d1e37e9d9dc7b0f06984f6858cb05ae15e1d8eb7f77b7db4932bcf5` |
| 42 | `theorem` | [mem_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/mem-sdiff--2a4cc38f79574ebb9f299555.md) | 351 | `result-track:2a4cc38f79574ebb9f299555a8ea7b95889bc8c96ca65c53b9cb9eb260e7d33d` |
| 43 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-top--c58702dcf41950570710c1fe.md) | 355 | `result-track:c58702dcf41950570710c1feecfa14499e2d7cd2fbeacf57fa8a1e92eecd0530` |
| 44 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-bot--9f4a74d67fbf1c39e8ce34d8.md) | 359 | `result-track:9f4a74d67fbf1c39e8ce34d835f1462cf213fe8040f15db662f529d4aaeca255` |
| 45 | `theorem` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-sup--75505a049529a400dc00c612.md) | 363 | `result-track:75505a049529a400dc00c612745db6e94c41de15216422f67720cc2baf9ff615` |
| 46 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-inf--b4eb6f11433e2b364eb44525.md) | 368 | `result-track:b4eb6f11433e2b364eb445254669bb26b555967d3f4e9844189b3b512de9517e` |
| 47 | `theorem` | [coe_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-compl--5c4af2f0f1c981f7d7f4acf1.md) | 373 | `result-track:5c4af2f0f1c981f7d7f4acf132bf1a5840344e1ad7cda85908aa91a3214b636e` |
| 48 | `theorem` | [coe_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-sdiff--565820b7024c53fbe5c859f1.md) | 378 | `result-track:565820b7024c53fbe5c859f143d4e5982c89f82de5cdc8926a50bd5c0224a25a` |
| 49 | `lemma` | [coe_himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/coe-himp--4f11847f1a7b223aedd5cd64.md) | 383 | `result-track:4f11847f1a7b223aedd5cd64bfba81441fd62511f8b922cfa9f1908e0df501cb` |
| 50 | `instance` | [instBooleanAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variantc12c5cf0b604a45d43b55c58bfcd43a1dda43324c72e9589197258a2e4e4a979.lean/declarations/instbooleanalgebra--c6a7a17fcc351b3fb1aa8f82.md) | 385 | `declaration-track:c6a7a17fcc351b3fb1aa8f82157b55d61f5211a37765be3a8aab4ab9369fed79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
