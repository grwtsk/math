# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcbfdbc93b85fe8ceb99e5f56203e7ec5b6d2121",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcbfdbc93b85fe8ceb99e5f56203e7ec5b6d2121`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/instance--3ac38c46ac306a0510ef05c2.md) | 21 | `declaration-track:3ac38c46ac306a0510ef05c2368d2d5c4efb83db2624d112d1d80ba33aa4516c` |
| 2 | `instance` | [moduleEndLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/moduleendleft--49dd817beef5be17fb8842a6.md) | 26 | `declaration-track:49dd817beef5be17fb8842a6780a207071342dfdd7016e933a6ead268fe09f3e` |
| 3 | `theorem` | [unop_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/unop-add--5044607ca7ad5de5f2f6c56c.md) | 33 | `result-track:5044607ca7ad5de5f2f6c56c1962aaa84eecc985d2a4db94bcaea40158923846` |
| 4 | `theorem` | [unop_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/unop-zsmul--57552cf94f9a7592db1db12e.md) | 37 | `result-track:57552cf94f9a7592db1db12e5e85a7d04ea8f8704b681069014e4af4c960fd0b` |
| 5 | `theorem` | [unop_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/unop-neg--9c1fc164f068757dcb31db03.md) | 41 | `result-track:9c1fc164f068757dcb31db03c3cb0247ec57bd11ea075c9c87075958ac0d8289` |
| 6 | `theorem` | [op_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/op-add--c07770adca49951714b05134.md) | 45 | `result-track:c07770adca49951714b0513417d5a56ccab424a7687cca188faf31db104c1ad9` |
| 7 | `theorem` | [op_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/op-zsmul--7d99edbf4e6b347af93e2608.md) | 49 | `result-track:7d99edbf4e6b347af93e2608518965e1ac1a18c51eabda10473d0133a96e9d96` |
| 8 | `theorem` | [op_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/op-neg--ddedd94325c9d17dfb763841.md) | 53 | `result-track:ddedd94325c9d17dfb7638410c37e3112e4873b4654827c17a65d9eff3936571` |
| 9 | `def` | [unopHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/unophom--f252d6bbe8304d7a6d3bd207.md) | 60 | `declaration-track:f252d6bbe8304d7a6d3bd2070806c3a6d074546a9bfced36c445eff31ed6098e` |
| 10 | `theorem` | [unop_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/unop-sum--95a045c0a1e6775532cd3891.md) | 64 | `result-track:95a045c0a1e6775532cd389138fefefc13116b836bad32769c1477b4d3346fa4` |
| 11 | `def` | [opHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/ophom--fdc105db716a58d672d156a0.md) | 70 | `declaration-track:fdc105db716a58d672d156a04c9b774bbadd9177535126c7d38e351b285a74b5` |
| 12 | `theorem` | [op_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/op-sum--6301f77fc8ba283792ed00b2.md) | 74 | `result-track:6301f77fc8ba283792ed00b2f7c0afd54746b1a1881e8bc3652894d2ce6261ce` |
| 13 | `def` | [Preadditive.homSelfLinearEquivEndMulOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/preadditive-homselflinearequivendmulopposite--b7db4166f21eb75cc011f621.md) | 80 | `declaration-track:b7db4166f21eb75cc011f6218acee7e8ec8d8102af28adb72f2dc5e77be08688` |
| 14 | `instance` | [Functor.op_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/functor-op-additive--886448425caa12d035917244.md) | 90 | `declaration-track:886448425caa12d035917244d97267ac0913721a082b797b6961d8c6507c87b2` |
| 15 | `instance` | [Functor.rightOp_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/functor-rightop-additive--69380023f49e041fc4d16500.md) | 92 | `declaration-track:69380023f49e041fc4d1650031f01fc1709d4b8a32cbf18d953dffa26fab1bd4` |
| 16 | `instance` | [Functor.leftOp_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/functor-leftop-additive--0d245990e658cb146d02d701.md) | 94 | `declaration-track:0d245990e658cb146d02d701c41e62f20c1517d3b914247a8bf3765b74cc4e46` |
| 17 | `instance` | [Functor.unop_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant9646c037f32462b7520d162cd9ca8a1f39979151d29cfa23349826ab688b9dc1.lean/declarations/functor-unop-additive--c729169b392d4490ace632b2.md) | 96 | `declaration-track:c729169b392d4490ace632b2d1e3d5a8465705eb83c1610e4ec4cf98a8beb354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
