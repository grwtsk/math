# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Map.Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "022c5b29a454a9cf592056d3d68e6f35722f5a88",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `022c5b29a454a9cf592056d3d68e6f35722f5a88`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/map--2bbcbe7a4300a52df567de62.md) | 37 | `declaration-track:2bbcbe7a4300a52df567de62686d24f687f0674eee0489154fc7fa107a04e9e5` |
| 2 | `theorem` | [succ?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/succ-eq-none-iff--e5f6f4ac90395e929c27251c.md) | 47 | `result-track:e5f6f4ac90395e929c27251cd977adbcd5c4b3aa7691ca2544c7fb7e8a38b3fc` |
| 3 | `theorem` | [succ?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/succ-eq-some-iff--bf66a6a0b32c68d25ca99689.md) | 51 | `result-track:bf66a6a0b32c68d25ca996894da81fed6da393f9887fe0d07ad87e52a8e8bb04` |
| 4 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/le-iff--f7e54303c7fc519a9a27faf3.md) | 55 | `result-track:f7e54303c7fc519a9a27faf333422d8ff73ab3cde2d729473a08339f0ee0135f` |
| 5 | `theorem` | [lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/lt-iff--cbcecf175c5f7210ededec59.md) | 61 | `result-track:cbcecf175c5f7210ededec59a21987f948bf4f23667054bfcbc56af8f3980c76` |
| 6 | `theorem` | [succ?_toFun'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/succ-tofun--b594d15beaff1b1beb542ec3.md) | 67 | `result-track:b594d15beaff1b1beb542ec3e49026c0a6206c12ad89240ef47e9e5f001e2bac` |
| 7 | `class` | [PreservesLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/preservesle--7dbc493d5f327253f7ef0c92.md) | 72 | `declaration-track:7dbc493d5f327253f7ef0c92585635ee2d6b842988b696a6fb5e736d3ca18fc7` |
| 8 | `class` | [PreservesLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/preserveslt--b56eea7acd6fd39501c8fa72.md) | 76 | `declaration-track:b56eea7acd6fd39501c8fa7207e93803f433fe1777c8cae85ef63220dfdde353` |
| 9 | `class` | [PreservesRxcSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/preservesrxcsize--ef050d9e4ee6719ac528bc00.md) | 80 | `declaration-track:ef050d9e4ee6719ac528bc007287fe9267355152f3289842711b8c4a8c5401e6` |
| 10 | `class` | [PreservesRxoSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/preservesrxosize--457ef34d952b29e4db60fee0.md) | 84 | `declaration-track:457ef34d952b29e4db60fee031277082bef727d482c3463202bad3b4f2cd7a61` |
| 11 | `class` | [PreservesRxiSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/preservesrxisize--66faf502776de17d30dbf38e.md) | 88 | `declaration-track:66faf502776de17d30dbf38e7a6d5fd2f70455bcb25921915c425fd3ac198284` |
| 12 | `class` | [PreservesLeast?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/preservesleast--d0679b3bc799cfc41d2974c2.md) | 92 | `declaration-track:d0679b3bc799cfc41d2974c2a27085e7c24da83f6d813c062c0f236a7601600f` |
| 13 | `theorem` | [LawfulUpwardEnumerable.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/lawfulupwardenumerable-ofmap--a07a8341162d078c2a46bcca.md) | 101 | `result-track:a07a8341162d078c2a46bccad23359d61a2659c13bff86e88c5ac68964fbca8c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/instance--b6ac7d8e3544370fb6168ed9.md) | 113 | `declaration-track:b6ac7d8e3544370fb6168ed9b31b6ab805dd8941811de0046edc2b60ac61c2b5` |
| 15 | `theorem` | [LawfulUpwardEnumerableLE.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/lawfulupwardenumerablele-ofmap--7c69b401aebb1e7e1df53cf1.md) | 117 | `result-track:7c69b401aebb1e7e1df53cf119fe2b4f65e28837dd68628cfdc3b4a1773d5ab9` |
| 16 | `theorem` | [LawfulUpwardEnumerableLT.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/lawfulupwardenumerablelt-ofmap--c6282612a5a1c6fd2dae19d8.md) | 121 | `result-track:c6282612a5a1c6fd2dae19d870b6c14083a4bbf163c9b898c4d784f87866ea53` |
| 17 | `theorem` | [LawfulUpwardEnumerableLeast?.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/lawfulupwardenumerableleast-ofmap--793dc79a142a1286ba44b79f.md) | 125 | `result-track:793dc79a142a1286ba44b79fd3dd2354b6968231867147a96666534a54e1bc39` |
| 18 | `theorem` | [Rxc.LawfulHasSize.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/rxc-lawfulhassize-ofmap--971683a5333d5cb1c53b3b3d.md) | 142 | `result-track:971683a5333d5cb1c53b3b3dae99096005ddd283b604650727451249805798e9` |
| 19 | `theorem` | [Rxo.LawfulHasSize.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/rxo-lawfulhassize-ofmap--ba6ff4bd23ce5f91e5036ee5.md) | 156 | `result-track:ba6ff4bd23ce5f91e5036ee5abc49293257894baff9397a92343acc0299a06ff` |
| 20 | `theorem` | [Rxi.LawfulHasSize.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/rxi-lawfulhassize-ofmap--a27344eb1664d810a0b9cafb.md) | 170 | `result-track:a27344eb1664d810a0b9cafb1d4d2f2b165a0239858d5da518ef06df9dde0abd` |
| 21 | `theorem` | [Rxc.IsAlwaysFinite.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/rxc-isalwaysfinite-ofmap--f41d235a6b9404f7efc6ed7b.md) | 179 | `result-track:f41d235a6b9404f7efc6ed7b20d51a77b381998268b09abab64cf18dc0e89763` |
| 22 | `theorem` | [Rxo.IsAlwaysFinite.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/rxo-isalwaysfinite-ofmap--78aad027d8b89cdadde1b02b.md) | 185 | `result-track:78aad027d8b89cdadde1b02b59bf64e31d73dc73d43499a9af3a9ab77be86925` |
| 23 | `theorem` | [Rxi.IsAlwaysFinite.ofMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/declarations/rxi-isalwaysfinite-ofmap--556449284586b75735bc6e63.md) | 191 | `result-track:556449284586b75735bc6e63db4bbdd33de104a6836c203caf8f80e5abbe5b30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
