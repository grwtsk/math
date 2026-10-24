# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b39f48817c23e2b4efa573808f7d85f3de7b4e00",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b39f48817c23e2b4efa573808f7d85f3de7b4e00`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/evaluationjointlyreflectslimits--7b00e6ae4141a40645721b3e.md) | 34 | `declaration-track:7b00e6ae4141a40645721b3e3468e2372457f0e03d087df5bcd325dcf5bdc925` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/instance--f0dddde86e3be25c72087ee3.md) | 56 | `declaration-track:f0dddde86e3be25c72087ee3d9320fd35c945b69fcc7ba7eacaea312a8fc98fa` |
| 3 | `def` | [limitPresheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/limitpresheafofmodules--cb068be8928754e522fb5cb8.md) | 64 | `declaration-track:cb068be8928754e522fb5cb823c4980926c6f9f0f1f9993c1d72bbf329675ab1` |
| 4 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/limitcone--edad53b949a65f2ff9dc41c8.md) | 106 | `declaration-track:edad53b949a65f2ff9dc41c828602e56abfa551213ac4e86787daf4d5b9950c3` |
| 5 | `def` | [isLimitLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/islimitlimitcone--718d4f9fcac4a619210c33ab.md) | 120 | `declaration-track:718d4f9fcac4a619210c33abd9bfc2bf10455982618f8ab6bfdac1acbdfb7fce` |
| 6 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/haslimit--9a42910720ffaf61f37f9041.md) | 123 | `declaration-track:9a42910720ffaf61f37f904136b825f7ee1516b86d4e93fe0b07520b713df2dd` |
| 7 | `instance` | [evaluation_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/evaluation-preserveslimit--29e4ec95367dda0165188358.md) | 125 | `declaration-track:29e4ec95367dda016518835889949c4be1ad47c616fd4aa7fddb1eead3c213b0` |
| 8 | `instance` | [toPresheaf_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/topresheaf-preserveslimit--3024e8b5e1ea52210aa3a3ce.md) | 129 | `declaration-track:3024e8b5e1ea52210aa3a3ce1ab65215944935de399f5c37aa5d0fc1e7f1a26d` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/haslimitsofshape--15bc1c68c4ae785c42c95da9.md) | 144 | `declaration-track:15bc1c68c4ae785c42c95da962a16c7ff3a840535233437b804bd16c4ffd13ef` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/haslimitsofsize--508c3d501fee4e29091031c3.md) | 146 | `declaration-track:508c3d501fee4e29091031c363234189263c5b90019344f0d30b337dc94b3ac7` |
| 11 | `instance` | [evaluation_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/evaluation-preserveslimitsofshape--3983e1f2a122de513e3cef80.md) | 148 | `declaration-track:3983e1f2a122de513e3cef809df14f933ac0936d1c5d5ead158223cd917bab8f` |
| 12 | `instance` | [toPresheaf_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/topresheaf-preserveslimitsofshape--0dece38c8880ab3775b2137f.md) | 151 | `declaration-track:0dece38c8880ab3775b2137f6976fbf8629a33e1f02b8da10f70c9106d8a8c86` |
| 13 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/hasfinitelimits--a8d9622ee7d036668e722561.md) | 158 | `declaration-track:a8d9622ee7d036668e722561da36371ea984016d396b19deeaec89fdb2d240dc` |
| 14 | `instance` | [evaluation_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/evaluation-preservesfinitelimits--36756fd92e1978eb86b55b29.md) | 161 | `declaration-track:36756fd92e1978eb86b55b2974e33893a0ae9c05d4bcd59066e7874c3a3a221b` |
| 15 | `instance` | [toPresheaf_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean/declarations/topresheaf-preservesfinitelimits--f7dedec88963d6daffd87ad0.md) | 164 | `declaration-track:f7dedec88963d6daffd87ad07161389472ef06acbd345752379da528926e6cea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
