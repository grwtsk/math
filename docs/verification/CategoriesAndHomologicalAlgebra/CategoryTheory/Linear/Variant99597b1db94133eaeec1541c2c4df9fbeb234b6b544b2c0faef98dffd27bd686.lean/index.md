# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832294c8b587ef18ee22a0414fd77ece05366dad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832294c8b587ef18ee22a0414fd77ece05366dad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Center.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toCatCenter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/declarations/tocatcenter--348d918ec1378eb8d12758b5.md) | 31 | `declaration-track:348d918ec1378eb8d12758b5bc20323161a81a8d7fd54860ca62fc7bb1326155` |
| 2 | `def` | [smulOfRingMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/declarations/smulofringmorphism--a24bd09166f258cb38097797.md) | 54 | `declaration-track:a24bd09166f258cb380977977f05f6c59a48b66a95e5a547307f96c87a0bc108` |
| 3 | `lemma` | [smulOfRingMorphism_smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/declarations/smulofringmorphism-smul-eq--4fd22aa2900dac38e7954310.md) | 59 | `result-track:4fd22aa2900dac38e795431018d90194c74d1b508f27770bd17f08edbc2db79f` |
| 4 | `lemma` | [smulOfRingMorphism_smul_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/declarations/smulofringmorphism-smul-eq--d20a4671b02ed37705832827.md) | 64 | `result-track:d20a4671b02ed3770583282769e3b760d4713b59ea4cbc693199686422b19c15` |
| 5 | `def` | [homModuleOfRingMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/declarations/hommoduleofringmorphism--a8fec7cb4d4be66528580f36.md) | 74 | `declaration-track:a8fec7cb4d4be66528580f36731e793ac4966144a4cb359f96cb13ec323074e3` |
| 6 | `def` | [ofRingMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant99597b1db94133eaeec1541c2c4df9fbeb234b6b544b2c0faef98dffd27bd686.lean/declarations/ofringmorphism--65b3b47827a4e4dc02e562cc.md) | 96 | `declaration-track:65b3b47827a4e4dc02e562ccb23837380719bcb2a8e38d7b565e20c6ebdadb65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
