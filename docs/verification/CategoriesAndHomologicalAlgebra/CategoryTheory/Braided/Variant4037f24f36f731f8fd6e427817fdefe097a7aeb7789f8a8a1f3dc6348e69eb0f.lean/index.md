# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braided.Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6532f579a3dc8b36347bd3c9decedb7d386c1c7b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6532f579a3dc8b36347bd3c9decedb7d386c1c7b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coevaluation_evaluation_braided'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/coevaluation-evaluation-braided--60ec65c4e7be010cc56eb898.md) | 20 | `result-track:60ec65c4e7be010cc56eb898f0e4dcbb1409e41299fd0053aa2ca0bb42f5834a` |
| 2 | `theorem` | [evaluation_coevaluation_braided'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/evaluation-coevaluation-braided--986cb96f9c2f9cdd3d122cdd.md) | 46 | `result-track:986cb96f9c2f9cdd3d122cdd0eeb7bff2cfc9e39f7070af8280c372354a44829` |
| 3 | `def` | [exactPairing_swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/exactpairing-swap--bad81a0f4dc39fc68a545061.md) | 69 | `declaration-track:bad81a0f4dc39fc68a545061e4044603df4534efaee15b86da405bf5a8705509` |
| 4 | `def` | [hasLeftDualOfHasRightDual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/hasleftdualofhasrightdual--b991bb5841fc9bb1287d87a9.md) | 76 | `declaration-track:b991bb5841fc9bb1287d87a90d3a8ac67e7276a54c6317a5228aba0474201c0e` |
| 5 | `def` | [hasRightDualOfHasLeftDual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/hasrightdualofhasleftdual--f8e5c8e918696119ed0f1a0f.md) | 81 | `declaration-track:f8e5c8e918696119ed0f1a0f9ecc430b675739882435426dec07cf4ffbe4232d` |
| 6 | `instance` | [leftRigidCategoryOfRightRigidCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/leftrigidcategoryofrightrigidcategory--f7298f552294c50e10a162e6.md) | 85 | `declaration-track:f7298f552294c50e10a162e6415dd29b24b870cd145c0a3318a444c932e471d6` |
| 7 | `instance` | [rightRigidCategoryOfLeftRigidCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/rightrigidcategoryofleftrigidcategory--7be38140b341a32cce4dffa5.md) | 88 | `declaration-track:7be38140b341a32cce4dffa5d525e82827cc7b8973f28bd41629a1b1522c6e88` |
| 8 | `instance` | [rigidCategoryOfRightRigidCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/rigidcategoryofrightrigidcategory--461dd6a09d46678e71e8b113.md) | 92 | `declaration-track:461dd6a09d46678e71e8b113e9af6c16b034d50f01d31bfbb2470e8fcb7f6ef1` |
| 9 | `instance` | [rigidCategoryOfLeftRigidCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant4037f24f36f731f8fd6e427817fdefe097a7aeb7789f8a8a1f3dc6348e69eb0f.lean/declarations/rigidcategoryofleftrigidcategory--9402432fa1bdca27e5ce72bd.md) | 97 | `declaration-track:9402432fa1bdca27e5ce72bd5490c1efd51dbfc33d6253b0e0c9eddee1e463b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
