# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Normed.Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec88b396f4932272cf2d6de292a0da065b53fc5e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec88b396f4932272cf2d6de292a0da065b53fc5e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Ray` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexon-norm--2b11eb1bf723eeab0b0eb246.md) | 39 | `result-track:2b11eb1bf723eeab0b0eb24662239db607aa1bbf04c5a8b32f7df2edaa5cbf5d` |
| 2 | `theorem` | [convexOn_univ_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexon-univ-norm--5358fcb3f40086d4b890641d.md) | 49 | `result-track:5358fcb3f40086d4b890641d7415d32cd0df73e6554dd72faddb8c409635228a` |
| 3 | `theorem` | [convexOn_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexon-dist--895a9722ab29597abf1346c8.md) | 53 | `result-track:895a9722ab29597abf1346c8c722d09e19abc6fb6f784f05a30e50aa79aa9d14` |
| 4 | `theorem` | [convexOn_univ_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexon-univ-dist--e0281cb8df47f170ca0c74bb.md) | 58 | `result-track:e0281cb8df47f170ca0c74bb6737ab9178dfca3576c315af754d7f09c48908dc` |
| 5 | `theorem` | [convex_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convex-ball--00ac888a46a2cfaf6178cbd1.md) | 62 | `result-track:00ac888a46a2cfaf6178cbd10d53188e1fee5cf4fb3316c3a6bb3c65b045d65a` |
| 6 | `theorem` | [convex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convex-closedball--7c8a34aeb9848f786e163376.md) | 66 | `result-track:7c8a34aeb9848f786e16337609211cc87fb3b94db1f62af612278435fbd54f9c` |
| 7 | `theorem` | [Convex.thickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convex-thickening--d1822556fad1f097b748a2e8.md) | 70 | `result-track:d1822556fad1f097b748a2e837d8e9a64cdd1ceb4fc0ea0522c88838cd216297` |
| 8 | `theorem` | [Convex.cthickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convex-cthickening--a7fcb0d05838d77ff271b8d3.md) | 75 | `result-track:a7fcb0d05838d77ff271b8d376ba01f6a829978c72687fb1137b19b94bd3782a` |
| 9 | `theorem` | [convexHull_exists_dist_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexhull-exists-dist-ge--f0b1f0cb60d61a38eb059cda.md) | 85 | `result-track:f0b1f0cb60d61a38eb059cda51001848c066bdfdef0f701f7b911133bbe9ecbc` |
| 10 | `theorem` | [convexHull_exists_dist_ge2](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexhull-exists-dist-ge2--4228a573b72bf229f0fd9360.md) | 92 | `result-track:4228a573b72bf229f0fd936002f1006e0f0f0beca39fef0d2c2aef92c8738e4a` |
| 11 | `theorem` | [convexHull_ediam](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexhull-ediam--002ec1b40c180a9d4c35b004.md) | 102 | `result-track:002ec1b40c180a9d4c35b004785ab825f308b8a8c0f6efb24000510eca064696` |
| 12 | `theorem` | [convexHull_diam](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/convexhull-diam--6d6f2ff95166b08bd5b8c7f8.md) | 113 | `result-track:6d6f2ff95166b08bd5b8c7f855f5f0444e809f96aee9fd7fa9fe6a89a3a568af` |
| 13 | `theorem` | [bounded_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/bounded-convexhull--c86486bfa6ba2076cd0ddc32.md) | 119 | `result-track:c86486bfa6ba2076cd0ddc320d1ff264b67d1dd129cd471bc1eea907237c8183` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/instance--eb67122a6b1fd833e3716193.md) | 123 | `declaration-track:eb67122a6b1fd833e3716193e2b4fba2689ed2742fa85d4bd2e9beba1e37c573` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/instance--563a010b85a50525d5513aed.md) | 127 | `declaration-track:563a010b85a50525d5513aed0f71a177ce952bef1f337d0d681f2d64d78c9689` |
| 16 | `theorem` | [dist_add_dist_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/dist-add-dist-of-mem-segment--4d77fef2e32d68b75a936982.md) | 132 | `result-track:4d77fef2e32d68b75a93698239dd4d45ba206aff224be8a0e3d222edc8f7bab9` |
| 17 | `theorem` | [isConnected_setOf_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/isconnected-setof-sameray--1b13be3fd2cf5cb95bfc4fb7.md) | 139 | `result-track:1b13be3fd2cf5cb95bfc4fb7541ea468453af403004e498a28ecf86a95544600` |
| 18 | `theorem` | [isConnected_setOf_sameRay_and_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variantf2759985e77108b8657cda3f4323461779598935806e3d4dd5e53b393a5c3edf.lean/declarations/isconnected-setof-sameray-and-ne-zero--3f48dd704199f497dd29d061.md) | 146 | `result-track:3f48dd704199f497dd29d0613989586682ddc0b40d47cf8700ca1852c6be70ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
