# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7af38879846e3c7e6b47bf151bff05367cdb7a3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7af38879846e3c7e6b47bf151bff05367cdb7a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/declarations/instance--8e7ad6544e214413f444aa5c.md) | 31 | `declaration-track:8e7ad6544e214413f444aa5c67d26196f114372c1b933d1e2d9cb446eea2dd15` |
| 2 | `lemma` | [NatTrans.mono_iff_mono_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/declarations/nattrans-mono-iff-mono-app--8284cf6e3b323364c26da048.md) | 34 | `result-track:8284cf6e3b323364c26da0484289c7b07a091aa70ef59eb2f7a9fc1b88c9a407` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/declarations/instance--a38cfea301e573f6eb8af3d5.md) | 37 | `declaration-track:a38cfea301e573f6eb8af3d50b3dc92f0223a1f7067f91057729ed1026837825` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/declarations/instance--77b76a2772b43869a0adf18a.md) | 48 | `declaration-track:77b76a2772b43869a0adf18a0c97451323927f8a60ad9c06dbbb07a68e1f39a8` |
| 5 | `lemma` | [NatTrans.epi_iff_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/declarations/nattrans-epi-iff-epi-app--f3db4b4961b8db114f847d7e.md) | 51 | `result-track:f3db4b4961b8db114f847d7eca0f9dc3eb330326299cf71caa3bf80852b9c878` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant2b02d61486c153298dd88fc4643e137ab555915be6b66f11f73e190027a88827.lean/declarations/instance--1e5e2c9861e30e70640ebc16.md) | 54 | `declaration-track:1e5e2c9861e30e70640ebc16ef4a1ffff7097dde3f8a5e66767f0635a7aa0e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
