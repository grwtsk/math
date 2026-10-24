# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Localization.Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aca0b089d29d7b4d937856bda311eded491da30",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aca0b089d29d7b4d937856bda311eded491da30`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Bousfield` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w--ab6656703d65fdf4d0c5f0e3.md) | 36 | `declaration-track:ab6656703d65fdf4d0c5f0e31978463e8ca84f6fa91d728f53d9ef9861282618` |
| 2 | `lemma` | [W_eq_W_range_sheafToPresheaf_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-eq-w-range-sheaftopresheaf-obj--cd679c4ec893387bd6f5a87d.md) | 39 | `result-track:cd679c4ec893387bd6f5a87d8720eb5a2ff6f6d80fbc89b57cbd661929b577d0` |
| 3 | `lemma` | [W_sheafToPreheaf_map_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-sheaftopreheaf-map-iff-isiso--e6b281d69929fff7d1e5c0c8.md) | 49 | `result-track:e6b281d69929fff7d1e5c0c86d37a19a305988be38f3ab04ea4667fafc409889` |
| 4 | `lemma` | [W_adj_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-adj-unit-app--666a80bd03abc47139b9b6c5.md) | 58 | `result-track:666a80bd03abc47139b9b6c5b4e377ce4ad874296529a0fffab7488620a0e235` |
| 5 | `lemma` | [W_iff_isIso_map_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-iff-isiso-map-of-adjunction--0ca30014cfa8edb9cc0c1a9a.md) | 62 | `result-track:0ca30014cfa8edb9cc0c1a9af98c4f0badfbb1d77700f29fdb2ac3c4f3f16898` |
| 6 | `lemma` | [W_eq_inverseImage_isomorphisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-eq-inverseimage-isomorphisms-of-adjunction--5707948b45683fa9c5ee6586.md) | 68 | `result-track:5707948b45683fa9c5ee6586e56ef579b6e48443a3563349e9fa1863f8f935c7` |
| 7 | `lemma` | [W_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-tosheafify--b26a79b9fd2ed4235ffab8ba.md) | 79 | `result-track:b26a79b9fd2ed4235ffab8ba5b7cf590efe0f370bac8f22640b1e62a79dbbcda` |
| 8 | `lemma` | [W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-iff--5ea6d85ed77851e305d1bdcc.md) | 82 | `result-track:5ea6d85ed77851e305d1bdccaab78d06ee0e3fc273c26f9b39a0904a78a8439d` |
| 9 | `lemma` | [W_eq_inverseImage_isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/w-eq-inverseimage-isomorphisms--f1b9f01f1ef5c53b6f2fbfdc.md) | 87 | `result-track:f1b9f01f1ef5c53b6f2fbfdc65fa4bf14c1719b817388976f4006f026ec83b86` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant23c199ff44adc04bdc05025c1252024a0a83ce0fed3f5bbd541cd5fb121440f1.lean/declarations/instance--0afa4f2a2b14dc367293cfef.md) | 91 | `declaration-track:0afa4f2a2b14dc367293cfef148e00af00851e33e7685ed1d526205f3bc6e6ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
