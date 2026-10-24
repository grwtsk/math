# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafEquiv.Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40fe5d45929255c6f4473bb27d4334e220d2bde1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40fe5d45929255c6f4473bb27d4334e220d2bde1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isIso_ranCounit_app_of_isDenseSubsite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/declarations/isiso-rancounit-app-of-isdensesubsite--5f5373391fdd41a9a7267f31.md) | 45 | `result-track:5f5373391fdd41a9a7267f310f23ebeab0b7b8d84c76f2784970213c0494fa28` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/declarations/instance--88cb3f4f5842afa32162b4d8.md) | 108 | `declaration-track:88cb3f4f5842afa32162b4d8448dd18473dfcf5fddb5793218102e4c0e2f65eb` |
| 3 | `def` | [sheafEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/declarations/sheafequiv--9939ce7af2e57946a304343e.md) | 127 | `declaration-track:9939ce7af2e57946a304343e77bae971fb4e7287c030bbf538254a6257415b0f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/declarations/instance--008e8524799c366443574e5d.md) | 130 | `declaration-track:008e8524799c366443574e5d86cc803d1c8fbb8bc848fc05f648e49f866d3809` |
| 5 | `abbrev` | [sheafEquivSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/declarations/sheafequivsheafificationcompatibility--b21f4e72e78ef10d32fe11dc.md) | 138 | `declaration-track:b21f4e72e78ef10d32fe11dc3459a6d8e3e24d68c5548471ba7f63de1af2e196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
