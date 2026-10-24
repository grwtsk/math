# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9722e2373e6d49b7ec3e635a6125af895c9940b0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9722e2373e6d49b7ec3e635a6125af895c9940b0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Hashable` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat--4c90d16c3a8e3348abbfa3a6.md) | 33 | `declaration-track:4c90d16c3a8e3348abbfa3a6ae9b23918005d49580825c5709686265f1991ed3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--515b236a6c74f704d2537bbd.md) | 47 | `declaration-track:515b236a6c74f704d2537bbd971d1434b8a9c794f55d06a304b34e5d4afbc451` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--313b8366b742119920634b4f.md) | 49 | `declaration-track:313b8366b742119920634b4f62ae76a4639cee35ea61bd1e71ab147b272468dd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--326e9ff7a5b0e473ffeb4e29.md) | 52 | `declaration-track:326e9ff7a5b0e473ffeb4e29700f92bdcb09401b30f688527628d178731744af` |
| 5 | `theorem` | [Rat.den_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-den-pos--b7acf4a057bce29ab01cab8d.md) | 55 | `result-track:b7acf4a057bce29ab01cab8d4b4c5157e631015ddd8a94599179eb1e52299faa` |
| 6 | `def` | [Rat.maybeNormalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-maybenormalize--5c2cd00613e1997623e962bb.md) | 61 | `declaration-track:5c2cd00613e1997623e962bb8082184c23f91699bb47c1a6e26807df9fdb1102` |
| 7 | `theorem` | [Rat.normalize.dvd_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-normalize-dvd-num--a663632eefab9746404186b2.md) | 70 | `result-track:a663632eefab9746404186b2e0bfd3f8825b69191538e09c824688ceb0871c73` |
| 8 | `theorem` | [Rat.normalize.dvd_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-normalize-dvd-den--62dd68bb23843312478dcd6f.md) | 75 | `result-track:62dd68bb23843312478dcd6f8cb28ecf2c74549aa70ff8ec3fff4f42413d2710` |
| 9 | `theorem` | [Rat.normalize.den_nz](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-normalize-den-nz--b6bb260ee8d67881c279462f.md) | 79 | `result-track:b6bb260ee8d67881c279462fd00f500a16ed377cc4f0b0829468c0ef976bbe1b` |
| 10 | `theorem` | [Rat.normalize.reduced](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-normalize-reduced--cca46b18f1f032d4280c88ab.md) | 83 | `result-track:cca46b18f1f032d4280c88abd0037308128e5c603ad8069bcc72e0523c34b2b3` |
| 11 | `def` | [Rat.normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/rat-normalize--1d1061ab5ba84edbdb5f01b0.md) | 94 | `declaration-track:1d1061ab5ba84edbdb5f01b0e68ca3fd93f11ae0aaf6a3b74586e06e33e1935b` |
| 12 | `def` | [mkRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/mkrat--4e5ce17050c4faf8fd833ae3.md) | 105 | `declaration-track:4e5ce17050c4faf8fd833ae36cd796ba358f081a312e7271a0e42ca77626c2b4` |
| 13 | `def` | [ofInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/ofint--ffa3207beebd31658bf34db3.md) | 111 | `declaration-track:ffa3207beebd31658bf34db3517eaa738afc8e011f95cd680ae4a0ee9a9c6a5c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--e77e19447f80262d2944cbbb.md) | 113 | `declaration-track:e77e19447f80262d2944cbbb276c90fa6f1acc880ef7b36c1c715a6fc6c2b6e0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--e3b423dfa240696c7d51a0f3.md) | 115 | `declaration-track:e3b423dfa240696c7d51a0f392d533bb813a886b781f765ecebb45176363acdc` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--9e86c50d0a10babffa13a116.md) | 117 | `declaration-track:9e86c50d0a10babffa13a116f503dc37ccc2561bb30f0d1ac5107dc8da350909` |
| 17 | `def` | [isInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/isint--9f37a1f7642373f37702b6a2.md) | 120 | `declaration-track:9f37a1f7642373f37702b6a2f26b0a285b873ebabe2b116e7de22024becdda31` |
| 18 | `def` | [divInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/divint--e36c560c2169adf903ef2392.md) | 123 | `declaration-track:e36c560c2169adf903ef239279c97c5e62e0f51285a79d22e999193f764fc3b2` |
| 19 | `def` | [ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/ofscientific--94bfec6e29559c3130994490.md) | 132 | `declaration-track:94bfec6e29559c3130994490330bf9fc45e7944607afa22b9ab02eb5eef14775` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--317463c1b5be1ca459c30487.md) | 138 | `declaration-track:317463c1b5be1ca459c3048779650d5b6e12fc3e6f3b497295a48da2a06217e0` |
| 21 | `def` | [blt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/blt--2b802f1c1ddaed937f4ce71a.md) | 142 | `declaration-track:2b802f1c1ddaed937f4ce71a91791cb00e135d84cb7cfa7c658d103d6d03326f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--6be8400c9cbf667a35de8e7b.md) | 153 | `declaration-track:6be8400c9cbf667a35de8e7b2c3910a8bcc1697dce260f1e10edb3f182e72a5c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--08ba89d83abb3d9b2b20e9a6.md) | 155 | `declaration-track:08ba89d83abb3d9b2b20e9a6e05f9542524894e43d7ea7753101dd7314349343` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--29964c916c0fb47e91965425.md) | 158 | `declaration-track:29964c916c0fb47e91965425667df56225f5aad8d3bc2da1a59915a328c5bcfe` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--8e9d8c35789badf4c96704f0.md) | 160 | `declaration-track:8e9d8c35789badf4c96704f0f6a0e2c19d2c4de3f03b31035fd749a804960944` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--bb3780c133f2bc49bd7142b9.md) | 163 | `declaration-track:bb3780c133f2bc49bd7142b9a50cca484f8b8d7bccd5d14ffc1089585badee6e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--b41b7bdf07fa2ca3035fad07.md) | 164 | `declaration-track:b41b7bdf07fa2ca3035fad07012320834f93aac1a46f663b56d4c7f5d0064d2f` |
| 28 | `def` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/mul--c37b220bd2b54df395b37ecd.md) | 168 | `declaration-track:c37b220bd2b54df395b37ecd8b8b327d948c892fe0882020865b3ea9615695a6` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--47c61f007ec07a947a864a77.md) | 185 | `declaration-track:47c61f007ec07a947a864a7759bd88b6fbd078b7ba30a6f9c2752f52b6536066` |
| 30 | `def` | [inv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/inv--59e18f5c62675eec80d339b0.md) | 191 | `declaration-track:59e18f5c62675eec80d339b0af824ea46640b7a74383b91d7f7d460dbbe4114e` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--da451a0a5c27238199bd149b.md) | 203 | `declaration-track:da451a0a5c27238199bd149b8b6c1a469f3b1c815d52cec861e8f09294d121f7` |
| 32 | `def` | [pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/pow--8ed5e8c3f43a5734a6ca80c5.md) | 205 | `declaration-track:8ed5e8c3f43a5734a6ca80c5cfe7e380c8b892bf201b513d430f1456e85fcdcd` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--db4a92913675eb4fe496d658.md) | 209 | `declaration-track:db4a92913675eb4fe496d658d464e6b64338ea3a62d00229eb89dc9907e03b7c` |
| 34 | `def` | [zpow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/zpow--6e1d4442356cf37d1f10d6ed.md) | 212 | `declaration-track:6e1d4442356cf37d1f10d6edf8d236c5036905e1be20d62198a2edf107851932` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--5d64f2f18fb67830cbe5dda2.md) | 217 | `declaration-track:5d64f2f18fb67830cbe5dda2c5dad5615abeec38d591f2ea02be68e19b11d446` |
| 36 | `def` | [div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/div--0bcb5b6a08444ab74c7ef934.md) | 221 | `declaration-track:0bcb5b6a08444ab74c7ef934eb0b88ad1d9f452b76c714e67d29a1ff834570e7` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--e7cc16b28739fcfda869ed5b.md) | 225 | `declaration-track:e7cc16b28739fcfda869ed5b4c09bfb36a06136244b1ed5ee1849817b300b2e7` |
| 38 | `theorem` | [add.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/add-aux--ed3d84d1f13a341e7e1aa202.md) | 227 | `result-track:ed3d84d1f13a341e7e1aa20283df2764fd8e77233cc9f86bab8cfc07c83a03fd` |
| 39 | `def` | [add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/add--3343a9291edf06f2972804f1.md) | 259 | `declaration-track:3343a9291edf06f2972804f1044fd8c5ad82e47f831755ecd3033e7f32473e22` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--191a21806b765e35ac665a02.md) | 275 | `declaration-track:191a21806b765e35ac665a02d04ee1eb98d39eeeae6782d2e98ffc526a4ddc39` |
| 41 | `def` | [neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/neg--cad55b16b74ed9c395f569b4.md) | 279 | `declaration-track:cad55b16b74ed9c395f569b4d1340ca4e61baf7ba91bb1b6bf947e0b52f75c68` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--73ed93b4fae1b4ed4f80261e.md) | 282 | `declaration-track:73ed93b4fae1b4ed4f80261ebe15e31d2d35503cf286ea8a2a0b8948918c6d8a` |
| 43 | `theorem` | [sub.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/sub-aux--cb8691a9a16d8000c5b53afc.md) | 284 | `result-track:cb8691a9a16d8000c5b53afc7c22cfb9812fd5148cd3621254af0c420ece6aba` |
| 44 | `def` | [sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/sub--cfa8478f511f3143e46da507.md) | 295 | `declaration-track:cfa8478f511f3143e46da507170a1652286c803d448521ae1dd43ddab5411d54` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/instance--3fdec45eec469dcfdcc184bd.md) | 311 | `declaration-track:3fdec45eec469dcfdcc184bd1e523a5deea3cc621bcb2512af8996c5f4234d00` |
| 46 | `def` | [floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/floor--5c577eeba034b5dd2861a50c.md) | 314 | `declaration-track:5c577eeba034b5dd2861a50c6f9277ece5bc484aed4e035969f63a6ca955b76b` |
| 47 | `def` | [ceil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/ceil--ddd6913a58c512abc66733e6.md) | 321 | `declaration-track:ddd6913a58c512abc66733e6132d6e17b709718b1027df9115c712bf6b8d85ca` |
| 48 | `def` | [abs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/declarations/abs--a1689c6d24f49e3d98709178.md) | 328 | `declaration-track:a1689c6d24f49e3d98709178ceabd31c79453cc5321670f203acd2148db53505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
