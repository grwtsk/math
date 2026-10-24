# Verification target: GRWTSK.Geometry.DifferentialGeometry.Atlas.Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9e9e2f37971c08ea58b43623753afceb4c3a85",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9e9e2f37971c08ea58b43623753afceb4c3a85`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ModelWithCorners.contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/modelwithcorners-contmdiff--c993b05558053c9ff389f4c4.md) | 58 | `result-track:c993b05558053c9ff389f4c47c6436937cdb99ca922ed14213f6b19d688b0ff7` |
| 2 | `theorem` | [ModelWithCorners.contMDiffOn_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/modelwithcorners-contmdiffon-symm--64f83dd9722e23fa0e355c86.md) | 66 | `result-track:64f83dd9722e23fa0e355c860aea35aace31748d03a7435b9945280c2dcc8cec` |
| 3 | `theorem` | [contMDiffOn_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-of-mem-maximalatlas--445e7a55dbec6bef01559ace.md) | 74 | `result-track:445e7a55dbec6bef01559ace4a6fa044a8b257e2042830e255b61dffc8674003` |
| 4 | `theorem` | [contMDiffOn_symm_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-symm-of-mem-maximalatlas--3d5127c538dec8074a016aaf.md) | 80 | `result-track:3d5127c538dec8074a016aafb4a6a8595c215bcf8167d7496ba512abd7b94895` |
| 5 | `theorem` | [contMDiffAt_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffat-of-mem-maximalatlas--43a5ce267575cb7a09b43f34.md) | 85 | `result-track:43a5ce267575cb7a09b43f344674d729d3890a90aa00964d5ba73173e0ba451c` |
| 6 | `theorem` | [contMDiffAt_symm_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffat-symm-of-mem-maximalatlas--bb946f820505a90ec35632f5.md) | 89 | `result-track:bb946f820505a90ec35632f53ef059c86dca32db4b8ed1b5d61f20954b7c170f` |
| 7 | `theorem` | [contMDiffOn_chart](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-chart--e99bac929cffcde0d921f776.md) | 93 | `result-track:e99bac929cffcde0d921f776b986c0a715e2f1fbab1a2cf7c70ce00149696f06` |
| 8 | `theorem` | [contMDiffOn_chart_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-chart-symm--ca73552fd4e6338d72a3895f.md) | 97 | `result-track:ca73552fd4e6338d72a3895fc3bbc3a629f3371e5ab576e665fd668990b49664` |
| 9 | `theorem` | [OpenPartialHomeomorph.contMDiffAt_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/openpartialhomeomorph-contmdiffat-extend--53d8eab34c8262a87020a996.md) | 101 | `result-track:53d8eab34c8262a87020a9968d327a45f5cf89fd0b60c6d19a79041167a7a50a` |
| 10 | `theorem` | [OpenPartialHomeomorph.contMDiffOn_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/openpartialhomeomorph-contmdiffon-extend--7817c0c525c8de690064f1ce.md) | 106 | `result-track:7817c0c525c8de690064f1ce28f5582c2c89170f69aa9f77457f9d00d745b97f` |
| 11 | `theorem` | [contMDiffAt_extChartAt'](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffat-extchartat--e4efe2edf321e9f431963ca4.md) | 110 | `result-track:e4efe2edf321e9f431963ca41bdf57ad349d84198f6e4f96a1247898324503ca` |
| 12 | `theorem` | [contMDiffAt_extChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffat-extchartat--d33c48c5503468c52e6ca1b9.md) | 114 | `result-track:d33c48c5503468c52e6ca1b9fe87ec47bb96741563016b3e909b01dab63705a9` |
| 13 | `theorem` | [contMDiffOn_extChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-extchartat--d826a59519145b068920446f.md) | 120 | `result-track:d826a59519145b068920446f7ac91cea06a91f80463eec043c158d2a06a5b02a` |
| 14 | `theorem` | [contMDiffOn_extend_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-extend-symm--1a52a5f00df838ba73eaeac1.md) | 124 | `result-track:1a52a5f00df838ba73eaeac17c8bfcf43427888e34b4756aa979266ef69adae7` |
| 15 | `theorem` | [contMDiffOn_extChartAt_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-extchartat-symm--1144e4cc99036d7c9f9b1d0c.md) | 131 | `result-track:1144e4cc99036d7c9f9b1d0c259c58bac6a8d997e4b3fab7ae7d37291a9295bf` |
| 16 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffwithinat-extchartat-symm-target--78124c941d14e5bfdfc5e2f1.md) | 137 | `result-track:78124c941d14e5bfdfc5e2f1e554b9821c6f57483d49bd58df574237c2534a3d` |
| 17 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffwithinat-extchartat-symm-range--6edb1d42b40b3c5446bd3abf.md) | 142 | `result-track:6edb1d42b40b3c5446bd3abf3aa123c9d370e9a7cb8b172006b6a3db9e19e5c7` |
| 18 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target_self](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffwithinat-extchartat-symm-target-self--e0746a846861aa174f057291.md) | 148 | `result-track:e0746a846861aa174f057291822697a47155faadfdf3dea827eee16db462b49d` |
| 19 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range_self](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffwithinat-extchartat-symm-range-self--49348ae6a67c16247d013695.md) | 160 | `result-track:49348ae6a67c16247d0136951bb631f7ecad695b27e878b6e01c3f551efffabb` |
| 20 | `theorem` | [contMDiffOn_of_mem_contDiffGroupoid](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/contmdiffon-of-mem-contdiffgroupoid--b1816465ce9377c51427be9f.md) | 166 | `result-track:b1816465ce9377c51427be9f05385000a21a5d43b4127dc4419c88e9762c3aec` |
| 21 | `lemma` | [OpenPartialHomeomorph.mem_maximalAtlas_of_contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/openpartialhomeomorph-mem-maximalatlas-of-contmdiffon--9babdabe99200a8f4ec5c091.md) | 170 | `result-track:9babdabe99200a8f4ec5c091f1b2c4217cd4dc4435ac70c5c735174dba3ccf7f` |
| 22 | `lemma` | [symm_trans_trans_mem_maximalAtlas_of_contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/symm-trans-trans-mem-maximalatlas-of-contmdiffon--dc60b8a39dec5036b03815ab.md) | 189 | `result-track:dc60b8a39dec5036b03815ab6b398106bd8f670c31dbcec99e8a792079e70a0f` |
| 23 | `lemma` | [symm_trans_trans_mem_contDiffGroupoid_of_contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/symm-trans-trans-mem-contdiffgroupoid-of-contmdiffon--af771fc59b9d9b8f7f3b02a0.md) | 203 | `result-track:af771fc59b9d9b8f7f3b02a09708e7ed64aa5c21e3a61b7a378a9d78bbe27fa4` |
| 24 | `lemma` | [IsManifold.mem_maximalAtlas_iff_contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/ismanifold-mem-maximalatlas-iff-contmdiffon--c678dc922cd7ef31b978cc8a.md) | 212 | `result-track:c678dc922cd7ef31b978cc8ae8e35d14aaa7490698f2116579f4e97aa015c54c` |
| 25 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff_aux](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff-aux--d2b493e0b28e46c841153911.md) | 226 | `result-track:d2b493e0b28e46c8411539115f06715157677cc9456b4690169ee9f369757351` |
| 26 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff--fdceb5530e59994ba6b28b10.md) | 272 | `result-track:fdceb5530e59994ba6b28b10c56edf21e5d7c2cacd40147b8b909174294a8aea` |
| 27 | `theorem` | [OpenPartialHomeomorph.contMDiffWithinAt_writtenInExtend_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/openpartialhomeomorph-contmdiffwithinat-writteninextend-iff--f2b1bc89e1d38d5e47370392.md) | 373 | `result-track:f2b1bc89e1d38d5e4737039229b73658c122666ddcd32f67d7fc258461d42f2e` |
| 28 | `theorem` | [OpenPartialHomeomorph.contMDiffOn_writtenInExtend_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/declarations/openpartialhomeomorph-contmdiffon-writteninextend-iff--a4b4d7a76291c4078710a0f2.md) | 386 | `result-track:a4b4d7a76291c4078710a0f2f907a94c2b0825a96f6351dfa157fb83cd5f8a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
