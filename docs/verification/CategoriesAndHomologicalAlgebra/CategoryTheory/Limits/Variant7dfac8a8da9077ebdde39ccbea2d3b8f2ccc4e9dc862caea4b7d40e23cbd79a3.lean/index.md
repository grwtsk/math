# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd075f23f5b993fdba00d99b79adf78d70332e60",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd075f23f5b993fdba00d99b79adf78d70332e60`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isSheaf_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/issheaf-of-islimit--16c3ab1dd4fb23a69a9db356.md) | 43 | `result-track:16c3ab1dd4fb23a69a9db356d4f709f625c2ba4d61160292a32df9b481668985` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/instance--0810eb99211f51b926dd6dc9.md) | 62 | `declaration-track:0810eb99211f51b926dd6dc9ea597c172e5265eb8d5fca42b8174cfec8032f9b` |
| 3 | `instance` | [createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/createslimit--64419173e2a8bd4493bee749.md) | 67 | `declaration-track:64419173e2a8bd4493bee749f1e1401d5a259e6e5bd4f2e803286bbf1e48afc3` |
| 4 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/haslimit--1aa5e95f92405d620105da11.md) | 73 | `declaration-track:1aa5e95f92405d620105da110679b42bc98f3ff2daeee3ee403f1caf3639d673` |
| 5 | `instance` | [evaluationPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/evaluationpreserveslimit--6e8a8acb591f86c543b61dbd.md) | 75 | `declaration-track:6e8a8acb591f86c543b61dbdf7375f62f60f120b53bbc8d7041723879679b4f8` |
| 6 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/haslimitsofshape--95637548764e78cc027653ab.md) | 88 | `declaration-track:95637548764e78cc027653ab768a74f018ee2e9662a65ed64aeb1622a17d5c8a` |
| 7 | `instance` | [evaluationPreservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/evaluationpreserveslimitsofshape--d43b52f468a3d4de5eba21bb.md) | 90 | `declaration-track:d43b52f468a3d4de5eba21bb9223cf5d132f4dea64abe0f1773485a5a48e6f43` |
| 8 | `instance` | [forgetPreservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/forgetpreserveslimitsofshape--4317b02d8393c5caceec812f.md) | 93 | `declaration-track:4317b02d8393c5caceec812fa20592791c78337bc9692ef32e4737c7b68fe1ce` |
| 9 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/hasfinitelimits--1c39b3eb88638e851f7a9fc8.md) | 100 | `declaration-track:1c39b3eb88638e851f7a9fc8d5435b2e0dec1dbcce35cbed1e28bd460432487e` |
| 10 | `instance` | [evaluationPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/evaluationpreservesfinitelimits--f0a9d7db5df930ec98790300.md) | 103 | `declaration-track:f0a9d7db5df930ec987903001b6751b4c0594c5334ee0c7390d772cd996caa79` |
| 11 | `instance` | [forgetPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/forgetpreservesfinitelimits--c0ad09922edfb81617eb1ed6.md) | 106 | `declaration-track:c0ad09922edfb81617eb1ed61af3663ed6848693818a4fc4fd53c6e2b101d170` |
| 12 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/haslimitsofsize--199654f9d0e6f25ac33bd356.md) | 111 | `declaration-track:199654f9d0e6f25ac33bd356bd8baf10e0b765032f361a4ef257e3403f159367` |
| 13 | `instance` | [evaluationPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/evaluationpreserveslimitsofsize--f6e24ce764fb275c8d5545c7.md) | 113 | `declaration-track:f6e24ce764fb275c8d5545c7ee276c76d9f6ff75b08781bf1203d1459bde89dd` |
| 14 | `instance` | [forgetPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/forgetpreserveslimitsofsize--e027852a1b9b713662acb91f.md) | 116 | `declaration-track:e027852a1b9b713662acb91f6739939e74b528a27bf9665eeff15d0efb8005e3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/instance--d47683bb512e4981783fb984.md) | 119 | `declaration-track:d47683bb512e4981783fb984929c028e1656a7e81b9956671dd804494687f326` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7dfac8a8da9077ebdde39ccbea2d3b8f2ccc4e9dc862caea4b7d40e23cbd79a3.lean/declarations/instance--df7356e7673f927101ccc953.md) | 123 | `declaration-track:df7356e7673f927101ccc95365bc6c6a92829165854fb19313e7a12e3bb18bd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
