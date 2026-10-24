# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TruncGEHomology.Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33aa50866daca8b4d74875fa0da81dc212bf944f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33aa50866daca8b4d74875fa0da81dc212bf944f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.ExtendHomology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.TruncGE` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.RestrictionHomology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasHomology_sc'_of_not_mem_boundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/hashomology-sc-of-not-mem-boundary--d459ce10f3b012e17db96a98.md) | 37 | `result-track:d459ce10f3b012e17db96a98d4059708e3de3bb74aac40349f7a2b86cc814262` |
| 2 | `lemma` | [hasHomology_of_not_mem_boundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/hashomology-of-not-mem-boundary--43d6971b1ef151a1546c3ff0.md) | 49 | `result-track:43d6971b1ef151a1546c3ff0429e0a53b14f5165c32a8a18f5320c9da94e9a25` |
| 3 | `lemma` | [quasiIsoAt_restrictionToTruncGE'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/quasiisoat-restrictiontotruncge--1ac8130a4097928de693be0e.md) | 54 | `result-track:1ac8130a4097928de693be0e60c8a6c6aa93e10815cb3ca673dc346be3e08d6e` |
| 4 | `lemma` | [homologyι_truncGE'XIsoOpcycles_inv_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/homology-truncge-xisoopcycles-inv-d--27052b2c916613bd62d03bd7.md) | 68 | `result-track:27052b2c916613bd62d03bd74282bcb920ee31c0daa024a20d4c3047fea7f6c1` |
| 5 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/islimitkernelfork--fab0ee2db9c8b265a87c3705.md) | 76 | `declaration-track:fab0ee2db9c8b265a87c370598c36059beaf25160ecff676cb1046af91a5a8bd` |
| 6 | `def` | [homologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/homologydata--13f1c217184c4deab9d87e9f.md) | 96 | `declaration-track:13f1c217184c4deab9d87e9f79070616bf5250444d1c9a7ebd4ca1b0e5cd0199` |
| 7 | `lemma` | [homologyData_right_g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/homologydata-right-g--3ea4b1f24c0bfb3b64397038.md) | 104 | `result-track:3ea4b1f24c0bfb3b643970382a46f1c1bad369152092d341e529af2ca7efe05c` |
| 8 | `instance` | [truncGE'_hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/truncge-hashomology--e7d1be1934f1990641441daa.md) | 109 | `declaration-track:e7d1be1934f1990641441daaf914204ff7fc60446467dbb215e1d051186b19e0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/instance--ad9a6299daa449fbf9fb843b.md) | 120 | `declaration-track:ad9a6299daa449fbf9fb843b4674ad90b5ab0e0d6ea4273ad7a9f72b8112293c` |
| 10 | `def` | [rightHomologyMapData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/righthomologymapdata--8823249762ba1bf973a68018.md) | 127 | `declaration-track:8823249762ba1bf973a680184d4031f9b4896bad7419e4fc0b81d6008dc38927` |
| 11 | `lemma` | [quasiIsoAt_πTruncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/quasiisoat-truncge--f59915b17a64027cdc86c926.md) | 159 | `result-track:f59915b17a64027cdc86c9260959943e259318bc1ad25474c193a780cf64ba42` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/instance--646cdc91574f2612364fb1ba.md) | 185 | `declaration-track:646cdc91574f2612364fb1ba19840c00c3ae7fd08d70784f31ac174d3a30605b` |
| 13 | `lemma` | [quasiIso_πTruncGE_iff_isSupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/quasiiso-truncge-iff-issupported--861e49b23ba7d23e5c167255.md) | 187 | `result-track:861e49b23ba7d23e5c16725511512932d7602f08d6f71881f235f637fcb6a347` |
| 14 | `lemma` | [acyclic_truncGE_iff_isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/acyclic-truncge-iff-issupportedoutside--4f849cc1196ec05e616b13b5.md) | 203 | `result-track:4f849cc1196ec05e616b13b50f093937a4a25b758a429040603e3ca36bdfec98` |
| 15 | `lemma` | [quasiIso_truncGEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/declarations/quasiiso-truncgemap-iff--a3d14d683e427b58961a1b56.md) | 217 | `result-track:a3d14d683e427b58961a1b5630e6bc5cbd0a0119d71c507e5fb58710ffa5f67e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
