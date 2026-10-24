# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96c0af25daccbe0bc1968400b64d20d81041306c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96c0af25daccbe0bc1968400b64d20d81041306c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HomEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [structuredArrowEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/declarations/structuredarrowequiv--e109ad4db8096c5afa9cf542.md) | 41 | `declaration-track:e109ad4db8096c5afa9cf542f245ad415ff3eee67c2b368ae8f1477373012e57` |
| 2 | `lemma` | [induction_structuredArrow'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/declarations/induction-structuredarrow--0ef924f3eb6ad023c4744480.md) | 62 | `result-track:0ef924f3eb6ad023c474448009994559fb2716a28167e097642662d9cabac545` |
| 3 | `lemma` | [induction_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/declarations/induction-structuredarrow--5b17ee7c75ce70d91b791ae5.md) | 92 | `result-track:5b17ee7c75ce70d91b791ae509803b4ff56999d1a4a1a98836c87580294e7574` |
| 4 | `lemma` | [induction_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/declarations/induction-costructuredarrow--ea7904ec14750f38b2d14abc.md) | 120 | `result-track:ea7904ec14750f38b2d14abc4adc4222287d4a16e457daa5752b173ccc212ec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
