# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomLift.Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e89f8280f5716ad796037a65bacc0c4a3eeeb61",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e89f8280f5716ad796037a65bacc0c4a3eeeb61`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CommSq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsHomLiftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/ishomliftaux--b1573b0c239c255088d13670.md) | 38 | `declaration-track:b1573b0c239c255088d136703a6160e4b552d6e6868742fc61c2beb87a9fc692` |
| 2 | `class` | [Functor.IsHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/functor-ishomlift--9507d045a9b94baa785285c3.md) | 51 | `declaration-track:9507d045a9b94baa785285c3a41718a9fd3112004c38a7dfc863d38699da518d` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/macro--dba43b053f09390f2fdded52.md) | 55 | `declaration-track:dba43b053f09390f2fdded52b82fa0838e015df067174d04d30d040416db1cfe` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/instance--a23e030023be026c63018ab2.md) | 60 | `declaration-track:a23e030023be026c63018ab2c3bd8fe6382fc6d3dfe3aaa90942ab9ed8f72afd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/instance--28cb562b01fd9f98c48bc070.md) | 64 | `declaration-track:28cb562b01fd9f98c48bc070cff3d2cd40a4f19f02801c6651d106df32bcb751` |
| 6 | `lemma` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/id--bf9f4e8a72e93083bf214dcb.md) | 69 | `result-track:bf9f4e8a72e93083bf214dcb9e798d631d33c1dc58cfbb3da75ab6209d91228d` |
| 7 | `lemma` | [domain_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/domain-eq--4efefe34ff6e94258c4efcd6.md) | 76 | `result-track:4efefe34ff6e94258c4efcd69c999c47c7a36ac4794e9a8332ad862ba5cde075` |
| 8 | `lemma` | [codomain_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/codomain-eq--f26bfce8d1259503b789410f.md) | 79 | `result-track:f26bfce8d1259503b789410ffb6ce17c0a4fe44b396bcb4275b5a9f34b66c886` |
| 9 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/fac--ed364021a4b67f1540dde9c5.md) | 84 | `result-track:ed364021a4b67f1540dde9c5f57adc25928030213e15878b377c8da7face856f` |
| 10 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/fac--6e21d89fea744785d80d65ab.md) | 87 | `result-track:6e21d89fea744785d80d65abcdbd67ca458fa3e13614f68b639d3412e9476504` |
| 11 | `lemma` | [commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/commsq--08a534606c1d3fc5fee9bad7.md) | 90 | `result-track:08a534606c1d3fc5fee9bad73e978ba0106746e120df70f227eaf2a0a39abe9b` |
| 12 | `lemma` | [eq_of_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/eq-of-ishomlift--d8c9f07a3bb368235ab1485a.md) | 95 | `result-track:d8c9f07a3bb368235ab1485a338ca8bb8315a1b771685395db4bbcffd44f6268` |
| 13 | `lemma` | [of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/of-fac--80dc2a8cfeff3d555fd4a638.md) | 99 | `result-track:80dc2a8cfeff3d555fd4a638bc4ad740218da2a95ae75bc24a17486f1bc0f078` |
| 14 | `lemma` | [of_fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/of-fac--0de071e5d4ce5212ad1f1023.md) | 103 | `result-track:0de071e5d4ce5212ad1f1023a49a6e53941d0b6940c5efc209c9b3cc75602313` |
| 15 | `lemma` | [of_commsq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/of-commsq--793b1f23b3a6aff6b9bf0328.md) | 109 | `result-track:793b1f23b3a6aff6b9bf0328df6b38736ea32686358bc97c0519e40ad47baed3` |
| 16 | `lemma` | [of_commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/of-commsq--7489682e803ed4c9bbd7d8d8.md) | 115 | `result-track:7489682e803ed4c9bbd7d8d8b9cf707121221f74cd9e12547b122d6199bafbb3` |
| 17 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp--5f67999bfa41007d96d1677d.md) | 119 | `declaration-track:5f67999bfa41007d96d1677d672b0d894724d34a53061789a4aaececfaa0e090` |
| 18 | `instance` | [lift_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-id-comp--ad8eaa36f274ab65db67623b.md) | 127 | `declaration-track:ad8eaa36f274ab65db67623b06234bc52057340f212958f09781076340945969` |
| 19 | `instance` | [comp_lift_id_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp-lift-id-right--90b8128218d394f8980cc488.md) | 131 | `declaration-track:90b8128218d394f8980cc488ca47e050af9d95129d6b3a3b9d91282a35e81eaf` |
| 20 | `lemma` | [comp_lift_id_right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp-lift-id-right--add0c84f7286b8613cbeec96.md) | 136 | `result-track:add0c84f7286b8613cbeec96f92f03b5590206fac64968fe83ac02a87e7016ed` |
| 21 | `instance` | [comp_lift_id_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp-lift-id-left--1be2c69f16e763d870e57892.md) | 141 | `declaration-track:1be2c69f16e763d870e578923263daf26a97e976859925b8967fa066147371d2` |
| 22 | `lemma` | [comp_lift_id_left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp-lift-id-left--462854cee5f95d5189b957ce.md) | 146 | `result-track:462854cee5f95d5189b957ce8c2fa8d215a309f166ea42d1b4ae7c68e012314e` |
| 23 | `lemma` | [eqToHom_domain_lift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/eqtohom-domain-lift-id--464d047dddbea5c38505a673.md) | 151 | `result-track:464d047dddbea5c38505a6737df26137f404094da86e1011d312bd30fd35d7a8` |
| 24 | `lemma` | [eqToHom_codomain_lift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/eqtohom-codomain-lift-id--f250a0d156dc5077ba8b1909.md) | 155 | `result-track:f250a0d156dc5077ba8b19096d824d4564824a827d1a6fc0a36e7ecf624b1e11` |
| 25 | `lemma` | [id_lift_eqToHom_domain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/id-lift-eqtohom-domain--792e312cf331488a11b19248.md) | 159 | `result-track:792e312cf331488a11b19248760571784e6c6fd941eae095326cc5a74efe3e6f` |
| 26 | `lemma` | [id_lift_eqToHom_codomain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/id-lift-eqtohom-codomain--ae0739cfc7c23f78d4c5e1c1.md) | 163 | `result-track:ae0739cfc7c23f78d4c5e1c119f1911845a815e097d5dbc9ab4eaa059150a5a3` |
| 27 | `instance` | [comp_eqToHom_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp-eqtohom-lift--de547d0482f5ce8a4b3adcb1.md) | 167 | `declaration-track:de547d0482f5ce8a4b3adcb1d36a381cd2f505599a60a1831bfaeb18c9cd481a` |
| 28 | `instance` | [eqToHom_comp_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/eqtohom-comp-lift--8207fc4588f4efef115b7d67.md) | 171 | `declaration-track:8207fc4588f4efef115b7d67c3aa37dc3e91862f7cc8ad606734529f8b1b3b11` |
| 29 | `instance` | [lift_eqToHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-eqtohom-comp--312ab68c3df5f9fdd9510435.md) | 175 | `declaration-track:312ab68c3df5f9fdd9510435842ee59aca09e6fc8fcc6cbcfab412d94f24713b` |
| 30 | `instance` | [lift_comp_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-comp-eqtohom--c9adc7a9960510c9d7b73cc7.md) | 179 | `declaration-track:c9adc7a9960510c9d7b73cc76dd2e9253fe856311f21726bcd3b2019453c0e62` |
| 31 | `lemma` | [comp_eqToHom_lift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/comp-eqtohom-lift-iff--4232982007ccbf707a86c6ed.md) | 184 | `result-track:4232982007ccbf707a86c6ed01849bef7ca167984d9ceece1e75e92ed1ec30d9` |
| 32 | `lemma` | [eqToHom_comp_lift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/eqtohom-comp-lift-iff--df87c7ebccdad346a4cdec3d.md) | 190 | `result-track:df87c7ebccdad346a4cdec3df85586565cb795acf52e698be31c9252655b5a3d` |
| 33 | `lemma` | [lift_eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-eqtohom-comp-iff--fb0d9c71ac3b77e483470477.md) | 196 | `result-track:fb0d9c71ac3b77e483470477e12b06d1493444a30651c6b283584e8636c52307` |
| 34 | `lemma` | [lift_comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-comp-eqtohom-iff--a77bcee7ecb60e4db774f900.md) | 202 | `result-track:a77bcee7ecb60e4db774f900413bd4c341ac963b158961d0fe6f8724774b7a8f` |
| 35 | `def` | [isoOfIsoLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/isoofisolift--023ca42fe0a5c3702bf62728.md) | 214 | `declaration-track:023ca42fe0a5c3702bf627284e24dc344b968478511e62375afe9ffdc40995d9` |
| 36 | `lemma` | [isoOfIsoLift_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/isoofisolift-inv-hom-id--eb2ee0fdbc011f95e434775c.md) | 222 | `result-track:eb2ee0fdbc011f95e434775c82b3295be7b95ec66df6fa1484a57c48dcd079c4` |
| 37 | `lemma` | [isoOfIsoLift_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/isoofisolift-hom-inv-id--de5ed0dd5a40c89f7bea57a1.md) | 227 | `result-track:de5ed0dd5a40c89f7bea57a16288cbfaedbdf98ced8386e16c888399d62399ea` |
| 38 | `lemma` | [isIso_of_lift_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/isiso-of-lift-isiso--b4114530eec8684a5c5498b2.md) | 232 | `result-track:b4114530eec8684a5c5498b216998299ea7b0e40639177c8b256b04d06eddb31` |
| 39 | `instance` | [inv_lift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/inv-lift-inv--a4ab3c82bc028a75ba8a4333.md) | 237 | `declaration-track:a4ab3c82bc028a75ba8a433310709c0e8b72751c4865eab2bbe0a50f6353e65f` |
| 40 | `instance` | [inv_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/inv-lift--47622937377b1fdff46612c8.md) | 244 | `declaration-track:47622937377b1fdff46612c84617c65a054eea277c2b4605c6c50d67c7a394b6` |
| 41 | `instance` | [inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/inv--92e6fdb6bd2593dc6c5d55bd.md) | 250 | `declaration-track:92e6fdb6bd2593dc6c5d55bdea1c0e9fa90c2cf4501e6b81d6772b52c1c77c91` |
| 42 | `instance` | [lift_id_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-id-inv--85a47134f4d06aba8c00f5c8.md) | 259 | `declaration-track:85a47134f4d06aba8c00f5c8996c6e2fa04815984007b47983495af30a5f9d59` |
| 43 | `instance` | [lift_id_inv_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/declarations/lift-id-inv-isiso--a583f5bd905b0ab3f3f9e9ab.md) | 264 | `declaration-track:a583f5bd905b0ab3f3f9e9ab3193f7de0d6ea7a1a43892f93e2a40f0c017242e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
