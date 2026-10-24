# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b8327ebbb02692528b61993d2402682d51746aa",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b8327ebbb02692528b61993d2402682d51746aa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean.json)

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
| 1 | `def` | [ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi--9d339f3f2233727e0de2736c.md) | 56 | `declaration-track:9d339f3f2233727e0de2736c345a550adbec6158e8ea7af6ea58d10497227075` |
| 2 | `lemma` | [ιMulti_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-apply-coe--b3476d299217fd64ac1d9026.md) | 60 | `result-track:b3476d299217fd64ac1d9026f86f7554db012ba6aa627d9b31293b0dde182466` |
| 3 | `def` | [ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family--da26c74c2c8b57b8c52f7fc9.md) | 65 | `declaration-track:da26c74c2c8b57b8c52f7fc9dee15a49cbbde7fc2bed7a5ea8e796c06232f354` |
| 4 | `lemma` | [ιMulti_family_eq_coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family-eq-coe-comp--0d67a499d25169d21079729b.md) | 69 | `result-track:0d67a499d25169d21079729bd83bc15879cb0a39954f9969a57d8b45a8f225db` |
| 5 | `lemma` | [ιMulti_family_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family-apply-coe--04f79d2868ced6ce44abaa49.md) | 73 | `result-track:04f79d2868ced6ce44abaa4940509fb970d7f561602d8496067a92342a5ffccc` |
| 6 | `lemma` | [ιMulti_span_fixedDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-span-fixeddegree--f0dfbc7ef039548640780717.md) | 80 | `result-track:f0dfbc7ef039548640780717ac53f6ea3cccac180f493eee625ba04925c76dec` |
| 7 | `lemma` | [ιMulti_span_fixedDegree_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-span-fixeddegree-of-span-eq-top--67437b549b3cff7ed6987574.md) | 87 | `result-track:67437b549b3cff7ed6987574391f6e2809523146cdb75371be34628c404d299d` |
| 8 | `lemma` | [ιMulti_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-span--2b09737afd3dc962101f5330.md) | 108 | `result-track:2b09737afd3dc962101f53307312976b7dadcf5017dbad4e7503e10673e63b93` |
| 9 | `lemma` | [ιMulti_span_of_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-span-of-span--23597ef80a60562749d1487c.md) | 118 | `result-track:23597ef80a60562749d1487cf6f002c66ab8249f622474669aa6168cb1995ed2` |
| 10 | `inductive` | [Rels](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/rels--0030295ac44f7a2a2cfc77a9.md) | 127 | `declaration-track:0030295ac44f7a2a2cfc77a98286cf5fd2d9345d94a1d3ccc091dec048588116` |
| 11 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/relations--08e551c12494cfcfc383bb1d.md) | 134 | `declaration-track:08e551c12494cfcfc383bb1d8f30e0e8767afa449317b157f0ac2709de2d3818` |
| 12 | `def` | [relationsSolutionEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/relationssolutionequiv--306af2c42185c19b122cdd35.md) | 153 | `declaration-track:306af2c42185c19b122cdd35af0ec0f885a2f73858b2888fa61f0de98560dba1` |
| 13 | `def` | [isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/ispresentationcore--f20077a5f512ab9e62eae0b5.md) | 184 | `declaration-track:f20077a5f512ab9e62eae0b5eba29af7bf7a269d1d62faaa6dd2289d3b79e749` |
| 14 | `def` | [presentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/presentation--697eb5a405908137e11be39e.md) | 198 | `declaration-track:697eb5a405908137e11be39eaf448a697ef630d91783036bf8f4cbeb9a93b74d` |
| 15 | `lemma` | [linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/linearmap-ext--d217a4134f49f98342891761.md) | 206 | `result-track:d217a4134f49f98342891761a706d5305414bcc3ff2fc0717ee8fad3ce9987c9` |
| 16 | `def` | [alternatingMapLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv--96a63340e173e1c29a820004.md) | 212 | `declaration-track:96a63340e173e1c29a820004924b528d5d71d4b4c6c0a4694f785399023809c9` |
| 17 | `lemma` | [alternatingMapLinearEquiv_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv-comp-multi--c527eceeee1640fc00474ad4.md) | 220 | `result-track:c527eceeee1640fc00474ad43ef312d573d4f6e4a29ab8f4f3a8904806e0741b` |
| 18 | `lemma` | [alternatingMapLinearEquiv_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv-apply-multi--1899e6964c3001cb2eb361bd.md) | 228 | `result-track:1899e6964c3001cb2eb361bd98dee6f556bab24af68fe1b98ae06023a8b513eb` |
| 19 | `lemma` | [alternatingMapLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv-symm-apply--131ce345a60eaeafefd13df1.md) | 233 | `result-track:131ce345a60eaeafefd13df1944fe5a83bdd2e6679a330fca4a24378aad3756b` |
| 20 | `lemma` | [alternatingMapLinearEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv-multi--d8198532cc137c635bbf851d.md) | 239 | `result-track:d8198532cc137c635bbf851d25c0de0c248e6fad698fdc67b676ee862ee0401b` |
| 21 | `lemma` | [alternatingMapLinearEquiv_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv-comp--b39d2763afd0427e0f4ea016.md) | 250 | `result-track:b39d2763afd0427e0f4ea0160646e9433cde1cfca231bfba3f611802bce4ad47` |
| 22 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map--02beb0829d6dbb63bad72dc6.md) | 260 | `declaration-track:02beb0829d6dbb63bad72dc6c12b9675305f1f919cf80c2dec7db3c1c1fa0352` |
| 23 | `lemma` | [alternatingMapLinearEquiv_symm_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/alternatingmaplinearequiv-symm-map--bdd310fb56cdd4f14d2fdf8a.md) | 263 | `result-track:bdd310fb56cdd4f14d2fdf8a46bb159902497bc03c1877a3ca0103bfbd02dbb2` |
| 24 | `theorem` | [map_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-comp-multi--8bc06575d0387df25bb3f7d2.md) | 268 | `result-track:8bc06575d0387df25bb3f7d2273cbbc1e5b1cda88c8abea4450b8ba3721e4e84` |
| 25 | `theorem` | [map_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-apply-multi--276e09265f20b92fd6941d1c.md) | 273 | `result-track:276e09265f20b92fd6941d1cd672ec5a81d90aa2e2149031502854c4d366b654` |
| 26 | `lemma` | [map_comp_ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-comp-multi-family--cea8a99ff44ce9b3a8779faa.md) | 279 | `result-track:cea8a99ff44ce9b3a8779faa7668bc83da2ce90395e32a780758708811df607b` |
| 27 | `lemma` | [map_apply_ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-apply-multi-family--d4d7dbd96a137b38b5037736.md) | 286 | `result-track:d4d7dbd96a137b38b503773686c5be3b482d37e919b05e2bbf8bf4bb34f8cf30` |
| 28 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-id--a36a491cc12b9a9cd5dc0012.md) | 293 | `result-track:a36a491cc12b9a9cd5dc0012efa763615e44eef9839c96350bd04265e9f33b4a` |
| 29 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-comp--342c7ed5abeed6808d33124e.md) | 298 | `result-track:342c7ed5abeed6808d33124e584bb1c87b6098d749491e635c2f369fe8ab0867` |
| 30 | `theorem` | [subtype_comp_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/subtype-comp-map-eq--7b5a1967e2d115fda835faa5.md) | 302 | `result-track:7b5a1967e2d115fda835faa56ce42d3145fe433a7ee7fa2cce417d0ba1e260ec` |
| 31 | `theorem` | [coe_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/coe-map--87210f020a0f78a07d7950e6.md) | 308 | `result-track:87210f020a0f78a07d7950e6486e6d65c3ed011012c84623f82982044eff0601` |
| 32 | `lemma` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-injective--eeb7029bb276be3b08c296f2.md) | 314 | `result-track:eeb7029bb276be3b08c296f2170f2ca2c5fde37d84b43cba6e293173fe47f197` |
| 33 | `lemma` | [map_injective_field](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-injective-field--048bf974393cefbb9dc6540f.md) | 321 | `result-track:048bf974393cefbb9dc6540f15766aa57890f8b7ae8e4d98d73009c565f91b93` |
| 34 | `lemma` | [map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/map-surjective--d3e1ae27da7b6ec5b2fb15e5.md) | 327 | `result-track:d3e1ae27da7b6ec5b2fb15e58bb46db38a667e41031ce61061273715348625a1` |
| 35 | `lemma` | [ιMulti_family_span_fixedDegree_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family-span-fixeddegree-aux--a67791cd745ff1356b35d7cd.md) | 345 | `result-track:a67791cd745ff1356b35d7cd4dc654fc718799a34ec5ebc50e89fca3cb849233` |
| 36 | `lemma` | [ιMulti_family_span_fixedDegree_of_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family-span-fixeddegree-of-span--bd2a3d1a03ebc8366347f9a2.md) | 375 | `result-track:bd2a3d1a03ebc8366347f9a2a31f4d8398a6e41f8ba137e1a4e0704f911d726e` |
| 37 | `lemma` | [ιMulti_family_span_of_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family-span-of-span--f31651606efb8688a6dcb089.md) | 392 | `result-track:f31651606efb8688a6dcb0899426bfcc36d4bd3393dfb869904616a162dfaeeb` |
| 38 | `lemma` | [ιMulti_family_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/multi-family-span--884c391f05a3bf56259237da.md) | 404 | `result-track:884c391f05a3bf56259237dadd92208a0ad0422a5c44fc94df863bd6bf461f4e` |
| 39 | `lemma` | [subsingleton_of_span_eq_top_of_card_lt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/subsingleton-of-span-eq-top-of-card-lt--bfb0535cc8e34adea8a5b01e.md) | 418 | `result-track:bfb0535cc8e34adea8a5b01ec086c52139d4200821ab9b35d35fff1a2090349e` |
| 40 | `def` | [zeroEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/zeroequiv--1be59efc053799dc64ab729c.md) | 434 | `declaration-track:1be59efc053799dc64ab729ceaa6e8453955590d008602a4039e1fcf7d8cf491` |
| 41 | `lemma` | [zeroEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/zeroequiv-multi--4ba4fcae145ed56988e97b5a.md) | 442 | `result-track:4ba4fcae145ed56988e97b5acea03c70109c297bd122b6e3d35e67b84cd0336f` |
| 42 | `lemma` | [zeroEquiv_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/zeroequiv-naturality--3e5c345e651d7f16b002855f.md) | 446 | `result-track:3e5c345e651d7f16b002855fe99d0cf16fee1efae7db6194e97ee3402bc03088` |
| 43 | `def` | [oneEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/oneequiv--2d0f941f854fb9c145a279c9.md) | 452 | `declaration-track:2d0f941f854fb9c145a279c9fd9aa68c9c2c8111bf4e8c4ef6b04a3f1a3c2ced` |
| 44 | `lemma` | [oneEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/oneequiv-multi--c76ef021116c34026e0debe1.md) | 470 | `result-track:c76ef021116c34026e0debe156065f1bc1bc862d491efe922e5a40dc78c69469` |
| 45 | `lemma` | [oneEquiv_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/declarations/oneequiv-naturality--96191b775e26328a71bf4331.md) | 474 | `result-track:96191b775e26328a71bf43311e151e85316ee7f502df8dd89cd4b81348f451b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
