# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.OfFunction.Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f896a76230c86e4b849d924fcac25c248105b87",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f896a76230c86e4b849d924fcac25c248105b87`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction--079fefff46f63956a0cb8761.md) | 65 | `declaration-track:079fefff46f63956a0cb87615ecba82f2404d513a30d7b15cb6f55627abbfa35` |
| 2 | `theorem` | [ofFunction_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction-apply--481a8db7066bbeedc1406d2a.md) | 104 | `result-track:481a8db7066bbeedc1406d2aedd5dc6dd9b4cc419f2ba073a8f8c1ae83897a91` |
| 3 | `theorem` | [ofFunction_eq_iInf_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction-eq-iinf-mem--f81efcca5ba952def802263d.md) | 113 | `result-track:f81efcca5ba952def802263d0ab643a7446afd6224af7a2c9b571985b4459f85` |
| 4 | `theorem` | [ofFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction-le--92abb3db9ad292e37ac8d785.md) | 131 | `result-track:92abb3db9ad292e37ac8d785d9233dac19959dc22127b76cb6b22edcae1c8388` |
| 5 | `theorem` | [ofFunction_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction-eq--db11f13ec66a2aae169f647e.md) | 140 | `result-track:db11f13ec66a2aae169f647e4cf4715ed1f8286d33955fc5617d2365ae6718ef` |
| 6 | `theorem` | [le_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/le-offunction--e7db2b185e3fef11748941da.md) | 146 | `result-track:e7db2b185e3fef11748941da570ed21f2e69014f08ceccabc85f3a24741dc179` |
| 7 | `theorem` | [isGreatest_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/isgreatest-offunction--9626a68fc284d88b60798356.md) | 151 | `result-track:9626a68fc284d88b6079835662665574127ee62aa5616986af9e7cf3862ee54a` |
| 8 | `theorem` | [ofFunction_eq_sSup](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction-eq-ssup--e02e87b4eb09c5955efa2798.md) | 155 | `result-track:e02e87b4eb09c5955efa27988f00f9465040a0ee30d7c88b4069f308646d7ccc` |
| 9 | `theorem` | [ofFunction_union_of_top_of_nonempty_inter](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/offunction-union-of-top-of-nonempty-inter--ef7a345529df069f753e46d9.md) | 164 | `result-track:ef7a345529df069f753e46d91aab1491891a1e4d7c5dfe1895c54fcf47df7f7b` |
| 10 | `theorem` | [comap_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/comap-offunction--b943306160af1febc74770a6.md) | 191 | `result-track:b943306160af1febc74770a6ef02b7bb74a1a90df6660dc362be0567f7a23510` |
| 11 | `theorem` | [map_ofFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/map-offunction-le--3e8ed129648197129310c694.md) | 205 | `result-track:3e8ed129648197129310c694adfa49753b8f7ebe177224f2076b1bf887cf55fa` |
| 12 | `theorem` | [map_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/map-offunction--2805cb0e3893f90c76702ad2.md) | 212 | `result-track:2805cb0e3893f90c76702ad243daf3092972fabb25765edfe79d7e7226715d3e` |
| 13 | `theorem` | [restrict_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/restrict-offunction--48d5e0a8fb64eb3143f23d34.md) | 225 | `result-track:48d5e0a8fb64eb3143f23d34b03f56697eb6ed78ffbc03ae37021200c58f24b6` |
| 14 | `theorem` | [smul_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/smul-offunction--069f49e2de959a9289d3beeb.md) | 233 | `result-track:069f49e2de959a9289d3beebe8d5eeea0f21784a12c12e905ad4c18e4a7d3c4e` |
| 15 | `def` | [boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby--732a20d7012eb3ebf129c01b.md) | 250 | `declaration-track:732a20d7012eb3ebf129c01b60592061caa073948790c9e4c3704934c4584b92` |
| 16 | `theorem` | [boundedBy_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-le--4aba9c886ef443b9a06c5446.md) | 255 | `result-track:4aba9c886ef443b9a06c5446e9c08884d4a1ce11b690871078e107c268f5c732` |
| 17 | `theorem` | [boundedBy_eq_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-eq-offunction--900b46a4ae243ed7a626c95c.md) | 258 | `result-track:900b46a4ae243ed7a626c95cef41a4f6a427113b9fbc1089ebbe1ccdfdccdd09` |
| 18 | `theorem` | [boundedBy_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-apply--ca59698f431b2604f4c1d9c7.md) | 265 | `result-track:ca59698f431b2604f4c1d9c767085ec970e9a601dbe54d21b9da9dbd2f10225d` |
| 19 | `theorem` | [boundedBy_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-eq--90e5bfdbfa466c61b5d2a14c.md) | 270 | `result-track:90e5bfdbfa466c61b5d2a14c33c36e812e980bf00dc2a16e7c6d9216d4d0a889` |
| 20 | `theorem` | [boundedBy_eq_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-eq-self--0225a4c993e41de1475099b8.md) | 275 | `result-track:0225a4c993e41de1475099b8a64e8d9658d978d11de60ae729e96bf930e9108a` |
| 21 | `theorem` | [le_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/le-boundedby--14f3279babb8d50c66a9431f.md) | 278 | `result-track:14f3279babb8d50c66a9431f7f91b59fb4a4e3c85f72b37fd89e6beb89efa217` |
| 22 | `theorem` | [le_boundedBy'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/le-boundedby--6e375e41188f20639d8c015b.md) | 282 | `result-track:6e375e41188f20639d8c015b0ee1c0161d50c772237ce5b341e4f590bedc0952` |
| 23 | `theorem` | [boundedBy_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-top--dc91559ed2565ffc00b05221.md) | 289 | `result-track:dc91559ed2565ffc00b0522117bfdd8749a197004964c7d1d264ce548e97342c` |
| 24 | `theorem` | [boundedBy_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-zero--485ac72ef83c4470bd0821c9.md) | 296 | `result-track:485ac72ef83c4470bd0821c94e6df8e41f2240b1604a7d79045dcecdeaa9ae8f` |
| 25 | `theorem` | [smul_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/smul-boundedby--36c3aa63656bffb8f92d39af.md) | 300 | `result-track:36c3aa63656bffb8f92d39af676418034951d54e13c7d3ecd53aa56f6aa81e5a` |
| 26 | `theorem` | [comap_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/comap-boundedby--c7aab343537bd649b9ec61c3.md) | 305 | `result-track:c7aab343537bd649b9ec61c33d9ef242c1640ea40fafff325c5646a37cc7bc08` |
| 27 | `theorem` | [boundedBy_union_of_top_of_nonempty_inter](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/boundedby-union-of-top-of-nonempty-inter--0cadb142a25b24e44e664a82.md) | 322 | `result-track:0cadb142a25b24e44e664a827f65aa34747b5e287821807cfb4159df1ee51d67` |
| 28 | `def` | [sInfGen](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/sinfgen--811894deed914f94e2640703.md) | 338 | `declaration-track:811894deed914f94e2640703bd30a2877bbb5f94c6ea3a39566175ffc5694815` |
| 29 | `theorem` | [sInfGen_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/sinfgen-def--9f19591fe8affa867eb90c27.md) | 341 | `result-track:9f19591fe8affa867eb90c27dc10adbf113dd6b97ac53eac9478d9ca4aba2e2b` |
| 30 | `theorem` | [sInf_eq_boundedBy_sInfGen](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/sinf-eq-boundedby-sinfgen--1bfb53933ffa741d8af69929.md) | 345 | `result-track:1bfb53933ffa741d8af699297a83dd7b16876198ba33d673cabbab59e9dc711e` |
| 31 | `theorem` | [iSup_sInfGen_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/isup-sinfgen-nonempty--914f9cd2c3ad2593d42a429a.md) | 354 | `result-track:914f9cd2c3ad2593d42a429a9af39a0b02e94a822761e23ef13df07a21ad14fe` |
| 32 | `theorem` | [sInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/sinf-apply--e54aa725e709ac244b2458a4.md) | 363 | `result-track:e54aa725e709ac244b2458a4f6904de6a68e625aabd723130023ae9b12f814ae` |
| 33 | `theorem` | [sInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/sinf-apply--d2ed408f161c11db73a77129.md) | 371 | `result-track:d2ed408f161c11db73a7712979420e55583a52e6058fa3798bad3cf948959c70` |
| 34 | `theorem` | [iInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/iinf-apply--bb89fc7febc07177c65079c0.md) | 379 | `result-track:bb89fc7febc07177c65079c0314d264a930daad12189126a112f2f7a60603186` |
| 35 | `theorem` | [iInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/iinf-apply--59b0dc545db0edbc3165680f.md) | 387 | `result-track:59b0dc545db0edbc3165680fe839ce55a816bf2781faa097bc13cd241e305330` |
| 36 | `theorem` | [biInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/biinf-apply--9ca4723af70784eb758c6929.md) | 395 | `result-track:9ca4723af70784eb758c6929cd63b9e3ecc129cee700706242b4b610f58f63e6` |
| 37 | `theorem` | [biInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/biinf-apply--93700fc40483adb999a4d932.md) | 403 | `result-track:93700fc40483adb999a4d932ec9b377e8fcd3c596f979f5b7218ea40b684d5ce` |
| 38 | `theorem` | [map_iInf_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/map-iinf-le--178bf12baee3a6380ff54140.md) | 407 | `result-track:178bf12baee3a6380ff54140ceeb56ee2162cd1e56a4b9a5a3ac56a241006c3d` |
| 39 | `theorem` | [comap_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/comap-iinf--8e8a941c718a75203ff0fce7.md) | 411 | `result-track:8e8a941c718a75203ff0fce7d7e3ad06be65147e2c2ee4133cd91acdca0b3e6a` |
| 40 | `theorem` | [map_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/map-iinf--1885da47fc0170eaffc0c409.md) | 420 | `result-track:1885da47fc0170eaffc0c4098722bd794f6e3da6acc804a32bdd1f66625713fe` |
| 41 | `theorem` | [map_iInf_comap](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/map-iinf-comap--c644158bdf5d7513b14d9a9a.md) | 425 | `result-track:c644158bdf5d7513b14d9a9ab8e2d208ea33ada2bce46c9563942cfd694e587f` |
| 42 | `theorem` | [map_biInf_comap](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/map-biinf-comap--c64cc17a4775fd8fc26c246f.md) | 437 | `result-track:c64cc17a4775fd8fc26c246fb74f099e156a269953822f827dd075fd852cbc78` |
| 43 | `theorem` | [restrict_iInf_restrict](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/restrict-iinf-restrict--95c9822548fd5a10d8c8c2e2.md) | 443 | `result-track:95c9822548fd5a10d8c8c2e2361e1a23c2fe3e8336d9b9d6d99dab63bd3cab9a` |
| 44 | `theorem` | [restrict_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/restrict-iinf--a3d52412ed40eaa26a7ca12c.md) | 450 | `result-track:a3d52412ed40eaa26a7ca12c3a92205fee1119fd98031bc4eda56a88e3059763` |
| 45 | `theorem` | [restrict_biInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/restrict-biinf--556e0cc9be4cb465c284c3cc.md) | 454 | `result-track:556e0cc9be4cb465c284c3ccd03b916bec6edacfdd830dd4617a713ecf88a381` |
| 46 | `theorem` | [restrict_sInf_eq_sInf_restrict](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/declarations/restrict-sinf-eq-sinf-restrict--8dbf568f03edfcb34b4de721.md) | 462 | `result-track:8dbf568f03edfcb34b4de7218ceb5525fa2028642f2698f70b0b3affeeebab12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
