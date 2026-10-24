# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddOrd.Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d414fda36a019b9659495a67ce929619d55f8ff3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d414fda36a019b9659495a67ce929619d55f8ff3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.PartOrd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/bddord--5edf5d8423ec830078e5b3ed.md) | 22 | `declaration-track:5edf5d8423ec830078e5b3edc91878eddb32ea7eff2547570ad44db962803d1f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/instance--2809a9b6e3a1732bb067f19c.md) | 34 | `declaration-track:2809a9b6e3a1732bb067f19c6dcac9c7f9afb1ea01afc3e23462d4efbf2958f4` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/of--de05ada8b282de7b902b46d0.md) | 38 | `declaration-track:de05ada8b282de7b902b46d0cb91f30fb57258ce10a96b290798ad2e84cb89e4` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom--3e82fcbae8477aefe5f59edc.md) | 43 | `declaration-track:3e82fcbae8477aefe5f59edc9bb56917207414bce9b60314237a453afb3e21f7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/instance--a60597406910eec512908378.md) | 48 | `declaration-track:a60597406910eec51290837869d64bd1846ebd34828ab95597020592697a4a30` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/instance--1781c03c36c91d78ea63e504.md) | 53 | `declaration-track:1781c03c36c91d78ea63e50491cf13af2b5adae5592fd99e8fd8a9ed7d649afa` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-hom--5dae1714f01180c864411861.md) | 58 | `declaration-track:5dae1714f01180c86441186120bb684beeb6110b84009ff56bd871a8eff81e42` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/ofhom--b6c0675de7ab80b08c4f9f27.md) | 62 | `declaration-track:b6c0675de7ab80b08c4f9f27367aaf75135789be9f9c45e2954f00660ba9d43a` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-simps-hom--db845fd07c56a9881afcfd41.md) | 68 | `declaration-track:db845fd07c56a9881afcfd411e10c1a38969ea25c87cda28fa1bfc96a9536c7d` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/coe-id--0bb2783f880f3e4e3c438347.md) | 78 | `result-track:0bb2783f880f3e4e3c438347e0c7a82cb1651137bd2027c08c2b407f764ecb25` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/coe-comp--8ffb49c3bcec9b3a4742d065.md) | 81 | `result-track:8ffb49c3bcec9b3a4742d065cfd71c9ec225eb365309806539dfb9ff52ea9087` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/forget-map--b7a95e1a174acc2f519f3b00.md) | 84 | `result-track:b7a95e1a174acc2f519f3b00287b8b38e46ed5bb1126c4b890540acd4f8d79ce` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/ext--05309c0c4db6e6cf0b954eee.md) | 88 | `result-track:05309c0c4db6e6cf0b954eeec5e9d813d2ffb754b7e78a0ce46326a3769300d0` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/coe-of--9e66cba5349678c2e19f2ca6.md) | 92 | `result-track:9e66cba5349678c2e19f2ca6b9209b3a7d0f53a1a798e330ff3be2c5a6aea91e` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-id--ae2e53a62d66a7b3092cafa0.md) | 95 | `result-track:ae2e53a62d66a7b3092cafa011a016c4cbddb783d9e3c2a4ddfc10bd6ccebe49` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/id-apply--de149000b13250b7336b0aa7.md) | 98 | `result-track:de149000b13250b7336b0aa705f2503f88fdda01c0924fcb77f4648c05bd2518` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-comp--afdac3d647771767f3dfe0fc.md) | 102 | `result-track:afdac3d647771767f3dfe0fca21bcf22e5e3e058af344b2254072bc7a6e03d6a` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/comp-apply--d4a5cf76081a0aed1d6226db.md) | 106 | `result-track:d4a5cf76081a0aed1d6226dbfd3c6840b47bf7192384e3efe709d6cc4d0ef1f2` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-ext--20427aa7d6fbf66fd4d35167.md) | 110 | `result-track:20427aa7d6fbf66fd4d351670e95d288360e2ffefbb3b9eb46f14cb91e14a814` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-ofhom--06fa4fe3a73d9896637a585d.md) | 114 | `result-track:06fa4fe3a73d9896637a585d213391840eaf1e03324f2602b5b40a027f00f093` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/ofhom-hom--f75f8d8293008e014c68f6ca.md) | 119 | `result-track:f75f8d8293008e014c68f6ca1668e4333979d16d2f05b6af5a63090dfc9d89ae` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/ofhom-id--42d39f7f80d9d045ab34f7c3.md) | 123 | `result-track:42d39f7f80d9d045ab34f7c39401a1afe6e7dc27afb580756b185853f2072f09` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/ofhom-comp--464cb9dac2d92ca185019b3f.md) | 127 | `result-track:464cb9dac2d92ca185019b3f8281cdb469de89a84f57486c5ccb63e067ea8130` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/ofhom-apply--b1a6a7647c785bc45386cb5f.md) | 133 | `result-track:b1a6a7647c785bc45386cb5fec3872e4e2bc11a641150c44402b486b4d35056a` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/inv-hom-apply--9a2a7e4ba7ed1f4c2a234092.md) | 137 | `result-track:9a2a7e4ba7ed1f4c2a2340924777d458c09b62577089a685c85e0aaf9eb73ec4` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hom-inv-apply--ddb032645e3e38c77be485ee.md) | 140 | `result-track:ddb032645e3e38c77be485ee8441514ad77bcb7cc0cbdc896bf0698fe423d4cd` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/instance--cca5941014cdfa7234bd595b.md) | 143 | `declaration-track:cca5941014cdfa7234bd595b3af5e8a91963dcece1f7e4c94e87c13a95d06b65` |
| 28 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hasforgettopartord--6757a541d0dde8822fae4e32.md) | 146 | `declaration-track:6757a541d0dde8822fae4e325796d52d065339583f7631e87ec65835efaae3d2` |
| 29 | `instance` | [hasForgetToBipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/hasforgettobipointed--e1fc0236bdb855ec9ace14ec.md) | 150 | `declaration-track:e1fc0236bdb855ec9ace14ec721dd9fe4ee74ec99051382517c7c919323d875a` |
| 30 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/dual--fbe56ba7da087d38573f3d26.md) | 158 | `declaration-track:fbe56ba7da087d38573f3d26e495f980110349a24c5db9e8625e865f61a6d1b5` |
| 31 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/iso-mk--ac68e2da30a972e8e9da9b6c.md) | 164 | `declaration-track:ac68e2da30a972e8e9da9b6c3e2d9c6604372d08064998132333c2aa6acf9b6f` |
| 32 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/dualequiv--2ea6d9376cf2a2686fa39ed7.md) | 172 | `declaration-track:2ea6d9376cf2a2686fa39ed7755f843b76d69bf9e2d1742965c9f6ec24acc105` |
| 33 | `theorem` | [bddOrd_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/bddord-dual-comp-forget-to-partord--8eb40f0a526b9adbf2e856dc.md) | 180 | `result-track:8eb40f0a526b9adbf2e856dce30e7c055d7c602b4bed9de29ff22b39dd8235bf` |
| 34 | `theorem` | [bddOrd_dual_comp_forget_to_bipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant2f8c9afe518629245121733d50a2a6a7eda65d0cac6a4c0da9e21bcc7f2954ab.lean/declarations/bddord-dual-comp-forget-to-bipointed--9fec243384ee15a071254cb4.md) | 185 | `result-track:9fec243384ee15a071254cb4c07cd0df3c4d1f52ca94027ed64e9ef903e9653d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
