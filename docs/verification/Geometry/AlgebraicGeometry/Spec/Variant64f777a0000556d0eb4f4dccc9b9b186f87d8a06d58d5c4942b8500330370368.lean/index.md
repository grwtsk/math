# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Spec.Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac453242eb7302787134cbd79e9206f93f7bad2",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac453242eb7302787134cbd79e9206f93f7bad2`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean.json)

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
| 1 | `def` | [Spec.topObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topobj--f3171a9a7a2096a6aaadb4a0.md) | 66 | `declaration-track:f3171a9a7a2096a6aaadb4a05da06f439d65305e68f54f0ec812c56051855fea` |
| 2 | `theorem` | [Spec.topObj_forget](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topobj-forget--1b54cfdd169ea5b79d252a3b.md) | 69 | `result-track:1b54cfdd169ea5b79d252a3b51c53cade0591d1e5c689e1823e027545aad5c1b` |
| 3 | `def` | [Spec.topMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topmap--8f9f0533f3afda0af4a22f3c.md) | 74 | `declaration-track:8f9f0533f3afda0af4a22f3ca9d624f9223c82d3d454dea5fc78d0d1b550ea5b` |
| 4 | `theorem` | [Spec.topMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topmap-id--39f80c48c93529ae39ebf1db.md) | 78 | `result-track:39f80c48c93529ae39ebf1dbc71cb230989a9865b33f3305bd4f57a6740f1fad` |
| 5 | `theorem` | [Spec.topMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topmap-comp--de78c97cf3e369d6370eae8f.md) | 82 | `result-track:de78c97cf3e369d6370eae8f94e55e55dd39a50ac89ce8a6756510855dd778c5` |
| 6 | `def` | [Spec.toTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-totop--6881a58fdcbb0080d64ae930.md) | 91 | `declaration-track:6881a58fdcbb0080d64ae930d1acc170b30737037d3e4ca71d58c746eac59143` |
| 7 | `def` | [Spec.sheafedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-sheafedspaceobj--97b358e671a5d5c4c41c7ae7.md) | 98 | `declaration-track:97b358e671a5d5c4c41c7ae7b899e4141154b06eb0145336b526100fd21f808b` |
| 8 | `def` | [Spec.sheafedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-sheafedspacemap--a88d06f76af18153e4388935.md) | 107 | `declaration-track:a88d06f76af18153e4388935aebdc5c336eb856824c01bef375e565f184ffdd0` |
| 9 | `theorem` | [Spec.sheafedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-sheafedspacemap-id--3b69269f5dd1b97f71814894.md) | 118 | `result-track:3b69269f5dd1b97f7181489482eb84647d34dd777dc931c072c95d932da6c192` |
| 10 | `theorem` | [Spec.sheafedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-sheafedspacemap-comp--13cc1db287cb574158cf79b0.md) | 129 | `result-track:13cc1db287cb574158cf79b018cc47c9e9c412eff80b88581f41b490153fce47` |
| 11 | `def` | [Spec.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-tosheafedspace--b1301ab129e41072a2c365b6.md) | 145 | `declaration-track:b1301ab129e41072a2c365b65baeb20e7d69bb4e54685409263a41cb63a90306` |
| 12 | `def` | [Spec.toPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topresheafedspace--f9c37a8bcb6063629fd9a83b.md) | 152 | `declaration-track:f9c37a8bcb6063629fd9a83b8074c68827d5fac242cfb52bbb075d2cbde47560` |
| 13 | `theorem` | [Spec.toPresheafedSpace_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topresheafedspace-obj--797f585cfea17c3277edd8df.md) | 156 | `result-track:797f585cfea17c3277edd8dfde0c3418d2d99577da5678ede0209c51a5293b92` |
| 14 | `theorem` | [Spec.toPresheafedSpace_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topresheafedspace-obj-op--91cc50a73409c4f80f8c594a.md) | 160 | `result-track:91cc50a73409c4f80f8c594af1d3a86ff8c52206e6c58e41c776a3ff570cf775` |
| 15 | `theorem` | [Spec.toPresheafedSpace_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topresheafedspace-map--e5b92d1619c85739a0d30894.md) | 165 | `result-track:e5b92d1619c85739a0d30894c41cbf4c21fdec5c8366c7c634167af239e99cda` |
| 16 | `theorem` | [Spec.toPresheafedSpace_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-topresheafedspace-map-op--c8b9ddd2d17199057cc81413.md) | 169 | `result-track:c8b9ddd2d17199057cc8141334d80423acc3bc6685fd1b2553d8dc8d8e314abc` |
| 17 | `theorem` | [Spec.basicOpen_hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-basicopen-hom-ext--b2af30c718ecd1c406a8c1fd.md) | 174 | `result-track:b2af30c718ecd1c406a8c1fd1b192a41943a455f23a323b54c7ec72d6c0d5a38` |
| 18 | `def` | [Spec.locallyRingedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspaceobj--3147034a3fc84fe918a25368.md) | 195 | `declaration-track:3147034a3fc84fe918a25368efe92079135224a0912b11c98c253f7848393d13` |
| 19 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspaceobj-sheaf--27acb2605f4e50d610c38545.md) | 199 | `result-track:27acb2605f4e50d610c38545e5c2d8ba7293c9ab301f585428f45a7117d37e7e` |
| 20 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspaceobj-sheaf--e02f5b8e03792fb415604e5e.md) | 202 | `result-track:e02f5b8e03792fb415604e5e073212802577f900dec6fc1f720d2ce3ffe2e389` |
| 21 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspaceobj-presheaf-map--bbc22560847908c1a760db62.md) | 205 | `result-track:bbc22560847908c1a760db62a7c290594ca06a0620a6c34af4c149757fda31d6` |
| 22 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspaceobj-presheaf--ca28020c7d8b0dc5ef0462dc.md) | 209 | `result-track:ca28020c7d8b0dc5ef0462dc2ea0bf3b6b9e801d447fad8f336574fd66ff1d33` |
| 23 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspaceobj-presheaf-map--afa86244245666cf2ec25c3d.md) | 212 | `result-track:afa86244245666cf2ec25c3d7d853cfcb91ea8c578ccb43e5ab483da85578a55` |
| 24 | `theorem` | [stalkMap_toStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/stalkmap-tostalk--e9b93dd622f803b56ba35078.md) | 218 | `result-track:e9b93dd622f803b56ba35078c2de80125d73d509289b3829e823848edcc5aec4` |
| 25 | `theorem` | [localRingHom_comp_stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/localringhom-comp-stalkiso--e209ae5be62566d3453607fe.md) | 234 | `result-track:e209ae5be62566d3453607fee7c2c3f6144cf35ce0a2798998d170ff4c9b519d` |
| 26 | `def` | [Spec.locallyRingedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspacemap--6e737b3a9b9d387ad0a6b91c.md) | 252 | `declaration-track:6e737b3a9b9d387ad0a6b91c4d46402c2aee82269786ffa49ad095b675e5d940` |
| 27 | `theorem` | [Spec.locallyRingedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspacemap-id--cb9d91f37b9a311098bfe2c3.md) | 263 | `result-track:cb9d91f37b9a311098bfe2c3babd9ac5332450729e22f5573060aa23bc783625` |
| 28 | `theorem` | [Spec.locallyRingedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-locallyringedspacemap-comp--d1559efa577b9f75d52bde50.md) | 268 | `result-track:d1559efa577b9f75d52bde50906e92c16b48506aab94383547c9e9123788b389` |
| 29 | `def` | [Spec.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-tolocallyringedspace--9e4ca109567a606950fca822.md) | 277 | `declaration-track:9e4ca109567a606950fca82279b63d98e8520ea73abc8dc04ff7b36ee73e44bf` |
| 30 | `def` | [toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/tospec--730041a4a25f3025de6d5b72.md) | 289 | `declaration-track:730041a4a25f3025de6d5b72be06c1221869f15c3bc6172c438cf159b377123b` |
| 31 | `instance` | [isIso_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/isiso-tospec--88f0536445f2f7bf8941ff55.md) | 292 | `declaration-track:88f0536445f2f7bf8941ff552e553e2adf672b81b367fc378b63580ae6b2c164` |
| 32 | `theorem` | [Spec_Γ_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/spec-naturality--d9e704326f5491cd6260eb19.md) | 296 | `result-track:d9e704326f5491cd6260eb19c25106271cd4f10445010cc1d5a4816b2367e95b` |
| 33 | `def` | [LocallyRingedSpace.SpecΓIdentity](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/locallyringedspace-spec-identity--bbcef5d8fdef9df3d613f1ab.md) | 309 | `declaration-track:bbcef5d8fdef9df3d613f1ab5e02f1850f72d60de7ce19d4964a562f76b6baba` |
| 34 | `theorem` | [isIso_SpecMap_stakMap_localization](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/isiso-specmap-stakmap-localization--4952d9bda0f8f867b0dfade3.md) | 317 | `result-track:4952d9bda0f8f867b0dfade36b6f1e78529518fbc8ebb660e79b1a25512192b5` |
| 35 | `def` | [toPushforwardStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/topushforwardstalk--f1bb32e6aba4d7f57cbf21b1.md) | 341 | `declaration-track:f1bb32e6aba4d7f57cbf21b113eb936962952ebd7b91fb3f2138f7ffc383a9aa` |
| 36 | `theorem` | [toPushforwardStalk_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/topushforwardstalk-comp--6ce312b408db152555c92235.md) | 347 | `result-track:6ce312b408db152555c92235b9daf83164ef3bfff31223d3b7ba7d0b91ff34c1` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/instance--8b845c67d7bfa3b732b423be.md) | 354 | `declaration-track:8b845c67d7bfa3b732b423bee5261dc41752a7966aa1890e964c30d478748e79` |
| 38 | `theorem` | [algebraMap_pushforward_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/algebramap-pushforward-stalk--2ac10890813cb7a554d77734.md) | 357 | `result-track:2ac10890813cb7a554d777349be4b9d58eb20edd1b579a9054b8cdd94a6a4e18` |
| 39 | `def` | [toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/topushforwardstalkalghom--d09a3303839d1f8050a3064d.md) | 370 | `declaration-track:d09a3303839d1f8050a3064d8909bbb1d492e389b1b1f7dcbb4ba9c3521031ef` |
| 40 | `theorem` | [isLocalizedModule_toPushforwardStalkAlgHom_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/islocalizedmodule-topushforwardstalkalghom-aux--5bf85c43bad6067b3d7880b5.md) | 376 | `result-track:5bf85c43bad6067b3d7880b5a988adbfa86e37f94e5d59e701e793b3a41579c9` |
| 41 | `instance` | [isLocalizedModule_toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/declarations/islocalizedmodule-topushforwardstalkalghom--f982166609bcfac85f0e2e1c.md) | 409 | `declaration-track:f982166609bcfac85f0e2e1c5e5dda08060b8f63c99d876bf977e89ffa285473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
