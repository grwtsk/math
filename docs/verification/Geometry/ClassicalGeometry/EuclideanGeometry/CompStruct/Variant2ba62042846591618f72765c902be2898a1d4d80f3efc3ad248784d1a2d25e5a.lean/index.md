# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CompStruct.Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecd55b31f2ceb7e9d4787b45264796f8d1496212",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecd55b31f2ceb7e9d4787b45264796f8d1496212`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/edge--b406f7a276570d501a070a44.md) | 47 | `declaration-track:b406f7a276570d501a070a44d06eb00bfb587284ec333ee674e7abb96b30feb4` |
| 2 | `def` | [ofTruncated](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/oftruncated--a0effb86a854fbb441595987.md) | 54 | `declaration-track:a0effb86a854fbb441595987e5809e3cc78bc350cb96059518bef7f14856236e` |
| 3 | `def` | [toTruncated](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/totruncated--5c33fdce11907e465286015d.md) | 59 | `declaration-track:5c33fdce11907e465286015d8af470afd18f986daae63292a403c29ae5a9b07c` |
| 4 | `def` | [edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/edge--0b16a419347700dc5d51b285.md) | 65 | `declaration-track:0b16a419347700dc5d51b2857b4bba9c8eedd43487c4ba8756047a093d9eaf56` |
| 5 | `lemma` | [ofTruncated_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/oftruncated-edge--39d57680c561020579561651.md) | 68 | `result-track:39d57680c561020579561651e260fb3869ad60b262005f7d00461576a6f8a3c2` |
| 6 | `lemma` | [toTruncated_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/totruncated-edge--1fab417b2e7a1148bd7785a7.md) | 72 | `result-track:1fab417b2e7a1148bd7785a771778f0787cae13c6ae644152c7d1adcd1ba89ce` |
| 7 | `lemma` | [src_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/src-eq--5cf46dce3154e3298f60e76c.md) | 76 | `result-track:5cf46dce3154e3298f60e76c9f3587578a2090751d71fcb806db334c4d5e4c66` |
| 8 | `lemma` | [tgt_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/tgt-eq--d458e6deb664c2ecd1953337.md) | 79 | `result-track:d458e6deb664c2ecd19533374f4ccb7f896a5b228847be0400acc705bb5a973f` |
| 9 | `lemma` | [ext](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/ext--bc01ac32c6d7c60fa7e2bc7f.md) | 82 | `result-track:bc01ac32c6d7c60fa7e2bc7fe12cf15ab3ea143e71c0e5ead3352cb0cf25ff2c` |
| 10 | `def` | [mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/mk--a9c9e1a371943d6dd0429063.md) | 92 | `declaration-track:a9c9e1a371943d6dd0429063b87dd26c41ea959618f1c63b084f22d76ff3a10f` |
| 11 | `lemma` | [mk_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/mk-edge--18ad5d1ac798b587a72b5cb3.md) | 96 | `result-track:18ad5d1ac798b587a72b5cb3ef078bccd0389277036064d116efbfc78deeef05` |
| 12 | `def` | [id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/id--703f1406248d1d60b5928276.md) | 102 | `declaration-track:703f1406248d1d60b59282761f20224eca283a0842d24b23c38a6e9a107e4bc6` |
| 13 | `lemma` | [toTruncated_id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/totruncated-id--66bf935cb46e15082f22c768.md) | 106 | `result-track:66bf935cb46e15082f22c7684ed2159a3dce024a03171a74c907d47f48650816` |
| 14 | `lemma` | [id_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/id-edge--007439da589f0d30b4d19969.md) | 111 | `result-track:007439da589f0d30b4d19969df6e9ca4dadfb0ba399eac60e44db2e4ac168664` |
| 15 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/map--a5a6310aa40cf87ca1e66665.md) | 114 | `declaration-track:a5a6310aa40cf87ca1e666657b72a788679fb8f77d5c04e935d236ffc63fdb84` |
| 16 | `lemma` | [map_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/map-edge--7c91a3dc4b38e6e9c3af8ac6.md) | 118 | `result-track:7c91a3dc4b38e6e9c3af8ac6ead1bf9c28e04e2ec987a547a4b8af0ab4fa8261` |
| 17 | `lemma` | [map_id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/map-id--47c2903974a28a095f1b2d67.md) | 123 | `result-track:47c2903974a28a095f1b2d674653220577da72a8cf2ca89bd42450b0cf8e6e55` |
| 18 | `def` | [mk'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/mk--0e47fed6f8157c3378753fb6.md) | 128 | `declaration-track:0e47fed6f8157c3378753fb6b520791fdc3a402f37ea79594859950cd61f41c7` |
| 19 | `lemma` | [mk'_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/mk-edge--77f06546d8f778ae08c18060.md) | 131 | `result-track:77f06546d8f778ae08c18060fde4d2b105e2bc2535a2d5ce0b186b64f60a9871` |
| 20 | `lemma` | [exists_of_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/exists-of-simplex--027fdf388f3b12e645956436.md) | 133 | `result-track:027fdf388f3b12e645956436e038f359038e24ff5a9869cbe8d839a4d8f73455` |
| 21 | `def` | [ofEq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/ofeq--d310f4cd84741a94253a191f.md) | 140 | `declaration-track:d310f4cd84741a94253a191f0dbe981e1f489c92d8c8790fdef390a2b0093bca` |
| 22 | `def` | [toSubcomplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/tosubcomplex--a34e1ded853417326bcb9951.md) | 148 | `declaration-track:a34e1ded853417326bcb9951cf77d8c33d745059ba888ee72fa2c021bbdb769e` |
| 23 | `lemma` | [toSubcomplex_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/tosubcomplex-edge--87cf980f22db3bcaba05b565.md) | 156 | `result-track:87cf980f22db3bcaba05b565fbc43a1a2c3e8953d31400ce5d2cd2f46af6edfd` |
| 24 | `def` | [CompStruct](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/compstruct--574459b3f3214a06b0eedc66.md) | 166 | `declaration-track:574459b3f3214a06b0eedc66d8f5c6222d7d29a9797d26b3805df1b194df22e2` |
| 25 | `def` | [ofTruncated](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/oftruncated--efce062b0026c8429f4d9261.md) | 177 | `declaration-track:efce062b0026c8429f4d926118503cb362ed230746fc1b8bf522125f6d024289` |
| 26 | `def` | [toTruncated](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/totruncated--2ab47f5db5e3f9f82b16a84f.md) | 181 | `declaration-track:2ab47f5db5e3f9f82b16a84f6c725c5749c172ac1e087235997726afd9a9e1a2` |
| 27 | `def` | [simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/simplex--06d3c284bbe3f2e450d4bc0f.md) | 190 | `declaration-track:06d3c284bbe3f2e450d4bc0f51a942da70dff6e67c08b3c73159e794420d0ab6` |
| 28 | `lemma` | [d₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/d--695f44d79081b81b67735b4a.md) | 193 | `result-track:695f44d79081b81b67735b4a943603a12dbeb7c3459fb2fafe7b41cd21b5cf3a` |
| 29 | `lemma` | [d₀](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/d--13c07cd212b9bc861a2aba79.md) | 196 | `result-track:13c07cd212b9bc861a2aba792a707c98d36bf5fcf7e9c9385e17f5e18c7c33bc` |
| 30 | `lemma` | [d₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/d--4e62373892ad0c638a745f94.md) | 199 | `result-track:4e62373892ad0c638a745f94c54ea4567a312318625534a5a172befbfb5af58b` |
| 31 | `def` | [mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/mk--b27c0f9054795926093d39e7.md) | 212 | `declaration-track:b27c0f9054795926093d39e762fac7d2f59cf91e34d634548273091e3ff227eb` |
| 32 | `lemma` | [mk_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/mk-simplex--41401aed622c6a4612bf30a5.md) | 217 | `result-track:41401aed622c6a4612bf30a5e82a7ce1d3673405a2be060e9ef362553952ec2c` |
| 33 | `lemma` | [ext](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/ext--8a15d1d85ec09d26bff59591.md) | 222 | `result-track:8a15d1d85ec09d26bff59591cad23eeb57a781e83b0be977360e0ad7fd5753bb` |
| 34 | `lemma` | [exists_of_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/exists-of-simplex--242f50f74e7c7190c5e7c1de.md) | 226 | `result-track:242f50f74e7c7190c5e7c1de0f3de2f9325fcd4a65f91e8e548393ef96c85266` |
| 35 | `def` | [idComp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/idcomp--4a97b5aaf29f0bf53795b71d.md) | 232 | `declaration-track:4a97b5aaf29f0bf53795b71d699e3e3b3140a4647cdb8dde2e9835a079160f99` |
| 36 | `lemma` | [idComp_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/idcomp-simplex--6617c62f36504c8036b08413.md) | 236 | `result-track:6617c62f36504c8036b08413f8d301179a2837c6e36d1a7b6ac1799cd7ea9d42` |
| 37 | `def` | [compId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/compid--a704caa4bb7e1c44b979aa2a.md) | 239 | `declaration-track:a704caa4bb7e1c44b979aa2ae52e5bdf2d21430c823e0d8cd71aeed7d4fa6d79` |
| 38 | `lemma` | [compId_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/compid-simplex--cc707f6a4ee15cc323aa80bd.md) | 243 | `result-track:cc707f6a4ee15cc323aa80bdebe59c417b2a6bc46387332ee622fd3a27c0e7dd` |
| 39 | `def` | [idCompId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/idcompid--a7572671adc9873e6d1dd249.md) | 246 | `declaration-track:a7572671adc9873e6d1dd24942cf801f25f74f50bf40377628a9922be6b9bb3e` |
| 40 | `lemma` | [idCompId_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/idcompid-simplex--94e7a1f24dc8b0d91113c1a4.md) | 250 | `result-track:94e7a1f24dc8b0d91113c1a49359ea4656dbca87c29102a5e8c0009693d6976a` |
| 41 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/map--d25d308727c7654868c8eb9e.md) | 254 | `declaration-track:d25d308727c7654868c8eb9ea48426be049d3b26873032e120eb8d867bfc09ce` |
| 42 | `lemma` | [map_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/map-simplex--688cfc6afbbebdec24da4ce4.md) | 259 | `result-track:688cfc6afbbebdec24da4ce479939412ee1c601fbbc82b8456e1184f051a31c0` |
| 43 | `def` | [ofEq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/ofeq--f3d4ad5e651d6a94c517639b.md) | 265 | `declaration-track:f3d4ad5e651d6a94c517639b68100fbfc9716422db70baadeb9e24cd67f74a1c` |
| 44 | `def` | [toSubcomplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/tosubcomplex--6a13b13a99c8f1660416a9ec.md) | 281 | `declaration-track:6a13b13a99c8f1660416a9ecbaf06b79dbbbf5cf6815d5f77e3769667c720e1d` |
| 45 | `lemma` | [toSubcomplex_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/tosubcomplex-simplex--86492ab042eb0c548c9af056.md) | 290 | `result-track:86492ab042eb0c548c9af0567e1071a02e51aa73fef5c006213dbb515d097f44` |
| 46 | `lemma` | [toSubcomplex_edge](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/tosubcomplex-edge--a839ef686ea80ff0f4a623ac.md) | 295 | `result-track:a839ef686ea80ff0f4a623acb855293a272831e4983863e6d8dd1d7c84acc187` |
| 47 | `structure` | [InvStruct](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/invstruct--ec9c878b9d5f27da3872ad6a.md) | 305 | `declaration-track:ec9c878b9d5f27da3872ad6ad58eeb56042b192bd2518d005e8a99033bc87f57` |
| 48 | `def` | [invStructId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/invstructid--b75f991f33c717647ac3d383.md) | 317 | `declaration-track:b75f991f33c717647ac3d383c6e1276fb56807a9778d97a46f4937f854ae1e83` |
| 49 | `def` | [invStructInv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/invstructinv--a8d6dc37178af42d3a7d1c55.md) | 324 | `declaration-track:a8d6dc37178af42d3a7d1c55dccc7073109c15e0867d426e8ac038dbf1aeff35` |
| 50 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/map--f7e2d3ac274479dece7f28b2.md) | 331 | `declaration-track:f7e2d3ac274479dece7f28b2ae3fd211a9827be551c2befb82244596c15d8ddf` |
| 51 | `def` | [ofEq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/declarations/ofeq--f931a2bfcf2ca35b144e8dfb.md) | 339 | `declaration-track:f931a2bfcf2ca35b144e8dfbfb5d8dc2979924ba32e83fc59c79f06490a5a582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
