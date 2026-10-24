# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e31bb968221f2c0d15705671e772c0607b9745cd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e31bb968221f2c0d15705671e772c0607b9745cd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Kan.HasKan` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Adjunction.isAbsoluteLeftKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/adjunction-isabsoluteleftkan--96aefa7b024abc85207ed1db.md) | 52 | `declaration-track:96aefa7b024abc85207ed1db439ba66542b791cc7924d44feb92561241c3a7c5` |
| 2 | `def` | [LeftExtension.IsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/leftextension-iskan-adjunction--26f7fe49d936a9a84a3f3e4e.md) | 83 | `declaration-track:26f7fe49d936a9a84a3f3e4edf5c3166765a1af056a4e427d795af7e35cf445f` |
| 3 | `def` | [LeftExtension.IsAbsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/leftextension-isabskan-adjunction--f0d64565488f488284696205.md) | 107 | `declaration-track:f0d64565488f48828469620580950eb413ffc022ba9f85f9c517480c94df3d0a` |
| 4 | `theorem` | [isLeftAdjoint_TFAE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/isleftadjoint-tfae--10a5037d53747d6f9803b8b4.md) | 111 | `result-track:10a5037d53747d6f9803b8b4dce7d62c235dff470ce947251a6dcb278f80566e` |
| 5 | `def` | [Adjunction.isAbsoluteLeftKanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/adjunction-isabsoluteleftkanlift--332134b9288aff634aacc605.md) | 132 | `declaration-track:332134b9288aff634aacc605c9ed89bcb69194f2d870a8209135b8f1c7b4fefe` |
| 6 | `def` | [LeftLift.IsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/leftlift-iskan-adjunction--f16473bc12d0c131cd2a8e0c.md) | 162 | `declaration-track:f16473bc12d0c131cd2a8e0c58c83f3ebd0e6c06474a923e2e5ee8dbd48352b6` |
| 7 | `def` | [LeftLift.IsAbsKan.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/leftlift-isabskan-adjunction--a5217d163ff6142c4adc94da.md) | 186 | `declaration-track:a5217d163ff6142c4adc94dad849000b035d3de396d02e559eedbfa57979152a` |
| 8 | `theorem` | [isRightAdjoint_TFAE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/isrightadjoint-tfae--113e52cf0719b5cf142c4095.md) | 190 | `result-track:113e52cf0719b5cf142c40950d6dd1e14d23f5f7f440cbb2535362ed3b45f1d6` |
| 9 | `def` | [isKanOfWhiskerLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/iskanofwhiskerleftadjoint--07626d882a625a4b46d8c32b.md) | 208 | `declaration-track:07626d882a625a4b46d8c32b3cf63816d3291217cb51df611c0d425e4824a73d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/declarations/instance--1e34faf637c9c6a623a363ac.md) | 263 | `declaration-track:1e34faf637c9c6a623a363ac2bd04764c2af5880bbfd495625b68a1307414259` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
