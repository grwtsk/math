# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Topos.Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dabe9745651e76c4fe17193cf36439cac7ce2de",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dabe9745651e76c4fe17193cf36439cac7ce2de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Mathlib.Coherence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BundledKnowledgeTopos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/bundledknowledgetopos--741b0786c2fe1dce89ada15d.md) | 16 | `declaration-track:741b0786c2fe1dce89ada15d38168ae7bc9c453a3fd70ad358c187764b10b238` |
| 2 | `def` | [BundledKnowledgeTopos.omegaIsHeyting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/bundledknowledgetopos-omegaisheyting--d0da1b08ed24731dec3764ed.md) | 25 | `declaration-track:d0da1b08ed24731dec3764ed127b10309d69a4e23484d48d5b01b14185453516` |
| 3 | `theorem` | [BundledKnowledgeTopos.not_boolean_if_heyting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/bundledknowledgetopos-not-boolean-if-heyting--1d7f2f6edf0ebc6b6b0d139e.md) | 29 | `result-track:1d7f2f6edf0ebc6b6b0d139ebd288d3e0e0634b16754f8e069be6c936c204428` |
| 4 | `structure` | [KnowledgeToposArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/knowledgetoposarrow--90e993af5ebc69e00722fe85.md) | 36 | `declaration-track:90e993af5ebc69e00722fe8550b0149dc7cbd52eca36e7928b81d7ebdf4d505e` |
| 5 | `def` | [KnowledgeToposArrow.inverse_image_left_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/knowledgetoposarrow-inverse-image-left-exact--a8615ed489061ba45a4bd7de.md) | 46 | `declaration-track:a8615ed489061ba45a4bd7dedcfc9d7e427500d10705b976c928bcaa7f563160` |
| 6 | `structure` | [ToposCategoryBoundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/toposcategoryboundary--c93bd41ae68f5a1f65f29d0d.md) | 51 | `declaration-track:c93bd41ae68f5a1f65f29d0dcd74fd4b6a1e73b8eb964c260e309f5f6415e5a2` |
| 7 | `def` | [ToposCategoryBoundary.hom_inverse_image_left_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Topos/Variant031824b10aebeda18fc1ca0c8eca970e462eb5cb160e6193c17b8b0dede002a7.lean/declarations/toposcategoryboundary-hom-inverse-image-left-exact--5c3f87a6cefcd88b88357600.md) | 61 | `declaration-track:5c3f87a6cefcd88b8835760078b2b1b6d96c10a4b19f60ff0773ae7dff63f5ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
