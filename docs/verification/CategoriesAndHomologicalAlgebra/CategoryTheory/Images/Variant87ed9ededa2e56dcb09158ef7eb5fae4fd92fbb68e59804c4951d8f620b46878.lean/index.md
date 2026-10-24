# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d035bf48a8cad1ee5185b81aab459ff2b21e09c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d035bf48a8cad1ee5185b81aab459ff2b21e09c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/image--b89018d8bab9aa17361437bf.md) | 49 | `declaration-track:b89018d8bab9aa17361437bf2971273a57c46c9131d8ec9954f1afd3b7ab5e9e` |
| 2 | `abbrev` | [image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/image--ab19e9a3a82314eed40306a6.md) | 53 | `declaration-track:ab19e9a3a82314eed40306a65f23e533b53e72916c7cb9e2386b915437244b08` |
| 3 | `abbrev` | [factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/factorthruimage--be216071c76a925d0d93989f.md) | 57 | `declaration-track:be216071c76a925d0d93989f35f0f034c4fc92a164fb6952f80f928207a02097` |
| 4 | `theorem` | [image.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/image-fac--02bbaa5d58780b0726690088.md) | 61 | `result-track:02bbaa5d58780b07266900888426dca9e44ee5919a3bf2fbff07fc37d368b677` |
| 5 | `instance` | [mono_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/mono-factorthruimage--efe33cba49b743368a57353d.md) | 64 | `declaration-track:efe33cba49b743368a57353d6ad7d9ccf9c593e1d8e36fb7b7e0323fae3665eb` |
| 6 | `abbrev` | [coimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimage--c166c445a5c34a2fde52b9be.md) | 72 | `declaration-track:c166c445a5c34a2fde52b9bec779344006a702e6d6fb641fc0b8f1f63be3e097` |
| 7 | `abbrev` | [coimage.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimage--94b80585f8c2d7c5cc4fc34b.md) | 76 | `declaration-track:94b80585f8c2d7c5cc4fc34ba3007162c8b3e97fbdd47a006f4f02345400c111` |
| 8 | `abbrev` | [factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/factorthrucoimage--ab6e2def4c2804f0030a2fb0.md) | 80 | `declaration-track:ab6e2def4c2804f0030a2fb0e9a4100626ada2eca00c53eb25c0405b59953686` |
| 9 | `theorem` | [coimage.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimage-fac--a14e0dfea6ddf669ca2ed84e.md) | 84 | `result-track:a14e0dfea6ddf669ca2ed84e26fd234b20ba4bd138f51e36d7f7ca49c4eb1e25` |
| 10 | `instance` | [epi_factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/epi-factorthrucoimage--5c822e50c6ffdf6092eacb1d.md) | 87 | `declaration-track:5c822e50c6ffdf6092eacb1d18f078defb56547e442ad8bf0bc23f16105bc8cf` |
| 11 | `def` | [coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimageimagecomparison--e1893d07f39f4e663b02344d.md) | 98 | `declaration-track:e1893d07f39f4e663b02344da5cff1f15273a820305db3079bd380dd4c331481` |
| 12 | `def` | [coimageImageComparison'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimageimagecomparison--2ceb96dc1f3910a1fdb032d6.md) | 103 | `declaration-track:2ceb96dc1f3910a1fdb032d6ed869c738cf87b2e615629457266c4147553ed68` |
| 13 | `theorem` | [coimageImageComparison_eq_coimageImageComparison'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimageimagecomparison-eq-coimageimagecomparison--a206a95248d342fdd03b2432.md) | 106 | `result-track:a206a95248d342fdd03b2432de103e89e023d4c81d7b77e3a62e62f817ff8a9c` |
| 14 | `theorem` | [coimage_image_factorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimage-image-factorisation--a591b91564572d31f8e1a978.md) | 112 | `result-track:a591b91564572d31f8e1a978b1fee2c6ea8a005c125d3e651fc31ac73c2dbbda` |
| 15 | `def` | [coimageImageComparisonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean/declarations/coimageimagecomparisonfunctor--714e8c7c02178dc307a2f565.md) | 117 | `declaration-track:714e8c7c02178dc307a2f5657357ca77843aaeb8d6d2b13693c630b389ffa8ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
