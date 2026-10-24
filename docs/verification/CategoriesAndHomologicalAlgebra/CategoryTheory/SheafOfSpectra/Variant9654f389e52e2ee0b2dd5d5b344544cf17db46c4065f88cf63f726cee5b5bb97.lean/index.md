# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfSpectra.Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7c157010e93f4ddeee02aa6ab34714a3828087c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7c157010e93f4ddeee02aa6ab34714a3828087c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ResearchTopos.GrothendieckTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.SpectrumObject` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfSpectra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean/declarations/presheafofspectra--1167c1bd1d0bfc6348119eea.md) | 29 | `declaration-track:1167c1bd1d0bfc6348119eeaab9748280cc9fc0d71e18c74ceafb4111b14eb0c` |
| 2 | `structure` | [SheafOfSpectra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean/declarations/sheafofspectra--8e606d2115741155b59529b6.md) | 36 | `declaration-track:8e606d2115741155b59529b6883e204909ff80828e1d386adb6c4ac01c126aac` |
| 3 | `theorem` | [sheaf_of_spectra_has_descent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean/declarations/sheaf-of-spectra-has-descent--37ac6bdf801ccc0b0e8c9db5.md) | 46 | `result-track:37ac6bdf801ccc0b0e8c9db5dc8188fd6e2f1a1cdc7ebd5650cef1551d9f0806` |
| 4 | `theorem` | [sheaf_of_spectra_has_hyperdescent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant9654f389e52e2ee0b2dd5d5b344544cf17db46c4065f88cf63f726cee5b5bb97.lean/declarations/sheaf-of-spectra-has-hyperdescent--8333e19b8ff91f0f32faede0.md) | 53 | `result-track:8333e19b8ff91f0f32faede068121fd7b131e4c39127f6316804e95ea2027cea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
