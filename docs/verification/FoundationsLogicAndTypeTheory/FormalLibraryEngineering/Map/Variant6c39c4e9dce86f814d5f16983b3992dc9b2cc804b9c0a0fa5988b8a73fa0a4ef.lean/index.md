# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Map.Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf82671c04752c76fddc75524ad7ab2eecfbd9d6",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf82671c04752c76fddc75524ad7ab2eecfbd9d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Function` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/map--98000add6daccebba7a496d0.md) | 45 | `declaration-track:98000add6daccebba7a496d0b1981e5f1caee4a37edfbeb3b9d98bc0e2e49202` |
| 2 | `theorem` | [succ?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/succ-eq-none-iff--c2260c24ca7970fefd109f28.md) | 55 | `result-track:c2260c24ca7970fefd109f286ddd62fd538cbba6cf5d269a1efa8ee9b5665d85` |
| 3 | `theorem` | [succ?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/succ-eq-some-iff--3fb524a24cccad245fe87084.md) | 59 | `result-track:3fb524a24cccad245fe87084f7b5abdb2358e036b5a33e3db44d16e9e4cb4796` |
| 4 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/le-iff--e920a91d81f6bedea1e16e73.md) | 63 | `result-track:e920a91d81f6bedea1e16e73b195d4aaea964cefaa7581a652372b50a867dbfe` |
| 5 | `theorem` | [lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/lt-iff--fe638f35bfe6b1b03e9cc21b.md) | 69 | `result-track:fe638f35bfe6b1b03e9cc21b3b4367bc5d2d6308b8da18c5b7bdacfd022ad30e` |
| 6 | `theorem` | [succ?_toFun'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/succ-tofun--dc4855512e681825f34baaef.md) | 75 | `result-track:dc4855512e681825f34baaef11a2ca348bae4a77b6aff36e825a5b7c1dc0cf53` |
| 7 | `class` | [PreservesLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/preservesle--b96a98f2a7f14a9e85c52728.md) | 80 | `declaration-track:b96a98f2a7f14a9e85c52728680fe5f2aacb531b449fa114f107c254040089c9` |
| 8 | `class` | [PreservesLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/preserveslt--af8364c98afea377e14186bf.md) | 84 | `declaration-track:af8364c98afea377e14186bfec240c6d60be6bdf0c522a3a1d40ca1984c0c44e` |
| 9 | `class` | [PreservesRxcSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/preservesrxcsize--3a719aeeb66ce39f1b675a9e.md) | 88 | `declaration-track:3a719aeeb66ce39f1b675a9e96a112f9d6b53a0117cebf597a5fce21e7c883b2` |
| 10 | `class` | [PreservesRxoSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/preservesrxosize--4f5275abf2a4d737ea11e89d.md) | 92 | `declaration-track:4f5275abf2a4d737ea11e89d35bffd057dcc37defb3764f9679f1819bd4158e6` |
| 11 | `class` | [PreservesRxiSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/preservesrxisize--977fc7e056f2d30216bb6282.md) | 96 | `declaration-track:977fc7e056f2d30216bb6282e0b69b1ced1e8035567e18fcdfb58d94cc47b2ce` |
| 12 | `class` | [PreservesLeast?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/preservesleast--4923b9b29a5785000c4ca3cf.md) | 100 | `declaration-track:4923b9b29a5785000c4ca3cf465c8096787e5912e8d959b5158a05f132c00683` |
| 13 | `theorem` | [LawfulUpwardEnumerable.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/lawfulupwardenumerable-ofmap--04f4081bc69390fef945498f.md) | 109 | `result-track:04f4081bc69390fef945498ffb8200678896f79c9f51b0621824f8a93a80796e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/instance--346af9bca87a21c9a4bf6414.md) | 121 | `declaration-track:346af9bca87a21c9a4bf641458b193b21812216cb4ba4bd839e5bbc2adb5c653` |
| 15 | `theorem` | [LawfulUpwardEnumerableLE.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/lawfulupwardenumerablele-ofmap--8e21e95b5151d65bd351e84f.md) | 125 | `result-track:8e21e95b5151d65bd351e84f5e22dac6b6fc5b44900041a234db9809aac41338` |
| 16 | `theorem` | [LawfulUpwardEnumerableLT.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/lawfulupwardenumerablelt-ofmap--4256802828b5b90501dbf19f.md) | 129 | `result-track:4256802828b5b90501dbf19f72334953957bbabe90c53b6b1c8535c41233558a` |
| 17 | `theorem` | [LawfulUpwardEnumerableLeast?.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/lawfulupwardenumerableleast-ofmap--539a1d7e6b5ee9e88f1f65e9.md) | 133 | `result-track:539a1d7e6b5ee9e88f1f65e9a94cda5861fd03eae045a959991be5425e113fac` |
| 18 | `theorem` | [Rxc.LawfulHasSize.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/rxc-lawfulhassize-ofmap--b3ed66989a99f766b18bbdf7.md) | 150 | `result-track:b3ed66989a99f766b18bbdf734b43b192e23e2f96b773bae2160fb5458be3fa7` |
| 19 | `theorem` | [Rxo.LawfulHasSize.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/rxo-lawfulhassize-ofmap--208b861909e7e492c09d81a9.md) | 164 | `result-track:208b861909e7e492c09d81a9b8896cb7764bc88eb1457939ed53745d3e449779` |
| 20 | `theorem` | [Rxi.LawfulHasSize.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/rxi-lawfulhassize-ofmap--042b85667ff52ef3bb9ad2c7.md) | 178 | `result-track:042b85667ff52ef3bb9ad2c75057c8be8ebfaf8eca906e649162d335a561e6fa` |
| 21 | `theorem` | [Rxc.IsAlwaysFinite.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/rxc-isalwaysfinite-ofmap--5b03820236174692e74b5dd1.md) | 187 | `result-track:5b03820236174692e74b5dd1402f5d4f9528f959ea4e9075df69c588d777c10e` |
| 22 | `theorem` | [Rxo.IsAlwaysFinite.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/rxo-isalwaysfinite-ofmap--61ffef5eb441bc9ff5ab3d51.md) | 193 | `result-track:61ffef5eb441bc9ff5ab3d51916ff7b6b3d24c1153eae7cb5c41669f38ff2a57` |
| 23 | `theorem` | [Rxi.IsAlwaysFinite.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/declarations/rxi-isalwaysfinite-ofmap--885708b1651af1313a36c7f2.md) | 199 | `result-track:885708b1651af1313a36c7f2b999e020a2f735de45beaf18a9e6ff07a35d51bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
