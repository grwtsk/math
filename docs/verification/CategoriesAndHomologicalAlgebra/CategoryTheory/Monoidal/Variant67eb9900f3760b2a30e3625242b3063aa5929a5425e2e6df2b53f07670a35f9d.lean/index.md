# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce2a878cabd76a6434676b400c7688e792227ba9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce2a878cabd76a6434676b400c7688e792227ba9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.TensorProduct.Isometries` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/tensorobj--300e87c399877496b6303bb8.md) | 52 | `declaration-track:300e87c399877496b6303bb8f2bf7fe8871c0deca4364b71b1b1fbb6edb7dd9b` |
| 2 | `abbrev` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/tensorhom--e8633e1282909d0b3635e3f7.md) | 58 | `declaration-track:e8633e1282909d0b3635e3f76825ff95bad47c53812e7dedc193e82aedd187d6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/instance--cc9b4bb9eb2eccb9d2d5c1e3.md) | 69 | `declaration-track:cc9b4bb9eb2eccb9d2d5c1e3ac5cabdfd8b426e2089c157f254400851396d98e` |
| 4 | `theorem` | [toModuleCat_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/tomodulecat-tensor--04bd70d6c846772bbb6c5ecc.md) | 79 | `result-track:04bd70d6c846772bbb6c5eccaeca6d59c1040de5ef5e2912628e337f70cd250b` |
| 5 | `theorem` | [forget₂_map_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/forget-map-associator-hom--3079658d435f2f0c5415f6be.md) | 82 | `result-track:3079658d435f2f0c5415f6becc96ad29d9dfc347a8e021fa3b8de01d7acaff85` |
| 6 | `theorem` | [forget₂_map_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/forget-map-associator-inv--e6dca6c6a5eff514f639eaa8.md) | 86 | `result-track:e6dca6c6a5eff514f639eaa8c701eaa327715c77b3e97787579546eb0580226b` |
| 7 | `instance` | [instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/instmonoidalcategory--a23488f3b445b5b8ab25b5cb.md) | 90 | `declaration-track:a23488f3b445b5b8ab25b5cb221e3e89226917173b2c0d58d2e7a7f566d01533` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/declarations/example--a93d991275e0c180b4bf48d4.md) | 118 | `declaration-track:a93d991275e0c180b4bf48d4037389f8b23ebfa05fba9028c87c876c86385422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
