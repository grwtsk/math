# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.System.Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4904114c62de3f2091e69bca3dd61ce63d79b3a2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4904114c62de3f2091e69bca3dd61ce63d79b3a2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Quot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/system--b20a709c3fd214890dc5a8ab.md) | 31 | `declaration-track:b20a709c3fd214890dc5a8abc5c48c95df051f3863fa0ab12e887b80b7d11ae4` |
| 2 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/run--8e05897f42201d6c5b049a0b.md) | 46 | `declaration-track:8e05897f42201d6c5b049a0bfbf2c860355dc4bc28df30b03809741b6390e516` |
| 3 | `theorem` | [run_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/run-nil--f005bb56cbf6fdadc6dc334e.md) | 51 | `result-track:f005bb56cbf6fdadc6dc334ea84eae0eada708c24f62cc1bb9dc15c628f3ced8` |
| 4 | `theorem` | [run_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/run-cons--2a9c6127a3be5049eca7311e.md) | 55 | `result-track:2a9c6127a3be5049eca7311eb47758199d9f3819ba773dc4fa589f929ef823c1` |
| 5 | `theorem` | [run_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/run-append--d1e8e8f958d648623d7e12f8.md) | 63 | `result-track:d1e8e8f958d648623d7e12f82c7d414b33784709944d860d5442e4d04ac002b0` |
| 6 | `theorem` | [run_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/run-singleton--dbd5344e2ece317fa062b3ee.md) | 75 | `result-track:dbd5344e2ece317fa062b3ee97649df2259228a4896e0b73bc8992fddfbbda70` |
| 7 | `structure` | [Hom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/hom--d6f1fefa93740e93df3a843f.md) | 88 | `declaration-track:d6f1fefa93740e93df3a843f79a8beeaa7db79a1b90eef18f291e67597200dc6` |
| 8 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/id--1db0f6a31f56138a7f53b14d.md) | 107 | `declaration-track:1db0f6a31f56138a7f53b14dca52611ae8db9dfcda7598ec43681df1d6f561bf` |
| 9 | `def` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/comp--1203bd24c89be99e88f15bd4.md) | 116 | `declaration-track:1203bd24c89be99e88f15bd45f29b4d12283855761a18612713974601d5f1f3f` |
| 10 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/ext--784c728690f003e268eac563.md) | 132 | `result-track:784c728690f003e268eac56399347284c324da6c3413c8fb32995c173490f19a` |
| 11 | `theorem` | [id_mapInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/id-mapinput--f17d409e209630d295a7ae58.md) | 144 | `result-track:f17d409e209630d295a7ae587a451a3bf1674395fb95b3d7697b180b1b4a3271` |
| 12 | `theorem` | [id_mapState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/id-mapstate--8938160d966af0e1e821a7e6.md) | 148 | `result-track:8938160d966af0e1e821a7e6d4b61376299a750192912640a3857f588c6329e2` |
| 13 | `theorem` | [id_pullResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/id-pullresolution--9ed06114123a14370e7a7793.md) | 152 | `result-track:9ed06114123a14370e7a779374264d4f7f12d5172b805b39ac45e25b0959093e` |
| 14 | `theorem` | [comp_mapInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/comp-mapinput--8f9e3d5ff4829999d9a138ed.md) | 157 | `result-track:8f9e3d5ff4829999d9a138ed8e5e4da5f347d908aeb7101ddb55443b270b0e28` |
| 15 | `theorem` | [comp_mapState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/comp-mapstate--fb8d1c32f5a68637fa981875.md) | 162 | `result-track:fb8d1c32f5a68637fa98187543bc1cae951a8c186c2a065a0e8ed29539e13fb4` |
| 16 | `theorem` | [comp_pullResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/comp-pullresolution--1d26e20d7c5d769fd69d799e.md) | 167 | `result-track:1d26e20d7c5d769fd69d799e5e0b408044eecd0e6800c9ab149dc894ae3352dc` |
| 17 | `theorem` | [map_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/map-run--058f42f3b286898ff352a43f.md) | 172 | `result-track:058f42f3b286898ff352a43f7aa97bb6723c94fc54453906da7efbb2b72af649` |
| 18 | `theorem` | [id_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/id-comp--1ca33d32d8c56d25c4ffee46.md) | 185 | `result-track:1ca33d32d8c56d25c4ffee46b66b1a17e6bf1448520a09c9edd9574e9a38b687` |
| 19 | `theorem` | [comp_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/comp-id--9ad3ba97fb2ca40ba4fb8740.md) | 193 | `result-track:9ad3ba97fb2ca40ba4fb8740cf15d5a48c7ff9c4fa74ca3242be27bf3c1e55c3` |
| 20 | `theorem` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/comp-assoc--a5d1741f6c9dbf8222191294.md) | 200 | `result-track:a5d1741f6c9dbf822219129443e6315b74d5c987b76f073a155eef8d71ca9b47` |
| 21 | `structure` | [Factor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/factor--f16866d52e4fe3b6cb9f9e2c.md) | 216 | `declaration-track:f16866d52e4fe3b6cb9f9e2c7541dc3631938b7dd4dd0c6fda4b33e32de549d2` |
| 22 | `theorem` | [toHom_mapInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/tohom-mapinput--1b70b1a72faca88b15650278.md) | 222 | `result-track:1b70b1a72faca88b156502780a95282a4a393d56876c6ac863a24f9a24b019d6` |
| 23 | `theorem` | [toHom_mapState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/tohom-mapstate--76892e23fbd18320d28ae24c.md) | 227 | `result-track:76892e23fbd18320d28ae24c75d554fe4ddbd7f09774a6166dfc76e76f8bb3e1` |
| 24 | `structure` | [StateFactor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/statefactor--4b3c510a78b339afaee09ef0.md) | 240 | `declaration-track:4b3c510a78b339afaee09ef0fa2bb06ab0aea3f7027a039661097fe66135ab0d` |
| 25 | `theorem` | [state_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/state-surjective--20da0f58dcbc93581796176e.md) | 251 | `result-track:20da0f58dcbc93581796176e28e930368b2c63c617587fbd8074fcb2c5610b7a` |
| 26 | `structure` | [Iso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/iso--62c0cdf248981b6c48d26f74.md) | 267 | `declaration-track:62c0cdf248981b6c48d26f7454bb09b6488289e247878d12ef8c23c317a4ec14` |
| 27 | `def` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/refl--8d4b261667a74725abd62ef3.md) | 276 | `declaration-track:8d4b261667a74725abd62ef3876a52ea4bbb3c5ba4bcf5c03b79c1f85bb8382f` |
| 28 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/symm--f17b88ca0e34845fe090aa4f.md) | 283 | `declaration-track:f17b88ca0e34845fe090aa4faaa18f598081cec7cbeed9c05052504998b3d539` |
| 29 | `def` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/trans--a5072780b8c470c5ba072fa9.md) | 290 | `declaration-track:a5072780b8c470c5ba072fa99e410b9fbd19e9ca9fd1ac1743e6256e4ce52b07` |
| 30 | `theorem` | [hom_inv_state](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/hom-inv-state--eb7bf30ee32d5b4f8f2152a2.md) | 303 | `result-track:eb7bf30ee32d5b4f8f2152a2062d24da9ddae537cc09af42e168d87bf9c185b4` |
| 31 | `theorem` | [inv_hom_state](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/inv-hom-state--e9cfb33608de9cb6c9e8b3c9.md) | 310 | `result-track:e9cfb33608de9cb6c9e8b3c9cf0f3bcb72849b828d9e2aac0113ae1e49ceb15f` |
| 32 | `theorem` | [hom_inv_input](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/hom-inv-input--37ab0691fa99610b6a1493fe.md) | 316 | `result-track:37ab0691fa99610b6a1493fe50dedb963463cb0f3e12c026d53a55b07a0fe9da` |
| 33 | `theorem` | [inv_hom_input](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/inv-hom-input--6d0d401bc3e6f74952b9dbb7.md) | 322 | `result-track:6d0d401bc3e6f74952b9dbb7bdcc4d0fb89e031380de9278be16a8995e5fccad` |
| 34 | `theorem` | [hom_inv_resolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/hom-inv-resolution--360c71d43978f90d6f46bb5e.md) | 329 | `result-track:360c71d43978f90d6f46bb5e7ecafe7c0228993859617b250f8b758c4a8aada9` |
| 35 | `theorem` | [inv_hom_resolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/inv-hom-resolution--725d0f96cc74483293610520.md) | 336 | `result-track:725d0f96cc7448329361052003f8b473fea7cfd63d3bfca0c23890bb13158564` |
| 36 | `theorem` | [hom_state_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/hom-state-bijective--8c23ef55104a1fc4416ade60.md) | 342 | `result-track:8c23ef55104a1fc4416ade60f98992cf0ee0499a957afc5073de0b48f9616a23` |
| 37 | `theorem` | [hom_input_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean/declarations/hom-input-bijective--9c3608c2b747cd3178d31ca9.md) | 346 | `result-track:9c3608c2b747cd3178d31ca9ba6c6a099e6c8febc127db3b797231b8d8f7e562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
