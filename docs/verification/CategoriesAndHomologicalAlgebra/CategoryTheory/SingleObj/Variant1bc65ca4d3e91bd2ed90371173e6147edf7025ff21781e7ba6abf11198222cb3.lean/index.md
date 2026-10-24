# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fac6c87de4886a54eec2faa5dfe43c7d0ca3413",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fac6c87de4886a54eec2faa5dfe43c7d0ca3413`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/declarations/instance--422005ac20543646a77d7670.md) | 48 | `declaration-track:422005ac20543646a77d767099b956a73828cfe994cdc68c23b06a0ea038479e` |
| 2 | `def` | [Types.sections.equivFixedPoints](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/declarations/types-sections-equivfixedpoints--af48597190b0ce34b5f4902d.md) | 66 | `declaration-track:af48597190b0ce34b5f4902dacba444c0ba5bdb4d17b655328f7a554334345ef` |
| 3 | `def` | [Types.limitEquivFixedPoints](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/declarations/types-limitequivfixedpoints--c06fa2b57253a9b791406c90.md) | 76 | `declaration-track:c06fa2b57253a9b791406c90e050ef24f958929c497bebd4cf5d20de37febdc9` |
| 4 | `lemma` | [Types.Quot.Rel.iff_orbitRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/declarations/types-quot-rel-iff-orbitrel--6d5fcfe7e651b8cd7b39c2f6.md) | 88 | `result-track:6d5fcfe7e651b8cd7b39c2f6b073e26365941e5ae70e3d35ba0656773285a23f` |
| 5 | `def` | [Types.Quot.equivOrbitRelQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/declarations/types-quot-equivorbitrelquotient--0bdfb1ebf9be3c5e20d65930.md) | 99 | `declaration-track:0bdfb1ebf9be3c5e20d65930c244c9db13f17d425a0f232ba163c1bdd942a18f` |
| 6 | `def` | [Types.colimitEquivQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1bc65ca4d3e91bd2ed90371173e6147edf7025ff21781e7ba6abf11198222cb3.lean/declarations/types-colimitequivquotient--295a60fbdb5ce78e26228106.md) | 111 | `declaration-track:295a60fbdb5ce78e262281063dfc0a4eff2c2ca47eaed6c57ade8adf64ee571f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
