# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimits.Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfb73fe87c9756e4959c0fa64719be5dd3abc32c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfb73fe87c9756e4959c0fa64719be5dd3abc32c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean.json)

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
| 1 | `abbrev` | [preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preserveslimit--6c51de3f65b6b893934623a8.md) | 43 | `declaration-track:6c51de3f65b6b893934623a8c4031548e8886fec16c8a3d0c3f011411dd06f1f` |
| 2 | `lemma` | [preservesLimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preserveslimit-iff--3e02fd94790c66ef0979bfdc.md) | 46 | `result-track:3e02fd94790c66ef0979bfdc8c02e2d68613aae6a30834ab0e0f67f6b2ed6146` |
| 3 | `lemma` | [congr_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/congr-preserveslimit--513e44ed0e597a9a25b228e9.md) | 49 | `result-track:513e44ed0e597a9a25b228e99df6416e7706d35891d7df3dae3bb53f451084d3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--907a5fcb729d25662710de1e.md) | 56 | `declaration-track:907a5fcb729d25662710de1eb7bb8391df03632f2861ad0cf8f1477b3cf8712d` |
| 5 | `abbrev` | [preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservescolimit--14f590cb9aa8bf8aad979672.md) | 62 | `declaration-track:14f590cb9aa8bf8aad97967243d95ae75aae5d3ba678ec06bea6443e307081a0` |
| 6 | `lemma` | [preservesColimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservescolimit-iff--cf8ab63bcda0e89776750912.md) | 65 | `result-track:cf8ab63bcda0e897767509125808f13f3a592b8a7cb2cefb6978b922499567da` |
| 7 | `lemma` | [congr_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/congr-preservescolimit--4063e7fad274b3e6357e1656.md) | 68 | `result-track:4063e7fad274b3e6357e16569ed4c3e801e0e14dd2bae85dd18a74105438e439` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--08f2e70334ce9d8abbbf90a1.md) | 75 | `declaration-track:08f2e70334ce9d8abbbf90a1493c759f398113070920a01c8e32e13b91506a42` |
| 9 | `abbrev` | [preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preserveslimitsofshape--321236599a3618bddad4b207.md) | 80 | `declaration-track:321236599a3618bddad4b2071b7d1c6f7353347bad650127a61e18d5708afbb7` |
| 10 | `lemma` | [preservesLimitsOfShape_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preserveslimitsofshape-iff--1edb9607737a16b38023bf1a.md) | 83 | `result-track:1edb9607737a16b38023bf1ace7215fd09b09d45196d3044f45c9258efd0093d` |
| 11 | `lemma` | [preservesLimitsOfShape_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preserveslimitsofshape-eq-isup--d1503e60f017c72f8d27fcf3.md) | 86 | `result-track:d1503e60f017c72f8d27fcf312224beb09e2aff541b8bd1be1d07f836c8f2310` |
| 12 | `lemma` | [congr_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/congr-preserveslimitsofshape--06df248a7e54336a93ca6b82.md) | 94 | `result-track:06df248a7e54336a93ca6b825fd7ef81701490216ed93cba8d2b31fe52784cfd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--5e35b24b33edbfd5fd7d3191.md) | 101 | `declaration-track:5e35b24b33edbfd5fd7d31919ab7427ef6361c910feef27d595421da49f09521` |
| 14 | `abbrev` | [preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservescolimitsofshape--34596335c864bcbf3e93e601.md) | 107 | `declaration-track:34596335c864bcbf3e93e601ed9142f79e70eaf042add9040a62088b4586369c` |
| 15 | `lemma` | [preservesColimitsOfShape_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservescolimitsofshape-iff--5cb34c9f8e24eb838eec7dc9.md) | 110 | `result-track:5cb34c9f8e24eb838eec7dc97733a0793dc12189dbf4a1cec8a867971ee669db` |
| 16 | `lemma` | [preservesColimitsOfShape_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservescolimitsofshape-eq-isup--bf53d753fdf333f103b8e0eb.md) | 113 | `result-track:bf53d753fdf333f103b8e0eb3063a075b2b70fde1b9b34c9b4a89d6341724fa5` |
| 17 | `lemma` | [congr_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/congr-preservescolimitsofshape--6bc66bf2139f52d812863f00.md) | 121 | `result-track:6bc66bf2139f52d812863f004004c2d43d4d0a5cab8e6b8e3a88a481a460c51c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--6428b051c3b9231ddaa19c4d.md) | 128 | `declaration-track:6428b051c3b9231ddaa19c4d6bf99f654b0be013caf31ba0c8be95a5b3edc78e` |
| 19 | `abbrev` | [preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservesfinitelimits--088689cc2166c406b76dc9a0.md) | 134 | `declaration-track:088689cc2166c406b76dc9a099652711bec4dbe01f3c63dc19890db94c7e97df` |
| 20 | `lemma` | [preservesFiniteLimits_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservesfinitelimits-iff--e41d2d25745076bc776fcaed.md) | 137 | `result-track:e41d2d25745076bc776fcaed5e0d314e1264202d84cb4a29a814d9a4ede0977d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--bdafd24668e428830cd430bf.md) | 140 | `declaration-track:bdafd24668e428830cd430bf3097dba8f20fc509e1a7d81a9b558ac794513fde` |
| 22 | `abbrev` | [preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservesfinitecolimits--fb30d9764de7caeffae01dac.md) | 145 | `declaration-track:fb30d9764de7caeffae01dac3318d0ad78e9499121735c74671197d67e76f234` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--67e073a6669c1e15479526f2.md) | 147 | `declaration-track:67e073a6669c1e15479526f2572f8e74c45ffaa12de11f313febc1d4a6c180b7` |
| 24 | `lemma` | [preservesFiniteColimits_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/preservesfinitecolimits-iff--7c2d1f7b53356c15c4b2d35d.md) | 151 | `result-track:7c2d1f7b53356c15c4b2d35dfc0ccac6978c3bcf9bd138831523e6d48894c975` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--66bd74f334cc67ba161a8ee8.md) | 155 | `declaration-track:66bd74f334cc67ba161a8ee81cdec3a61d8982714150db3f22ce4b227a9fe664` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af.lean/declarations/instance--4c1828479b72fbf73364e9df.md) | 170 | `declaration-track:4c1828479b72fbf73364e9dfbfcabd0fef6fd4bac2d863142f87f39b94e63a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
