# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "723c5a92599e2021e85103aa752e4ad73745c718",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `723c5a92599e2021e85103aa752e4ad73745c718`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CatCommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/anonymous--444f7dd8e06dc87d4e8b6597.md) | 51 | `declaration-track:444f7dd8e06dc87d4e8b65971b5851c0f7a3cf63d7a1638fa92338376fe5c532` |
| 2 | `lemma` | [ε_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/app--9a9ba13daae030c14143e62c.md) | 57 | `result-track:9a9ba13daae030c14143e62c89531358e5c36f9738c1d1453acd68e65525d5d7` |
| 3 | `def` | [η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/anonymous--811ec9b709602bec7714facd.md) | 68 | `declaration-track:811ec9b709602bec7714facd31864340ce8e3a2c9956cffe85b2eadf32827001` |
| 4 | `lemma` | [η_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/app--f5d5e5127094b06e02d6310a.md) | 73 | `result-track:f5d5e5127094b06e02d6310ad48b6f5de25b6a734af0d7e30bde3506a9cb7d82` |
| 5 | `def` | [localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/localization--e011b73344a81645e0eb1f79.md) | 91 | `declaration-track:e011b73344a81645e0eb1f79793476bba045c856ffbc92915728f41aab6f896b` |
| 6 | `lemma` | [localization_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/localization-unit-app--481f413fcaaa06de359340d9.md) | 122 | `result-track:481f413fcaaa06de359340d9dc781fc31f934dc78b31d394c054d6dd65045ac5` |
| 7 | `lemma` | [localization_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/localization-counit-app--c3154f367dc2c217a8f1600e.md) | 129 | `result-track:c3154f367dc2c217a8f1600ef0f5eba22f7d54e118937a6c0f2f22b0429d4109` |
| 8 | `lemma` | [isLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/declarations/islocalization--3fc0e19afa89b66cb965c4f2.md) | 139 | `result-track:3fc0e19afa89b66cb965c4f2c2e0f421c4a884ae455b421751cb26612609c1f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
