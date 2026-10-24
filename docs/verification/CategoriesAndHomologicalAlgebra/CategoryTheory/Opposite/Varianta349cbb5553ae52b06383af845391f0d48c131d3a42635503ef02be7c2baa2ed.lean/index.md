# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2010dd44138981b5ecd784c544e6cece8f98d223",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2010dd44138981b5ecd784c544e6cece8f98d223`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [EnrichedCategory.opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/enrichedcategory-opposite--79d555f09bfff8b62a13d471.md) | 40 | `declaration-track:79d555f09bfff8b62a13d471be8bb4351ecb292ece3c1669517419a92044c2f3` |
| 2 | `lemma` | [eComp_op_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/ecomp-op-eq--a3c988e27c20a98d17ae27a3.md) | 63 | `result-track:a3c988e27c20a98d17ae27a360b5055ccb5d1567ab17153c930c579e0931c6a0` |
| 3 | `lemma` | [tensorHom_eComp_op_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/tensorhom-ecomp-op-eq--5acd73e74f80c1bf5bd91e86.md) | 70 | `result-track:5acd73e74f80c1bf5bd91e86ec1388e17ab4b7dc765f6059ea6e76dd38ed1135` |
| 4 | `def` | [forgetEnrichmentOppositeEquivalence.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/forgetenrichmentoppositeequivalence-functor--f49fca0ad30a2da16a545809.md) | 85 | `declaration-track:f49fca0ad30a2da16a545809090657b5c71392058c45edbd4d2d7dcc3d7b3ba7` |
| 5 | `def` | [forgetEnrichmentOppositeEquivalence.inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/forgetenrichmentoppositeequivalence-inverse--5778c9d59c252a4ee24a5966.md) | 97 | `declaration-track:5778c9d59c252a4ee24a59669e9c9e31e5a50b0855aab72098e93e642c333585` |
| 6 | `def` | [forgetEnrichmentOppositeEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/forgetenrichmentoppositeequivalence--a73b1b80fe3894d4491a6db0.md) | 115 | `declaration-track:a73b1b80fe3894d4491a6db0a7eecce9cc8456c3b4e3b5fe957c562bcfbc72e5` |
| 7 | `instance` | [EnrichedOrdinaryCategory.opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/declarations/enrichedordinarycategory-opposite--17426315b4e5740ad1fe9e16.md) | 122 | `declaration-track:17426315b4e5740ad1fe9e1660050f988e4f91ce5559b485a647cd298fa0be56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
