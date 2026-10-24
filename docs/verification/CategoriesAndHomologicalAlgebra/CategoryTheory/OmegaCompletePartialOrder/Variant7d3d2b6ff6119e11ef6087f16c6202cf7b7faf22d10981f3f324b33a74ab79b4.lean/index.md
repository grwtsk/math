# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OmegaCompletePartialOrder.Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24454fde02a9cb914b9509c27e2e5cba2ea25a62",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24454fde02a9cb914b9509c27e2e5cba2ea25a62`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.OmegaCompletePartialOrder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ωCPO](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/cpo--e1c01811bc518a91f01180b1.md) | 41 | `declaration-track:e1c01811bc518a91f01180b15c6b98db132ae97af90aa2d0eff05c55ddecb62b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--a3d715a129500150f67e9a7c.md) | 52 | `declaration-track:a3d715a129500150f67e9a7c96290cf80b6fe6d3ed46426d603bfaf284cd7f34` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/of--d03b6c93b1e22677862fb44b.md) | 56 | `declaration-track:d03b6c93b1e22677862fb44b241dcf7644ac151f591314246e7c60c39e29cc18` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/coe-of--404a34d792cb4bd634e99e50.md) | 59 | `result-track:404a34d792cb4bd634e99e50ef01c471044da9063c63f0c7ccf5c070bb45edf7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--a430c5a15cbfc2b6e4f810a8.md) | 62 | `declaration-track:a430c5a15cbfc2b6e4f810a86b76ecabfacead1da95aa1c8b11e7c2482db8631` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--3cb3e8777df9db8bef1eed5b.md) | 67 | `declaration-track:3cb3e8777df9db8bef1eed5ba6e87d447b615772035414970875daac60f06bdf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--5df5b2a1720321c156551292.md) | 71 | `declaration-track:5df5b2a1720321c1565512928f462bb9d4ed145c9b240b60d26ad48f9f4d0575` |
| 8 | `def` | [product](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/product--613a7806f77dd204f55c314f.md) | 81 | `declaration-track:613a7806f77dd204f55c314f62c339b91a02774b2039443ae235d4eb269b6e8e` |
| 9 | `def` | [isProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/isproduct--22c4cb04b716091e0b55112b.md) | 85 | `declaration-track:22c4cb04b716091e0b55112b67da7acd6bd1de8fcbe06a752472d22d38d96d13` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--ba12d134e103925f171a3280.md) | 96 | `declaration-track:ba12d134e103925f171a32808539ee1273074809f0c9eef638c841152dcf474b` |
| 11 | `instance` | [omegaCompletePartialOrderEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/omegacompletepartialorderequalizer--256ae86034ce48bc89e20cd4.md) | 101 | `declaration-track:256ae86034ce48bc89e20cd47b3f11a080a5c8c0a0dd35c4629693878b6eed5b` |
| 12 | `def` | [equalizerι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/equalizer--9ca68ca85184f56755d27372.md) | 113 | `declaration-track:9ca68ca85184f56755d2737271f120b3aa4fc3cbc25b0f0a3df589484cb57df7` |
| 13 | `def` | [equalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/equalizer--6d2f6e81af2c5d0d00fcd009.md) | 118 | `declaration-track:6d2f6e81af2c5d0d00fcd00925675c8acb20be1cd22a37b29057cb592a45c90a` |
| 14 | `def` | [isEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/isequalizer--e5fad0b3c39dd5bde4d157c7.md) | 123 | `declaration-track:e5fad0b3c39dd5bde4d157c737c19e22a082edb9124baf76be616794587388b5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--4f7a7171c864e59771d0cd28.md) | 134 | `declaration-track:4f7a7171c864e59771d0cd2889a3723dcc6146191c7a409a73cd0d42110c4f24` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--30e5e97795ecd7bb8670c86c.md) | 137 | `declaration-track:30e5e97795ecd7bb8670c86c7d52a3d9b1f35b7415d25ae1dd58b86c71f18d90` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--fd6a3cc09b70e5f3439d6735.md) | 140 | `declaration-track:fd6a3cc09b70e5f3439d67350573e19cf60c2a690e32d5703491794942c15b7c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant7d3d2b6ff6119e11ef6087f16c6202cf7b7faf22d10981f3f324b33a74ab79b4.lean/declarations/instance--0f0cf655e7bf080cd6d31c2b.md) | 143 | `declaration-track:0f0cf655e7bf080cd6d31c2bad5a700e467980fa48cd6129f0b0794344e641d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
