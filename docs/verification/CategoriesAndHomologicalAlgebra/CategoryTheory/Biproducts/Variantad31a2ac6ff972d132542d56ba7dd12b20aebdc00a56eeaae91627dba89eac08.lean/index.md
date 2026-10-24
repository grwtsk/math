# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4cd1d14149d6e673ded55db5cbbc247687f4085",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4cd1d14149d6e673ded55db5cbbc247687f4085`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/instance--acf62a54dc4a39e09de8e560.md) | 30 | `declaration-track:acf62a54dc4a39e09de8e5601f2ac9ba20d42fec069e5285022132aee36636e6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/instance--4404724a9ccb390282090829.md) | 33 | `declaration-track:4404724a9ccb390282090829d5d5fd663ffb68d09a7c088315839a087e622918` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/binaryproductlimitcone--1af041115c82355056031e66.md) | 42 | `declaration-track:1af041115c82355056031e66c31e8dd20999fdbf0b395a09d4bfce7c4609facf` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/binaryproductlimitcone-cone-app-left--3f839f7426514b1e13c27597.md) | 59 | `result-track:3f839f7426514b1e13c27597312f271e70ba373766f6d1d4a7c9b39a46617aaa` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/binaryproductlimitcone-cone-app-right--4a0fda4218e03e3e408ecaa1.md) | 65 | `result-track:4a0fda4218e03e3e408ecaa10b1592c852c171ef5d5f2d3359737b2da2028b09` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/biprodisoprod--91be91c67178cd7c3820de06.md) | 74 | `declaration-track:91be91c67178cd7c3820de06da9d4a41b4d92c989e4ad17b2c23eddfe222b5b9` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/biprodisoprod-inv-comp-fst--4e5629984c6e17e1753fe9a4.md) | 80 | `result-track:4e5629984c6e17e1753fe9a48b0c3aa45fa354f1ea2772bf83eeb84a7bd298b5` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/biprodisoprod-inv-comp-snd--483e223f2da5b0d14b561fbd.md) | 86 | `result-track:483e223f2da5b0d14b561fbdc645ba4db14c9e424f176a738431d1c3c3eedba6` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/lift--07533c7e5b77a880c17089ae.md) | 99 | `declaration-track:07533c7e5b77a880c17089ae6421238e83052de5fc45921c4b2b2ed16426f6df` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/productlimitcone--b282731a85a8ab87b6a1fa99.md) | 113 | `declaration-track:b282731a85a8ab87b6a1fa9943b19b56a6a767d94aee63aa73016299a6885b60` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/biproductisopi--73bdf60750e261f60d76afaf.md) | 136 | `declaration-track:73bdf60750e261f60d76afafb56304448a8cedf05fb0cbbebecb54f281835276` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/declarations/biproductisopi-inv-comp--782fb659ba8dbc4e09201e0e.md) | 142 | `result-track:782fb659ba8dbc4e09201e0e74edeedad36c0918df6b47084658fdc5cd48c8a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
