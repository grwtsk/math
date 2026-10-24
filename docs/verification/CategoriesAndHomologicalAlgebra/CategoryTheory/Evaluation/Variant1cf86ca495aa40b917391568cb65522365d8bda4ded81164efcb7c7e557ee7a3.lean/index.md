# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffb59cad14a86a8ad521b7ce5a48107dcd02a5b7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffb59cad14a86a8ad521b7ce5a48107dcd02a5b7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/evaluationleftadjoint--573facd9cf0a862106b8c06e.md) | 34 | `declaration-track:573facd9cf0a862106b8c06e3bed3cb1bb41e0b3ee04a5f61ab85f19312b0ba4` |
| 2 | `def` | [evaluationAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/evaluationadjunctionright--f6c111a2455dbc7e4fb28897.md) | 48 | `declaration-track:f6c111a2455dbc7e4fb28897c498d20467a705a2fffe8a35cf29a259ad67d5ed` |
| 3 | `instance` | [evaluationIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/evaluationisrightadjoint--e83bd8389e451bb60aecb3d3.md) | 73 | `declaration-track:e83bd8389e451bb60aecb3d39e35a6aa0920b3f862fe453c06eb0a8b411d46a0` |
| 4 | `theorem` | [NatTrans.mono_iff_mono_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/nattrans-mono-iff-mono-app--3742cee510d0da09c53e5566.md) | 78 | `result-track:3742cee510d0da09c53e5566ccd3f179f82219827fe5f7790dfa5693f39d5a1d` |
| 5 | `def` | [evaluationRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/evaluationrightadjoint--9a10c498038545a46bae2b01.md) | 93 | `declaration-track:9a10c498038545a46bae2b01efbdf601634bd756fa976748ee981a343f8db5b8` |
| 6 | `def` | [evaluationAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/evaluationadjunctionleft--087d14fba324168bc136bec5.md) | 107 | `declaration-track:087d14fba324168bc136bec5798d24496fbdee3a975cd40245d361aaf9be42fb` |
| 7 | `instance` | [evaluationIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/evaluationisleftadjoint--704bc426d6351432f9c7a9f0.md) | 130 | `declaration-track:704bc426d6351432f9c7a9f0241f18c5dfa48c24ac2e3b49dd9c13758c2645cf` |
| 8 | `theorem` | [NatTrans.epi_iff_epi_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/declarations/nattrans-epi-iff-epi-app--096cfb3ad704c99f13be3eb6.md) | 135 | `result-track:096cfb3ad704c99f13be3eb6c767a6b8075fc08d468b651bebcc7141afbd7185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
