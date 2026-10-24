# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DistLat.Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aee446643d0c419f758ac027c00b9bfcf9c33b3f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aee446643d0c419f758ac027c00b9bfcf9c33b3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.Lat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/distlat--d6f0bbe0b2ba16964990c540.md) | 32 | `declaration-track:d6f0bbe0b2ba16964990c540736675f370644b119f7e2097d84b5a3331bbf628` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/instance--ac46e884008063125dfe819f.md) | 43 | `declaration-track:ac46e884008063125dfe819fac0bbce98953eee17eab5b7c7c318c9fd06482f1` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/of--b5275310fdb81953d82a71d0.md) | 49 | `declaration-track:b5275310fdb81953d82a71d040123dab6d518312b7ca06aee30fabadb61963c7` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom--784365c880035751678d047a.md) | 53 | `declaration-track:784365c880035751678d047a84b5eba52edf58709e1c0189ea5fe579fe8fe34f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/instance--71ee5093058ff755c6fa3438.md) | 58 | `declaration-track:71ee5093058ff755c6fa343809b51ede8722aed9c9be02e037d5374bb66dba24` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/instance--22b30147f6d68a9eb95316fd.md) | 63 | `declaration-track:22b30147f6d68a9eb95316fd03ac106b3e588dd547ff935732608fbc490cba97` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-hom--1c0ec4c5f9b9976fc5c36174.md) | 68 | `declaration-track:1c0ec4c5f9b9976fc5c361743a176fcbeaa1d70a60241cae771a220debd246a1` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/ofhom--0049401d30f20802909d9628.md) | 72 | `declaration-track:0049401d30f20802909d9628e4d1881cf59ac8107bd60e1591bdcfd57906812d` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-simps-hom--38f8d6905f53d46829eb2363.md) | 78 | `declaration-track:38f8d6905f53d46829eb236396e0d6d447931501047dfeb7deebafbd05c3613f` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/coe-id--e55339a6103fe5e5cc008a57.md) | 88 | `result-track:e55339a6103fe5e5cc008a573dbe04e849e4d071d1c4d97ed22e52f8650bf857` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/coe-comp--bc1334de25632d729f5c3268.md) | 91 | `result-track:bc1334de25632d729f5c3268e6db55a4a9fed89ff5e3d1dcbdf1f42dd636ed2c` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/forget-map--fa7f06894749eaffb3f25f9f.md) | 94 | `result-track:fa7f06894749eaffb3f25f9f4c566820f97f9dc2eae30c36a361334f86c0b75d` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/ext--c5c915b27ec6b4f2ecaba714.md) | 98 | `result-track:c5c915b27ec6b4f2ecaba714eda2349a4c0463ba7626d4ae170ed5b40c7e9044` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/coe-of--c1f54c2e71d1e7d04aafc57e.md) | 102 | `result-track:c1f54c2e71d1e7d04aafc57e4375c93fd9eb386388adaacb90db16e511c703ef` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-id--0cb8fc168b59676521d6a362.md) | 105 | `result-track:0cb8fc168b59676521d6a36262cb333d6cbd5f99d1318a7fceff86a450c43a96` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/id-apply--1e40eb1fdbd7118e12d6c389.md) | 108 | `result-track:1e40eb1fdbd7118e12d6c3896f6c10e8061397fbf0824153cd3c265ab6faa993` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-comp--863b40c6d240b6d7a5c79e08.md) | 112 | `result-track:863b40c6d240b6d7a5c79e082fb7397df625758b48e7cfa29268ef64e1243a67` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/comp-apply--68816f548544ee74f68692b7.md) | 116 | `result-track:68816f548544ee74f68692b7489493891e782ce6458e832af668f1089b93b8d9` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-ext--498afb0b1938552dffd2a2eb.md) | 120 | `result-track:498afb0b1938552dffd2a2eb399b0795dbad4ccc08bbb53f596b04987334897c` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-ofhom--f76ac765cecf8c5a2c922001.md) | 124 | `result-track:f76ac765cecf8c5a2c922001e114a912296f62deacb607711e13a317cb04b9b9` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/ofhom-hom--6cdf032d605f99d710873e57.md) | 128 | `result-track:6cdf032d605f99d710873e57f2415bd55c27e94fc0054ea6dfb41e7ab066633b` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/ofhom-id--2dde0c9621b00377c1cdc58c.md) | 132 | `result-track:2dde0c9621b00377c1cdc58c228b71533c306574f304420e2c82cebaec2c4ee9` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/ofhom-comp--e6f553158c7c53abffe3d02c.md) | 135 | `result-track:e6f553158c7c53abffe3d02cb590d0c1dc2ac786dc9041d07f9a59c5d820630a` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/ofhom-apply--ec320afe06acc3ea560ecdc4.md) | 140 | `result-track:ec320afe06acc3ea560ecdc4298b557196876cf8b57b393b10b7c653eda4a2c2` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/inv-hom-apply--c9c02251b0234764d0bcd969.md) | 144 | `result-track:c9c02251b0234764d0bcd9690e874de55bd1638455a751f6841e4aaad3c01f1b` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hom-inv-apply--34aced433137c1f34a4a7d1c.md) | 147 | `result-track:34aced433137c1f34a4a7d1c5513a2bd6c8db38917931f044edd49cac9c8b429` |
| 27 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/hasforgettolat--49852fea6b06fb1070db66cc.md) | 150 | `declaration-track:49852fea6b06fb1070db66cc0754d72d59df8ab9cdf13c71e50f8df9173481e0` |
| 28 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/iso-mk--b975e4a3b5a3ebc4cb137c00.md) | 157 | `declaration-track:b975e4a3b5a3ebc4cb137c0008f0cfee9ce0bbe446b8f3f9acd59fa8482d60c3` |
| 29 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/dual--88f7dda074a8a4789eae8637.md) | 163 | `declaration-track:88f7dda074a8a4789eae8637be2b4019ce71024f9d0559299fb70aeb6eee8748` |
| 30 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/dualequiv--519cd7ab842d23ff1c052247.md) | 169 | `declaration-track:519cd7ab842d23ff1c052247191fb127588b899e5987fd3e7b7f6ec780c51b28` |
| 31 | `theorem` | [distLat_dual_comp_forget_to_Lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLat/Variant944c78c492647517226fbad00ca2cc03c352e036ed538c3f4793bb608c1f84ea.lean/declarations/distlat-dual-comp-forget-to-lat--3f23dc4e446c4cf1bb8b1b46.md) | 177 | `result-track:3f23dc4e446c4cf1bb8b1b46246f5c6feff3484d8fc7dc8cd487c8969afb3eb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
