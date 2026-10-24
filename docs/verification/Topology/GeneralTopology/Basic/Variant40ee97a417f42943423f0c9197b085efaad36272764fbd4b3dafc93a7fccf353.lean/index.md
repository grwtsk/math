# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea6df0c45a175a9486863caed944bd205e68ec93",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea6df0c45a175a9486863caed944bd205e68ec93`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean.json)

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
| 1 | `structure` | [TopCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/topcat--983180b99b7ec1686cf1dc40.md) | 40 | `declaration-track:983180b99b7ec1686cf1dc409bfc497ba17f690c3626365497db6a51bbc8b8d0` |
| 2 | `def` | [TopCat.delabOf](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/topcat-delabof--eb57f95973e99d1fe5c0db9e.md) | 55 | `declaration-track:eb57f95973e99d1fe5c0db9e7b778fe5f890bc1a5a4e10a83cd9aa719aec035f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/instance--286a7956fdeb320d91a06541.md) | 65 | `declaration-track:286a7956fdeb320d91a065410731bcd16284c19a43ced8273bf32537efcf0f97` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/coe-of--534df595546fe41fadb9c786.md) | 70 | `result-track:534df595546fe41fadb9c786d3caf5bed40b8a723381f2286e59af1ff02e6d80` |
| 5 | `lemma` | [of_carrier](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/of-carrier--df9c812ed9c1dc7472ad2f31.md) | 73 | `result-track:df9c812ed9c1dc7472ad2f313877fded734a453236c4893c484b90d4dd770a1b` |
| 6 | `structure` | [Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom--0c7e3e667a93283540103fdc.md) | 78 | `declaration-track:0c7e3e667a93283540103fdc8701e8815e237bc5be43080e1582d8b06f3728f2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/instance--4d365a1a70893594a206204a.md) | 83 | `declaration-track:4d365a1a70893594a206204a7c9c88ad8103ceb51ab513a97b22021bc01a894a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/instance--0472111874a27b464f4750cb.md) | 88 | `declaration-track:0472111874a27b464f4750cb07a480b6b8eb45f8b638e5f87ffbee983bfdc575` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-hom--b542e15b5a5b739e99cdc4c6.md) | 93 | `declaration-track:b542e15b5a5b739e99cdc4c633a9e1632e4539c4b369548bbc0b4d28ffa81e3e` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/ofhom--3ae87675492386a15e655832.md) | 97 | `declaration-track:3ae87675492386a15e6558320b7fcc3b7c9be1dee0b4fa15615f40a50a93b71c` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-simps-hom--12d767833ac455f4f5bff10e.md) | 101 | `declaration-track:12d767833ac455f4f5bff10ea73621a485909bc2d4c013e40dc1ede836ea1df7` |
| 12 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-id--e4a83736a87e0b3b364b31ba.md) | 111 | `result-track:e4a83736a87e0b3b364b31ba06f604191c255b7597674d3539b5410e48742d67` |
| 13 | `theorem` | [id_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/id-app--62cf221ca867f7dc0c3913b6.md) | 114 | `result-track:62cf221ca867f7dc0c3913b6ee06054d0a57af98638d11b2df73cfc69b8eaa33` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/coe-id--e320f6aaad40f4798983323e.md) | 116 | `result-track:e320f6aaad40f4798983323eee160a901554930d4b2543ab14cad15a80e8a816` |
| 15 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-comp--4831a1c572eb217a2dfb2007.md) | 119 | `result-track:4831a1c572eb217a2dfb200755b1098ae6fa2691026bb2adbcec292ac8a52867` |
| 16 | `theorem` | [comp_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/comp-app--6f1d106f377429958cc36218.md) | 123 | `result-track:6f1d106f377429958cc3621819344ca3d1535eb6f6336384ac0da1731e9ec7ec` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/coe-comp--a9823be7445e04f1dfc4cb82.md) | 126 | `result-track:a9823be7445e04f1dfc4cb822cd3a387f2a247e9b424311d4046fff9c758cbc3` |
| 18 | `lemma` | [hom_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-ext--355c034084cb67ae35ab3ee5.md) | 130 | `result-track:355c034084cb67ae35ab3ee5346e03b5603112198b3d9b725a5e888750f7d30b` |
| 19 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/ext--5994ada63ec70e71b883f679.md) | 134 | `result-track:5994ada63ec70e71b883f6799450a0cc753b2d5283ff2b65edf574ab8d1469f5` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-ofhom--234c788bbfb7c7df48466e99.md) | 138 | `result-track:234c788bbfb7c7df48466e9982e7be3b5e149ac6bb1554850942e98e96afd4ad` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/ofhom-hom--00b84af671f668a31fde4afc.md) | 142 | `result-track:00b84af671f668a31fde4afc6870caf03a3f3a58d05203de09c157ac8c01553b` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/ofhom-id--2a3d43bd4c5f8e6aef603eb5.md) | 146 | `result-track:2a3d43bd4c5f8e6aef603eb511712f607bdbf7e5f256ca7d647277bac8db3e48` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/ofhom-comp--7e20c77b7c3b9e9c288a5400.md) | 149 | `result-track:7e20c77b7c3b9e9c288a54003677c18483d20923c59e463aa255b4612ae4ac97` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/ofhom-apply--7b1fe65e01f68e7d2502161d.md) | 154 | `result-track:7b1fe65e01f68e7d2502161d72a5b7be893d1750df8eb339a902e4c694598663` |
| 25 | `lemma` | [hom_inv_id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-inv-id-apply--84cb61dd5425536496de27cf.md) | 157 | `result-track:84cb61dd5425536496de27cf1acaee04b265920ac864670ba342f83664746057` |
| 26 | `lemma` | [inv_hom_id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/inv-hom-id-apply--fc70824ec4bd02d6906c0843.md) | 160 | `result-track:fc70824ec4bd02d6906c08434b9d036477b7b7c458fc9e14cd7985a1148b2804` |
| 27 | `def` | [Hom.equivContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/hom-equivcontinuousmap--97008717ee02264e8b60a67a.md) | 165 | `declaration-track:97008717ee02264e8b60a67ae6dbcd8588e93ae56957da6b8028b2c63a22d584` |
| 28 | `theorem` | [coe_of_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/coe-of-of--dc91bf5fcad01f5f516c355a.md) | 174 | `result-track:dc91bf5fcad01f5f516c355a219c21e7401f79a9516b34f3cd96c73491e267e7` |
| 29 | `instance` | [inhabited](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/inhabited--adac1b6f1401c21964c6eb70.md) | 184 | `declaration-track:adac1b6f1401c21964c6eb70483c5e307f96fae245f41ed6697d6c951307a91b` |
| 30 | `def` | [discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/discrete--846228692d4c2b2f8a73ff0f.md) | 188 | `declaration-track:846228692d4c2b2f8a73ff0fce61174a32e6122339dd5332dbe32a077a6636fa` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/instance--d61929feeeb2fe52f40282b8.md) | 192 | `declaration-track:d61929feeeb2fe52f40282b86ab2f5dd6affefb592aff2c3dc5d5c13ca63f2d6` |
| 32 | `def` | [trivial](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/trivial--e0fee9d0be02157b5eea0f16.md) | 196 | `declaration-track:e0fee9d0be02157b5eea0f16dbfa81082f72449f5650b25504b7ef66c826aaa8` |
| 33 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isoofhomeo--ae26ab38ff806165f6cd6566.md) | 202 | `declaration-track:ae26ab38ff806165f6cd6566a0247419a6e837467b73b8f2805c9faa02ca2ff4` |
| 34 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/homeoofiso--6473650bb1bfdb9ebd6c4f13.md) | 208 | `declaration-track:6473650bb1bfdb9ebd6c4f137bddeaea8be7dca5f1e758e05c8d2bc023fdade7` |
| 35 | `theorem` | [of_isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/of-isoofhomeo--7a577eaae4e2599c01425f6b.md) | 217 | `result-track:7a577eaae4e2599c01425f6b52f8094fb3eef63c983ec053bac9d95b442c2e68` |
| 36 | `theorem` | [of_homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/of-homeoofiso--cdf17cd7c93c92ea4c114104.md) | 222 | `result-track:cdf17cd7c93c92ea4c1141046e8dfe1da1cf6a71802d9679c825c84669799152` |
| 37 | `lemma` | [isIso_of_bijective_of_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isiso-of-bijective-of-isopenmap--8b897e8df29cb70c7deefabc.md) | 226 | `result-track:8b897e8df29cb70c7deefabcd48561e3b61a0cdba35b409c8dc4b86144b0cfff` |
| 38 | `lemma` | [isIso_of_bijective_of_isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isiso-of-bijective-of-isclosedmap--2823c8841ab21f9aebe27efd.md) | 232 | `result-track:2823c8841ab21f9aebe27efd54395efe5fed8f1c72c03361ab1457d96bcd220a` |
| 39 | `lemma` | [isIso_iff_isHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isiso-iff-ishomeomorph--ae6a3cfe38e40df124a26cc3.md) | 238 | `result-track:ae6a3cfe38e40df124a26cc3a3e0221e0fb23dfb07be780a21cbdbf9732a5979` |
| 40 | `theorem` | [isOpenEmbedding_iff_comp_isIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isopenembedding-iff-comp-isiso--2f8e28c847a66374fac6c99f.md) | 243 | `result-track:2f8e28c847a66374fac6c99fe031252769fe80116049c6d3c16ca93e87e6c2f9` |
| 41 | `theorem` | [isOpenEmbedding_iff_comp_isIso'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isopenembedding-iff-comp-isiso--dc4ab118682599eebb4a5039.md) | 248 | `result-track:dc4ab118682599eebb4a5039ccc9fe6c6c332113837b1a55af53db7631419b18` |
| 42 | `theorem` | [isOpenEmbedding_iff_isIso_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isopenembedding-iff-isiso-comp--ad405ac18cd7fd708c762ad0.md) | 253 | `result-track:ad405ac18cd7fd708c762ad06b2be29e995e1b138b252a64defdf01811a48745` |
| 43 | `theorem` | [isOpenEmbedding_iff_isIso_comp'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isopenembedding-iff-isiso-comp--ec2e0cccb17203f859e05a69.md) | 262 | `result-track:ec2e0cccb17203f859e05a6954981d19836ec8b78d15c1c3de303fec8e3d4cb0` |
| 44 | `abbrev` | [isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isembedding--d7ca516de84e22664b86b461.md) | 268 | `declaration-track:d7ca516de84e22664b86b461cba036ece4dd125cbaffe57ac37db3e71d60c63b` |
| 45 | `lemma` | [isEmbedding_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/isembedding-iff--91fb88012ac8da50fd9ba4f1.md) | 272 | `result-track:91fb88012ac8da50fd9ba4f15dab67e14879e0b568b39ee360b5f85b7665e670` |
| 46 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/const--5a0604eca170198fb313a5f6.md) | 276 | `declaration-track:5a0604eca170198fb313a5f6be79a517220b70d347a65aafb2c35034597ceb9d` |
| 47 | `lemma` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/declarations/const-apply--5fd21d67c97585bab6b15681.md) | 280 | `result-track:5fd21d67c97585bab6b15681fe9d7e7d78ed39866771a478acc0b8530b29071d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
