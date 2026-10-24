# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d5e7e78a84506c535b66aa9c75cf419fdf49c59",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d5e7e78a84506c535b66aa9c75cf419fdf49c59`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/prod--12c2d6f3f0218b30bae7fa14.md) | 60 | `declaration-track:12c2d6f3f0218b30bae7fa1469dcb5cded50c841609293d4eb0660c9e9e1f27f` |
| 2 | `def` | [pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/pi--5fa27f4e723c5c607f8dc055.md) | 66 | `declaration-track:5fa27f4e723c5c607f8dc0558e8d234a4588fbbdd729bea987fe32da9c96d7fb` |
| 3 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/congr--7b96f75cd12e9aee717f1023.md) | 74 | `declaration-track:7b96f75cd12e9aee717f10230852f3cfb02995db007964ee2ccb2a7e4a1aed22` |
| 4 | `theorem` | [congr_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/congr-mk--de991be62db04562481d13be.md) | 79 | `result-track:de991be62db04562481d13be0489818c3aa902272b2cb949bf361a5ce84b783d` |
| 5 | `theorem` | [le_comap_conGen](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/le-comap-congen--c5f26fc0489318bbe2373865.md) | 83 | `result-track:c5f26fc0489318bbe237386506fa32b032f2586c63f2716a1d72d9fd7aced789` |
| 6 | `theorem` | [comap_conGen_equiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comap-congen-equiv--876c022d4548f070be532f22.md) | 95 | `result-track:876c022d4548f070be532f22913b7d1f7781b6cf48e43b3d5386332b3f785cc4` |
| 7 | `theorem` | [comap_conGen_of_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comap-congen-of-bijective--8f988d8761baee9d36aa7295.md) | 126 | `result-track:8f988d8761baee9d36aa7295b12e704b104328814f555c983ebc42671c3e043e` |
| 8 | `def` | [submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/submonoid--f571da9cf176d4aca36d28db.md) | 140 | `declaration-track:f571da9cf176d4aca36d28db178cd95f2440a14bd455a9ed961f9bd029c6eda9` |
| 9 | `def` | [ofSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/ofsubmonoid--3ee6920a075f498a5525baa0.md) | 151 | `declaration-track:3ee6920a075f498a5525baa05f00f18fd96a31d994ccdc415cfb47d0c8646d1e` |
| 10 | `instance` | [toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/tosubmonoid--e69aa9474cc3ff05fa16cd56.md) | 161 | `declaration-track:e69aa9474cc3ff05fa16cd565750d55bad03191efb9fb81ccf553e3fe499bb6c` |
| 11 | `theorem` | [mem_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/mem-coe--067f18e7e0960b7f0d667559.md) | 165 | `result-track:067f18e7e0960b7f0d66755934c02927f91fd02e1508e99021fd3d80e1195c4f` |
| 12 | `theorem` | [to_submonoid_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/to-submonoid-inj--b80ee4a79aa96a3d9c916ac3.md) | 169 | `result-track:b80ee4a79aa96a3d9c916ac3481a1b28338e041985eed032a989d459a5716937` |
| 13 | `theorem` | [le_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/le-iff--732f84763f9e442d243fc3cb.md) | 173 | `result-track:732f84763f9e442d243fc3cbf5efa88c006810cf6f8180427d15d66381533cfc` |
| 14 | `theorem` | [mrange_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/mrange-mk--3c0e959fb3fe063d01d0291b.md) | 180 | `result-track:3c0e959fb3fe063d01d0291b70d70b79613df74105a1916681bcda4817cba99b` |
| 15 | `constant` | [on](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/on--fea88f8a3746b3215b95886e.md) | 189 | `declaration-track:fea88f8a3746b3215b95886e8b3525fde39666c4092976d6907f763957134da5` |
| 16 | `theorem` | [lift_range](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/lift-range--e79e0b7fe128d22a8fd3496a.md) | 191 | `result-track:e79e0b7fe128d22a8fd3496ac3e0099fdfa585c89dcbb6541af3c6fd1ecc4eef` |
| 17 | `theorem` | [kerLift_range_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/kerlift-range-eq--30ed4c1bd013d7b4f55992da.md) | 198 | `result-track:30ed4c1bd013d7b4f55992dae8cea22c82c42ccd4efeee77a5caa075fc3d75d2` |
| 18 | `def` | [quotientKerEquivRange](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/quotientkerequivrange--7e07cec04f556846313c8b0b.md) | 205 | `declaration-track:7e07cec04f556846313c8b0b0b01d269b2cd5c18f004ad1da4fa97fb16829c70` |
| 19 | `def` | [quotientKerEquivOfRightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/quotientkerequivofrightinverse--ca295b2c35ac9405c602699b.md) | 221 | `declaration-track:ca295b2c35ac9405c602699bae80a0028da8aa35aeb018d91c7a1c1a7a5ed587` |
| 20 | `def` | [quotientKerEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/quotientkerequivofsurjective--393175c4f46cbb5545cc903a.md) | 238 | `declaration-track:393175c4f46cbb5545cc903a36e043c939ca0f6115ce348d497f046ef550beb0` |
| 21 | `def` | [comapQuotientEquivOfSurj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comapquotientequivofsurj--80cea56f8ca6b0bd7b6b5a0a.md) | 245 | `declaration-track:80cea56f8ca6b0bd7b6b5a0a3f82a1662bddc2db52f524c1106466b1cbdada09` |
| 22 | `lemma` | [comapQuotientEquivOfSurj_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comapquotientequivofsurj-mk--21acdef8e486f5bf54d1033a.md) | 251 | `result-track:21acdef8e486f5bf54d1033a841f35dc63d5cae59019432903db2d1912ecdd56` |
| 23 | `lemma` | [comapQuotientEquivOfSurj_symm_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comapquotientequivofsurj-symm-mk--c83cdb4b1cc7c93419adeba1.md) | 255 | `result-track:c83cdb4b1cc7c93419adeba1f9191d4e1ca20c83be2cac5ef733ea6fd5d8e1a5` |
| 24 | `lemma` | [comapQuotientEquivOfSurj_symm_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comapquotientequivofsurj-symm-mk--1b091af89f3b64c8693945b4.md) | 262 | `result-track:1b091af89f3b64c8693945b43bb5b055de1a1edf974f7883e84760f7a11f306e` |
| 25 | `def` | [comapQuotientEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/comapquotientequiv--fb40e10f25efc1de9279ef89.md) | 269 | `declaration-track:fb40e10f25efc1de9279ef89f8c721d83a548ef1821b59f2b74dc95de302c19e` |
| 26 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/quotientquotientequivquotient--54ba28976805668eaecd20aa.md) | 275 | `declaration-track:54ba28976805668eaecd20aaab4762e3f1d2b27ac6866cfa68c926e265d52743` |
| 27 | `theorem` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/smul--a6600a7e35e8d82a73f6a588.md) | 288 | `result-track:a6600a7e35e8d82a73f6a588ef83c779e55c0ece68ea9b4df2ee9b60a4144c1d` |
| 28 | `instance` | [instSMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/instsmul--1e5814ebbf9eac0588578c6e.md) | 297 | `declaration-track:1e5814ebbf9eac0588578c6e95c67ce1d5b8a82f0302c1b8cc3cc9ee96a581a4` |
| 29 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/coe-smul--2118e06899d08c61f8b4285d.md) | 302 | `result-track:2118e06899d08c61f8b4285d1f0192a209600a93ca68f50a7e41d4dbe692ac56` |
| 30 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/instsmulcommclass--6d899d812a074b2bef245451.md) | 306 | `declaration-track:6d899d812a074b2bef2454519c3b695763d2222496efc469c53f97e854e0c446` |
| 31 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/instisscalartower--47a738f248da3c55ac17bc8a.md) | 311 | `declaration-track:47a738f248da3c55ac17bc8a9299f460a2e2ffd3aed66ad09571d1ad4b3a0823` |
| 32 | `instance` | [instIsCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/instiscentralscalar--dc88afcd0d6145949e781400.md) | 316 | `declaration-track:dc88afcd0d6145949e78140015d10a82369f0b41fbc9c2ceaeca488593ea78b8` |
| 33 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/mulaction--260c20c3c28b215a3ca4bc5f.md) | 322 | `declaration-track:260c20c3c28b215a3ca4bc5fc0fdd30387358564b0cf8223dddd2592a9aa0760` |
| 34 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/declarations/muldistribmulaction--cd8349afd3aa7eb4582ce8d5.md) | 327 | `declaration-track:cd8349afd3aa7eb4582ce8d5742e7becfab5106e85a7a296b6f8546b8e9b67de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
