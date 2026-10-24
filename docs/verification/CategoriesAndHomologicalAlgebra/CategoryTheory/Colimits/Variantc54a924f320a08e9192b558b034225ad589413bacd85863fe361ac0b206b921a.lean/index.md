# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d96c2c66ad4284bd80fdd3ba94db73b6a7b34feb",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d96c2c66ad4284bd80fdd3ba94db73b6a7b34feb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quot.Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-rel--858c7c67adbf9d1383917ced.md) | 26 | `declaration-track:858c7c67adbf9d1383917ced57cc318fbf344c0b5cc4f584bf3d68140467a4a7` |
| 2 | `def` | [Quot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot--491fbc7dcce8d7f018cd127a.md) | 33 | `declaration-track:491fbc7dcce8d7f018cd127a668459dc92f0212e55e5eb20487f7711205a8235` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/instance--06a2cf835a4c6c3afb1b8121.md) | 36 | `declaration-track:06a2cf835a4c6c3afb1b81219b494ca8334ae652b51e29fcbcef330a541e35c5` |
| 4 | `def` | [Quot.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot--318b3d7d03df80917d125358.md) | 40 | `declaration-track:318b3d7d03df80917d125358975858b6bd4f483798453da4c7dd57cb87122d70` |
| 5 | `lemma` | [Quot.jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-jointly-surjective--93de3f4dacfc4d78b2e6f481.md) | 43 | `result-track:93de3f4dacfc4d78b2e6f48169a9e68e52f7c50d53c28a2e26f70a2ad901d525` |
| 6 | `def` | [Quot.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-desc--ce9f5da4bd38c073d60c6e9a.md) | 52 | `declaration-track:ce9f5da4bd38c073d60c6e9a36d93e7d636b6a1e2fc9b41c36c45a2fad9e9be2` |
| 7 | `lemma` | [Quot.ι_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-desc--f3e735e926b5e216e93246d8.md) | 58 | `result-track:f3e735e926b5e216e93246d85e1bd37af42e3efd74a2bac08a4a64be554d6787` |
| 8 | `lemma` | [Quot.map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-map--dba29681fea335cd6f509007.md) | 61 | `result-track:dba29681fea335cd6f50900733d0248047eeae0d74acb55e52660d7a392ca57d` |
| 9 | `def` | [quotToQuotUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quottoquotulift--f48d8b5652f2158c4ce4b838.md) | 67 | `declaration-track:f48d8b5652f2158c4ce4b8383308b176bc49f5366d23379aa73b6461bf7f9679` |
| 10 | `lemma` | [quotToQuotUlift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quottoquotulift--9999224457dde82755a5f593.md) | 77 | `result-track:9999224457dde82755a5f59340f22a160a2af1b6fbdef9279d779a1d78f72f73` |
| 11 | `def` | [quotUliftToQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quotulifttoquot--ba125bb4e08ac0cf1d93c58d.md) | 84 | `declaration-track:ba125bb4e08ac0cf1d93c58d5b1b2252e96f60e8a13d0aa8e025431535b94bb4` |
| 12 | `lemma` | [quotUliftToQuot_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quotulifttoquot--2845bc2eaed51f5ae557d5b9.md) | 89 | `result-track:2845bc2eaed51f5ae557d5b9c46eaaf3819b01be683b8c1ed1cda4789c55ead3` |
| 13 | `def` | [quotQuotUliftEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quotquotuliftequiv--2e0e74c518e95c7e3278c242.md) | 97 | `declaration-track:2e0e74c518e95c7e3278c24221dbcec53e3d09d70e29a0667abd572105286bea` |
| 14 | `lemma` | [Quot.desc_quotQuotUliftEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-desc-quotquotuliftequiv--9d78137821709e84ce18c66a.md) | 108 | `result-track:9d78137821709e84ce18c66ad42168f8dfa646655e70e9661e5c2666fa126374` |
| 15 | `def` | [toCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/tococone--1f4243531edbd965657a664d.md) | 117 | `declaration-track:1f4243531edbd965657a664d20aa22aecc857f4dcac208041d907bceda04bc7b` |
| 16 | `lemma` | [Quot.desc_toCocone_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-desc-tococone-desc--bfb7c1cf80577b0f1cdfd9a6.md) | 121 | `result-track:bfb7c1cf80577b0f1cdfd9a67eed5f6776ebc15bf8d594286faff4c3ad9cc3b3` |
| 17 | `theorem` | [isColimit_iff_bijective_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/iscolimit-iff-bijective-desc--d334e343b29a38ab52c143b6.md) | 126 | `result-track:d334e343b29a38ab52c143b6487ba4b82072db0ed08ed94ba584d11a86708f9d` |
| 18 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitcocone--7191790f363f4ef897e49b8b.md) | 160 | `declaration-track:7191790f363f4ef897e49b8b1b32127867b7e0e9546f9def121d23d34b76324e` |
| 19 | `theorem` | [Quot.desc_colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/quot-desc-colimitcocone--ed7a50e8b1c730e815d42456.md) | 167 | `result-track:ed7a50e8b1c730e815d42456a1d0fc54f87bfe6b2ec3e4204ca2ec14f750846b` |
| 20 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitcoconeiscolimit--9b5aecec22aa175836752bbf.md) | 173 | `declaration-track:9b5aecec22aa175836752bbf797dc83295b4d1f73577ca8b2792afb4520fdaa5` |
| 21 | `theorem` | [hasColimit_iff_small_quot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/hascolimit-iff-small-quot--87cb7c0ddf4a50b3343b1454.md) | 179 | `result-track:87cb7c0ddf4a50b3343b1454533ab04332cc74129fbcf9736c31bb6ae4f6b1c7` |
| 22 | `theorem` | [small_quot_of_hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/small-quot-of-hascolimit--2bdb3c189778ea406642a053.md) | 184 | `result-track:2bdb3c189778ea406642a053374fea889e1703b857fe66514eaa72a6e80e74e6` |
| 23 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/hascolimit--25459e08fd08d101e8ab4ac8.md) | 187 | `declaration-track:25459e08fd08d101e8ab4ac81d60b8ca39d80d3ec28eff610c3be74df98b9b29` |
| 24 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/hascolimitsofshape--eec724c4d56c7e6257d5399b.md) | 190 | `declaration-track:eec724c4d56c7e6257d5399bb87bf4c1150990ed69cd305515f7611438664081` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/instance--a188441ef4f6ae68d00d6a19.md) | 194 | `declaration-track:a188441ef4f6ae68d00d6a199ca2bed685e4c5420f41847a0f2bf09c31d5464e` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/example--37fcc312cdf84f473f124dfe.md) | 199 | `declaration-track:37fcc312cdf84f473f124dfe4a3189d637895df48d585adf18764bf53acee4e2` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/example--89091152af75963c67f59158.md) | 200 | `declaration-track:89091152af75963c67f591580fad74596317e1a47f7a06deb2d945d735ee5098` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/example--af75af7e4c1bcdde147d7c53.md) | 202 | `declaration-track:af75af7e4c1bcdde147d7c5388eb570758f916bbc8d7c157ee1a1142b4a212a5` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/example--82e6c31efc0430fd95eba7bb.md) | 203 | `declaration-track:82e6c31efc0430fd95eba7bb9df5dfc1ebdefb08270b80371f5d6e296566b521` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/example--42d2124046288735ad5cecec.md) | 205 | `declaration-track:42d2124046288735ad5cecec31c05a741bf1dc899a12132698e1caba7329fa5e` |
| 31 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitcocone--b1ada5153bfbf9b7bfaf8821.md) | 215 | `declaration-track:b1ada5153bfbf9b7bfaf8821f45303a4bd8d88147f62651b915832b859e49331` |
| 32 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitcoconeiscolimit--481afac835a72f9f793f3f34.md) | 222 | `declaration-track:481afac835a72f9f793f3f34636c8c444302798bcbc3553feb0651a9bbc5e22d` |
| 33 | `def` | [colimitEquivQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitequivquot--cbd07425dbbc5b1aec02e567.md) | 242 | `declaration-track:cbd07425dbbc5b1aec02e5671a7a6815a62443ca6e56575e7876f9d0750f14fa` |
| 34 | `theorem` | [colimitEquivQuot_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitequivquot-symm-apply--b4bbe7f0d4a9da80a881cb74.md) | 247 | `result-track:b4bbe7f0d4a9da80a881cb74c2ebd1274c8dc3ddc353d37ad3561b51dd7b08fa` |
| 35 | `theorem` | [colimitEquivQuot_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimitequivquot-apply--40fadb68282810d1ae6574e4.md) | 252 | `result-track:40fadb68282810d1ae6574e41057c8843155685a8e1ad284606cc85f9aebe12e` |
| 36 | `theorem` | [Colimit.w_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-w-apply--2f4230c83d80b0c56fbe4a45.md) | 259 | `result-track:2f4230c83d80b0c56fbe4a45b6d31326a691b8d73ad2cc642c437f1d79320d94` |
| 37 | `theorem` | [Colimit.ι_desc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-desc-apply--1b0ddacf86b5fabd9db9aa9d.md) | 264 | `result-track:1b0ddacf86b5fabd9db9aa9d591f0f35121bc9a7e0f0df14343b6eaa511f29d3` |
| 38 | `theorem` | [Colimit.ι_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-map-apply--1978bd081da462747c7a86df.md) | 269 | `result-track:1978bd081da462747c7a86df4cdf8d7e263e9a29418b92576de0ebc21ab6aff6` |
| 39 | `theorem` | [Colimit.w_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-w-apply--cf0c42a7fe49a7f81f099032.md) | 274 | `result-track:cf0c42a7fe49a7f81f0990329069c1a0e1e485d423722a053bef7ce077304930` |
| 40 | `theorem` | [Colimit.ι_desc_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-desc-apply--cb83d0209f97cbbd785a1037.md) | 279 | `result-track:cb83d0209f97cbbd785a1037e38dedc0c4820979b3dd176bc1fd5b58a69782bf` |
| 41 | `theorem` | [Colimit.ι_map_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-map-apply--f02eb760a7b92838c8814a91.md) | 284 | `result-track:f02eb760a7b92838c8814a914c3210e1834968804f22f480b1632d93c411ec47` |
| 42 | `theorem` | [colimit_sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-sound--ade5a9c1f57d8b7d753465a9.md) | 289 | `result-track:ade5a9c1f57d8b7d753465a9e71e36ed37c8960f12c7f967b8e2eec3e883a331` |
| 43 | `theorem` | [colimit_sound'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-sound--56670d655c86e65f075ae57b.md) | 294 | `result-track:56670d655c86e65f075ae57bec9e1eac71be70fdae9dce6d3501b8dacdb44235` |
| 44 | `theorem` | [colimit_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/colimit-eq--569a0397401528bff9740b3e.md) | 301 | `result-track:569a0397401528bff9740b3e75e813124613e4e7c5e7b9a5ebc605f6c14ca44d` |
| 45 | `theorem` | [jointly_surjective_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/jointly-surjective-of-iscolimit--a5e92ad6d9a12299fcea3d2e.md) | 307 | `result-track:a5e92ad6d9a12299fcea3d2ee5f8e2532488e11c556dc24328add5d730df5930` |
| 46 | `theorem` | [jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/jointly-surjective--0fb9db52caa868a005a32d1c.md) | 317 | `result-track:0fb9db52caa868a005a32d1cd3357b530e66013c8a1995366dd6ffe18003eb78` |
| 47 | `theorem` | [jointly_surjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/jointly-surjective--7303a2f092da7c4f1e7f4514.md) | 322 | `result-track:7303a2f092da7c4f1e7f4514bf8de789ca049c9f91e51cad374022500c584a26` |
| 48 | `theorem` | [nonempty_of_nonempty_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc54a924f320a08e9192b558b034225ad589413bacd85863fe361ac0b206b921a.lean/declarations/nonempty-of-nonempty-colimit--13d11e9c6579d4f923cfef8a.md) | 327 | `result-track:13d11e9c6579d4f923cfef8accb2c054d28834925bf434828f0a83f50bf52456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
