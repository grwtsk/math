# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PEmpty.Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "191e450550f611714117ee894292c341a123baab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `191e450550f611714117ee894292c341a123baab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.DiscreteCategory` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [emptyEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/declarations/emptyequivalence--8926fceb95fedf9197337474.md) | 25 | `declaration-track:8926fceb95fedf919733747476df30fac3544cb9da98297501c51f00f31fb1c3` |
| 2 | `def` | [empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/declarations/empty--8ad9cd69df5019d4212bb43b.md) | 41 | `declaration-track:8ad9cd69df5019d4212bb43b9ddf7e93744787ad7a0308def6a16b407e9dfa2a` |
| 3 | `def` | [emptyExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/declarations/emptyext--6cb7302b199a5106a0013ae0.md) | 48 | `declaration-track:6cb7302b199a5106a0013ae0cfa153fa28b464626e3c0478209968c108b72364` |
| 4 | `def` | [uniqueFromEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/declarations/uniquefromempty--41077879a9a19d2955d81bf0.md) | 55 | `declaration-track:41077879a9a19d2955d81bf062526fad1909ed8a763cee3b03d96c56bfbda88a` |
| 5 | `theorem` | [empty_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5.lean/declarations/empty-ext--aaeb20e55f713a6b862fe406.md) | 62 | `result-track:aaeb20e55f713a6b862fe406d03f9c0cb00909d77db4462aba4be3368c7c2770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
