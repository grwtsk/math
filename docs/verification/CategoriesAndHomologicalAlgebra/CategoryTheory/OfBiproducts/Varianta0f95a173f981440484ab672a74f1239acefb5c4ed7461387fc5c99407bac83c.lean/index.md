# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfBiproducts.Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eae25b55602d7d2abdaa8d4dea3ee63d1e6bf814",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eae25b55602d7d2abdaa8d4dea3ee63d1e6bf814`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.EckmannHilton` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/leftadd--095516c40f8bf9085ae3de21.md) | 37 | `declaration-track:095516c40f8bf9085ae3de21ed5799304808902cd0b8a1c5ea1546d37b31e99c` |
| 2 | `def` | [rightAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/rightadd--765dda46bdba9bc800c6cb33.md) | 43 | `declaration-track:765dda46bdba9bc800c6cb3349fbd2073df553010f07a17dc624c6139b753855` |
| 3 | `theorem` | [isUnital_leftAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/isunital-leftadd--a7f21126956f76ac32b2e99c.md) | 50 | `result-track:a7f21126956f76ac32b2e99c2199e585ff29cbd18b79b9f4abdc618f11c74e2c` |
| 4 | `theorem` | [isUnital_rightAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/isunital-rightadd--03179d6f6fd9537f4f935bdf.md) | 66 | `result-track:03179d6f6fd9537f4f935bdf7dbaab578cad671f6cfc1519b18a8965d415fea0` |
| 5 | `theorem` | [distrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/distrib--0bfbf6236c72946951ca175e.md) | 82 | `result-track:0bfbf6236c72946951ca175e3447868da3eca457a16999077b81e900472c8477` |
| 6 | `def` | [addCommMonoidHomOfHasBinaryBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/addcommmonoidhomofhasbinarybiproducts--5db2359d909603ca17b327f7.md) | 93 | `declaration-track:5db2359d909603ca17b327f7cae694a776d08889a8c56654ee7aebd28891261c` |
| 7 | `theorem` | [add_eq_right_addition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/add-eq-right-addition--72ccebe2ef010e5ff8270f70.md) | 112 | `result-track:72ccebe2ef010e5ff8270f7078780abcc9e0ba15a5546371cb05efca4467f693` |
| 8 | `theorem` | [add_eq_left_addition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/add-eq-left-addition--ee430a80943709cf101bf176.md) | 115 | `result-track:ee430a80943709cf101bf176f1b8e40274143b5df535cfe369ba2d32efffb713` |
| 9 | `theorem` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/add-comp--9f0dbd2a05c28dbc94019442.md) | 119 | `result-track:9f0dbd2a05c28dbc94019442a17050bf5076da332bcaf9bef4cdbe7584d467eb` |
| 10 | `theorem` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/declarations/comp-add--bbd85175e577c2fa4bc9fa9d.md) | 124 | `result-track:bbd85175e577c2fa4bc9fa9d6deb1c2168803e86a46f8a0e7a58de8b7e989990` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
