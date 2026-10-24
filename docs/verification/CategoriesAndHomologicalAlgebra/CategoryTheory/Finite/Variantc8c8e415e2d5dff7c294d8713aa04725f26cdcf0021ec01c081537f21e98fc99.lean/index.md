# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6813b3672e27b078e5aaee3bc14c5c71b6599ad",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6813b3672e27b078e5aaee3bc14c5c71b6599ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservesfinitelimits--28f19f60f342424dd1f51b43.md) | 53 | `declaration-track:28f19f60f342424dd1f51b439520ffc03116bda2bb73fd9f12fbf535f65a7039` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/instance--cdc979e6aff8e606f9dee75c.md) | 62 | `declaration-track:cdc979e6aff8e606f9dee75c1293a2153a509d07cf9cfe2ce738cbbc3a524d35` |
| 3 | `def` | [PreservesLimitsOfSize.preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preserveslimitsofsize-preservesfinitelimits--54c6e214b50a379c6a99581f.md) | 70 | `declaration-track:54c6e214b50a379c6a99581f66b56a79fad07c5a2d346c3c36a5d7e06675ff06` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/instance--093ee56425099863dde07975.md) | 78 | `declaration-track:093ee56425099863dde07975487626ee9b4961a4ebc79268d8bb40c5f84ac512` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/instance--a657d187e5ade37eead21f45.md) | 84 | `declaration-track:a657d187e5ade37eead21f4517a31c8f9d481bbe4137ca3e441012ee22df09d7` |
| 6 | `def` | [preservesFiniteLimitsOfPreservesFiniteLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservesfinitelimitsofpreservesfinitelimitsofsize--dbff6793bb278331668bacfe.md) | 93 | `declaration-track:dbff6793bb278331668bacfe0a12c37885feca51fe15651e26490e257b2155d4` |
| 7 | `instance` | [idPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/idpreservesfinitelimits--bdd802feb75ab33030aa7ea7.md) | 103 | `declaration-track:bdd802feb75ab33030aa7ea7f13eba8629f26f8f2f7b89cd0d3c2cb337a1f91c` |
| 8 | `def` | [compPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/comppreservesfinitelimits--23a531581a5cf85200fd648d.md) | 108 | `declaration-track:23a531581a5cf85200fd648d9c93eba03fe9123126282c930d30db37ad468a4c` |
| 9 | `class` | [PreservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservesfiniteproducts--21d3b825ca66633442bfb8fa.md) | 117 | `declaration-track:21d3b825ca66633442bfb8fa9fbcaf640298d1220ff181bd038077d7027d2c5a` |
| 10 | `class` | [PreservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservesfinitecolimits--e2c98b9f7620f95b07454b4c.md) | 123 | `declaration-track:e2c98b9f7620f95b07454b4c5f08bed43b8fb05e72021173557f2898cce98b8e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/instance--3d6edc65f3a3624583a6b99d.md) | 133 | `declaration-track:3d6edc65f3a3624583a6b99da8ed107ad1dbf52f1308fde65c4db66e8af64672` |
| 12 | `def` | [PreservesColimitsOfSize.preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservescolimitsofsize-preservesfinitecolimits--50f7a936d03b114a1d1f9054.md) | 141 | `declaration-track:50f7a936d03b114a1d1f90548a4856a4cb41b9a6f70b77a8068eef93e1cb22fa` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/instance--dad9de325e557908458806e3.md) | 149 | `declaration-track:dad9de325e557908458806e334010ec900a41fb3425b9fb17496e97192225653` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/instance--e35a2e3d909f2a6694d25c07.md) | 155 | `declaration-track:e35a2e3d909f2a6694d25c077d1fa45af41ffd0a87ff9f099688b8802b6d13b2` |
| 15 | `def` | [preservesFiniteColimitsOfPreservesFiniteColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservesfinitecolimitsofpreservesfinitecolimitsofsize--00e9297f9cd94ca94f758469.md) | 164 | `declaration-track:00e9297f9cd94ca94f75846931316b313f7fe861de67cef9ecffcf3a467671d1` |
| 16 | `instance` | [idPreservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/idpreservesfinitecolimits--6085861d5bf50ba4d089deb2.md) | 177 | `declaration-track:6085861d5bf50ba4d089deb2e95881779b63be09b6e48caf0a69da53907b8058` |
| 17 | `def` | [compPreservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/comppreservesfinitecolimits--f795a4cf0c342a8d84eed03e.md) | 182 | `declaration-track:f795a4cf0c342a8d84eed03eee40cdebafcf2d3db382cdd2acaacc5575b7443a` |
| 18 | `class` | [PreservesFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/declarations/preservesfinitecoproducts--c7f3afe2f6f2ea528895354b.md) | 191 | `declaration-track:c7f3afe2f6f2ea528895354bc412b6d1d48aea8e0a313373f77b947db6b13f0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
