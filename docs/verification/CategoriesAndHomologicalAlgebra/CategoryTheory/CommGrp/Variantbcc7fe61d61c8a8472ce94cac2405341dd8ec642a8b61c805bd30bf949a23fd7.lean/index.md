# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "674b2d5fc2c764f62cae9875782ecc4c05568686",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `674b2d5fc2c764f62cae9875782ecc4c05568686`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CommGrp_` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/declarations/tocommgrp--8e22abfc8e7a56e514d90f9b.md) | 31 | `declaration-track:8e22abfc8e7a56e514d90f9b85ba80c83930e7bd7e689052b95ae68c0765da45` |
| 2 | `theorem` | [monoidal_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/declarations/monoidal-hom-ext--2d3125adb83cabc72ec0fa4b.md) | 46 | `result-track:2d3125adb83cabc72ec0fa4b1cb3d7679743b656f77429974874984e3e1b3f87` |
| 3 | `def` | [commGrpEquivalenceAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/declarations/commgrpequivalenceaux--3c89ce7cdc0ffd03df98bae6.md) | 54 | `declaration-track:3c89ce7cdc0ffd03df98bae6323e4c001715cd0971a65f86ce792cfbf837dbb4` |
| 4 | `def` | [commGrpEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7.lean/declarations/commgrpequivalence--c8f861d5228abd24b3be42d4.md) | 74 | `declaration-track:c8f861d5228abd24b3be42d4e158119944e63db971cc5ba972aa54fe4e0a005a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
