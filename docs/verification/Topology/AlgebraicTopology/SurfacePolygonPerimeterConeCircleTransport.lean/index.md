# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c64e49ba0ee568349fec4781e6a6b580f4a91951",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c64e49ba0ee568349fec4781e6a6b580f4a91951`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Topology.Compactness.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/cornerdiscretetopology--4bdc3a5ba8c4c4c60dbee81d.md) | 54 | `declaration-track:4bdc3a5ba8c4c4c60dbee81db4a148c7b302df000d99851cf09b6d3beb76dd89` |
| 2 | `instance` | [coneSourceSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/conesourcesetoid--66b71892629391a6891bea9c.md) | 57 | `declaration-track:66b71892629391a6891bea9cb420d24bc87c7372e6a2b79c64f9ac9bc3593b6e` |
| 3 | `abbrev` | [StandardCircleConeCylinder](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconecylinder--bb4a71ccaa2f6cbb689a0236.md) | 61 | `declaration-track:bb4a71ccaa2f6cbb689a023636234241709f47e68cb92d2952cac31d3556990d` |
| 4 | `inductive` | [StandardCircleConeStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconestep--0f95884ca8b86bb582f74cce.md) | 66 | `declaration-track:0f95884ca8b86bb582f74cce44c26ce856da4f449823dda916597c74b446bb6f` |
| 5 | `def` | [StandardCircleConeConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeconnected--d83fae5961599b078547347c.md) | 74 | `declaration-track:d83fae5961599b078547347c810c32de8f5e2f6c61c11fcc24d9cfbb6814d6c9` |
| 6 | `theorem` | [standardCircleConeConnected_iff](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeconnected-iff--b96b48d173d4a4f89ed9050c.md) | 81 | `result-track:b96b48d173d4a4f89ed9050c502273fc1ad22f7c5acd2c1a6ed0cc8a93038346` |
| 7 | `def` | [standardCircleConeSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconesetoid--0e26beb25cf19917775b3246.md) | 118 | `declaration-track:0e26beb25cf19917775b324660ad62cb8cd7e10a7f8b325b67ee4f812e42b58b` |
| 8 | `def` | [StandardCircleCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcirclecone--e44c17c5394a7b818cf21912.md) | 124 | `declaration-track:e44c17c5394a7b818cf219129e04b460bb6f4d96d54d2af61880cc0c0dc96ce5` |
| 9 | `instance` | [standardConeSourceSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardconesourcesetoid--360d029ee2929fe0e056f759.md) | 127 | `declaration-track:360d029ee2929fe0e056f759f4258293529aaefa627e21f6397d63cc8e14f7bc` |
| 10 | `instance` | [standardCircleConeTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetopology--6b3af155ac4bba86a54de78c.md) | 130 | `declaration-track:6b3af155ac4bba86a54de78cb0b7ca1432ee559340670582d176ad7e11052e4e` |
| 11 | `theorem` | [standardCircleConeTopology_coinduced](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetopology-coinduced--9f534b2cd13ecd561ddf870a.md) | 134 | `result-track:9f534b2cd13ecd561ddf870a408c036da9f288e74a380e00df40e9778159fb72` |
| 12 | `def` | [standardCircleConeProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeprojection--0ad86b305dcbad11c3517c21.md) | 143 | `declaration-track:0ad86b305dcbad11c3517c21822257b5fe045b23737638b5b659c6a9833495d8` |
| 13 | `theorem` | [standardCircleConeProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeprojection-continuous--9311062e0e8b0b15aa134dbd.md) | 147 | `result-track:9311062e0e8b0b15aa134dbd06266401de01922da300affba6c1310be4d4a832` |
| 14 | `theorem` | [standardCircleConeProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeprojection-isquotientmap--5e92ba0bab5abbb299f3b0be.md) | 154 | `result-track:5e92ba0bab5abbb299f3b0bee2fb8eb5630770e424429df937f1e9a02e0661a0` |
| 15 | `theorem` | [standardCircleConeProjection_eq_iff_of_ne_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeprojection-eq-iff-of-ne-zero--50be1b8d478a1cfc406fd800.md) | 163 | `result-track:50be1b8d478a1cfc406fd8009cb40663a3418cfd403e25a0c18e224177d84b7f` |
| 16 | `theorem` | [standardCircleConeConnected_preserves_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeconnected-preserves-radius--dc357a7cd173e39f9d369b83.md) | 180 | `result-track:dc357a7cd173e39f9d369b838ac5dff581d2190ffd4813f1537b8fb6b2c076bc` |
| 17 | `def` | [standardCircleConeRadius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeradius--3ac40acbb3ec8da790f8788c.md) | 190 | `declaration-track:3ac40acbb3ec8da790f8788cb9f0b0369aadfd3ba29147926a4f9644c8797249` |
| 18 | `theorem` | [standardCircleConeRadius_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeradius-projection--211bbabbab5ed783ac971d4a.md) | 198 | `result-track:211bbabbab5ed783ac971d4a93ff3d5e0438790eb34017671e58855846405137` |
| 19 | `theorem` | [standardCircleConeRadius_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeradius-continuous--734e833a207f8d62b6a6635b.md) | 204 | `result-track:734e833a207f8d62b6a6635b6a23397e11de4a2333ce5a5553955694925c03c4` |
| 20 | `def` | [standardCircleConeApex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeapex--6f59e75a7ecb4b89e958e3b1.md) | 211 | `declaration-track:6f59e75a7ecb4b89e958e3b1baa64bd764266ff0725231f06e8f73f8a429d25e` |
| 21 | `theorem` | [standardCircleCone_zero_eq_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcirclecone-zero-eq-apex--f3f87d83c37fcfcbd7efce92.md) | 215 | `result-track:f3f87d83c37fcfcbd7efce92cd823a89cbf04e5361c0cdd6108f978d490ca8ed` |
| 22 | `def` | [standardCircleConeBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeboundary--8d4c62b23ee89545b27c7ad8.md) | 224 | `declaration-track:8d4c62b23ee89545b27c7ad812bcdbf8447a73d8e9c7dfecafb7c0f5a05cbc70` |
| 23 | `theorem` | [standardCircleConeBoundary_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeboundary-continuous--bc47a5380cac25f794a3a595.md) | 228 | `result-track:bc47a5380cac25f794a3a595a37a87ae266891802c802cdd9c342c78e080e2ed` |
| 24 | `theorem` | [standardCircleConeBoundary_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeboundary-injective--3900a522a2d35e74c663b116.md) | 236 | `result-track:3900a522a2d35e74c663b116368c5ebca8e343030c781a2afb38b0fd03320826` |
| 25 | `theorem` | [standardCircleConeCompactSpace](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconecompactspace--9a7561164477aa84a498120d.md) | 248 | `result-track:9a7561164477aa84a498120dfaf5c594959728ea0503cf912a33cc8cde2a13e2` |
| 26 | `def` | [perimeterToStandardCircleConeSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimetertostandardcircleconesource--35d8aa9a8ba90779d41095b2.md) | 257 | `declaration-track:35d8aa9a8ba90779d41095b2c45e47f36907534f554fc90245a661b20ec99484` |
| 27 | `theorem` | [perimeterToStandardCircleConeSource_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimetertostandardcircleconesource-continuous--f38a19694ad6f906b6a9a021.md) | 261 | `result-track:f38a19694ad6f906b6a9a0215fa266cf79ccffcf041338bb970e1c251ed64b91` |
| 28 | `theorem` | [coneConnected_perimeterToStandardCircleConeSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/coneconnected-perimetertostandardcircleconesource--d67962502b14b37002b9f26e.md) | 270 | `result-track:d67962502b14b37002b9f26eac6ca2e018d47b76d463aaaf8b3a2eaae07d291e` |
| 29 | `def` | [perimeterConeToStandardCircleCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconetostandardcirclecone--111cceb10e6cd6113294467c.md) | 286 | `declaration-track:111cceb10e6cd6113294467ce20ffa2908fe0ffca0fd5f848de5040ec8bd38d8` |
| 30 | `theorem` | [perimeterConeToStandardCircleCone_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconetostandardcirclecone-projection--4d2d2669727a9ed0d61227bf.md) | 298 | `result-track:4d2d2669727a9ed0d61227bffdedb3c3b7aaa96801cdbcc6b6ab9ab2b5f84ce6` |
| 31 | `theorem` | [perimeterConeToStandardCircleCone_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconetostandardcirclecone-continuous--88ee81fd714f86c4ba4985c2.md) | 305 | `result-track:88ee81fd714f86c4ba4985c242bdc880e091534e3ea2654396278dc9edf921b8` |
| 32 | `theorem` | [perimeterConeToStandardCircleCone_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconetostandardcirclecone-zero--fa945b132873cf155feb21f9.md) | 315 | `result-track:fa945b132873cf155feb21f9230e66cfe56be158c021b8a1abea7b4fc020acd9` |
| 33 | `def` | [standardCircleToPerimeterConeSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircletoperimeterconesource--f91dfd6d8895a5cf59626328.md) | 326 | `declaration-track:f91dfd6d8895a5cf596263286f72102948fbda8ad049359613abe4d6d93e54ae` |
| 34 | `theorem` | [standardCircleToPerimeterConeSource_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircletoperimeterconesource-continuous--d92949823eae70b46a24b83c.md) | 331 | `result-track:d92949823eae70b46a24b83c5a6f7960633a2dadfa5696b1e4fc072b9d8176bd` |
| 35 | `theorem` | [standardCircleConeConnected_standardCircleToPerimeterConeSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconeconnected-standardcircletoperimeterconesource--1a303ef1fec7fefe1aa360ac.md) | 340 | `result-track:1a303ef1fec7fefe1aa360ac1415e3c8d850f72b47bfd98fbe9299931bc68e19` |
| 36 | `def` | [standardCircleConeToPerimeterCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetoperimetercone--c4224c424fa0a8c148de2dd0.md) | 355 | `declaration-track:c4224c424fa0a8c148de2dd03cd5f1ceb661130a5d6e958c1dcc7e24eaa7e88e` |
| 37 | `theorem` | [standardCircleConeToPerimeterCone_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetoperimetercone-projection--2a17d5a5ed0b7ad3eca519b8.md) | 367 | `result-track:2a17d5a5ed0b7ad3eca519b881440135e7c4c9b6e17dd4f8f911dbf04298093b` |
| 38 | `theorem` | [standardCircleConeToPerimeterCone_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetoperimetercone-continuous--996a18e334580930550e95f5.md) | 374 | `result-track:996a18e334580930550e95f5ab149fd11087ead5d5cba0c87fa4dc53c625a770` |
| 39 | `theorem` | [standardCircleConeToPerimeterCone_leftInverse](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetoperimetercone-leftinverse--5eb30065a10e640308248d66.md) | 384 | `result-track:5eb30065a10e640308248d663d6e2edaa3aabace45699ef75d76d77f87da911f` |
| 40 | `theorem` | [standardCircleConeToPerimeterCone_rightInverse](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/standardcircleconetoperimetercone-rightinverse--52529018f89be81ff3a50982.md) | 402 | `result-track:52529018f89be81ff3a509829faeaa1f1ae522c9b78a17513b0d3e74f0a681fb` |
| 41 | `def` | [perimeterConeEquivStandardCircleCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconeequivstandardcirclecone--617afe6195590ce3558b751c.md) | 420 | `declaration-track:617afe6195590ce3558b751c1442b95774349c6f86ce2c898ba20f226111947f` |
| 42 | `def` | [perimeterConeHomeomorphStandardCircleCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone--b6cd61e8bb312b6994858c8a.md) | 429 | `declaration-track:b6cd61e8bb312b6994858c8a85e98273f469c516454cdfbed33f559ecebba951` |
| 43 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone-apply--3ec84f39d6f405c09e43f081.md) | 438 | `result-track:3ec84f39d6f405c09e43f081821581b5f72341ea10d166c7617e8c44fbc626f1` |
| 44 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_symm_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone-symm-apply--f1794b7177199064eed25b78.md) | 443 | `result-track:f1794b7177199064eed25b782b9506c9cd42970059f2c7d1fe6bf1459290a0fe` |
| 45 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone-radius--be2055682dea93f1efab9c73.md) | 449 | `result-track:be2055682dea93f1efab9c7333fdc36827279c9cebb2453f0f69087db4e82ee5` |
| 46 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone-apex--e47259f863bb898d6946df13.md) | 459 | `result-track:e47259f863bb898d6946df13ed7f2c20736b8e475d48e1baf361f851709c57c7` |
| 47 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone-boundary--a9cfeb3b6c497d07cb08a42d.md) | 470 | `result-track:a9cfeb3b6c497d07cb08a42dd31a1fe17c1d2d87959636e6c0b2508e3b8e304c` |
| 48 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_symm_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/perimeterconehomeomorphstandardcirclecone-symm-boundary--52870be60ac853f969667b9b.md) | 480 | `result-track:52870be60ac853f969667b9bb78b46997bed8d157d0b7ef53af419f3dba126a8` |
| 49 | `def` | [genusTwoPerimeterConeHomeomorphStandardCircleCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/genustwoperimeterconehomeomorphstandardcirclecone--9ca77ae1f2cc109b80b7867a.md) | 490 | `declaration-track:9ca77ae1f2cc109b80b7867a9de4fcfdbdfd45aac76915c20180a733eeb87b90` |
| 50 | `def` | [genusThreePerimeterConeHomeomorphStandardCircleCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/declarations/genusthreeperimeterconehomeomorphstandardcirclecone--5dc37d831a2f166c64f0e708.md) | 496 | `declaration-track:5dc37d831a2f166c64f0e7082e13862897b6b21d623a5a85a43c938fde3c0794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
