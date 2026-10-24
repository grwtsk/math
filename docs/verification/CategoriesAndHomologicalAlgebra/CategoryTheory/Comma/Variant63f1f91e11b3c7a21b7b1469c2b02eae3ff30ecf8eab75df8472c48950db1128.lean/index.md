# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5a5e4a688cbc14ef48a67648694a734977a53e7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5a5e4a688cbc14ef48a67648694a734977a53e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.LocallySmall` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/projectsubobject--b5d869093fd0f45531577da8.md) | 57 | `declaration-track:b5d869093fd0f45531577da8c47778718d857d3d083ad6a274195ddb11854ef0` |
| 2 | `theorem` | [projectSubobject_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/projectsubobject-mk--44a70f5821cfde81fb588321.md) | 65 | `result-track:44a70f5821cfde81fb5883217acedc4127950a45644a7d63b0cc18343e5e4cea` |
| 3 | `theorem` | [projectSubobject_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/projectsubobject-factors--26674d8e06141286fce5377d.md) | 70 | `result-track:26674d8e06141286fce5377d65872117b23e3ab6849cb939b0df2066c5e44aa9` |
| 4 | `def` | [liftSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/liftsubobject--6c030483387f3d464079722e.md) | 82 | `declaration-track:6c030483387f3d464079722e9b90ab7a8ec5def6c7962e57865f8aaca413664c` |
| 5 | `theorem` | [lift_projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/lift-projectsubobject--a51c11123168761770bcbb23.md) | 88 | `result-track:a51c11123168761770bcbb2360fb91d683a6beaa0f798c4a542726885f125428` |
| 6 | `def` | [subobjectEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/subobjectequiv--b24e8a5fee40bc89e2c3d708.md) | 104 | `declaration-track:b24e8a5fee40bc89e2c3d7082d3066a279928c8852fee5b2550cf83ab5083ffd` |
| 7 | `instance` | [wellPowered_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/wellpowered-structuredarrow--11918c49dfcf6b1cdf8f785b.md) | 123 | `declaration-track:11918c49dfcf6b1cdf8f785b0b6fdc20a45be988bf38b7743346a37102939404` |
| 8 | `def` | [projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/projectquotient--21e3f361c22368c3f9cd9aa7.md) | 136 | `declaration-track:21e3f361c22368c3f9cd9aa7121065f348e93224b36cd9dda8a31743e44e977b` |
| 9 | `theorem` | [projectQuotient_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/projectquotient-mk--d2ecaffd75b33e5182a1bdca.md) | 145 | `result-track:d2ecaffd75b33e5182a1bdcabd42dd0fe7ecb4123e71373592e8c32d7426b4d1` |
| 10 | `theorem` | [projectQuotient_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/projectquotient-factors--7cc6adf23a91021c231fbd16.md) | 151 | `result-track:7cc6adf23a91021c231fbd16430006fbdfddc957101cbf765ba25f9a127c347a` |
| 11 | `def` | [liftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/liftquotient--ffd57d9e5a8a09c2d3d38377.md) | 164 | `declaration-track:ffd57d9e5a8a09c2d3d38377733c4df82aadf817f8d3e35d1cc438287df348e6` |
| 12 | `theorem` | [unop_left_comp_underlyingIso_hom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/unop-left-comp-underlyingiso-hom-unop--42afcbe970e3cf767cd34287.md) | 170 | `result-track:42afcbe970e3cf767cd34287e59c895cd345773058c9666484ac292c5013f1cd` |
| 13 | `theorem` | [lift_projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/lift-projectquotient--2b2e4fc2d4b2aea5ac04d4da.md) | 181 | `result-track:2b2e4fc2d4b2aea5ac04d4da38413b4f23b88b246c15d7f526f1ad28d145a031` |
| 14 | `theorem` | [unop_left_comp_ofMkLEMk_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/unop-left-comp-ofmklemk-unop--b69e496691076f6c58613c64.md) | 196 | `result-track:b69e496691076f6c58613c64c51f6e3a1cde61253f828124599b0ec82e155516` |
| 15 | `def` | [quotientEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/quotientequiv--68da2374943729fde880c24f.md) | 209 | `declaration-track:68da2374943729fde880c24ff2a30ed1841c799774f87bf96fbea68d0fde79a6` |
| 16 | `instance` | [well_copowered_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant63f1f91e11b3c7a21b7b1469c2b02eae3ff30ecf8eab75df8472c48950db1128.lean/declarations/well-copowered-costructuredarrow--83efe81a5279525e13e763e5.md) | 236 | `declaration-track:83efe81a5279525e13e763e5b0b196280664e4510b42d031328e7cd408cadfd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
