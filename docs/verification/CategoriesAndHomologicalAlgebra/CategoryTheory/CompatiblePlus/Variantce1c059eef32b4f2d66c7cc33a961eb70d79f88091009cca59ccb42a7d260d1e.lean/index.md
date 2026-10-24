# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatiblePlus.Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa0f3a6e20a342eab81e1a3c16e82e62a2488db0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa0f3a6e20a342eab81e1a3c16e82e62a2488db0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Plus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagramCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/diagramcompiso--99a3b2da6fcb4951386e053f.md) | 41 | `declaration-track:99a3b2da6fcb4951386e053fb9c72e378c53d92a0b413b71b97ed0e441b53359` |
| 2 | `theorem` | [diagramCompIso_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/diagramcompiso-hom--90cb7f4f4e83893a4a10b20c.md) | 62 | `result-track:90cb7f4f4e83893a4a10b20c22635f0d0dec2e642ecd1b4feee84371152b0622` |
| 3 | `def` | [plusCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/pluscompiso--97aecbc7217e371010a0a6cf.md) | 75 | `declaration-track:97aecbc7217e371010a0a6cfc8257c2c08ece02d0d744cad3824bb570731c1dc` |
| 4 | `theorem` | [ι_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/pluscompiso-hom--d36480a470a7fd3831ed2964.md) | 116 | `result-track:d36480a470a7fd3831ed2964d8d44416ac3a07b57683eb97eff92e7ff6599c25` |
| 5 | `theorem` | [plusCompIso_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/pluscompiso-whiskerleft--88cbefe29163bf7eadc2eb70.md) | 133 | `result-track:88cbefe29163bf7eadc2eb70505dd9b34e6294306eade81d6d7d01a493f04e9b` |
| 6 | `def` | [plusFunctorWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/plusfunctorwhiskerleftiso--c34871a2f394bded8a68665a.md) | 160 | `declaration-track:c34871a2f394bded8a68665a311b76dec6a48692e743a37ac5d32eade7b65c19` |
| 7 | `theorem` | [plusCompIso_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/pluscompiso-whiskerright--64ad8057c0740e062a17114b.md) | 169 | `result-track:64ad8057c0740e062a17114bd67f5adabe6e975172a64e469c155b0a55280b48` |
| 8 | `def` | [plusFunctorWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/plusfunctorwhiskerrightiso--813d521b80fc132ff422c1d7.md) | 197 | `declaration-track:813d521b80fc132ff422c1d747fb6804e4c62b2fa0020c6561bde098e607373c` |
| 9 | `theorem` | [whiskerRight_toPlus_comp_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/whiskerright-toplus-comp-pluscompiso-hom--828b96141934a7cda4a93d49.md) | 204 | `result-track:828b96141934a7cda4a93d4984a4ca8d0649febdfa82f6a8e07e0174299f7bb4` |
| 10 | `theorem` | [toPlus_comp_plusCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/toplus-comp-pluscompiso-inv--e97d9f32c41f9ae3a15a004e.md) | 221 | `result-track:e97d9f32c41f9ae3a15a004e6e892aab5b9746a3d55ab83ebd1fe3175464e68c` |
| 11 | `theorem` | [plusCompIso_inv_eq_plusLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantce1c059eef32b4f2d66c7cc33a961eb70d79f88091009cca59ccb42a7d260d1e.lean/declarations/pluscompiso-inv-eq-pluslift--d4cc6ae9851fc734334d5e79.md) | 225 | `result-track:d4cc6ae9851fc734334d5e791c87793f0b67197f197b1428bcb5bdfb43d362cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
