# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34ed4d806c31d3b3c30d209812991d87b6293bf8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34ed4d806c31d3b3c30d209812991d87b6293bf8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiforkEvaluationCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/multiforkevaluationcone--70214f367f80627983f2f307.md) | 70 | `declaration-track:70214f367f80627983f2f307c872537d967ccb373bb92b6c034dd3dc63af789e` |
| 2 | `def` | [isLimitMultiforkOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/islimitmultiforkofislimit--4382f84befede999b26bec7f.md) | 107 | `declaration-track:4382f84befede999b26bec7f502dc2b6bb132d2b911df7b23af63839036485d3` |
| 3 | `theorem` | [isSheaf_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/issheaf-of-islimit--c12ee07d7c2df0ea6f803bc5.md) | 147 | `result-track:c12ee07d7c2df0ea6f803bc5de84099ea9cd993ab94a311ee009dc7881655183` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/instance--33f9e8d3dc32630b49870726.md) | 155 | `declaration-track:33f9e8d3dc32630b498707262c3b0ad8346f66885140dde8bceb90e1558c3c86` |
| 5 | `instance` | [createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/createslimitsofshape--532ac5da412e20dca59e6885.md) | 172 | `declaration-track:532ac5da412e20dca59e6885f88c4f716e0b97c3853de20ae1b4175e52c4adfa` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/instance--59bd71b6059e3a9df7ca37b9.md) | 174 | `declaration-track:59bd71b6059e3a9df7ca37b98e111b96223d9361c5e9c1f2266f18e19f22e628` |
| 7 | `instance` | [createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/createslimits--7d0196264120e88a12b8aa26.md) | 179 | `declaration-track:7d0196264120e88a12b8aa264e102f7f14584f2fce074c87232f1b4d8e4f8048` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/instance--36b11c9887a69aa7a3396971.md) | 182 | `declaration-track:36b11c9887a69aa7a3396971a0717b0f076659bb9009ae17a9876029338760f2` |
| 9 | `def` | [sheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/sheafifycocone--ecc2cac8b45052160c951190.md) | 216 | `declaration-track:ecc2cac8b45052160c9511903ce051f16ef91e285ab179d762a1a20eedb81b7e` |
| 10 | `def` | [isColimitSheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/iscolimitsheafifycocone--49002e9993b6c921ce47e775.md) | 231 | `declaration-track:49002e9993b6c921ce47e77531764edf494e8bbcaf98aae7b5acb864dbc7f604` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/instance--0aba8e4f472a01d8f9ca287b.md) | 252 | `declaration-track:0aba8e4f472a01d8f9ca287b7a4f94ed09e3ce900276d12e4cb2ee93a28dcff4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/declarations/instance--69207e18ef9262984bf8cc31.md) | 256 | `declaration-track:69207e18ef9262984bf8cc31b6f7f019faaf971ffcf992756d44f4229cca9c3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
