# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48dabd82aa7b3be221ea572cf6bd92847b339d5b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48dabd82aa7b3be221ea572cf6bd92847b339d5b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Bicones` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/representablyflat--c2edc9a2dd65514c0a4dcd2a.md) | 64 | `declaration-track:c2edc9a2dd65514c0a4dcd2ad11990278f7ae68304d45886b79389fea66f4e0f` |
| 2 | `instance` | [RepresentablyFlat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/representablyflat-id--063738c0b3b9424b17973f62.md) | 72 | `declaration-track:063738c0b3b9424b17973f62abe89f8ba328f6218ad2b8d4933c2bf3a9b7db5d` |
| 3 | `instance` | [RepresentablyFlat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/representablyflat-comp--d8a202c5460737c913a6ee31.md) | 90 | `declaration-track:d8a202c5460737c913a6ee3171229918dfef850a79d972c234b3d43a64fab972` |
| 4 | `theorem` | [cofiltered_of_hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/cofiltered-of-hasfinitelimits--e5f3e1840089ba1b50005935.md) | 142 | `result-track:e5f3e1840089ba1b50005935a024b616228f15457953a09529a153d441fcdfc7` |
| 5 | `theorem` | [flat_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/flat-of-preservesfinitelimits--16659d94eb689f1006e4995f.md) | 148 | `result-track:16659d94eb689f1006e4995fd45f9c19f7b9d486c6fae4caee2db44409a09536` |
| 6 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/lift--13047f530ef992f7d7bb70f9.md) | 172 | `declaration-track:13047f530ef992f7d7bb70f95c41bf9c37cfcc85969f511e2466df41a2a06ab2` |
| 7 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/fac--c8264eae6a7aff7afaac8a8e.md) | 183 | `result-track:c8264eae6a7aff7afaac8a8ef02b83474b36590d5f37e61f6004fdf890d0a855` |
| 8 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/uniq--4fb314d6ab9d90efd1630a17.md) | 189 | `result-track:4fb314d6ab9d90efd1630a171571ab6e02802fc7f87285193b7a975017b92194` |
| 9 | `def` | [preservesFiniteLimitsOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/preservesfinitelimitsofflat--6be27bac10297db907e8c677.md) | 275 | `declaration-track:6be27bac10297db907e8c6772d649b045383f92a990ae33d2c2c108c6e941f46` |
| 10 | `def` | [preservesFiniteLimitsIffFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/preservesfinitelimitsiffflat--7be69683c9e407cbac6bff9d.md) | 293 | `declaration-track:7be69683c9e407cbac6bff9d503844b1971693c8eac5b34aab9a92f9e9d5f347` |
| 11 | `def` | [lanEvaluationIsoColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/lanevaluationisocolim--4f7eafbe2def19cca9d5cf5b.md) | 318 | `declaration-track:4f7eafbe2def19cca9d5cf5bbee06bc8adcdcbcd69f9787c73e78fe45eb552a3` |
| 12 | `instance` | [lanPreservesFiniteLimitsOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/lanpreservesfinitelimitsofflat--f652db4914fe8b74c3788bbe.md) | 355 | `declaration-track:f652db4914fe8b74c3788bbe3e55747ded6a5252af58ac6b6448dacec39ca017` |
| 13 | `instance` | [lan_flat_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/lan-flat-of-flat--738acc092f05cb3ef00c7ac4.md) | 367 | `declaration-track:738acc092f05cb3ef00c7ac45b48bb25cb49c2237c0de845931b95249fb5b9a9` |
| 14 | `instance` | [lanPreservesFiniteLimitsOfPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/lanpreservesfinitelimitsofpreservesfinitelimits--e77faa5e132f44f2d330ddc1.md) | 375 | `declaration-track:e77faa5e132f44f2d330ddc19c0be4262bb3b6c1f1e3dd7f8f05ab2924f0c12f` |
| 15 | `theorem` | [flat_iff_lan_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/flat-iff-lan-flat--8442bf37865891f86c3ec765.md) | 382 | `result-track:8442bf37865891f86c3ec765a0cb1cff4840a787db1ceaf9a92f694d79701cca` |
| 16 | `def` | [preservesFiniteLimitsIffLanPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/declarations/preservesfinitelimitsifflanpreservesfinitelimits--9214f1efb862afac90050b1b.md) | 397 | `declaration-track:9214f1efb862afac90050b1b78bd0a45531a69a5c21b1bb05c353860bc7ff141` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
