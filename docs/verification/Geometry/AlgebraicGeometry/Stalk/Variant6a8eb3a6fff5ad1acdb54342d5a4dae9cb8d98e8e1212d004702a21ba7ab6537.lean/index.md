# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Stalk.Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1307d0ad9b756e7df37768281532fcc34ef67b8",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1307d0ad9b756e7df37768281532fcc34ef67b8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean.json)

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
| 1 | `def` | [IsAffineOpen.fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/isaffineopen-fromspecstalk--e33304eec171eabe823e2820.md) | 40 | `declaration-track:e33304eec171eabe823e2820b35976f9f499fc024a04078b1ae767f2e78f0596` |
| 2 | `theorem` | [IsAffineOpen.fromSpecStalk_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/isaffineopen-fromspecstalk-eq--ff3bb52344f2907816098091.md) | 49 | `result-track:ff3bb52344f2907816098091eda0396859975342c4c9db237f705c9cf2d7612d` |
| 3 | `def` | [Scheme.fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/scheme-fromspecstalk--d0839a67bcedaec4edb4a89c.md) | 64 | `declaration-track:d0839a67bcedaec4edb4a89c34f3c70068534dcabd4e98126dac1eeedf6274ce` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/instance--502efe575f2f2679413fa9ed.md) | 70 | `declaration-track:502efe575f2f2679413fa9ed5f0dda05017b701551f9492349d20ecdf2dd39c4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/instance--277ba26613bb933dfb23f632.md) | 73 | `declaration-track:277ba26613bb933dfb23f63255d4baedf761069d75c6678f11ec26444eed78ea` |
| 6 | `theorem` | [IsAffineOpen.fromSpecStalk_eq_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/isaffineopen-fromspecstalk-eq-fromspecstalk--4e423f27286d5544a5081e7f.md) | 76 | `result-track:4e423f27286d5544a5081e7fb2ccfa892e11d83e712d6914f4ff431faac0ad10` |
| 7 | `instance` | [IsAffineOpen.fromSpecStalk_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/isaffineopen-fromspecstalk-ispreimmersion--3fbbbecdd9de05ef1dbba6f5.md) | 79 | `declaration-track:3fbbbecdd9de05ef1dbba6f55dfefa542b05044a7e0b09c22add5b0c170f1ff8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/instance--131ddb32f8a81619bd2f5a92.md) | 89 | `declaration-track:131ddb32f8a81619bd2f5a9257946e23874fcc4ad0be7ccde68707de5ea61d6e` |
| 9 | `lemma` | [IsAffineOpen.fromSpecStalk_closedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/isaffineopen-fromspecstalk-closedpoint--4c5aff803f6a4597344e8945.md) | 93 | `result-track:4c5aff803f6a4597344e8945608ab24c364ab376f1c7d0da3e909ac47e59f6dc` |
| 10 | `lemma` | [fromSpecStalk_closedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/fromspecstalk-closedpoint--ad4cc5ccd23dd6d1300d94d2.md) | 102 | `result-track:ad4cc5ccd23dd6d1300d94d28864a1000133e52126142685afa10bca3ba0edc4` |
| 11 | `lemma` | [fromSpecStalk_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/fromspecstalk-app--9fb2529626e606e33abd6d0e.md) | 107 | `result-track:9fb2529626e606e33abd6d0e9d344f174971bd61a9a021ea3fcdb79ae61e998c` |
| 12 | `lemma` | [fromSpecStalk_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/fromspecstalk-apptop--56b16cf2a465cdba7adfe69f.md) | 118 | `result-track:56b16cf2a465cdba7adfe69f5c906bc9f79a658472700d28456e02d9def30160` |
| 13 | `lemma` | [SpecMap_stalkSpecializes_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/specmap-stalkspecializes-fromspecstalk--db0fa09e2b44aab6daa442a0.md) | 127 | `result-track:db0fa09e2b44aab6daa442a0a039bd801ed4a1040a5b2d0bc3f73e61127eb406` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/instance--d75682ff43b16a31380eadb5.md) | 136 | `declaration-track:d75682ff43b16a31380eadb54dc6f8c3533764f73e854406b14b5eb119375020` |
| 15 | `lemma` | [SpecMap_stalkMap_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/specmap-stalkmap-fromspecstalk--d06456423c552f0a22037b8b.md) | 140 | `result-track:d06456423c552f0a22037b8bbd07ffeb4bbfdeb29e98ec286893dd200ed8cc05` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/instance--98bb225917e4a24b6d77d5d3.md) | 152 | `declaration-track:98bb225917e4a24b6d77d5d3fb1a5d526d6920f7c2cfe0b118fd90849d229f97` |
| 17 | `lemma` | [range_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/range-fromspecstalk--390d9fde3cffa3c83bb3d9ec.md) | 155 | `result-track:390d9fde3cffa3c83bb3d9ecf49fa3250d5d8a1dccf20465ae30f51254ced18c` |
| 18 | `def` | [Opens.fromSpecStalkOfMem](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/opens-fromspecstalkofmem--a8835b47a9e0e0810ccd9162.md) | 170 | `declaration-track:a8835b47a9e0e0810ccd9162e982559684148581d3252c281f418780776a298a` |
| 19 | `lemma` | [Opens.fromSpecStalkOfMem_ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/opens-fromspecstalkofmem--35b36198d91c1eb17f276a96.md) | 176 | `result-track:35b36198d91c1eb17f276a9661be0736100873fc9f73881d22feac2a7a32bf30` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/instance--1f01e68c15348fcc39cac3b0.md) | 181 | `declaration-track:1f01e68c15348fcc39cac3b0ea387b3fa951122464947738324a12bb1b445d19` |
| 21 | `lemma` | [fromSpecStalk_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/fromspecstalk-tospec--c5776a94da7d0b4cc90ec76f.md) | 185 | `result-track:c5776a94da7d0b4cc90ec76f5fefe51966d6afe59e2c5c4ae6bf0b3b645b454c` |
| 22 | `lemma` | [Opens.fromSpecStalkOfMem_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/opens-fromspecstalkofmem-tospec--037fe83517a03bc8b9035cbd.md) | 193 | `result-track:037fe83517a03bc8b9035cbd5a7e847db0464da148ae25c855a58fee240478d8` |
| 23 | `lemma` | [Spec.fromSpecStalk_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/spec-fromspecstalk-eq--ee9c64bee2b5e4e8efbf5c2d.md) | 210 | `result-track:ee9c64bee2b5e4e8efbf5c2d18c9234721cc99b19425c1c921c822923770222d` |
| 24 | `lemma` | [Spec.fromSpecStalk_eq'](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/spec-fromspecstalk-eq--26ec7ce041a77188c6cb4abc.md) | 219 | `result-track:26ec7ce041a77188c6cb4abc9f6c63ddd5d23cc9ed57d52af8cf507d93e81fed` |
| 25 | `def` | [stalkClosedPointIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/stalkclosedpointiso--3197b952907bd0eeabda73e6.md) | 233 | `declaration-track:3197b952907bd0eeabda73e6e1ea6620012c6fe7f962859f177caf49fe138775` |
| 26 | `lemma` | [stalkClosedPointIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/stalkclosedpointiso-inv--868ac544e13591b2d720c264.md) | 238 | `result-track:868ac544e13591b2d720c2645aa2f75681acc5a689284eec65104a6f5e968b01` |
| 27 | `lemma` | [ΓSpecIso_hom_stalkClosedPointIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/speciso-hom-stalkclosedpointiso-inv--c9fb7543c6830a6327a8ebec.md) | 244 | `result-track:c9fb7543c6830a6327a8ebec6f98630947d92d2a4949f1e0c1225803d72daf02` |
| 28 | `lemma` | [germ_stalkClosedPointIso_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/germ-stalkclosedpointiso-hom--576728ac6d4df626edaab883.md) | 251 | `result-track:576728ac6d4df626edaab88384cc4fe40f1c9f18952067869a0fce965ca9c6ae` |
| 29 | `lemma` | [Spec_stalkClosedPointIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/spec-stalkclosedpointiso--ca8a5296ede34585f73a72c3.md) | 257 | `result-track:ca8a5296ede34585f73a72c366f638725dc86155ef462390b651faa717fc58c9` |
| 30 | `def` | [stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/stalkclosedpointto--05bd2e46783976f4187c7baa.md) | 276 | `declaration-track:05bd2e46783976f4187c7baa8d1fd650b0b9136dac0a5ac51849e5ae264b4500` |
| 31 | `instance` | [isLocalHom_stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/islocalhom-stalkclosedpointto--7c9544d89a657903a9a9b11f.md) | 281 | `declaration-track:7c9544d89a657903a9a9b11f2651cc04cb407cfae6303b91a81ec8315dd33769` |
| 32 | `instance` | [isLocalHom_stalkClosedPointTo'](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/islocalhom-stalkclosedpointto--7b5bb794b06c686d336ffa31.md) | 289 | `declaration-track:7b5bb794b06c686d336ffa3141cceb977f71194a4c3b8258910965deec8eb9a8` |
| 33 | `lemma` | [preimage_eq_top_of_closedPoint_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/preimage-eq-top-of-closedpoint-mem--0398563355fb06abde588e8e.md) | 294 | `result-track:0398563355fb06abde588e8e391d548958a083501a098e106811992b89861513` |
| 34 | `lemma` | [stalkClosedPointTo_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/stalkclosedpointto-comp--283384bfe2d78cd0448f8d37.md) | 299 | `result-track:283384bfe2d78cd0448f8d3711d62a0c7c4c96b71d069f684663d37d2e922749` |
| 35 | `lemma` | [germ_stalkClosedPointTo_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/germ-stalkclosedpointto-spec--250b8ea09fcf87488b48d039.md) | 305 | `result-track:250b8ea09fcf87488b48d039366e3162c2bd30412e42e6e8ea81d8eea0f984cd` |
| 36 | `lemma` | [germ_stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/germ-stalkclosedpointto--f6c2a355038111e1179f661b.md) | 315 | `result-track:f6c2a355038111e1179f661bf835ab60efcdcb159737244985c25c64c4a8c759` |
| 37 | `lemma` | [germ_stalkClosedPointTo_Spec_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/germ-stalkclosedpointto-spec-fromspecstalk--e872b536a18618727235ea69.md) | 327 | `result-track:e872b536a18618727235ea69229b2a5a19091155fe07c531675ee4481b6ee127` |
| 38 | `lemma` | [stalkClosedPointTo_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/stalkclosedpointto-fromspecstalk--33028f24a78b213fcd402f2d.md) | 341 | `result-track:33028f24a78b213fcd402f2d05100d4bb56ed45e464e853467762ad66fc8bd31` |
| 39 | `lemma` | [Spec_stalkClosedPointTo_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/spec-stalkclosedpointto-fromspecstalk--acfdf6b4d520acf7a2a3ae58.md) | 351 | `result-track:acfdf6b4d520acf7a2a3ae58b5c311250427a47dec55c31255e340b2018a36e4` |
| 40 | `lemma` | [SpecToEquivOfLocalRing_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/spectoequivoflocalring-eq-iff--9754c836f97f5b49326f5278.md) | 371 | `result-track:9754c836f97f5b49326f52781e41d3865fd65ddcb1915e7c05bab4cc5b271807` |
| 41 | `def` | [SpecToEquivOfLocalRing](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/declarations/spectoequivoflocalring--2412b04c799cbd46ddcd8ce7.md) | 391 | `declaration-track:2412b04c799cbd46ddcd8ce70d7e3d49aa063f55e2486ca7f603773d98cfbc33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
