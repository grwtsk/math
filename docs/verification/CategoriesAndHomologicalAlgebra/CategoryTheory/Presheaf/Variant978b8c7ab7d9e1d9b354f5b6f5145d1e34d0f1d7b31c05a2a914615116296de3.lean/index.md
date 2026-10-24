# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61042589d44a2e941d03d0766cd2f133a739fe5d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61042589d44a2e941d03d0766cd2f133a739fe5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Generator.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/freeyoneda--87e18e5ee7a997b79d2ff0c9.md) | 33 | `declaration-track:87e18e5ee7a997b79d2ff0c9a03b176ca232170d11b22f4f14b4300c7a7c189c` |
| 2 | `def` | [freeYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/freeyonedahomequiv--05860941fc95cd5f736c9efa.md) | 38 | `declaration-track:05860941fc95cd5f736c9efa49a1f4fa204601650f7096da33332b8757905897` |
| 3 | `lemma` | [freeYonedaHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/freeyonedahomequiv-comp--dd3e286b0b628b44f137fad0.md) | 51 | `result-track:dd3e286b0b628b44f137fad00f08451b2aa189007629c87cc052915bc2ee4c12` |
| 4 | `lemma` | [freeYonedaHomEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/freeyonedahomequiv-symm-comp--32836595717bfc0fe5755fd4.md) | 57 | `result-track:32836595717bfc0fe5755fd47aab4ed0d66ca0ad0c88d32fb4a4c11e965ca4ef` |
| 5 | `lemma` | [isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/isseparating--a8d464abd517cd6cf3b5d1b5.md) | 66 | `result-track:a8d464abd517cd6cf3b5d1b55c6d89adab6f0bd6409d1325ce055bf2fca67c55` |
| 6 | `lemma` | [isSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/isseparator--76d8ee68b5ebdc826cda19c6.md) | 76 | `result-track:76d8ee68b5ebdc826cda19c6853c210921e4e68992653791b8a5cda06711d2be` |
| 7 | `instance` | [hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3.lean/declarations/hasseparator--c3ff32fcadec1ea10b1b3d29.md) | 83 | `declaration-track:c3ff32fcadec1ea10b1b3d29df3c7a46a8823bdee799c929bce91e9e7edaefba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
