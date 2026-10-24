# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalComp.Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c8fb462322f95c8029c9e0604d46e81d22bf786",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c8fb462322f95c8029c9e0604d46e81d22bf786`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Category` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/monoidalcoherence--00d8f1da27bbee0140477d58.md) | 56 | `declaration-track:00d8f1da27bbee0140477d5873e516e24db54a91cfcfe5e30fd065503a060164` |
| 2 | `abbrev` | [monoidalIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/monoidaliso--92032c8eb6bcd274723af0b8.md) | 66 | `declaration-track:92032c8eb6bcd274723af0b81949a5a9b0a5f2b9c34ef4a83b7ca847d202dc09` |
| 3 | `def` | [monoidalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/monoidalcomp--df47c90f1f11672a21163c7b.md) | 70 | `declaration-track:df47c90f1f11672a21163c7b761e5750f00e3f1eb686f4191ce55a4a7538e088` |
| 4 | `def` | [monoidalIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/monoidalisocomp--b5572af170e0259d87816132.md) | 79 | `declaration-track:b5572af170e0259d8781613237b64846b3b37463662cb1e3511a8dc30f85496c` |
| 5 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/refl--afe60164e227c92453912da2.md) | 91 | `declaration-track:afe60164e227c92453912da2c289e52638439a00f3bbd5a24c7f21ebc8f5fc68` |
| 6 | `instance` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/whiskerleft--1254cf422e72aaf95f45eb27.md) | 94 | `declaration-track:1254cf422e72aaf95f45eb27bd961d9a22cd15d594777d3c4656819a2eb00ee6` |
| 7 | `instance` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/whiskerright--bbd5c15fb6688c4b37e6ec0e.md) | 99 | `declaration-track:bbd5c15fb6688c4b37e6ec0ea3fb52a4e56134e0dd1e11c3c2561558bb1bfc9d` |
| 8 | `instance` | [tensor_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/tensor-right--105549b9bec03af07ab6ff75.md) | 104 | `declaration-track:105549b9bec03af07ab6ff75b11e33a915fd12509ccec7d0be5fd46b0802e594` |
| 9 | `instance` | [tensor_right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/tensor-right--c73f89c5748527f7e09a76d7.md) | 109 | `declaration-track:c73f89c5748527f7e09a76d7ae215f984084b0efcb061adeacec73771759b6f2` |
| 10 | `instance` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/left--501097353a2529e5000be391.md) | 114 | `declaration-track:501097353a2529e5000be391c2b8b9c7ce83424768b163dca97a6223b41fcc56` |
| 11 | `instance` | [left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/left--003919e037bcc1408f42aa76.md) | 119 | `declaration-track:003919e037bcc1408f42aa76cbbbeffb51d2f56b7b6a21ff62f61fa1f7785fb0` |
| 12 | `instance` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/right--23d2c6475b4e54340d8fdc59.md) | 124 | `declaration-track:23d2c6475b4e54340d8fdc59678e6883d51341350a1f69fdfdba28d07dd0ebfc` |
| 13 | `instance` | [right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/right--60553f83bfd11edf65f72cd3.md) | 129 | `declaration-track:60553f83bfd11edf65f72cd3acc621d5c87def3152ecfa306ae85a2691cce453` |
| 14 | `instance` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/assoc--5a79f088c26cca7c057be9f1.md) | 134 | `declaration-track:5a79f088c26cca7c057be9f1885a5d39de25888ba554619a4f78155e7d5a3837` |
| 15 | `instance` | [assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/assoc--b2e0af5e5ec6ae610dd2b565.md) | 139 | `declaration-track:b2e0af5e5ec6ae610dd2b565c940cc5ba42b65841a5e4248bfb7ad13dda873ad` |
| 16 | `lemma` | [monoidalComp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant9f64a4d0919bce28e38712e7908a3d7973d2a19eac775307fcd0f6a094972db8.lean/declarations/monoidalcomp-refl--2e5e612cbd2c96aee34bf669.md) | 145 | `result-track:2e5e612cbd2c96aee34bf669ab22a52f512640592e1ca000f25237f1baf1907a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
