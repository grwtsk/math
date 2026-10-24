# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TopComparison.Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f99212d28e0c8697c9f620c3a5270bc659dc041",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f99212d28e0c8697c9f620c3a5270bc659dc041`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Yoneda` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorsThrough_of_pullbackCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/factorsthrough-of-pullbackcondition--75541a188f63240f6d0f8f65.md) | 43 | `result-track:75541a188f63240f6d0f8f650961473e8e33ae60cbcc3f04b8b6785217eb3ab2` |
| 2 | `theorem` | [equalizerCondition_yonedaPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/equalizercondition-yonedapresheaf--1092a03bd9e1b39f1b3be8a2.md) | 68 | `result-track:1092a03bd9e1b39f1b3be8a25e8641d59f120a6405b542c8b5a7e025daf7c888` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/instance--46f7044637a943a223af2074.md) | 96 | `declaration-track:46f7044637a943a223af207496a0376ed77cbd071efe4a8da257db660e933359` |
| 4 | `def` | [TopCat.toSheafCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/topcat-tosheafcomphauslike--109511935fac92a5fad597d6.md) | 111 | `declaration-track:109511935fac92a5fad597d62b861a260c1f437110d85b2739345cecdb8d02ed` |
| 5 | `def` | [topCatToSheafCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/topcattosheafcomphauslike--00a2f4f2da0187ea984a80ce.md) | 129 | `declaration-track:00a2f4f2da0187ea984a80ce18ae1695dae78116bbd8ab18cc56f15b69f195fb` |
| 6 | `abbrev` | [TopCat.toCondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/topcat-tocondensedset--09c574a67cc27992bb8d4d1e.md) | 141 | `declaration-track:09c574a67cc27992bb8d4d1eb3c7f5ee32e244b4f6ecc59748bf8efd60e44aad` |
| 7 | `abbrev` | [topCatToCondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/declarations/topcattocondensedset--d953b134135138947e05121e.md) | 147 | `declaration-track:d953b134135138947e05121e6772c1bc0c735dc3685fa2f0d7854f72e84b06b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
