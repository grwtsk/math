# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32fbf35fad6a76392250f509ee3bd513c9e6ec77",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32fbf35fad6a76392250f509ee3bd513c9e6ec77`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [monoidOfSkeletalMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/monoidofskeletalmonoidal--465f3d9f72a53070bf61c261.md) | 33 | `declaration-track:465f3d9f72a53070bf61c261011779549128f08d8fcd9556d75cd46f053ee825` |
| 2 | `def` | [commMonoidOfSkeletalBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/commmonoidofskeletalbraided--fbda4760db50b1e90bebc11a.md) | 41 | `declaration-track:fbda4760db50b1e90bebc11a4a0465bcfb8da6567e5d8972db4e005321095c0f` |
| 3 | `instance` | [instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/instmonoidalcategory--4975f9d6f86ed350bc785b70.md) | 48 | `declaration-track:4975f9d6f86ed350bc785b70dac2af1b03989bd10c44f8ee94bb7887b1214ab5` |
| 4 | `instance` | [instMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/instmonoid--d364c516b18a16c85b9559c2.md) | 55 | `declaration-track:d364c516b18a16c85b9559c20429ca9878b4d5914dcf0b9525b42d2a17bd715d` |
| 5 | `theorem` | [mul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/mul-eq--da82c5863b3ad2de87c7e274.md) | 58 | `result-track:da82c5863b3ad2de87c7e2740796dd62f8a38c7b90cc52e6db2bdb134d2b8480` |
| 6 | `theorem` | [one_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/one-eq--9fe05797405a98d82f6929ae.md) | 59 | `result-track:9fe05797405a98d82f6929ae1c016b6aec84efaeeb7257dc373a0a1eb8f4e06d` |
| 7 | `theorem` | [toSkeleton_tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/toskeleton-tensorobj--2a983361ac772f3772ac87af.md) | 61 | `result-track:2a983361ac772f3772ac87afbf25e630a9bcaf6405dc6601f2d55bf06ba13fab` |
| 8 | `instance` | [instBraidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/instbraidedcategory--9e9f71f5b5a4a044b88a899e.md) | 66 | `declaration-track:9e9f71f5b5a4a044b88a899ef1a3bc154258a4d447576eebb8fa0ce9a612a689` |
| 9 | `instance` | [instCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/declarations/instcommmonoid--bf38238281c2c9250ff878ae.md) | 76 | `declaration-track:bf38238281c2c9250ff878ae3fe916c32dc1eae8e5f6d0e7b67f8273f493cde3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
