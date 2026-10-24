# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comparison.Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e495f06f895e5d01e70d13b01db65ed9d1b808d5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e495f06f895e5d01e70d13b01db65ed9d1b808d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Properties` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Refinement` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CarrierRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/carrierrealization--cfe42ec3cba5d863281b50d9.md) | 26 | `declaration-track:cfe42ec3cba5d863281b50d9622c5e7d8cce92239b78a60d6f19c4eed1d4e34b` |
| 2 | `theorem` | [mapIso_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/mapiso-bijective--5a0675a1e800344b2f84ca00.md) | 39 | `result-track:5a0675a1e800344b2f84ca00f1c0f8d2a33121c3ab368eb3a4019966a1c4f197` |
| 3 | `def` | [toComparisonSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/tocomparisonspec--6d6154fa43fb0b37ab6609f7.md) | 66 | `declaration-track:6d6154fa43fb0b37ab6609f7fc23a13518fb520cad5f01677e3b46c548f4cb06` |
| 4 | `def` | [cellStateComparisonSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/cellstatecomparisonspec--577192b10d836474619410db.md) | 77 | `declaration-track:577192b10d836474619410db1434fb4f7b14cd18887286869da1d66bf9477d88` |
| 5 | `theorem` | [realizationComparison_isBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/realizationcomparison-isbijective--a086d4469d21aed5c2508bd4.md) | 92 | `result-track:a086d4469d21aed5c2508bd471286db995b6ebf6dd9f06c3e1e683c83d5f984f` |
| 6 | `theorem` | [cellComparison_isSurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/cellcomparison-issurjective--8d752ff0d53fb38290e3c872.md) | 105 | `result-track:8d752ff0d53fb38290e3c872c9bda3a72606540e3ff42415c95706adef06c9bb` |
| 7 | `def` | [implementationStateSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/implementationstatespec--3c62920b65ecce02d23f1050.md) | 119 | `declaration-track:3c62920b65ecce02d23f1050ffcc323af3d0b2cafbec10ee94b722af8a5156fd` |
| 8 | `def` | [implementationStateCertified](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/implementationstatecertified--b9255f57548c25da73a8a620.md) | 137 | `declaration-track:b9255f57548c25da73a8a6201d221db764e3f326cb739ba234b69c8dad59512b` |
| 9 | `structure` | [ParameterizedRealizationTheory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/parameterizedrealizationtheory--104a00476587e2c29c38d645.md) | 167 | `declaration-track:104a00476587e2c29c38d64532a193f3d0835017ca03be955b70a0b66e6e9923` |
| 10 | `structure` | [RepresentationIndependence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/representationindependence--4cfb1bccef3c179a9577b19e.md) | 175 | `declaration-track:4cfb1bccef3c179a9577b19ef32c06ec7ba9ef3a11794f0eb1c72d434dff5a1e` |
| 11 | `def` | [atFabric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c.lean/declarations/atfabric--da6b62bc24ed7bf294837ba5.md) | 184 | `declaration-track:da6b62bc24ed7bf294837ba532351f54b7c4fc9e497c2e95dc64294c811e69aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
