# Verification target: GRWTSK.Algebra.LinearAlgebra.IsTensorProduct.Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59cddf7f452d6b26d315fe5081e6d38c1a380703",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59cddf7f452d6b26d315fe5081e6d38c1a380703`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct--7a326b3f17bdcf0e518e8320.md) | 69 | `declaration-track:7a326b3f17bdcf0e518e83208e0f8651cd2f9709ccf771f8cec3ab0e3cefa41b` |
| 2 | `theorem` | [TensorProduct.isTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/tensorproduct-istensorproduct--36f38746ba4d1d88a50b2552.md) | 75 | `result-track:36f38746ba4d1d88a50b25528ff4d87e50cd8767c3c048f855b0fc53086413c6` |
| 3 | `def` | [IsTensorProduct.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-equiv--cd8497bcdb41435df72dc3e9.md) | 87 | `declaration-track:cd8497bcdb41435df72dc3e94d8b62df862953194648bf953b62e501905885f6` |
| 4 | `theorem` | [IsTensorProduct.equiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-equiv-tolinearmap--61a9d2d1bcf13ae8fd70b7b4.md) | 92 | `result-track:61a9d2d1bcf13ae8fd70b7b46bd5d3d307c6164e01dc304d83c29857dce35b1c` |
| 5 | `theorem` | [IsTensorProduct.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-equiv-symm-apply--6e0e48d5bad8af9a9b2eea00.md) | 98 | `result-track:6e0e48d5bad8af9a9b2eea008efaf638e1640f8b39597b78af046875e27b64d7` |
| 6 | `def` | [IsTensorProduct.lift](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-lift--17530c34498575ccf49fba6f.md) | 107 | `declaration-track:17530c34498575ccf49fba6f4ea8b609d20e53fb79841c64b72ac9a954e6886f` |
| 7 | `theorem` | [IsTensorProduct.lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-lift-eq--5709f3700b4afdc1c941cff3.md) | 112 | `result-track:5709f3700b4afdc1c941cff33d5559922836935733259a87011e6b1e2fee0893` |
| 8 | `def` | [IsTensorProduct.map](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-map--b12831bd172986993ebbe1fa.md) | 119 | `declaration-track:b12831bd172986993ebbe1fa22c957a4d7d63e132880dcb4e1b6dd8318ead79d` |
| 9 | `theorem` | [IsTensorProduct.map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-map-eq--94ec16aae0efeab3e6dc4fb3.md) | 124 | `result-track:94ec16aae0efeab3e6dc4fb3aa6154305153c0db841ce6940e4cd1874bc60dd2` |
| 10 | `theorem` | [IsTensorProduct.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/istensorproduct-inductionon--52f848d77c42c256fe516c3e.md) | 130 | `result-track:52f848d77c42c256fe516c3ea9c5c9619b4a52917199eced3c47a83dfebaf257` |
| 11 | `def` | [IsBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange--4b5e66a87724d775d2aa36bb.md) | 160 | `declaration-track:4b5e66a87724d775d2aa36bb54fb618c570d89980429ae59c36b56f98e65d1a0` |
| 12 | `def` | [IsBaseChange.lift](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-lift--c59c8091e8a7bde526b6cd86.md) | 179 | `declaration-track:c59c8091e8a7bde526b6cd8680b4137c03f6d936697107e252b408967e4bd5d9` |
| 13 | `theorem` | [IsBaseChange.lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-lift-eq--3aa7bd22519942e093254841.md) | 197 | `result-track:3aa7bd22519942e0932548411895e6bdb3d86169d91ca11db9f19d3e08b8ac0a` |
| 14 | `theorem` | [IsBaseChange.lift_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-lift-comp--64872ee33d06ed9c24ba446e.md) | 202 | `result-track:64872ee33d06ed9c24ba446e3f317eeb6179a90422b0471291bb71ffc2140bde` |
| 15 | `theorem` | [IsBaseChange.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-inductionon--90304468f579725521352eb5.md) | 209 | `result-track:90304468f579725521352eb5b222ae3501caf990dea4a7b2b186f7aa0d1ee730` |
| 16 | `theorem` | [IsBaseChange.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-alghom-ext--8f055bc85eccc384d9a76e70.md) | 214 | `result-track:8f055bc85eccc384d9a76e705f4e1deb2a3719f7d9be4cfc9cb673f13bf2fc3a` |
| 17 | `theorem` | [IsBaseChange.algHom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-alghom-ext--4ac6b335fb4c4d4330c5cac7.md) | 225 | `result-track:4ac6b335fb4c4d4330c5cac7f08a09165b2b9f663430db97e35f937666c19e4e` |
| 18 | `theorem` | [TensorProduct.isBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/tensorproduct-isbasechange--984012bd841fcff5e606b8c9.md) | 232 | `result-track:984012bd841fcff5e606b8c9333fb367361468156db2b8fb3b1410545da57a25` |
| 19 | `def` | [IsBaseChange.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-equiv--bfd5336de013cbfb6481afe6.md) | 245 | `declaration-track:bfd5336de013cbfb6481afe64b43afb1920a7e28a187eb52ed1829ba84492748` |
| 20 | `theorem` | [IsBaseChange.equiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-equiv-tmul--356fbf2256b2317fb5fecdd1.md) | 261 | `result-track:356fbf2256b2317fb5fecdd1431e5b043c78e89f8462f61bf7934ff1cce69b5e` |
| 21 | `theorem` | [IsBaseChange.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-equiv-symm-apply--21b16e4deef7f06575eb19c6.md) | 265 | `result-track:21b16e4deef7f06575eb19c682a469985bd3e30633708e740954196ecd8fa45d` |
| 22 | `theorem` | [IsBaseChange.of_lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-of-lift-unique--d63ab5e5720c38c1ea1853dd.md) | 271 | `result-track:d63ab5e5720c38c1ea1853dd52f9c74b497ce5af69097df27b81bc58eedd002e` |
| 23 | `theorem` | [IsBaseChange.iff_lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-iff-lift-unique--c44d1435ec19aed45af487a5.md) | 308 | `result-track:c44d1435ec19aed45af487a50383a1e21e4bced197968d76931891d0b9681f38` |
| 24 | `theorem` | [IsBaseChange.ofEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-ofequiv--027cc89b42739a46cba5f794.md) | 320 | `result-track:027cc89b42739a46cba5f7941f60c5e5ba4331f75506e9b66b268ae31ec9a62f` |
| 25 | `theorem` | [IsBaseChange.comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/isbasechange-comp--99dc7f2259eb9cb51a4df827.md) | 345 | `result-track:99dc7f2259eb9cb51a4df827c2c57270e6d4ef63d1635aeb56a85ffe35db784e` |
| 26 | `class` | [Algebra.IsPushout](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-ispushout--2c6b7515dc1875c280cd9238.md) | 387 | `declaration-track:2c6b7515dc1875c280cd92389045b7b5e6d495385cfa4f9ba6dc950159ed322f` |
| 27 | `theorem` | [Algebra.IsPushout.symm](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-ispushout-symm--9a09f1916a2b9e72cfb14805.md) | 394 | `result-track:9a09f1916a2b9e72cfb1480578aae358448b19576f290d6b3f57eb3b40d6a0bd` |
| 28 | `theorem` | [Algebra.IsPushout.comm](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-ispushout-comm--ccaf708ebdac6a5dc316a5f6.md) | 421 | `result-track:ccaf708ebdac6a5dc316a5f6d09fe354f55ee024f32134cbea26e5f8cd58157b` |
| 29 | `instance` | [TensorProduct.isPushout](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/tensorproduct-ispushout--0674c0172e08cda6386add32.md) | 429 | `declaration-track:0674c0172e08cda6386add324471fbe63286cb7d3ba9b6860a5c25ac626a6558` |
| 30 | `instance` | [TensorProduct.isPushout'](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/tensorproduct-ispushout--8ce8d64b3f65398623c8a6f8.md) | 434 | `declaration-track:8ce8d64b3f65398623c8a6f8c2ee58d516242b9059632c97e1303d45b40e2919` |
| 31 | `def` | [Algebra.pushoutDesc](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-pushoutdesc--23d011628c1d6878bf874284.md) | 443 | `declaration-track:23d011628c1d6878bf874284d9bb0580765825184d2487debe87981fa38b78f1` |
| 32 | `theorem` | [Algebra.pushoutDesc_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-pushoutdesc-apply--8907284c5a422b3e4340497d.md) | 482 | `result-track:8907284c5a422b3e4340497d5a6527b8ce85c8b290e48f66a76d34e99db24a7b` |
| 33 | `theorem` | [Algebra.pushoutDesc_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-pushoutdesc-left--dd65a1b575f1066beca9e3a1.md) | 492 | `result-track:dd65a1b575f1066beca9e3a1cdf3494c177eeff402b14caffa0086c3d3eb9088` |
| 34 | `theorem` | [Algebra.lift_algHom_comp_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-lift-alghom-comp-left--3b21f2471d976037e0aad5e6.md) | 505 | `result-track:3b21f2471d976037e0aad5e672a6a46edd0ef0559d89fd9dbef25f43f93b6df8` |
| 35 | `theorem` | [Algebra.pushoutDesc_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-pushoutdesc-right--59a6c7c1c694f426fa21a846.md) | 512 | `result-track:59a6c7c1c694f426fa21a846f6d9f2568d6d3acacefda48cadd5aff2c1a5a702` |
| 36 | `theorem` | [Algebra.lift_algHom_comp_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-lift-alghom-comp-right--66af3826efd98a9572321899.md) | 522 | `result-track:66af3826efd98a957232189928c2fb8309ab672eaa0777dd3209d7c4ca417dc7` |
| 37 | `theorem` | [Algebra.IsPushout.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/declarations/algebra-ispushout-alghom-ext--b9b5e84802061007781c9c30.md) | 529 | `result-track:b9b5e84802061007781c9c30e548acdaf065de5a70ed62b22ef6f21cbf42a735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
