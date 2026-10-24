# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsConnected.Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30cfa82be70523ff568e1f082bc52d0c9d452c84",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30cfa82be70523ff568e1f082bc52d0c9d452c84`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ULift` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPreconnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/ispreconnected--9ce7f5a631d5f64c534af214.md) | 59 | `declaration-track:9ce7f5a631d5f64c534af214a9f6a056206a0217d24741453cfa3d7a36fd7742` |
| 2 | `class` | [IsConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected--4cc64970745338b5e9be18dc.md) | 77 | `declaration-track:4cc64970745338b5e9be18dcca01abfc575cfedb12bae115a491d164dfc19b9e` |
| 3 | `def` | [liftToDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/lifttodiscrete--422797074790cb81a95af9d2.md) | 90 | `declaration-track:422797074790cb81a95af9d2be47189f1bc10aaa35eecc606faf8b5c01151eb9` |
| 4 | `def` | [factorThroughDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/factorthroughdiscrete--9e79a85cb20d93b6e30355e8.md) | 97 | `declaration-track:9e79a85cb20d93b6e30355e8dfc91943275b7fe3d0b09575a3158c5c800ce433` |
| 5 | `def` | [isoConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isoconstant--a4798f5983be745004d3cd8e.md) | 106 | `declaration-track:a4798f5983be745004d3cd8ed1631ad30737a97128183be54864d6809c1d7407` |
| 6 | `theorem` | [any_functor_const_on_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/any-functor-const-on-obj--a5bb6cc36923ce9654546e6b.md) | 116 | `result-track:a5bb6cc36923ce9654546e6bea3ae453bb07e9ce69ab3751814c102a6158366f` |
| 7 | `theorem` | [IsConnected.of_any_functor_const_on_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-of-any-functor-const-on-obj--c9a04761274ca4d5abf29395.md) | 124 | `result-track:c9a04761274ca4d5abf29395aaf119ac3b63d07a9cd3db10971c6d12bc779b3e` |
| 8 | `theorem` | [constant_of_preserves_morphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/constant-of-preserves-morphisms--126934d838fe50d454bed267.md) | 135 | `result-track:126934d838fe50d454bed2674daf36b31a3fcd50cca3fcac59d553e7615f2808` |
| 9 | `theorem` | [IsConnected.of_constant_of_preserves_morphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-of-constant-of-preserves-morphisms--39be93a1d7c0d1f439e8d366.md) | 154 | `result-track:39be93a1d7c0d1f439e8d366dd0684c9440b8b7e386093ad40d45e2e441304e9` |
| 10 | `theorem` | [induct_on_objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/induct-on-objects--9e071d73e8c8ba108adbf732.md) | 168 | `result-track:9e071d73e8c8ba108adbf7323b1ca4e9a741b44e19342690714d5d3e147a72dc` |
| 11 | `theorem` | [IsConnected.of_induct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-of-induct--0927641751bd3fba4d6ddb7f.md) | 180 | `result-track:0927641751bd3fba4d6ddb7fc0b0a17d8f7002730d3be52b78742f11c268eaf5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/instance--79b051a89cac884b5b9a7f9a.md) | 192 | `declaration-track:79b051a89cac884b5b9a7f9a657f83c3a08cf996eb951574439608b3b21d2030` |
| 13 | `theorem` | [isPreconnected_induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/ispreconnected-induction--9ac4cd91700d3796b9532273.md) | 208 | `result-track:9ac4cd91700d3796b9532273f33f6b92d8889b9b1d5c77ee3df0bc6ca568edc1` |
| 14 | `theorem` | [isPreconnected_of_equivalent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/ispreconnected-of-equivalent--9777c708f0ef128f7c8c439d.md) | 223 | `result-track:9777c708f0ef128f7c8c439d8778afbb0ee2d458483b949468b0bb168bdff21f` |
| 15 | `theorem` | [isConnected_of_equivalent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-of-equivalent--4ab500f811a5268f34c715b0.md) | 236 | `result-track:4ab500f811a5268f34c715b093ea615f1172c9614f9a7eb32d10173bba318297` |
| 16 | `instance` | [isPreconnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/ispreconnected-op--56497daeb3799ff3973ec196.md) | 243 | `declaration-track:56497daeb3799ff3973ec196cf3934971777918a081b189ec245721c474b1c7b` |
| 17 | `instance` | [isConnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-op--4255c52878176cddaceee441.md) | 252 | `declaration-track:4255c52878176cddaceee4411b9d4747e3a22f1cebafcdd7e4c1c21839a55ce4` |
| 18 | `theorem` | [isPreconnected_of_isPreconnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/ispreconnected-of-ispreconnected-op--64e800e8c70ad0c1a27b48bd.md) | 256 | `result-track:64e800e8c70ad0c1a27b48bd58df51fe7690d5b0106eb44d507b24ed30f8edbf` |
| 19 | `theorem` | [isConnected_of_isConnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-of-isconnected-op--ad352933b6be0659a79b032e.md) | 260 | `result-track:ad352933b6be0659a79b032ed7e033f6ccb31ce59d08fbec4a4ad17965606b60` |
| 20 | `def` | [Zag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zag--19948f11b3dec0a32d5261eb.md) | 266 | `declaration-track:19948f11b3dec0a32d5261ebe01f563baa60abd35b18e511816733e2c5dcbfe5` |
| 21 | `theorem` | [zag_symmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zag-symmetric--8ef4f3cc239d3edf379129fc.md) | 270 | `result-track:8ef4f3cc239d3edf379129fcde58b44ebe23dff5af7f36ac2e335e0821ca3363` |
| 22 | `def` | [Zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zigzag--855ae3fabe7c2526a0d318f9.md) | 277 | `declaration-track:855ae3fabe7c2526a0d318f9fbf759a2545bca52a12c66633ac30cb4ceb84e97` |
| 23 | `theorem` | [zigzag_symmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zigzag-symmetric--fc273e689b1896d351b703cb.md) | 281 | `result-track:fc273e689b1896d351b703cb379a8f1a1e118387010fa823a325524e101db213` |
| 24 | `theorem` | [zigzag_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zigzag-equivalence--fef5a14cb0584c9338dbaa59.md) | 285 | `result-track:fef5a14cb0584c9338dbaa5932fbe59af40e424f39ac13f40cb8d47d422e77be` |
| 25 | `def` | [Zigzag.setoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zigzag-setoid--554f5623ef63f36ccf112e88.md) | 293 | `declaration-track:554f5623ef63f36ccf112e88eb6012d4527610e155ba2bb639f0a2ff1c8f0950` |
| 26 | `theorem` | [zigzag_obj_of_zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zigzag-obj-of-zigzag--4431799184fe8c8d16d16b4d.md) | 301 | `result-track:4431799184fe8c8d16d16b4da772fb7ed992a22383bedf8499991239c8b567e3` |
| 27 | `theorem` | [zag_of_zag_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zag-of-zag-obj--aae32eb39d1e3918cc8444e8.md) | 307 | `result-track:aae32eb39d1e3918cc8444e8b1606e0a931b101c5ccaadc74843e2a7087245ad` |
| 28 | `theorem` | [equiv_relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/equiv-relation--fca9b0e9704a776816677395.md) | 313 | `result-track:fca9b0e9704a776816677395d6a1da288a59539b40ac5456ff6afddf5fc1e969` |
| 29 | `theorem` | [isConnected_zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-zigzag--2d34c8eb72ddf95949f02fb8.md) | 323 | `result-track:2d34c8eb72ddf95949f02fb88afc77aa24227d5320c3d16d357dc5769e50485b` |
| 30 | `theorem` | [zigzag_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/zigzag-isconnected--f0d40fa2eaf899e41bf13d34.md) | 330 | `result-track:f0d40fa2eaf899e41bf13d349f005316eb0a2917372a1244e0d2811388947d42` |
| 31 | `theorem` | [exists_zigzag'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/exists-zigzag--25fed4ff3ac1a030347c703d.md) | 344 | `result-track:25fed4ff3ac1a030347c703da7e853db54f34a09dcccda5c5cfd4f2893385c2d` |
| 32 | `theorem` | [isConnected_of_zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/isconnected-of-zigzag--17c4481c5d12059c4aa9a861.md) | 354 | `result-track:17c4481c5d12059c4aa9a861af454b94ce96835cb4916d61b9fef1e131150ef9` |
| 33 | `def` | [discreteIsConnectedEquivPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/discreteisconnectedequivpunit--d33c6de6e56480aba5dc5115.md) | 364 | `declaration-track:d33c6de6e56480aba5dc5115faf1c81f41c545e186cb5c937b6532fdf6a870c5` |
| 34 | `theorem` | [nat_trans_from_is_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/nat-trans-from-is-connected--3e4cc5cfcb30791b172114e7.md) | 378 | `result-track:3e4cc5cfcb30791b172114e7dceab05030cd3b2ae4918c26b9fc26a193cee994` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/instance--3e618f3e5c531f2bb5d81cca.md) | 387 | `declaration-track:3e618f3e5c531f2bb5d81ccac9d2d92acdf4611ac92b28c03e2d4d1291d6bb59` |
| 36 | `instance` | [nonempty_hom_of_connected_groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/declarations/nonempty-hom-of-connected-groupoid--ff6ebcb6ac9d791a364dffe9.md) | 393 | `declaration-track:ff6ebcb6ac9d791a364dffe9fb81b1877f51d1ef520bfdd1662add59afd26f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
