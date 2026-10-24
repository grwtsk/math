# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limit.Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a07c8cb717eac67ce8862f648e712c3225aa2d69",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a07c8cb717eac67ce8862f648e712c3225aa2d69`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [categoryObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/categoryobjects--f018aeb601d858bde89dee87.md) | 45 | `declaration-track:f018aeb601d858bde89dee87aef563718458b1aba5241df3de25bc68ed5da502` |
| 2 | `def` | [homDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/homdiagram--9ba9c65070d684f8e1a55876.md) | 52 | `declaration-track:9ba9c65070d684f8e1a558760a7822f0830e37d36d94973cca46c3192af82cb4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/instance--1e1646c26b81463373782044.md) | 68 | `declaration-track:1e1646c26b81463373782044d280bec4b700bc3ed48b500ae24477ed08291fd7` |
| 4 | `def` | [limitConeX](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/limitconex--4b21a110a2d2c78d6903ad5b.md) | 85 | `declaration-track:4b21a110a2d2c78d6903ad5b252329b3307f03be17a8c9bfc5bf867176199b81` |
| 5 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/limitcone--70c62115152fbef2f02d3b43.md) | 89 | `declaration-track:70c62115152fbef2f02d3b43958c7da150ac32959124291ce22a18f1a9589e9b` |
| 6 | `def` | [limitConeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/limitconelift--0e8a97402b19196abdc06279.md) | 101 | `declaration-track:0e8a97402b19196abdc062791434de369886cd7779e4a4271fb7e679fe93e3fe` |
| 7 | `theorem` | [limit_π_homDiagram_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/limit-homdiagram-eqtohom--2989b5545cc99d711967f3c8.md) | 123 | `result-track:2989b5545cc99d711967f3c8a9c545efaea66c07c5596373f3a17f23ea5dfb75` |
| 8 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/limitconeislimit--40e0f1ada775e67adbeaad44.md) | 131 | `declaration-track:40e0f1ada775e67adbeaad447c05b25337fabd42ae7a4e14df3789918125da82` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/instance--642356ef88bda44e684f651d.md) | 150 | `declaration-track:642356ef88bda44e684f651d2bb3bdf297e28ad0f4b63803130de6a353e6f1f7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant3f3b53bd8e596b7042f735bd5e9d1d32ee2b006ffc138a158e163f77e4caffd4.lean/declarations/instance--e078b253b909a2d7474fddca.md) | 154 | `declaration-track:e078b253b909a2d7474fddca32038f2cc17601ef291ce069dc39d72436754b26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
