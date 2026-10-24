# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e07bd0ba484869054ca8df55166654590229698",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e07bd0ba484869054ca8df55166654590229698`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgebraCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/algebracat--dcf57c752bdcebd5377b71a5.md) | 32 | `declaration-track:dcf57c752bdcebd5377b71a5580fda249bee0bb5d567723c4e6879a46419560c` |
| 2 | `abbrev` | [AlgebraCatMax.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/algebracatmax--a8f52803c3a61e2e93499728.md) | 42 | `declaration-track:a8f52803c3a61e2e934997288371b78a0f51053558a217c54df521a79c54dfaa` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--6876b87052c03ea2a2b61267.md) | 50 | `declaration-track:6876b87052c03ea2a2b6126758392d2c5c39839e28117cd07d705ce07f2e2ec8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--a026f71fe95dcb27e33a4ccd.md) | 55 | `declaration-track:a026f71fe95dcb27e33a4ccdca211347d226b4797df5afb4c46c814b44a411e3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--0297c4dd99a9f5061fbf215d.md) | 60 | `declaration-track:0297c4dd99a9f5061fbf215d098e7c0fb6c1d6c4b033a202cc5f2854033e5fd2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--eb87473a4460c67426db2eb5.md) | 63 | `declaration-track:eb87473a4460c67426db2eb5cca46f5109c8d7d95349051d64031529608fcd6a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--69d1ec2b3d6e5c20caa3aa20.md) | 69 | `declaration-track:69d1ec2b3d6e5c20caa3aa2022833d7b97e3b46ac6c2bbc5c33598eb6869ddb8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--51d372b68fe3426fb38bd5a1.md) | 72 | `declaration-track:51d372b68fe3426fb38bd5a101c8e9a98065efbca422ff4df1786395e8a97331` |
| 9 | `instance` | [hasForgetToRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/hasforgettoring--9e3aad96da5c036831e08995.md) | 75 | `declaration-track:9e3aad96da5c036831e089957a435a9bb8e01c2de19567ab857d1ff981d9c730` |
| 10 | `instance` | [hasForgetToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/hasforgettomodule--03f71a99abe7be75de85a452.md) | 81 | `declaration-track:03f71a99abe7be75de85a452b8a4a62c0b8d03d7ed4d1e3599f0916a2c91f105` |
| 11 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/of--225f73cd34876e4ac20dc922.md) | 89 | `declaration-track:225f73cd34876e4ac20dc92248523b2350325f9d83e71ed0aa0e4a59e117fc2f` |
| 12 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/ofhom--7031c0f418fa3644cf655e39.md) | 94 | `declaration-track:7031c0f418fa3644cf655e39ec1a580c8e52526f11b7848d3b1a2aff3b9932a8` |
| 13 | `theorem` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/ofhom-apply--d02d88a88370252592bdfee1.md) | 100 | `result-track:d02d88a88370252592bdfee1a9e560a9cfe5c204364945dd84628d3e52b233f8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--ff6c87c66c66149abcb69af6.md) | 105 | `declaration-track:ff6c87c66c66149abcb69af6b68af45a0b1e1123e34f69b67b8b208a6847110c` |
| 15 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/coe-of--a4b84a70ce8b6f81a1bdf931.md) | 109 | `result-track:a4b84a70ce8b6f81a1bdf9315aadf7612700fb549d48d0920d55ce69660d33be` |
| 16 | `def` | [ofSelfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/ofselfiso--4152eae5a098d9794b4b8c3b.md) | 118 | `declaration-track:4152eae5a098d9794b4b8c3b02a40c76589853b7d7a120d3a2f22a4aceaac87b` |
| 17 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/id-apply--2f97c22a403626f5357e2df8.md) | 126 | `result-track:2f97c22a403626f5357e2df8f4744867097a3c0421386e1b03d2518b41b24202` |
| 18 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/coe-comp--0ccb6468224f729704d37c3d.md) | 131 | `result-track:0ccb6468224f729704d37c3db3e4d80eb872a2e9c1b69fce7e15434017fb95d3` |
| 19 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/free--9663e5582ccd48631cc05271.md) | 139 | `declaration-track:9663e5582ccd48631cc052713ea1ccfa969a9bb1857bda100a2804c99e9d7f6f` |
| 20 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/adj--1a7a6dede288620d960453eb.md) | 158 | `declaration-track:1a7a6dede288620d960453eb36edde38e525e4c8d61f8f7c0a87c80ca56790bb` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--84f2e4275bd9727f654e2265.md) | 180 | `declaration-track:84f2e4275bd9727f654e2265b608858d772e510974e65370594de0e981ee3269` |
| 22 | `def` | [AlgEquiv.toAlgebraIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/algequiv-toalgebraiso--c472696204488f8de9d7576e.md) | 191 | `declaration-track:c472696204488f8de9d7576e9926973577891f1b41cb8a5cca2d21530b111d7c` |
| 23 | `def` | [toAlgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/toalgequiv--bb4ceee37b267fa2038caa8e.md) | 203 | `declaration-track:bb4ceee37b267fa2038caa8ea033b14bb373194bd1e88c6a1052f855ad3aa52f` |
| 24 | `def` | [algEquivIsoAlgebraIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/algequivisoalgebraiso--c55393baeea71ee55316e667.md) | 226 | `declaration-track:c55393baeea71ee55316e667753b9f6ad02be30527043af7be1e371462774947` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/instance--a74dc0aad03a376f4252899e.md) | 233 | `declaration-track:a74dc0aad03a376f4252899ef3879f4aeed6f26edcd36425c4c76900150bc9c0` |
| 26 | `instance` | [AlgebraCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/declarations/algebracat-forget-reflects-isos--ea7c7b95d068b87127adab37.md) | 236 | `declaration-track:ea7c7b95d068b87127adab37a63028cd88be23d9672918465a3ffb6c3ab417f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
