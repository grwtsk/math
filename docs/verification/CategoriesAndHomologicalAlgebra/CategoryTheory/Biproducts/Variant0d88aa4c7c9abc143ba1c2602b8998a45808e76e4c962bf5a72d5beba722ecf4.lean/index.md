# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9480fd6a89960d383da1407ca7a9efeb0b0edfe",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9480fd6a89960d383da1407ca7a9efeb0b0edfe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortExact.Abelian` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/instance--fd676bb49d879451b9668512.md) | 32 | `declaration-track:fd676bb49d879451b96685126f00d4812dac03a864b36fd4df67a3982852d85e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/instance--c92b0d83007aa74e006876a9.md) | 35 | `declaration-track:c92b0d83007aa74e006876a92368262e3efc1960ff20289bab9b15c440213b95` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/binaryproductlimitcone--c8f8ca412092bb9a4fce2aac.md) | 43 | `declaration-track:c8f8ca412092bb9a4fce2aacd0671d51ce613bf61fd67fa5278dfa8bd1457c0c` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/binaryproductlimitcone-cone-app-left--3d8b18e86bf8d1390bfd6c3b.md) | 60 | `result-track:3d8b18e86bf8d1390bfd6c3b506d9a65ef5c31e7458f178213caf0c75f46529d` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/binaryproductlimitcone-cone-app-right--bca5c56b6a33180fcab0bbe0.md) | 66 | `result-track:bca5c56b6a33180fcab0bbe01b17c459780e59a6ed7b7413a763a1b8ead87f1b` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/biprodisoprod--b0730876378c22e8410eba67.md) | 75 | `declaration-track:b0730876378c22e8410eba671674732b4dcc6180487a7fcedf65e6488af3c376` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/biprodisoprod-inv-comp-fst--1ad3bd9065593ad39d5980de.md) | 81 | `result-track:1ad3bd9065593ad39d5980de41a3b05aa550f67ec05fa9f084bb719dcfe1e458` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/biprodisoprod-inv-comp-snd--bcc6b96e2619f7fb537d3e6c.md) | 87 | `result-track:bcc6b96e2619f7fb537d3e6cfda0eb9ebdca02c975cbd3fb2d3336b89409b45f` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/lift--35f84ead85689f82ca7dd409.md) | 100 | `declaration-track:35f84ead85689f82ca7dd4090a063eec8e99032c7188d562651c48fbc5adb770` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/productlimitcone--a05d79683f8db057eb6e6e36.md) | 113 | `declaration-track:a05d79683f8db057eb6e6e36beddbf0307468790b56f9f4761457243da89ca03` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/biproductisopi--5ddb2b473b8ae9cc6f328157.md) | 136 | `declaration-track:5ddb2b473b8ae9cc6f328157a1aab80433732e4547f1777e4b4b15a6ac6f7ca2` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/biproductisopi-inv-comp--cec274c68c0930831b33369b.md) | 142 | `result-track:cec274c68c0930831b33369bcd31b339edb482e04205968ce7471ef5225fe6df` |
| 13 | `def` | [lequivProdOfRightSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/lequivprodofrightsplitexact--9750810f9dba89c2fb82c78c.md) | 160 | `declaration-track:9750810f9dba89c2fb82c78cb7dac79b31e21839ae8e852de2c3f31592f0152d` |
| 14 | `def` | [lequivProdOfLeftSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/declarations/lequivprodofleftsplitexact--7335731477159deefd43eb50.md) | 170 | `declaration-track:7335731477159deefd43eb5047e870f4e01287648213c1816d9dd0b2be093d65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
