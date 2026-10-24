# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WellOrderContinuous.Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74075510de60828609d168ccf6fb97b3ca3def52",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74075510de60828609d168ccf6fb97b3ca3def52`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.IsLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.PrincipalSeg` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.InitialSeg` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Limit` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.InitialSeg` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.LinearLocallyFinite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsWellOrderContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/iswellordercontinuous--98b0a93a1c86c5cc0b1d07a5.md) | 38 | `declaration-track:98b0a93a1c86c5cc0b1d07a56adfcc6591c358f8fa0b36a06e1efda6f2efa730` |
| 2 | `def` | [isColimitOfIsWellOrderContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/iscolimitofiswellordercontinuous--de3414d1a737f7a9115d63dc.md) | 44 | `declaration-track:de3414d1a737f7a9115d63dc9a303ddeb5d399d9c1a2342e6551098ca100c104` |
| 3 | `def` | [isColimitOfIsWellOrderContinuous'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/iscolimitofiswellordercontinuous--ab05e589563862f2a2da5e6e.md) | 52 | `declaration-track:ab05e589563862f2a2da5e6e5a400e665af398ce2c056a7d9817435c97871ead` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/instance--26e0f78371d64c7e44d10859.md) | 58 | `declaration-track:26e0f78371d64c7e44d10859acd8199102495761a78bd9e0c29d9bc360cb8af9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/instance--1de96838d5201584a157710d.md) | 61 | `declaration-track:1de96838d5201584a157710d956d91099fe8ad38a3d2c81a23c4ead21f32ba5e` |
| 6 | `lemma` | [isWellOrderContinuous_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/iswellordercontinuous-of-iso--61dd1289981ca7b17ce96807.md) | 64 | `result-track:61dd1289981ca7b17ce9680760ebe20aac64df3a55a7b4728fdb76e21a28956c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/instance--700f17b84c9acf6132cd4fe9.md) | 71 | `declaration-track:700f17b84c9acf6132cd4fe949a3a2bbd48e47a124de8f7fc3a156009e1d1b93` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/instance--6f682d7f2fb6f33320464208.md) | 77 | `declaration-track:6f682d7f2fb6f33320464208d1cd3b635cfd15162378a62fddcab4918f9a0474` |
| 9 | `instance` | [IsWellOrderContinuous.restriction_setIci](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/declarations/iswellordercontinuous-restriction-setici--b660b1580d358048b9a1cedb.md) | 82 | `declaration-track:b660b1580d358048b9a1cedb2aa8d9192b11e9dfa7e5d40dd2e831864031db9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
