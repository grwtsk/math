# Verification target: GRWTSK.Algebra.LinearAlgebra.AsTensorProduct.Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.DiagramLemmas.Four` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Exactness` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofTensorProductBil](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductbil--9f1217736814dc46e3d48051.md) | 52 | `declaration-track:9f1217736814dc46e3d48051bb6f183ceeb60224603b1cab0a0bee71c3598d2a` |
| 2 | `lemma` | [ofTensorProductBil_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductbil-apply-apply--053bcef462b2e5c1fdab1fa9.md) | 64 | `result-track:053bcef462b2e5c1fdab1fa976277421fb12e2c153000a3399508e22205b5a65` |
| 3 | `def` | [ofTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct--35cebe4c110580c9b4dca22c.md) | 70 | `declaration-track:35cebe4c110580c9b4dca22c13db2c8ed1cab005a075e8cb41985a63f3b0f6a1` |
| 4 | `lemma` | [ofTensorProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-tmul--3c293a7991f5456481700cd5.md) | 74 | `result-track:3c293a7991f5456481700cd5e456d771dfed7728ce1e92b9160914be98ece83f` |
| 5 | `lemma` | [ofTensorProduct_naturality](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-naturality--c9af034cb757549aad904a12.md) | 80 | `result-track:c9af034cb757549aad904a12670113e8116a0f7932de98a03f84644b93f49549` |
| 6 | `lemma` | [piEquivOfFintype_comp_ofTensorProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/piequivoffintype-comp-oftensorproduct-eq--526cfab7152467740e567d1f.md) | 98 | `result-track:526cfab7152467740e567d1fe01584dd9267cb49b7f0a184a5b33205749aef30` |
| 7 | `lemma` | [ofTensorProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-eq--0b0582d179b0bea60fe0ea87.md) | 106 | `result-track:0b0582d179b0bea60fe0ea87a6f9edcf55b9301f67f00e76a13b80f4a78a2a6d` |
| 8 | `def` | [ofTensorProductInvOfPiFintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductinvofpifintype--8e289c8776a8ff52930efe83.md) | 113 | `declaration-track:8e289c8776a8ff52930efe83360f60bf64bbefe19625db995507b956deb772f8` |
| 9 | `lemma` | [ofTensorProductInvOfPiFintype_comp_ofTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductinvofpifintype-comp-oftensorproduct--7128b2cb769b7297c8a5b19a.md) | 119 | `result-track:7128b2cb769b7297c8a5b19a84e3829887f7f2a81a431aa16b901c8cc89c3a05` |
| 10 | `lemma` | [ofTensorProduct_comp_ofTensorProductInvOfPiFintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-comp-oftensorproductinvofpifintype--325c6c2dd54e3583ce4105ab.md) | 125 | `result-track:325c6c2dd54e3583ce4105ab01cf9d3c2d956c2b05bd3782e6bb26cc2fa459b8` |
| 11 | `def` | [ofTensorProductEquivOfPiFintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductequivofpifintype--b62bc991230b6a8b64a0a90a.md) | 133 | `declaration-track:b62bc991230b6a8b64a0a90af2867eec4c0b4a2cb52ee9e9e7a0cfe49e3fac2c` |
| 12 | `lemma` | [ofTensorProduct_bijective_of_pi_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-bijective-of-pi-of-fintype--24670a9e1587c25ba14cff24.md) | 144 | `result-track:24670a9e1587c25ba14cff24598022cc476a9c9c33102e416669308950ae1520` |
| 13 | `lemma` | [ofTensorProduct_surjective_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-surjective-of-finite--393eee06961140d02c13f566.md) | 154 | `result-track:393eee06961140d02c13f566e58bde1e1b1012c86e515fdbf6e96e95f1a96fcd` |
| 14 | `def` | [lTensorKerIncl](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/ltensorkerincl--44ffc2cc3ba604968fbeb1ea.md) | 209 | `declaration-track:44ffc2cc3ba604968fbeb1ea088a5fcab582553fd9d75ada7dc88593e1f9aded` |
| 15 | `def` | [lTensorf](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/ltensorf--6352ab5b806995053de7559f.md) | 214 | `declaration-track:6352ab5b806995053de7559f9ddb7aaebcff08bade3956b03f05c5a65807b670` |
| 16 | `lemma` | [tens_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/tens-exact--0ef291c2696dc5041093d3da.md) | 223 | `result-track:0ef291c2696dc5041093d3da63f52c4c1a07cf4a8fc52bacb70b44fef14b8caf` |
| 17 | `lemma` | [tens_surj](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/tens-surj--660db9b59bb9c36df546da5e.md) | 226 | `result-track:660db9b59bb9c36df546da5ec467e8930c5af46fffec90ff68dc2ead0ff1fdf7` |
| 18 | `lemma` | [adic_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/adic-exact--b8b034cdfd51713f52b1dd0f.md) | 229 | `result-track:b8b034cdfd51713f52b1dd0f28fa8552fa06305665c5d81d612b6f1cd94d4cda` |
| 19 | `lemma` | [adic_surj](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/adic-surj--2a60ac4a7b7bcf26f898166a.md) | 233 | `result-track:2a60ac4a7b7bcf26f898166a1900cdc5d2227e1d05650caa96173cf1a7cea37f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/instance--c9854ea2566f3af92aece877.md) | 239 | `declaration-track:c9854ea2566f3af92aece877d0ff1a23bc5081d18217e23c638f09f3c6dc3553` |
| 21 | `def` | [firstRow](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/firstrow--153073d4a64d1d7f9a296b5f.md) | 242 | `declaration-track:153073d4a64d1d7f9a296b5fd5d9897f9b19de848ce0352a763c8dac4dac9a7b` |
| 22 | `def` | [secondRow](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/secondrow--6fc71f2b45c5f90d89c01108.md) | 249 | `declaration-track:6fc71f2b45c5f90d89c0110835190a08f05656a70b6453a43e1594a403a47473` |
| 23 | `lemma` | [firstRow_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/firstrow-exact--5c21699fa14c263a0c278567.md) | 258 | `result-track:5c21699fa14c263a0c2785677c9e142feb632c7003cdb20d28e6f5b54466552d` |
| 24 | `lemma` | [secondRow_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/secondrow-exact--a89ed37e5fa0d8f5e412700b.md) | 270 | `result-track:a89ed37e5fa0d8f5e412700b582f6641e6ec691293a6f37ee9e21832942b5252` |
| 25 | `def` | [firstRowToSecondRow](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/firstrowtosecondrow--cb3f1e316983a111ab7656cf.md) | 283 | `declaration-track:cb3f1e316983a111ab7656cfe1c3cd4c9851ac1892e9c50b65077c9160e70ec5` |
| 26 | `lemma` | [ofTensorProduct_iso](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-iso--e5c7781f6bfff178a458b253.md) | 295 | `result-track:e5c7781f6bfff178a458b2538e71144a2e53a33622ba5af8af7d8966a6e74228` |
| 27 | `lemma` | [ofTensorProduct_bijective_of_map_from_fin](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-bijective-of-map-from-fin--4fb611a2ba9f18f111637e40.md) | 311 | `result-track:4fb611a2ba9f18f111637e40024dbe3ea72731622e539385261dacf8a8511f76` |
| 28 | `theorem` | [ofTensorProduct_bijective_of_finite_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproduct-bijective-of-finite-of-isnoetherian--8c218c5f9eae08a42da353e9.md) | 323 | `result-track:8c218c5f9eae08a42da353e97ceeae0afb67c674fc36fc899093922f0844e877` |
| 29 | `def` | [ofTensorProductEquivOfFiniteNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductequivoffinitenoetherian--a7f7cce593dd6580431e05e8.md) | 331 | `declaration-track:a7f7cce593dd6580431e05e85ae4e2a5d259315df05fa186285708ee54ebcb48` |
| 30 | `lemma` | [coe_ofTensorProductEquivOfFiniteNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/coe-oftensorproductequivoffinitenoetherian--ecf5c71cfc8a943c83fe59fa.md) | 336 | `result-track:ecf5c71cfc8a943c83fe59facf56966e5d086f622282fdf15071275fda83be70` |
| 31 | `lemma` | [ofTensorProductEquivOfFiniteNoetherian_apply](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductequivoffinitenoetherian-apply--d5d6e4cb68c11f7debb6dffd.md) | 341 | `result-track:d5d6e4cb68c11f7debb6dffd9f8266390d562c5c3d555dc675e8d668480a401e` |
| 32 | `lemma` | [ofTensorProductEquivOfFiniteNoetherian_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/oftensorproductequivoffinitenoetherian-symm-of--268448c6d749ecefc619d16e.md) | 347 | `result-track:268448c6d749ecefc619d16e7061e11e613271459d35b21f07ce352592e385b6` |
| 33 | `lemma` | [tensor_map_id_left_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/tensor-map-id-left-eq-map--cefcf6164aca13966323a25e.md) | 360 | `result-track:cefcf6164aca13966323a25eda0cfa4e680fe0d9bb8af18989ba4f995b49b40a` |
| 34 | `lemma` | [tensor_map_id_left_injective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/tensor-map-id-left-injective-of-injective--1d9324336c5b3724d92eb2af.md) | 371 | `result-track:1d9324336c5b3724d92eb2afb965ac9447993302f54963cbe2490ed4c2a12f4e` |
| 35 | `instance` | [flat_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/declarations/flat-of-isnoetherian--3e00b86647ffc1fc4a188d66.md) | 382 | `declaration-track:3e00b86647ffc1fc4a188d66e2c2a549b03fcc41b61bd816d493506325966eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
