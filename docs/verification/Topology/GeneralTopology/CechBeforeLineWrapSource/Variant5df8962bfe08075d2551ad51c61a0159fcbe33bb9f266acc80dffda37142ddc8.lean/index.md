# Verification target: GRWTSK.Topology.GeneralTopology.CechBeforeLineWrapSource.Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e2f2685f3b489d60e0146b6c62abd87ce5e8fa9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e2f2685f3b489d60e0146b6c62abd87ce5e8fa9`.

Source path: `GRWTSK/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_columnSubmatrix](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuous-columnsubmatrix--dda211bd5683268a67f9bf15.md) | 39 | `result-track:dda211bd5683268a67f9bf15977aa3453269ac5efecab618b5d32a0681c107a2` |
| 2 | `theorem` | [continuous_columnMinor](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuous-columnminor--499f8437702c13c9729c85f1.md) | 46 | `result-track:499f8437702c13c9729c85f11c1a1a6727594f4fcc1268c8f6225076f5ea80cf` |
| 3 | `def` | [framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/framepivotdomain--d840acef9b7378342d7b9894.md) | 51 | `declaration-track:d840acef9b7378342d7b989428bbd52d8d35180c96fb643424d60366e7281e3e` |
| 4 | `theorem` | [isOpen_framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/isopen-framepivotdomain--b26974736f548bbb2ca2e226.md) | 55 | `result-track:b26974736f548bbb2ca2e226b3a097df117f7e5c6b1818b7bae0f8281ba35ed3` |
| 5 | `theorem` | [continuousAt_pivotNormalize](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuousat-pivotnormalize--ef4771fc3a68bec268fa2ba7.md) | 59 | `result-track:ef4771fc3a68bec268fa2ba7481388aa43512544ac293596f084aac1167329e6` |
| 6 | `theorem` | [continuousAt_pivotTransition](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuousat-pivottransition--8cc964ebcb23dbe8245ea911.md) | 76 | `result-track:8cc964ebcb23dbe8245ea9115ee71b19023aca27765a14252cee33aa3a6c102b` |
| 7 | `abbrev` | [NormalizedPivotFrame](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedpivotframe--85a2bd8e5581c3e14165baea.md) | 87 | `declaration-track:85a2bd8e5581c3e14165baea85bde51b5f02e399ba340425dcfa625bfaefecd2` |
| 8 | `theorem` | [normalizedPivotFrame_rank](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedpivotframe-rank--fa41ef0077718974e64f0dde.md) | 91 | `result-track:fa41ef0077718974e64f0dde5de29d18abd230c5760a37ba0edd8abe22e82679` |
| 9 | `def` | [normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedpivotplane--e80cb0cdf53bf95cc59019ca.md) | 98 | `declaration-track:e80cb0cdf53bf95cc59019ca0b6c1b1ff4f9c521534d4bebba0002dce3c4c9cc` |
| 10 | `def` | [intrinsicAtlasMap](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicatlasmap--03bf8f184bd8d082435efd9b.md) | 103 | `declaration-track:03bf8f184bd8d082435efd9b3d27794d69979bad6e27ee2db03a98570e3033d1` |
| 11 | `instance` | [intrinsicAtlasTopology](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicatlastopology--4b1a991b3167ed8c311b5643.md) | 107 | `declaration-track:4b1a991b3167ed8c311b564371af83a1960f0705862b7a1cd3c43f42b0dfccef` |
| 12 | `theorem` | [continuous_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuous-normalizedpivotplane--5fe7289372f7b783bcdc99e6.md) | 111 | `result-track:5fe7289372f7b783bcdc99e6cd0ca4b2b7af0a319e74d8565b82b8d2bb8bbb75` |
| 13 | `def` | [intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicpivotdomain--c9b2e6467af0e41fae5b7def.md) | 120 | `declaration-track:c9b2e6467af0e41fae5b7def5205554e7640a293af13864c1290b0df30ba3315` |
| 14 | `theorem` | [representedPlane_mem_intrinsicPivotDomain_iff](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/representedplane-mem-intrinsicpivotdomain-iff--6d249edf4c8297eedcd1a971.md) | 124 | `result-track:6d249edf4c8297eedcd1a971a1a74ae6d63bce9ae31a24b8c78524d57bdd00d5` |
| 15 | `theorem` | [isOpen_intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/isopen-intrinsicpivotdomain--b550522131d6e83dbaf5a5de.md) | 144 | `result-track:b550522131d6e83dbaf5a5defdfe29327f267cf20b780a99fbd17f236d331da6` |
| 16 | `theorem` | [intrinsicPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicpivotdomain-cover--5e33be66b296c25894a0fbff.md) | 157 | `result-track:5e33be66b296c25894a0fbffe13955b34e84824a34019d7c9570357b28148248` |
| 17 | `theorem` | [intrinsicAtlasMap_surjective](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicatlasmap-surjective--2193344e8eb0962e5e801363.md) | 166 | `result-track:2193344e8eb0962e5e8013637c14c0e8ef2336b9fd82dd80685d696ccf7b0ba9` |
| 18 | `abbrev` | [NormalizedPivotOverlap](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedpivotoverlap--463eaf9c4eca75d589c9f1cc.md) | 172 | `declaration-track:463eaf9c4eca75d589c9f1cc82192f2df1684007b5497f50c3b0731f9a7cd674` |
| 19 | `def` | [normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedoverlapchange--57a021f18b45d47b27906151.md) | 176 | `declaration-track:57a021f18b45d47b27906151e0377fc6f4a888551b85f7450f0b8b9abddae97f` |
| 20 | `theorem` | [normalizedOverlapChange_inverse](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedoverlapchange-inverse--622623483e356dd92b546443.md) | 184 | `result-track:622623483e356dd92b5464438eb333111846198260f6a4e5b6524c4c5bd7dd73` |
| 21 | `theorem` | [continuous_normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuous-normalizedoverlapchange--624ddcbb9e3f00c8b5e7adc1.md) | 197 | `result-track:624ddcbb9e3f00c8b5e7adc19fb6ca80861356a0aa6f543350414203cf4b53e7` |
| 22 | `def` | [normalizedOverlapHomeomorph](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/normalizedoverlaphomeomorph--f39dbd0c533ae7262644399c.md) | 209 | `declaration-track:f39dbd0c533ae7262644399cca9e1761046eec7003c5f62c0baebe665b872473` |
| 23 | `abbrev` | [OpenCoverCech](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/opencovercech--edb93a8f2d22fa71ad022ffc.md) | 223 | `declaration-track:edb93a8f2d22fa71ad022ffc825b2a8cb18b9fe01a648a1e2ae72102e87ba6ad` |
| 24 | `instance` | [openCoverCechTopology](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/opencovercechtopology--5b33c40c1688512106c8dc85.md) | 227 | `declaration-track:5b33c40c1688512106c8dc85ed053e03f7254968d909efe35ba4a608f6a6c9fa` |
| 25 | `def` | [cechReindex](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/cechreindex--308cb296cca8af81c5d7c4e2.md) | 232 | `declaration-track:308cb296cca8af81c5d7c4e2c97d4161cd1277446faf0e7ec55e3a7dddbf483d` |
| 26 | `theorem` | [cechReindex_id](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/cechreindex-id--35cf8c1953e8fea023f8a2e7.md) | 238 | `result-track:35cf8c1953e8fea023f8a2e70287b5b6acd75ebbeacd3abca5dc33112618fe3d` |
| 27 | `theorem` | [cechReindex_comp](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/cechreindex-comp--b83b1bd5c09a96cd54728aad.md) | 245 | `result-track:b83b1bd5c09a96cd54728aad75a91fe937fe7efc25fafc9baca5dc96df516cf9` |
| 28 | `theorem` | [continuous_cechReindex](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuous-cechreindex--1cff04afa773b043f3053241.md) | 251 | `result-track:1cff04afa773b043f305324173f4b2b3620b834eb8688cc61756054acffc152b` |
| 29 | `def` | [cechAugment](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/cechaugment--0683ea1087cb5c6a7c8fd3d8.md) | 264 | `declaration-track:0683ea1087cb5c6a7c8fd3d8c110008d44ed7e79a508c3eed12e23e412782377` |
| 30 | `theorem` | [continuous_cechAugment](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/continuous-cechaugment--e56076e04bd48697b78ea762.md) | 267 | `result-track:e56076e04bd48697b78ea7626c435b283b749ed9ac3cbd09f477b53084fc3aa5` |
| 31 | `theorem` | [cechAugment_surjective](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/cechaugment-surjective--1a23c5a718ee75346d13a47e.md) | 273 | `result-track:1a23c5a718ee75346d13a47e1d0baa35633a40bb54daa173bffe6c53b7244d67` |
| 32 | `def` | [cechOverlapFiberEquiv](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/cechoverlapfiberequiv--101e0f6aeeb146f6d9774085.md) | 280 | `declaration-track:101e0f6aeeb146f6d97740857481bd26db147b3632abf0b725d3eb76a16f6477` |
| 33 | `abbrev` | [IntrinsicPivotCech](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicpivotcech--a1175ab0efe32a786a99a742.md) | 290 | `declaration-track:a1175ab0efe32a786a99a74298e7436202c2e2523d92e99dd93169c4d23bab86` |
| 34 | `theorem` | [intrinsicPivotCech_augmentation_surjective](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variant5df8962bfe08075d2551ad51c61a0159fcbe33bb9f266acc80dffda37142ddc8.lean/declarations/intrinsicpivotcech-augmentation-surjective--a2819f3abdf35d7d8214945e.md) | 294 | `result-track:a2819f3abdf35d7d8214945ea341532613b9a7bddf711d5a8cd3f387e1bb14a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
