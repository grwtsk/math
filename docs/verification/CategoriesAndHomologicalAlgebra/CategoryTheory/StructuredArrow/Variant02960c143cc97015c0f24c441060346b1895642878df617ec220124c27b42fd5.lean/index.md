# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "959198ca7fd8ac204b96540b81a9e1180e1ddc03",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `959198ca7fd8ac204b96540b81a9e1180e1ddc03`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HomEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [structuredArrowEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/declarations/structuredarrowequiv--3255a4dc321473d700df0af8.md) | 49 | `declaration-track:3255a4dc321473d700df0af81d68b761196e650ac5ba61b12fad1bef5d8398c0` |
| 2 | `lemma` | [induction_structuredArrow'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/declarations/induction-structuredarrow--20fcba8212b46b088638ea09.md) | 70 | `result-track:20fcba8212b46b088638ea09f364a5db6fb6dc41d6b8df9d3abc5c4ea6229ecd` |
| 3 | `lemma` | [induction_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/declarations/induction-structuredarrow--9f7ae21445957539642c429e.md) | 100 | `result-track:9f7ae21445957539642c429e2271cfe1108cc40d2f314829fb4036c1a5bc61d4` |
| 4 | `lemma` | [induction_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant02960c143cc97015c0f24c441060346b1895642878df617ec220124c27b42fd5.lean/declarations/induction-costructuredarrow--991dd5e43249259a3f17d947.md) | 128 | `result-track:991dd5e43249259a3f17d947b5bc973759c58fc3008e763dd2b65f178ba639a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
