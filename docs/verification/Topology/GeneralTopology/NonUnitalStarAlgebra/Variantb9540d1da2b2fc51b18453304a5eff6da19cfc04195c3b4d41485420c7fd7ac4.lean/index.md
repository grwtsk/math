# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalStarAlgebra.Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ef3de004946370d85eedc2b6c0b9e290c45aa52",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ef3de004946370d85eedc2b6c0b9e290c45aa52`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean.json)

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
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/instistopologicalsemiring--02fa4f054fdf79260c7062ec.md) | 37 | `declaration-track:02fa4f054fdf79260c7062ecaaf3e9f66a22ba06414f17c52ac4ec6019bb4f8c` |
| 2 | `instance` | [instIsSemitopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/instissemitopologicalsemiring--2a2da8a249c9810e8f9b6fd4.md) | 41 | `declaration-track:2a2da8a249c9810e8f9b6fd42d76992baa247bb457be4ab427f30b75bc52bcfd` |
| 3 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/topologicalclosure--89beafdf07f963fac3eb24c7.md) | 49 | `declaration-track:89beafdf07f963fac3eb24c72251b7100276980fe922ae6f68a1eb26031ffa7d` |
| 4 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/le-topologicalclosure--d0af6fba39429eb35c013f02.md) | 54 | `result-track:d0af6fba39429eb35c013f02ab5f1b9cdf503352c2e915da74e6a074c4311de2` |
| 5 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/isclosed-topologicalclosure--c632f7303f982b2d2c3272b8.md) | 57 | `result-track:c632f7303f982b2d2c3272b8fa9089d222b29f027f59082a2864bab49f6ac1d8` |
| 6 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/topologicalclosure-minimal--35917aea7f052e22210b925d.md) | 60 | `result-track:35917aea7f052e22210b925d36374be29502f9a75a5e362c0ca60923de9063b2` |
| 7 | `theorem` | [topologicalClosure_mono](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/topologicalclosure-mono--63c35826118db2bfa5b7f91a.md) | 66 | `result-track:63c35826118db2bfa5b7f91a999789a3c94fb782f17fce72bac57649b42bf206` |
| 8 | `instance` | [isMulCommutative_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/ismulcommutative-topologicalclosure--929b583aa3873aa0a562d36d.md) | 70 | `declaration-track:929b583aa3873aa0a562d36d437bb83aef26852b5b5907a368e649deef02921c` |
| 9 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/nonunitalcommsemiringtopologicalclosure--122a37d00a1b5c20eb7d575a.md) | 80 | `declaration-track:122a37d00a1b5c20eb7d575af96b457997c62cf47e7a9f0e380f08e9c4dce091` |
| 10 | `lemma` | [map_topologicalClosure_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/map-topologicalclosure-le--914e081350b170a253fe15e3.md) | 90 | `result-track:914e081350b170a253fe15e319a18b8233b80945c4df21252e8d83708640bf28` |
| 11 | `lemma` | [topologicalClosure_map_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/topologicalclosure-map-le--12e55c1d2712f6a392a3cd34.md) | 94 | `result-track:12e55c1d2712f6a392a3cd34755f4424866b297853f87ec337aac53716abca61` |
| 12 | `lemma` | [topologicalClosure_map](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/topologicalclosure-map--8a82caaceaf80cfdf6383298.md) | 98 | `result-track:8a82caaceaf80cfdf63832982320ffea0f82c8b24fd8c8c65e7a4e4b73d2299a` |
| 13 | `lemma` | [topologicalClosure_adjoin_le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/topologicalclosure-adjoin-le-centralizer-centralizer--f8be9d6aa5b2c7a2deb02845.md) | 104 | `result-track:f8be9d6aa5b2c7a2deb028452df17e4d508ca75a12529b2bcd5f669215847505` |
| 14 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/instistopologicalring--51e58d1033c3466c89d203d0.md) | 119 | `declaration-track:51e58d1033c3466c89d203d051496cdd365cfcc7cb31f7e0b4aad9dc7ad86793` |
| 15 | `instance` | [instIsSemitopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/instissemitopologicalring--5de22fa38ec63a1c60fc5a77.md) | 123 | `declaration-track:5de22fa38ec63a1c60fc5a7707ef9ff61401d62121fad43a26f1657a9c89f227` |
| 16 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/nonunitalcommringtopologicalclosure--dec15c38c14b7564a21f9043.md) | 135 | `declaration-track:dec15c38c14b7564a21f904372507146d26f92feee6015808acf045a0ef1abc2` |
| 17 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/elemental--db73af0c7bfa9e744f749425.md) | 154 | `declaration-track:db73af0c7bfa9e744f74942502aad011cf45ca20a5f63c0e00237c2fa970a263` |
| 18 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/self-mem--1c1bcd2bc28ef0114e3769d6.md) | 160 | `result-track:1c1bcd2bc28ef0114e3769d6ec1589b0fba67002226b62b1786943ceb144c8e8` |
| 19 | `theorem` | [star_self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/star-self-mem--6a654eed675d2ac3377e8ee1.md) | 164 | `result-track:6a654eed675d2ac3377e8ee14f33759c1b8f5f68212e390868d89031e869cc46` |
| 20 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/le-of-mem--6d0deab00b714964cd765d77.md) | 168 | `result-track:6d0deab00b714964cd765d77ef655b55dde0b8553baf089195d8ed457b1ddffa` |
| 21 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/le-iff-mem--4c37a70c955973807442bc74.md) | 173 | `result-track:4c37a70c955973807442bc7434ec33e3b0ba36636a919ee31a62507caede0ea7` |
| 22 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/isclosed--04868210c21d25fc301e8448.md) | 177 | `result-track:04868210c21d25fc301e844887be1e10313d4ad46bec66b762b4f6f84581345c` |
| 23 | `instance` | [isMulCommutative](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/ismulcommutative--6d84ffb50fc4879d43258680.md) | 180 | `declaration-track:6d84ffb50fc4879d43258680cb6135d27f0aff3cc758fcebea1926980a267c43` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/instance--bb9111511b6ad0f7aabaf2d5.md) | 184 | `declaration-track:bb9111511b6ad0f7aabaf2d53014894602502be5e178a3acfc1f1758bff2ad96` |
| 25 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/isclosedembedding-coe--5ba05cf02845af036dfd3a91.md) | 191 | `result-track:5ba05cf02845af036dfd3a91b4afea259da66e8723b84203493f36cfc6604049` |
| 26 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/declarations/le-centralizer-centralizer--5ce79ba4bf323ec0464b9955.md) | 196 | `result-track:5ce79ba4bf323ec0464b9955606d225af0b1fd0fa18ef4f6a6740c055edf3c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
