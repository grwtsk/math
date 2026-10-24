# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1597c987680e3eebd698ee1aea900642a9e20c5a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1597c987680e3eebd698ee1aea900642a9e20c5a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Elements` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/isfiltered-costructuredarrow-yoneda-of-preservesfinitelimits--01a406dfa8b4d438d6df1ac2.md) | 65 | `result-track:01a406dfa8b4d438d6df1ac2065b61c1da367b4f434d145e8875f70ed762e623` |
| 2 | `def` | [functorToInterchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/functortointerchange--91ce462b7c8c28548ffbef78.md) | 84 | `declaration-track:91ce462b7c8c28548ffbef783dd608594744cbcf9a095447a78e965b7699cacb` |
| 3 | `def` | [functorToInterchangeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/functortointerchangeiso--1591dbf4b67833344c9398da.md) | 89 | `declaration-track:1591dbf4b67833344c9398da242b2e6a125273222a146e1effc4dc29a9b168ae` |
| 4 | `def` | [flipFunctorToInterchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/flipfunctortointerchange--73a60ecf0ca593ea52d7e920.md) | 98 | `declaration-track:73a60ecf0ca593ea52d7e920d01f2ed8df597fea98a7127acb898bbcb6b64698` |
| 5 | `def` | [isoAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/isoaux--9ee525e67ac6950404f3391e.md) | 104 | `declaration-track:9ee525e67ac6950404f3391effb6755b6797a03d8b1851615e0ed1c5aac2525f` |
| 6 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/iso--d02f746afb99b591a1aa71e2.md) | 111 | `declaration-track:d02f746afb99b591a1aa71e2280099b81db323d5efd7a95c6fe6a65f1c10e332` |
| 7 | `theorem` | [iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/iso-hom--312dd85e3d2167a429555af1.md) | 138 | `result-track:312dd85e3d2167a429555af19c4227df7e45a2f875b8dfc908320095c87781d0` |
| 8 | `theorem` | [isIso_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/isiso-post--3d9fdecf4e7f960f7e530a3b.md) | 171 | `result-track:3d9fdecf4e7f960f7e530a3b809c871d89d69eaea0b45ad4ffa3dded84c26d92` |
| 9 | `lemma` | [preservesFiniteLimits_of_isFiltered_costructuredArrow_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/preservesfinitelimits-of-isfiltered-costructuredarrow-yoneda--04a2b643880c297e23bc88d8.md) | 183 | `result-track:04a2b643880c297e23bc88d8db2200b800add9e99ec0fb3e78f286f5f16f2f0b` |
| 10 | `theorem` | [isFiltered_costructuredArrow_yoneda_iff_nonempty_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant077fbf9dffb6f2b1a865e92ea6ad808fa1ee929e4e10a4183e3cc3c40faf7968.lean/declarations/isfiltered-costructuredarrow-yoneda-iff-nonempty-preservesfinitelimits--7c9aed016aca34dddef3ba96.md) | 192 | `result-track:7c9aed016aca34dddef3ba96403ba4250cbd95cea61054ed04c1550e6c4287cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
