# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d13c9e6b5b6778b0c42cf5234b8ee992239d17b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d13c9e6b5b6778b0c42cf5234b8ee992239d17b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Karoubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/karoubi--739f883d72076f55a4f501ed.md) | 48 | `declaration-track:739f883d72076f55a4f501ed272356d5dde2b5051ab6babcd656f9316d6c50a2` |
| 2 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/ext--0d771343558f641a1491f8ac.md) | 63 | `result-track:0d771343558f641a1491f8ac9030b50b9b18cf918bd059697f9795e2f2d17f57` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/hom--291fd43920923b0a36828782.md) | 76 | `declaration-track:291fd43920923b0a368287828fdedca03046b226b38d8a30f581649d8cee7179` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--4f89e724a5555618c92bcd20.md) | 82 | `declaration-track:4f89e724a5555618c92bcd20070e18fef5e9aa66fa7c34c94d1e9365322c7a48` |
| 5 | `theorem` | [p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/p-comp--ca2be2a0bb4b073f3ccc3b0e.md) | 86 | `result-track:ca2be2a0bb4b073f3ccc3b0e4ccbba13cdd98db7bd73fb1531e7d25711548211` |
| 6 | `theorem` | [comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/comp-p--511c0bcb60fb99eabc8201d8.md) | 90 | `result-track:511c0bcb60fb99eabc8201d8d805dc86a16a0c4af7737962396ef87eeba20177` |
| 7 | `theorem` | [p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/p-comm--5c17f7d011b7437a54d0e042.md) | 94 | `result-track:5c17f7d011b7437a54d0e0426d810add2ab6574e4b8705285fc957aa11f2ed53` |
| 8 | `theorem` | [comp_proof](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/comp-proof--2ef8fac44ffd7eda9a45c184.md) | 96 | `result-track:2ef8fac44ffd7eda9a45c18430f586ce4441075ae2fd8c3cd5639038388c5fb6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--1a3f5ceddd2e816167be63ce.md) | 100 | `declaration-track:1a3f5ceddd2e816167be63ce2dd0147fc7da9e1274ab87f3d9b1810922379e30` |
| 10 | `theorem` | [hom_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/hom-ext-iff--5c8aa153db2ea721a40bf9e7.md) | 106 | `result-track:5c8aa153db2ea721a40bf9e77b71e2ca47de5fec829efdb3fdcb93745c72d872` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/hom-ext--ca745196bef046d23070e194.md) | 113 | `result-track:ca745196bef046d23070e194b27bbc331158a6c3381159be6a24e28c777b7758` |
| 12 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/comp-f--602f64b17a98d27d850b2504.md) | 117 | `result-track:602f64b17a98d27d850b2504add28c86b0a43715dbb1b47aa02292575db65e26` |
| 13 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/id-f--a2d89a9990212be6abe3267d.md) | 120 | `result-track:a2d89a9990212be6abe3267d05dfb5267e660d152b95015bbfd0f09f6ceb2e8d` |
| 14 | `instance` | [coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/coe--30d0f1457da7be09aa798e89.md) | 124 | `declaration-track:30d0f1457da7be09aa798e89abe0d15b79018d7a4db9981cc766baeddfe68e4c` |
| 15 | `theorem` | [coe_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/coe-x--c754a69d819445ddb63f1973.md) | 127 | `result-track:c754a69d819445ddb63f1973f88ccd4a0a2055da40276d99a9898728f87876ec` |
| 16 | `theorem` | [coe_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/coe-p--fd3820f37bdfcd3e06b2b50b.md) | 130 | `result-track:fd3820f37bdfcd3e06b2b50bd60a92e8c364b5ef57928cfbb9b54aac10dda2f2` |
| 17 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/eqtohom-f--86f011b51194a4ab08d48243.md) | 133 | `result-track:86f011b51194a4ab08d48243b6c8eab2690286ac5521d93d14f3d12a381ddfd5` |
| 18 | `def` | [toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/tokaroubi--b981f4cdf19d791efa4a5d5d.md) | 143 | `declaration-track:b981f4cdf19d791efa4a5d5d41608b8500b37c0f95e47bf33610190aeaeb85ad` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--1597b62d3c9c2eac0d54d328.md) | 147 | `declaration-track:1597b62d3c9c2eac0d54d3285afdadb215e8d08ad3af0196b3144f8de2f7cdae` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--92ffb57c087bfa33e0afc30a.md) | 149 | `declaration-track:92ffb57c087bfa33e0afc30a6c8f01af7064a9dca66972d9e5c6b0838508d3aa` |
| 21 | `instance` | [instAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instadd--af5128794c353f932e25a219.md) | 155 | `declaration-track:af5128794c353f932e25a2193121d34e0d33549012bd32f781d3380d5aacb107` |
| 22 | `instance` | [instNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instneg--95209114c92adc0cd330ceb7.md) | 159 | `declaration-track:95209114c92adc0cd330ceb7c2124ab571f7b5fa2eb66975a0b8f334e48cf390` |
| 23 | `instance` | [instZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instzero--41bfcd94d136d2ad0bddc0ed.md) | 163 | `declaration-track:41bfcd94d136d2ad0bddc0ede6e80df4200ba32386d09309e5dfcf8a09773f5c` |
| 24 | `instance` | [instAddCommGroupHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instaddcommgrouphom--fc2b3dd91d78928f0801ce52.md) | 166 | `declaration-track:fc2b3dd91d78928f0801ce52b25f487ab97fdd69e777f129b392d813aa85c06d` |
| 25 | `theorem` | [hom_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/hom-eq-zero-iff--053d71e2935789183d77f3ef.md) | 187 | `result-track:053d71e2935789183d77f3ef6ed0a77d267f68b8ca9255edded0dbedb7f1d3f8` |
| 26 | `def` | [inclusionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/inclusionhom--7d5378d9f3680ca9e57d8677.md) | 192 | `declaration-track:7d5378d9f3680ca9e57d86770ca7d31fabd20b6e338f4fde67144eec0c445e04` |
| 27 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/sum-hom--dce3736f2e1efb7a91450d56.md) | 198 | `result-track:dce3736f2e1efb7a91450d561646c771e2e2c5d01b1410359a8be9aa6d350d99` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--c913cb853294041ef45cff31.md) | 205 | `declaration-track:c913cb853294041ef45cff3124f9d356165cfb53fd89d712a2cedcece6eaaaa9` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--6f2345b820b42ff44fa2abf1.md) | 208 | `declaration-track:6f2345b820b42ff44fa2abf1d060e68e87d9ee261e0f17b0f0143f3b21871a35` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--3a060f3edbc9e2d36680395b.md) | 214 | `declaration-track:3a060f3edbc9e2d36680395b68bc7f3e854c9baa82b5f877d98897c2c947ea25` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/instance--69b08422451d62dbc29ee918.md) | 223 | `declaration-track:69b08422451d62dbc29ee918c2dab841310a1c8c1ff31a07b9d5a1d65fa22630` |
| 32 | `instance` | [toKaroubi_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/tokaroubi-isequivalence--6199afdeb67110da46acf5b4.md) | 233 | `declaration-track:6199afdeb67110da46acf5b4df646211ce357a13f9d1ac66d15e871e28b970de` |
| 33 | `def` | [toKaroubiEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/tokaroubiequivalence--241682a7588f155b25f1a871.md) | 236 | `declaration-track:241682a7588f155b25f1a87144523cc4024e0113be86787209f5cb141aaf673b` |
| 34 | `instance` | [toKaroubiEquivalence_functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/tokaroubiequivalence-functor-additive--e2ebe3306327cd10dd2072fa.md) | 239 | `declaration-track:e2ebe3306327cd10dd2072faf153666332c163ca0d5a147c1fdabfaf261f963c` |
| 35 | `def` | [decompId_i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid-i--4dfd08c411d5d6e5977eac7e.md) | 249 | `declaration-track:4dfd08c411d5d6e5977eac7ec03f8bb6dd84a5763f8f204aeadbccf2f3911721` |
| 36 | `def` | [decompId_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid-p--f2a4994fe4e1d95cfa530247.md) | 254 | `declaration-track:f2a4994fe4e1d95cfa5302476da38a8096bc727e803dce76afbb3744963bbf57` |
| 37 | `theorem` | [decompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid--a10f40367267ac3337f6a056.md) | 260 | `result-track:a10f40367267ac3337f6a05606b4a8948553b1cb6780875d4129adca0de3e0c9` |
| 38 | `theorem` | [decomp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decomp-p--480b4e675cb8d431a762ffc5.md) | 264 | `result-track:480b4e675cb8d431a762ffc54fa998892682fcb324ecec5c995f1a614564e4bb` |
| 39 | `theorem` | [decompId_i_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid-i-tokaroubi--6d35dfc942cf68ebff566846.md) | 268 | `result-track:6d35dfc942cf68ebff56684630835ae3e3ba574acaf93437bf971c2625d787e9` |
| 40 | `theorem` | [decompId_p_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid-p-tokaroubi--1c19c45c3a34b4e7f16906b8.md) | 271 | `result-track:1c19c45c3a34b4e7f16906b86532cf8c744da015acc45999d80a4463dc5f19ad` |
| 41 | `theorem` | [decompId_i_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid-i-naturality--1872914f458686f399db86e6.md) | 274 | `result-track:1872914f458686f399db86e659e66b668d02d20c58a50004e66d6a9d454bc095` |
| 42 | `theorem` | [decompId_p_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/decompid-p-naturality--a095d3f44c83b19a05f30d91.md) | 278 | `result-track:a095d3f44c83b19a05f30d914fbe66321538e64f3ef30719cb2c585b21109fb9` |
| 43 | `theorem` | [zsmul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant46f48caf1e08d0234130fc56dc72a835f6345fd46ed28d231960eccd90c70d30.lean/declarations/zsmul-hom--3e42febbed112379c03d5b1a.md) | 283 | `result-track:3e42febbed112379c03d5b1a2c0af0445cd8da6e108af0205e2ef94f71a4c600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
