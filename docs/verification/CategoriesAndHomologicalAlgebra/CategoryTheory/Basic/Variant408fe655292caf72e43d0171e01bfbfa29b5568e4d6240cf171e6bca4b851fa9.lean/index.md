# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91d49e51106a9eb55795b5813e783bb4d7ef7ce0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91d49e51106a9eb55795b5813e783bb4d7ef7ce0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/linear--ef6ae1729a529e642a366909.md) | 45 | `declaration-track:ef6ae1729a529e642a366909efb263870b7009d42fc1ca5e85426196b51d4ecd` |
| 2 | `instance` | [preadditiveNatLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/preadditivenatlinear--44b86be663175d991c96fd04.md) | 68 | `declaration-track:44b86be663175d991c96fd045768ac5e9bf143ed7501bb735e2febf9459154d0` |
| 3 | `instance` | [preadditiveIntLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/preadditiveintlinear--2d57bdc8ef165668b95c39ac.md) | 74 | `declaration-track:2d57bdc8ef165668b95c39ac95f4b7ab87bc91a3712e237c5459d2328ddd6881` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/instance--1f70f2d10682edc6714edd5e.md) | 84 | `declaration-track:1f70f2d10682edc6714edd5eb062a93572704c6d5230db4fb29132c2dc9e61b6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/instance--80cae57217e342960018ac79.md) | 88 | `declaration-track:80cae57217e342960018ac791ac0f9b3f895905ff2db933eb806696454d43a73` |
| 6 | `instance` | [inducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/inducedcategory--03df083307600dc78aeef059.md) | 103 | `declaration-track:03df083307600dc78aeef05900a8e71a9fef436129308e35ffd4186c7eae8075` |
| 7 | `instance` | [fullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/fullsubcategory--431c688e1b33f351c6362a03.md) | 112 | `declaration-track:431c688e1b33f351c6362a0345fbd433ed724d63e813f62dd17518d49a4f9525` |
| 8 | `def` | [leftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/leftcomp--c90e1b437b0ec65c3f238fd8.md) | 123 | `declaration-track:c90e1b437b0ec65c3f238fd818fb6fdf37ae57352bb5c6ab55c03909a239b6ca` |
| 9 | `def` | [rightComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/rightcomp--423d8cea175f762fe570bae6.md) | 132 | `declaration-track:423d8cea175f762fe570bae6e646e64487ab695272e488776520024a65f9382e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/instance--a7003393cbb4a364b3ac8040.md) | 139 | `declaration-track:a7003393cbb4a364b3ac804006d0c8baeead796b5d1177e8263c1e9f5243e11c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/instance--d47bdcd3bd92043a11152d3f.md) | 144 | `declaration-track:d47bdcd3bd92043a11152d3f524f16d2199d6477495baf8742682852fa430287` |
| 12 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/homcongr--8187f4d0962d9e0497abe16e.md) | 151 | `declaration-track:8187f4d0962d9e0497abe16e7e5e09d821aefeb9902346b44eb33e27568b65df` |
| 13 | `theorem` | [homCongr_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/homcongr-apply--8882e3b32835cf150304ebfe.md) | 168 | `result-track:8882e3b32835cf150304ebfe5c5eb7dc23dd2a84560bd3f9023d83fbc4e97b7c` |
| 14 | `theorem` | [homCongr_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/homcongr-symm-apply--cc3872458da080a1b131a52c.md) | 174 | `result-track:cc3872458da080a1b131a52c886c2004800931da0194b9a46f61c88b4464050a` |
| 15 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/declarations/comp--07d31d1e9584b9254edd07a6.md) | 188 | `declaration-track:07d31d1e9584b9254edd07a64a53e5fff905242864d40c7df8a3ac7f68c66d0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
