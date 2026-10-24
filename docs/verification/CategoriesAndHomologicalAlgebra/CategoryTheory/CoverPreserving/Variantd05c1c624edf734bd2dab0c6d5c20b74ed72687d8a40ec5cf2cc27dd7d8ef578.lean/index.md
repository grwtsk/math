# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverPreserving.Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d5f32dc3e50d6fdc448c465039d5486b116b82b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d5f32dc3e50d6fdc448c465039d5486b116b82b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Flat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Continuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/coverpreserving--cd1d1dc4ddc47790c75d09d7.md) | 62 | `declaration-track:cd1d1dc4ddc47790c75d09d799c1f1332bae2858acee465f05c93095cde8aeb6` |
| 2 | `theorem` | [idCoverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/idcoverpreserving--2d1a2b874d7cca828714ff0f.md) | 66 | `result-track:2d1a2b874d7cca828714ff0ff09ad7862b2b2520ceb47f763d274c1edaf11445` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/coverpreserving-comp--9cb9584c4aadc11b093fd7dd.md) | 70 | `result-track:9cb9584c4aadc11b093fd7dda0cbc10b191b719988417439cb648c0a0327ed13` |
| 4 | `structure` | [CompatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/compatiblepreserving--6538897ca0af299776e34f80.md) | 82 | `declaration-track:6538897ca0af299776e34f809241d0abc93e06145bd2b2d8b89e25ab3d6582a5` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/presieve-familyofelements-compatible-functorpushforward--6d542b9684bf392c29d7280c.md) | 95 | `result-track:6d542b9684bf392c29d7280c8818ef0091e75c10359af27119bf0ac9bfdee0f7` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/compatiblepreserving-apply-map--ed5dbcb47c0c7b3c96a83a75.md) | 107 | `result-track:ed5dbcb47c0c7b3c96a83a75eeac2bba8d1fb8fdabcb8a01e31f7f04ce5af227` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/compatiblepreservingofflat--4de79594bb08ef09f741fff4.md) | 118 | `result-track:4de79594bb08ef09f741fff4050b887c990d62fc82b9d910751a2f97cd4ccffa` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/compatiblepreservingofdownwardsclosed--c3bef6cdded42a72d8fe6022.md) | 152 | `result-track:c3bef6cdded42a72d8fe6022a12c1e1ab0b50a03d3f85d867639a3ea71662383` |
| 9 | `lemma` | [Functor.isContinuous_of_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd05c1c624edf734bd2dab0c6d5c20b74ed72687d8a40ec5cf2cc27dd7d8ef578.lean/declarations/functor-iscontinuous-of-coverpreserving--48e7342024a9cce611859dd6.md) | 167 | `result-track:48e7342024a9cce611859dd6634566fc2cfe744267251038fc37da8d975911dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
