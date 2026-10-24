# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BundledHom.Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29d0415210706b4a4f19ceeeb4de7b02b9e7fe54",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29d0415210706b4a4f19ceeeb4de7b02b9e7fe54`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/bundledhom--045d07e7340d3456bf969a0e.md) | 36 | `declaration-track:045d07e7340d3456bf969a0e374df369b13bcfbccfafc9e536e1fe0ab931a905` |
| 2 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/category--fab015275c5ffd70dc4d1d68.md) | 68 | `declaration-track:fab015275c5ffd70dc4d1d68e0eb61f59876c3ed11642215a6365bcc67f61002` |
| 3 | `instance` | [hasForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/hasforget--50245c78a3c627ec84786ef1.md) | 77 | `declaration-track:50245c78a3c627ec84786ef1eca7d04d4ebe84aa331c26dd49fd78c6c272705c` |
| 4 | `def` | [mkHasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/mkhasforget--8765c6b80c070df7c1d71d03.md) | 96 | `declaration-track:8765c6b80c070df7c1d71d03b7ef470bc43dbf9a6f056875c4796df9fa4e8917` |
| 5 | `abbrev` | [MapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/maphom--655e2c4c4059547681ea4d9f.md) | 114 | `declaration-track:655e2c4c4059547681ea4d9f491160ce79b0718a67fec38f8e3ed71d83322481` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/map--3c3be121f747d5293b398b23.md) | 122 | `declaration-track:3c3be121f747d5293b398b234a7cb4288eb276dc8c015284ce6273981c5cb0d7` |
| 7 | `class` | [ParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/parentprojection--c826ff4421d01fc89f6ba634.md) | 137 | `declaration-track:c826ff4421d01fc89f6ba634b341c217dd9c52fda131a80de18c59fce0804004` |
| 8 | `instance` | [bundledHomOfParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/bundledhomofparentprojection--7cd6c0b8e1553e7b107602cd.md) | 143 | `declaration-track:7cd6c0b8e1553e7b107602cd2fe61c9b922bb8a7f7192161f3bf1d3c7e931363` |
| 9 | `instance` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/forget--5b62c8fb4c44df734514a320.md) | 147 | `declaration-track:5b62c8fb4c44df734514a320ff8e23c1b0af8e1df8342fff4166e49f4277d1f5` |
| 10 | `instance` | [forget₂_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant1c792d63c978f1d8257c1f991828b81afb40dd0ad71cc4719e585f66bd73e8a2.lean/declarations/forget-full--e96b84e9bc326e1fa4b0aa4c.md) | 153 | `declaration-track:e96b84e9bc326e1fa4b0aa4c75d8c06f016f3e1e481df6907d74b47daa3a34f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
