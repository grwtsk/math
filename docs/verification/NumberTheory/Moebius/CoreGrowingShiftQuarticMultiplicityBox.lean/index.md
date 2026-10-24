# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticMultiplicityBox

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2900466330bd9dc4213f1ed7ed0b8f88865cf4d3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2900466330bd9dc4213f1ed7ed0b8f88865cf4d3`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticParallelogram`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoreGrowingShiftQuarticActiveCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecell--c6abc0479e201b0f95726396.md) | 22 | `declaration-track:c6abc0479e201b0f95726396d0c6f1b63a9a58f5d29f171dd1a23481d45435a5` |
| 2 | `abbrev` | [CoreGrowingShiftQuarticBoxIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticboxindex--ab387ecf1951d73878740a01.md) | 27 | `declaration-track:ab387ecf1951d73878740a01dc52c10f62cd3ad4d6da3ec8bc51a9db5d9ca792` |
| 3 | `def` | [coreGrowingShiftQuarticActiveCells](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecells--29221cc9b952dc9cdf12980f.md) | 30 | `declaration-track:29221cc9b952dc9cdf12980f9c022544a6d2ee51fa24e7495c6daff3f466f58b` |
| 4 | `def` | [coreGrowingShiftQuarticActiveCellBoxIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecellboxindex--8514bd3522fce3c7c2d81dc3.md) | 39 | `declaration-track:8514bd3522fce3c7c2d81dc3d842570959a88b37077f858d9df8f3fd432c0bbe` |
| 5 | `def` | [coreGrowingShiftQuarticActiveCellValue](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecellvalue--a75d5900b69d993fd50492cf.md) | 46 | `declaration-track:a75d5900b69d993fd50492cf56cf482ef0db590b392250574bc89eaab2062521` |
| 6 | `def` | [coreGrowingShiftQuarticDyadicBox](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticdyadicbox--acf96bdbee422de8eb91bbcb.md) | 53 | `declaration-track:acf96bdbee422de8eb91bbcbbad785f4d94a60ef222e857d1d6f364f49999e4a` |
| 7 | `def` | [coreGrowingShiftQuarticDepthMultiplicity](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticdepthmultiplicity--aeb4147788d814d78165bf6c.md) | 60 | `declaration-track:aeb4147788d814d78165bf6c3d0c70bcc1cc30ec5b12df1ca9f59ae235161947` |
| 8 | `def` | [coreGrowingShiftQuarticActiveCellEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecellenergy--504c831b9267f8732eeaa3d4.md) | 67 | `declaration-track:504c831b9267f8732eeaa3d406cfdba920db806bcae193e17eeeee03082ad186` |
| 9 | `def` | [coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticmultiplicityweightedboxenergy--158864a783e501f892aec3a8.md) | 73 | `declaration-track:158864a783e501f892aec3a813e971c2cf33fee941b7563fd2089c880cd3863d` |
| 10 | `theorem` | [coreGrowingShiftQuarticActiveCellBoxIndex_mem](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecellboxindex-mem--7c6579811a5062bef75228e1.md) | 80 | `result-track:7c6579811a5062bef75228e195b56b7b8c688592cf7ee63abd9fbe7bab32ca5e` |
| 11 | `theorem` | [coreGrowingShiftQuarticParallelogramEnergy_eq_activeCells](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticparallelogramenergy-eq-activecells--10b0d9d6c0a052dc2497a7b7.md) | 113 | `result-track:10b0d9d6c0a052dc2497a7b7ddc1e1b5d177307c0a3052dc45c4e2adad041c40` |
| 12 | `theorem` | [coreGrowingShiftQuarticActiveCellValue_eq_boxValue](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecellvalue-eq-boxvalue--7c8d3ce8947baffb9c43f8ec.md) | 127 | `result-track:7c8d3ce8947baffb9c43f8ec6586471012b04c41aa12fa367c4719d78d68d8d1` |
| 13 | `theorem` | [coreGrowingShiftQuarticActiveCellEnergy_eq_multiplicityBox](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticactivecellenergy-eq-multiplicitybox--51ee9f4ccc638e0f6b217543.md) | 139 | `result-track:51ee9f4ccc638e0f6b2175433cc86845aeb2ed874ac161beba09b7ee780e6a84` |
| 14 | `theorem` | [coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticparallelogramenergy-eq-multiplicitybox--8814b09d7d67cae48ee8a485.md) | 182 | `result-track:8814b09d7d67cae48ee8a485d2280864888740d5dbb1428c73187bb06fed835d` |
| 15 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_nonneg](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticdepthmultiplicity-nonneg--e5de66494a60d3583e0a2bd9.md) | 190 | `result-track:e5de66494a60d3583e0a2bd91f2daa728a5959f49a1fd8fa9bd8a42bc9d6d257` |
| 16 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_le_depthCard](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticdepthmultiplicity-le-depthcard--989436b13f6d6da60f267099.md) | 197 | `result-track:989436b13f6d6da60f267099fe92a72ffdac8d0996701f72ce47e7910cd2dc97` |
| 17 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_le_rightScale](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/coregrowingshiftquarticdepthmultiplicity-le-rightscale--7b048d5159a3c5c3d23c7743.md) | 231 | `result-track:7b048d5159a3c5c3d23c77436bf1079f54a42e65f71dabb9ac616e74dc3ba53c` |
| 18 | `def` | [SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/subpolynomialcoregrowingshiftquarticmultiplicityweightedboxbudget--b9b8f78e725c71f760192e57.md) | 240 | `declaration-track:b9b8f78e725c71f760192e576c712bc45ce227805aeb01347282051946bb3bc9` |
| 19 | `theorem` | [subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/subpolynomialcoregrowingshiftquarticmultiplicityweightedboxbudget-iff-pa--dba139df25023ee1dcdca127.md) | 249 | `result-track:dba139df25023ee1dcdca1277c438f809fd704ce7a5d6fcc176e4795f1145883` |
| 20 | `theorem` | [riemannHypothesis_of_centeredCollision_and_multiplicityBox](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/riemannhypothesis-of-centeredcollision-and-multiplicitybox--fc881e6a90a187aa69832ecb.md) | 268 | `result-track:fc881e6a90a187aa69832ecb5c199810acff96b6fc2e633497f739903512911c` |
| 21 | `structure` | [MultiplicityWeightedParallelogramBoxSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/multiplicityweightedparallelogramboxsource--0d61af58c43eae5954dfe013.md) | 280 | `declaration-track:0d61af58c43eae5954dfe0136026512d34b604a0ae19002f57f35ec074da4113` |
| 22 | `structure` | [ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/tocoregrowingshiftquarticmultiplicityweightedboxbudget--52236d47de852fb54007d255.md) | 288 | `declaration-track:52236d47de852fb54007d2557a33191579ec456850d3f7f76f8f543461ea9ef2` |
| 23 | `structure` | [FullBoxU2MultiplicityLocalizationSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/fullboxu2multiplicitylocalizationsource--2b74187819f82c689fcc5aad.md) | 301 | `declaration-track:2b74187819f82c689fcc5aada1baa8538bafd0af3c981af87dd323722677b332` |
| 24 | `structure` | [ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudgetFromU2](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/declarations/tocoregrowingshiftquarticmultiplicityweightedboxbudgetfromu2--5fa559ea61c77cea230b9636.md) | 311 | `declaration-track:5fa559ea61c77cea230b96362f0889e0e6dfdcd5ec7092cdbde0c7cc1c6e87b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
