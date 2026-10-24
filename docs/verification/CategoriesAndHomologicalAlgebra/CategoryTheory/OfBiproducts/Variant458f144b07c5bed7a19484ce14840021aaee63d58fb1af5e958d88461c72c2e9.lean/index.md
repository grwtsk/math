# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfBiproducts.Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dbb1b9f5c5f92f92bfc99bb9222802dd2fc221a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dbb1b9f5c5f92f92bfc99bb9222802dd2fc221a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.EckmannHilton` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/leftadd--31f5f4ea278eaaf37f86fe39.md) | 45 | `declaration-track:31f5f4ea278eaaf37f86fe39327194bd9cc49d8dca177d0cbc73b081208012f4` |
| 2 | `def` | [rightAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/rightadd--0d617654a743ad920ab22453.md) | 51 | `declaration-track:0d617654a743ad920ab22453a1d9dfaf5d5b9cc193b8cdee4c23a2e74202fe35` |
| 3 | `theorem` | [isUnital_leftAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/isunital-leftadd--1181c84845e609d3280a2950.md) | 58 | `result-track:1181c84845e609d3280a2950a3efdd0ca0ed742907068dd7fb898f6a49dec504` |
| 4 | `theorem` | [isUnital_rightAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/isunital-rightadd--de505e176000bca1b201710f.md) | 74 | `result-track:de505e176000bca1b201710f302c36878dd98295800e2d860cd3ed31746d3c4d` |
| 5 | `theorem` | [distrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/distrib--80ed1b2ac60e513a77d774d5.md) | 90 | `result-track:80ed1b2ac60e513a77d774d538da999a5ea8a7a1d6e8193ef6f5515e58663cd7` |
| 6 | `def` | [addCommMonoidHomOfHasBinaryBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/addcommmonoidhomofhasbinarybiproducts--ae2778815cda1795a0230a1f.md) | 101 | `declaration-track:ae2778815cda1795a0230a1f43ac92d8c1297bdde80296243362e131ed96eba9` |
| 7 | `theorem` | [add_eq_right_addition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/add-eq-right-addition--add550d22fb8fb7a428cdc0b.md) | 120 | `result-track:add550d22fb8fb7a428cdc0bbe078ab31c57181a99e6014874c1d1ecf54c7fe8` |
| 8 | `theorem` | [add_eq_left_addition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/add-eq-left-addition--bf7386f3b5842173541b5195.md) | 123 | `result-track:bf7386f3b5842173541b5195b3d666f7e82b2adfc25f0c805763ebe4dd7cd1d3` |
| 9 | `theorem` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/add-comp--f70737af7b48edb31fbe1a52.md) | 127 | `result-track:f70737af7b48edb31fbe1a527348102d808314a2821721862317617852ae72e3` |
| 10 | `theorem` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/declarations/comp-add--77b7a592b6995d39de8e5223.md) | 132 | `result-track:77b7a592b6995d39de8e5223609da4a63d7c59a24b72290264f628ae01d5b707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
