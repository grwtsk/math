# Verification target: GRWTSK.Geometry.DifferentialGeometry.Sphere.Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c15a96b00afe9f36e5147a70b431ab25b64fc15d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c15a96b00afe9f36e5147a70b431ab25b64fc15d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean.json)

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
| 1 | `def` | [stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereotofun--f3c5c92f807a33255eda9369.md) | 99 | `declaration-track:f3c5c92f807a33255eda9369a35a68e4fe021940758e7376b1b5a08718107658` |
| 2 | `theorem` | [stereoToFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereotofun-apply--83de7b387d9fcb14321ab4ca.md) | 105 | `result-track:83de7b387d9fcb14321ab4caead37eabf808c32d3b8cbdf1a0716716349d88ae` |
| 3 | `theorem` | [contDiffOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/contdiffon-stereotofun--37188590ef0935357b2c7c6b.md) | 109 | `result-track:37188590ef0935357b2c7c6b1aa61af5e535b775b56cec20c5d4f5937a568c4a` |
| 4 | `theorem` | [continuousOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/continuouson-stereotofun--1d3f82668699641c3846be21.md) | 117 | `result-track:1d3f82668699641c3846be21b81eeaf4ad5f89feb52205b6da1ffb9996efd0bf` |
| 5 | `def` | [stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereoinvfunaux--871bd22173df130406ad962c.md) | 127 | `declaration-track:871bd22173df130406ad962c4cfd149e52a5043b259526325d52bdad302cf2ab` |
| 6 | `theorem` | [stereoInvFunAux_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereoinvfunaux-apply--0894c2a95c0bb0cf225d0ba5.md) | 131 | `result-track:0894c2a95c0bb0cf225d0ba5cdf1b16dcde853163743fd4d858855b2f0f4c4c5` |
| 7 | `theorem` | [stereoInvFunAux_mem](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereoinvfunaux-mem--a3feca9393c0f6b8a109c6fe.md) | 135 | `result-track:a3feca9393c0f6b8a109c6fe2d7630f73e18ce51bf7188c6beb9562335f8c7a3` |
| 8 | `theorem` | [hasFDerivAt_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/hasfderivat-stereoinvfunaux--b57428aa39fad34ec2913b44.md) | 148 | `result-track:b57428aa39fad34ec2913b44f1b69a1fd3498543a33eeb4a3dbe8166dd00ccfa` |
| 9 | `theorem` | [hasFDerivAt_stereoInvFunAux_comp_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/hasfderivat-stereoinvfunaux-comp-coe--e6b603bd0c7f1e79b7773790.md) | 166 | `result-track:e6b603bd0c7f1e79b777379034fb4b44b638e079fc88822c6bd45a9fa41e284f` |
| 10 | `theorem` | [contDiff_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/contdiff-stereoinvfunaux--3670c7104e376050ddcdb02c.md) | 172 | `result-track:3670c7104e376050ddcdb02cb7f30211f4b39cd9fe5a34129471f06d8a36ba24` |
| 11 | `def` | [stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereoinvfun--a9fe7c74add44f23c645ea6f.md) | 185 | `declaration-track:a9fe7c74add44f23c645ea6f1ea8167defcfa371a7742e6cea931f0467129b00` |
| 12 | `theorem` | [stereoInvFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereoinvfun-apply--0d40693842e61265c64c5487.md) | 189 | `result-track:0d40693842e61265c64c54870605c9e3e46f5f25b75405b5a42c19e06e960316` |
| 13 | `theorem` | [stereoInvFun_ne_north_pole](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereoinvfun-ne-north-pole--b8f37197fe6362099c851353.md) | 194 | `result-track:b8f37197fe6362099c8513534e71494d3ae1b6b257230f1fd2052291bb60d8ec` |
| 14 | `theorem` | [continuous_stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/continuous-stereoinvfun--32ddb970574fcd37660bde37.md) | 207 | `result-track:32ddb970574fcd37660bde37f3eaec71c787223684038db8b259ac6b30c7ab3f` |
| 15 | `theorem` | [stereo_left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereo-left-inv--fd041fbd64c8b9f9e83ff1e7.md) | 213 | `result-track:fd041fbd64c8b9f9e83ff1e77da1d7776d9341042bdbe2c9c41c53236f3aa044` |
| 16 | `theorem` | [stereo_right_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereo-right-inv--5123ea62f0dcb006e3bea229.md) | 243 | `result-track:5123ea62f0dcb006e3bea22976f49443d11b8341213bb8f3a11c5f22ac3b9413` |
| 17 | `def` | [stereographic](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic--acf5dcdd72c10c69dee083c2.md) | 257 | `declaration-track:acf5dcdd72c10c69dee083c2bd4d0ab8896b5683545ced482b0d7c98b13fdaab` |
| 18 | `theorem` | [stereographic_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-apply--f7a8d9c5dd25584822d21672.md) | 279 | `result-track:f7a8d9c5dd25584822d21672de15590b2688aa276e47820a1b142f77549b7a16` |
| 19 | `theorem` | [stereographic_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-source--bcbd1111707f7975b5806afc.md) | 284 | `result-track:bcbd1111707f7975b5806afcdef95d4c21a421de7768f4be34712dcea76c5291` |
| 20 | `theorem` | [stereographic_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-target--65b99111388b400954b40a54.md) | 288 | `result-track:65b99111388b400954b40a54a62b801e697126f93a0adbb9c24b82dcc1ff9a9a` |
| 21 | `theorem` | [stereographic_apply_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-apply-neg--47a1916fd5e3f7c61365f61c.md) | 292 | `result-track:47a1916fd5e3f7c61365f61c0379cc075859746b06e6f9273e6c261db6fb6849` |
| 22 | `theorem` | [stereographic_neg_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-neg-apply--8b5afe9ed3ebf3582439d6b3.md) | 297 | `result-track:8b5afe9ed3ebf3582439d6b324891adb8f9d4e5c48581544826246470fe2defe` |
| 23 | `theorem` | [surjective_stereographic](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/surjective-stereographic--6cf1620f74010685d1423395.md) | 303 | `result-track:6cf1620f74010685d142339542721ffa3d3b7d6505f21519892931e249c5c81d` |
| 24 | `theorem` | [range_stereographic_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/range-stereographic-symm--08ac00d29f0c5d054b19e2e5.md) | 308 | `result-track:08ac00d29f0c5d054b19e2e5a1a92898c5164148447bc3b2c8f1bf9ab2e68881` |
| 25 | `lemma` | [isOpenEmbedding_stereographic_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/isopenembedding-stereographic-symm--9d9d6b6d9cb3cdf4ffad3e18.md) | 315 | `result-track:9d9d6b6d9cb3cdf4ffad3e18fa25ef2b7df3720ed0ddcecf49d9b4febfb798cc` |
| 26 | `def` | [stereographic'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic--4089d6059a4b487888c77532.md) | 345 | `declaration-track:4089d6059a4b487888c77532d511eb7b64f5373e967c95049572ca5d9d6ab8aa` |
| 27 | `theorem` | [stereographic'_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-source--58e70321e8905170f71826dd.md) | 352 | `result-track:58e70321e8905170f71826dd61433dd25597ddc0a759faa8b23b3e96f9b282e9` |
| 28 | `theorem` | [stereographic'_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-target--f915f08d299521c2f602fceb.md) | 356 | `result-track:f915f08d299521c2f602fcebdfa1816b889148ca59f5b3d1ab8b58d9bd98e6e7` |
| 29 | `instance` | [EuclideanSpace.instChartedSpaceSphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/euclideanspace-instchartedspacesphere--00369376f9dc811c37b39b0e.md) | 361 | `declaration-track:00369376f9dc811c37b39b0e6cb32a539b9714c9bb7cff16ec790516027b287f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/instance--c6e8c81f8973daee085f79c0.md) | 368 | `declaration-track:c6e8c81f8973daee085f79c0cc2d9c6f8f882d2d41a7e908fec8b80ef2a0ecf3` |
| 31 | `theorem` | [sphere_ext_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/sphere-ext-iff--57f2fb2ef92e1b6d6ba3a77a.md) | 379 | `result-track:57f2fb2ef92e1b6d6ba3a77a00a9a784231af569503d18156cd80a328a2f278a` |
| 32 | `theorem` | [stereographic'_symm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-symm-apply--ba36c4c7c902c2d345e7474a.md) | 382 | `result-track:ba36c4c7c902c2d345e7474a9c7d43a4aa619014a3c095b5f0734cbe1b92c8fc` |
| 33 | `instance` | [EuclideanSpace.instIsManifoldSphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/euclideanspace-instismanifoldsphere--f094a5142bbc1530bba951c2.md) | 395 | `declaration-track:f094a5142bbc1530bba951c2c557ef21532a7e301f0eb5e4d7e640e8a73e781b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/instance--ee2af8d201424244637e0993.md) | 427 | `declaration-track:ee2af8d201424244637e09935f8240c106ddd57538a52879f6fdf42fd4fab975` |
| 35 | `theorem` | [contMDiff_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/contmdiff-coe-sphere--da793491d16bf5cea05d189a.md) | 432 | `result-track:da793491d16bf5cea05d189a8fb4a73f20697941923412008badd11a85a3246e` |
| 36 | `theorem` | [ContMDiff.codRestrict_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/contmdiff-codrestrict-sphere--6c22732ae96e39fc74f6a021.md) | 452 | `result-track:6c22732ae96e39fc74f6a021640e14a8075a3373d65d078a6f0bb54430b75255` |
| 37 | `theorem` | [contMDiff_neg_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/contmdiff-neg-sphere--ee855d8167a695a0d5ad3c64.md) | 474 | `result-track:ee855d8167a695a0d5ad3c648eed67f05bdebf927f92be6725d4ae83c2b7b154` |
| 38 | `lemma` | [stereographic'_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/stereographic-neg--0d118598817712cf47e507b2.md) | 483 | `result-track:0d118598817712cf47e507b2b90735ddf5ca802af09b32644666e673edf772ad` |
| 39 | `theorem` | [range_mvfderiv_subtypeVal](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/range-mvfderiv-subtypeval--4cfd3a77845fd1f6ea59500f.md) | 496 | `result-track:4cfd3a77845fd1f6ea59500f1e4052f2a73b187ea0f6bfc0daa490546dc98578` |
| 40 | `theorem` | [range_mfderiv_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/range-mfderiv-coe-sphere--eedbb501908e2a81d827d45c.md) | 530 | `result-track:eedbb501908e2a81d827d45c651fe6f21e635b73662421474deaa2ab75b30da0` |
| 41 | `theorem` | [injective_mvfderiv_subtypeVal_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/injective-mvfderiv-subtypeval-sphere--113fc126244141c70776522d.md) | 537 | `result-track:113fc126244141c70776522d0b831a42417cd260efc13bab53d74158e7a2257e` |
| 42 | `theorem` | [mfderiv_coe_sphere_injective](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/mfderiv-coe-sphere-injective--cafc9685fc7031e4fdbb6934.md) | 561 | `result-track:cafc9685fc7031e4fdbb6934a74a03b262529973f734b59256f05f1376018b91` |
| 43 | `theorem` | [finrank_real_complex_fact'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/finrank-real-complex-fact--9f1ead51a339770e51199c8a.md) | 572 | `result-track:9f1ead51a339770e51199c8af8745d48a39c3a37b72f556f53df1135c91dbcc0` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/instance--1a2dba8e22e9e151119934d2.md) | 579 | `declaration-track:1a2dba8e22e9e151119934d280e6bae6d9ea57bdaa3f80e5b5132097c33da642` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/instance--03b8c3522d39795bad34ea67.md) | 582 | `declaration-track:03b8c3522d39795bad34ea670033049eacada159d4193ba130276f563dbc5059` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/instance--77b7e4aba8aa22c7b87ac7af.md) | 586 | `declaration-track:77b7e4aba8aa22c7b87ac7af41c64a1d64f591e0564a53dc4189c4b763870ee7` |
| 47 | `theorem` | [contMDiff_circleExp](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/declarations/contmdiff-circleexp--42ed1f36977709a4c4a54607.md) | 603 | `result-track:42ed1f36977709a4c4a546074ff72c9a60f4a53a1c95688d20fa68c3b2b12b8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
