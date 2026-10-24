# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ulift.Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d4d14c4a8479a95285d5687a27a144efa1fe48",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d4d14c4a8479a95285d5687a27a144efa1fe48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.LargeColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctorfullyfaithful--c20023a9d6a60ecf65890734.md) | 88 | `declaration-track:c20023a9d6a60ecf65890734dd9a5e093cfed9be3a20956fa59d15b7aced436e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--de5e3b8820c0f49ee49ac39a.md) | 98 | `declaration-track:de5e3b8820c0f49ee49ac39ae822f5779a590b918a4ae4a8464fe2597b03b8fd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--07ad2b82884e32e6906d973b.md) | 105 | `declaration-track:07ad2b82884e32e6906d973b203274074b6d33e4a283710f3b9609b05dac0ab3` |
| 4 | `instance` | [uliftFunctor_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-preserveslimit--e3d9fbd3ece82e966a18cbe1.md) | 108 | `declaration-track:e3d9fbd3ece82e966a18cbe19001f6556313cdcb94589ec83208140c58221e79` |
| 5 | `instance` | [uliftFunctor_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-preserveslimitsofshape--b4bfacf02feefa0a1ee79dcf.md) | 114 | `declaration-track:b4bfacf02feefa0a1ee79dcffe3879bdc5b47a2a2a11771dda9f6a563a5224e1` |
| 6 | `instance` | [uliftFunctor_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-preserveslimitsofsize--df131053e606f2f90e8e3569.md) | 122 | `declaration-track:df131053e606f2f90e8e3569e7551d063e67c1f94d4758daa99d4d2d361f23ce` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--f91da31c0d01fa3bd957c061.md) | 130 | `declaration-track:f91da31c0d01fa3bd957c0612e032714bc9ed5eb943ff660235ce5c80125dfd0` |
| 8 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctorfullyfaithful--bf819a066253c3a3afd9e945.md) | 141 | `declaration-track:bf819a066253c3a3afd9e9454b05d964415a95780429b8d2192182d0c420e31a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--0de90e764c4cd06459324145.md) | 150 | `declaration-track:0de90e764c4cd0645932414545fda489dbecaa1da721d3306af9d0c3e220f5c9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--6053665b5318382fb04ea6dc.md) | 155 | `declaration-track:6053665b5318382fb04ea6dc275eee9a635650e6aba107e5a29632af0ca6c983` |
| 11 | `instance` | [uliftFunctor_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-preserveslimit--ef07660fabfbedf3036bee46.md) | 158 | `declaration-track:ef07660fabfbedf3036bee46ab9094ccce2538dd61afa7220a06caaaaf2dd7f6` |
| 12 | `instance` | [uliftFunctor_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-preserveslimitsofshape--345b200e52159e10119ebb2a.md) | 164 | `declaration-track:345b200e52159e10119ebb2a388f251166d0a4b5e58bb162eced7d598ab7f586` |
| 13 | `instance` | [uliftFunctor_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-preserveslimitsofsize--7933228833f09fb210da11bd.md) | 172 | `declaration-track:7933228833f09fb210da11bd581e4766ebf91004a3fba7391f50cb8647b12860` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--ec3e35c2a2ed8a9570e2cc34.md) | 180 | `declaration-track:ec3e35c2a2ed8a9570e2cc34f7458839dedde876b528000f8522c3ad590aaa8d` |
| 15 | `instance` | [uliftFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/uliftfunctor-additive--3152829609a32da8ce33bdb2.md) | 189 | `declaration-track:3152829609a32da8ce33bdb2438877c37c128646c478e03e5d950a5e54e7752a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--5b7242d879944140f4fe22b8.md) | 197 | `declaration-track:5b7242d879944140f4fe22b8de067205be94b75af50bb8b6e2b59b1e5a268ce0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/declarations/instance--e7b94f579abe98635902ea09.md) | 210 | `declaration-track:e7b94f579abe98635902ea09a1c176e92190001b31301ec1f790749653eb3f28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
