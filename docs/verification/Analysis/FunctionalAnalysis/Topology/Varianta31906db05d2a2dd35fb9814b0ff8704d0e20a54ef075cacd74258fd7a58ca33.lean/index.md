# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Topology.Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "370c221afa7bfd9721ac95901b12e607d4d933d7",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `370c221afa7bfd9721ac95901b12e607d4d933d7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Strict` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.convex_iff_isPreconnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/real-convex-iff-ispreconnected--9375bd96e399112b1546151c.md) | 39 | `result-track:9375bd96e399112b1546151c3b484ac2432eb05ebb2e5ed2b57262edcd4f1bba` |
| 2 | `theorem` | [stdSimplex_subset_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/stdsimplex-subset-closedball--9d7db086eb813b952c351492.md) | 54 | `result-track:9d7db086eb813b952c351492e4aadeb87c66f841bc02b2f9d8e928b37fb7e7bd` |
| 3 | `theorem` | [bounded_stdSimplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/bounded-stdsimplex--ccba83fa49a3efd48ee1d435.md) | 65 | `result-track:ccba83fa49a3efd48ee1d435cef044ce598e31b3ce0cde16a2d80bacb29e3e58` |
| 4 | `theorem` | [isClosed_stdSimplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/isclosed-stdsimplex--99b774cfcde1c2f419156009.md) | 70 | `result-track:99b774cfcde1c2f419156009685ec6e392accb48ef3d4ac24ee4be1dae38fbf4` |
| 5 | `theorem` | [isCompact_stdSimplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/iscompact-stdsimplex--fd25ea84a61ac3e54921b553.md) | 77 | `result-track:fd25ea84a61ac3e54921b5537c04ab918deb1d2050b49f8622c4d00788c582cd` |
| 6 | `theorem` | [segment_subset_closure_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/segment-subset-closure-opensegment--9730a23a883c865212b85d4c.md) | 92 | `result-track:9730a23a883c865212b85d4c1f3be519bce69c25d6f1786ebde7c0f40234e8de` |
| 7 | `theorem` | [closure_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/closure-opensegment--e58f0103ccd367000ba5a572.md) | 106 | `result-track:e58f0103ccd367000ba5a5721da1ec2b4d77f2bc3d2c73b662eaae7c69d7ca84` |
| 8 | `theorem` | [Convex.combo_interior_closure_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-interior-closure-subset-interior--0aa9e782533e0dc4e2af6025.md) | 122 | `result-track:0aa9e782533e0dc4e2af6025747a9880bc8c5101b70c04e406c5b0bc4f0899ec` |
| 9 | `theorem` | [Convex.combo_interior_self_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-interior-self-subset-interior--ffcbcf1cddee77a297795f62.md) | 136 | `result-track:ffcbcf1cddee77a297795f62a6563f87e2347a07c384093ca965f47fddde0b70` |
| 10 | `theorem` | [Convex.combo_closure_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-closure-interior-subset-interior--72cf18dd7fc9aa90ecbeb1df.md) | 147 | `result-track:72cf18dd7fc9aa90ecbeb1df0565ebc1706394bbf7cc913b77a6a0883fd16eb5` |
| 11 | `theorem` | [Convex.combo_self_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-self-interior-subset-interior--6b42c0b40081224c032a3ba3.md) | 155 | `result-track:6b42c0b40081224c032a3ba3da2f02946bf629d46d7c14ea7fcd7c2b289c8e59` |
| 12 | `theorem` | [Convex.combo_interior_closure_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-interior-closure-mem-interior--f9e5c2412a1b261f3d9254ea.md) | 161 | `result-track:f9e5c2412a1b261f3d9254ea70697cfcf9395e2e4ed3ca728e72fae64cd4c19e` |
| 13 | `theorem` | [Convex.combo_interior_self_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-interior-self-mem-interior--eae1a0a01ecdee314851ad3f.md) | 168 | `result-track:eae1a0a01ecdee314851ad3fc6c4764b334f079062184129a4b7684f0e72950b` |
| 14 | `theorem` | [Convex.combo_closure_interior_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-closure-interior-mem-interior--e0dc15836e75f5a0282e4209.md) | 174 | `result-track:e0dc15836e75f5a0282e42098bb49313e49f3242910e0f1abab6a8b1fc5aa873` |
| 15 | `theorem` | [Convex.combo_self_interior_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-combo-self-interior-mem-interior--e7438b8f49e97835ca567d76.md) | 181 | `result-track:e7438b8f49e97835ca567d76bfb1aa6c5f1003ddae1e3b681062d4a14d697998` |
| 16 | `theorem` | [Convex.openSegment_interior_closure_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-opensegment-interior-closure-subset-interior--07355e6f502b203bdf834b2f.md) | 187 | `result-track:07355e6f502b203bdf834b2fb1018821dbf31594c0bcc82790fc85d1d110abfc` |
| 17 | `theorem` | [Convex.openSegment_interior_self_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-opensegment-interior-self-subset-interior--7b52838698de3412429d216f.md) | 193 | `result-track:7b52838698de3412429d216f1aea35b37571c29ed94c3b8826189be8ded4e410` |
| 18 | `theorem` | [Convex.openSegment_closure_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-opensegment-closure-interior-subset-interior--654e6508b7ddf1d6080c3070.md) | 198 | `result-track:654e6508b7ddf1d6080c3070e3e04596af12161f9d1306e5acfb4b568c2b9815` |
| 19 | `theorem` | [Convex.openSegment_self_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-opensegment-self-interior-subset-interior--721893de5eb17ee7827c9e7d.md) | 204 | `result-track:721893de5eb17ee7827c9e7d033e8a30c30ca569963b233a0917850d5697f32f` |
| 20 | `theorem` | [Convex.add_smul_sub_mem_interior'](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-add-smul-sub-mem-interior--599c3b4946dda759ffd6eb28.md) | 211 | `result-track:599c3b4946dda759ffd6eb28ba66c45adddc8f09ead23553ab2ad6a5a99ebc93` |
| 21 | `theorem` | [Convex.add_smul_sub_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-add-smul-sub-mem-interior--2b05b4c5cba092baa8b87e84.md) | 220 | `result-track:2b05b4c5cba092baa8b87e8407abe629f85a90d21796b310e3b74e97eb488e93` |
| 22 | `theorem` | [Convex.add_smul_mem_interior'](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-add-smul-mem-interior--1b7b3f8536aed6c080b9ff8a.md) | 226 | `result-track:1b7b3f8536aed6c080b9ff8a3dd829ef08c43ee3ef552eb3602c390fd014a8d9` |
| 23 | `theorem` | [Convex.add_smul_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-add-smul-mem-interior--c110503eb2b6e08860d8e01d.md) | 232 | `result-track:c110503eb2b6e08860d8e01d97153373ba4366c9860a898055c77e39f3b3c552` |
| 24 | `theorem` | [Convex.interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-interior--236f529f472af565220f0369.md) | 238 | `result-track:236f529f472af565220f036939415cca8188e155c62b630780b24f12fda6b5ef` |
| 25 | `theorem` | [Convex.closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-closure--f2e4d9da1c60e57a343f5954.md) | 244 | `result-track:f2e4d9da1c60e57a343f5954cbdf79e23c00ba9da5ec1f835b2089c49fa6bce4` |
| 26 | `theorem` | [Convex.strictConvex'](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-strictconvex--4fcdc62fb88277b741d08ea6.md) | 257 | `result-track:4fcdc62fb88277b741d08ea64720738e351441afd1ddba27665da1f0e8f35221` |
| 27 | `theorem` | [Convex.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-strictconvex--1d055e2e2ca7dfa91d6f7f52.md) | 275 | `result-track:1d055e2e2ca7dfa91d6f7f52ed775fee3f1511a43ae5f39777a9da5eeee45b4d` |
| 28 | `theorem` | [Set.Finite.isCompact_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/set-finite-iscompact-convexhull--f8eae6244ad721aae7ae4449.md) | 293 | `result-track:f8eae6244ad721aae7ae44499b9f9902ed37a1579909ba6ec4c0de229455db0e` |
| 29 | `theorem` | [Set.Finite.isClosed_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/set-finite-isclosed-convexhull--4f10ca9399a358386f788504.md) | 302 | `result-track:4f10ca9399a358386f78850406f6245663fda037aa4d8805d9c9272d04370acc` |
| 30 | `theorem` | [Convex.closure_subset_image_homothety_interior_of_one_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-closure-subset-image-homothety-interior-of-one-lt--48636d8fcd42e3b6cfee043f.md) | 313 | `result-track:48636d8fcd42e3b6cfee043f46c67e69d632b51d5496927ad0778f681e9b994a` |
| 31 | `theorem` | [Convex.closure_subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-closure-subset-interior-image-homothety-of-one-lt--dd2b18c9becf46c4f1b68aab.md) | 330 | `result-track:dd2b18c9becf46c4f1b68aabd8872caa586656025ec3c64a50d55d8977e8e7cb` |
| 32 | `theorem` | [Convex.subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-subset-interior-image-homothety-of-one-lt--194abf1ec63865327b411e89.md) | 341 | `result-track:194abf1ec63865327b411e89e308399db848d87f6dc57c7513aba0e7e2f6b86a` |
| 33 | `theorem` | [JoinedIn_of_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/joinedin-of-segment-subset--aca0f0d4e9a5df576b02cb33.md) | 346 | `result-track:aca0f0d4e9a5df576b02cb33901ff37907cb35e79616cb74bf6a7a9323a8f452` |
| 34 | `theorem` | [Convex.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-ispathconnected--a290a199ac3fec6f81504a67.md) | 355 | `result-track:a290a199ac3fec6f81504a6748de7961cfda1a93fc84308388f6018bdf5f2383` |
| 35 | `theorem` | [Convex.isConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-isconnected--b06181163368e8c9a7f27fb3.md) | 363 | `result-track:b06181163368e8c9a7f27fb381a901316bf0484bdf533ede8059e1855d1661e0` |
| 36 | `theorem` | [Convex.isPreconnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/convex-ispreconnected--f30a2645d122e3543069e982.md) | 369 | `result-track:f30a2645d122e3543069e9828beec18a27a504f434206d97d10ceb5d6de3bdec` |
| 37 | `theorem` | [TopologicalAddGroup.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Varianta31906db05d2a2dd35fb9814b0ff8704d0e20a54ef075cacd74258fd7a58ca33.lean/declarations/topologicaladdgroup-pathconnectedspace--ad43c9cc8b8c560c17dd0308.md) | 378 | `result-track:ad43c9cc8b8c560c17dd03082e95f1fe7f406e20673ddd770208e988fd421944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
