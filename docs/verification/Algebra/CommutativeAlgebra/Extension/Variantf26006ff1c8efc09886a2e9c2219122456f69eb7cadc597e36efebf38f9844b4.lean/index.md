# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Extension.Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e981f95541f2715b2acfaec0acefb5585d1a0bf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e981f95541f2715b2acfaec0acefb5585d1a0bf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/lifts--a3c4eb8a41380170b7db21fc.md) | 31 | `declaration-track:a3c4eb8a41380170b7db21fc98327e9e8bce73aa77c4157bfd813f8df5808c48` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/instance--90f21c0bec1539f743e74a52.md) | 41 | `declaration-track:90f21c0bec1539f743e74a52ef42480f15d2c3d5460720b472bfe4727f5e251b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/instance--082cc6e950e7361564bd96d2.md) | 54 | `declaration-track:082cc6e950e7361564bd96d29e3d9a4fccfee007ad6891a1ae2348dcfe487298` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/instance--56fd77e149e029d243a898b0.md) | 61 | `declaration-track:56fd77e149e029d243a898b04ee14b15c32c25f83d62c087c980f6a365d5ae31` |
| 5 | `theorem` | [le_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/le-iff--b14264c5adb69d36d3bb7c98.md) | 66 | `result-track:b14264c5adb69d36d3bb7c98a116e34ee5a8ecd217396600617977c7ebfaacb8` |
| 6 | `theorem` | [eq_iff_le_carrier_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/eq-iff-le-carrier-eq--8f325d0069896bc4d5526f3a.md) | 70 | `result-track:8f325d0069896bc4d5526f3a828cec10a6bf1129a8fa7d82e998dd3d46eba75a` |
| 7 | `theorem` | [eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/eq-iff--5ce1acc217a69074e7dc286f.md) | 73 | `result-track:5ce1acc217a69074e7dc286fc206cfae9db9333c9c6d08860718ee6895a967c0` |
| 8 | `theorem` | [lt_iff_le_carrier_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/lt-iff-le-carrier-ne--c98927d7f2f61a83b8a0d281.md) | 78 | `result-track:c98927d7f2f61a83b8a0d281cac7dfac2e02b32a2ca8f14b68c10f898c9924d8` |
| 9 | `theorem` | [lt_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/lt-iff--2b35a04bde6d81bf9d814e72.md) | 81 | `result-track:2b35a04bde6d81bf9d814e726f0017431b8e644384f56f250e49a485131a1d65` |
| 10 | `theorem` | [le_of_carrier_le_iSup](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/le-of-carrier-le-isup--31b93a155ccc72003c3cc06a.md) | 86 | `result-track:31b93a155ccc72003c3cc06a0d2a15f2125765a31d1f38ed3428806a56c7e8be` |
| 11 | `def` | [IsExtendible](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/isextendible--bb48ee24c0c032ccda8d9360.md) | 100 | `declaration-track:bb48ee24c0c032ccda8d9360cca25b1c9ac2c0cdd06e0ac874238c88f1f0dc72` |
| 12 | `def` | [union](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/union--461a15eb51758c6a07be7718.md) | 107 | `declaration-track:461a15eb51758c6a07be7718e5391a86ad3794c4389fe186cba5b16847e72006` |
| 13 | `theorem` | [le_union](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/le-union--80da87c7d69515f7aad3bcf0.md) | 119 | `result-track:80da87c7d69515f7aad3bcf0ae4f6280dbc5e3d3479bcbc9c5261e0bcf353e42` |
| 14 | `theorem` | [carrier_union](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/carrier-union--d336e15d0eff1f3ad0688376.md) | 127 | `result-track:d336e15d0eff1f3ad0688376933002c6a8305e2fba9bafd3f12a17db45b40665` |
| 15 | `theorem` | [exists_upper_bound](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-upper-bound--f38e80892ef31f7e9e44cf8a.md) | 132 | `result-track:f38e80892ef31f7e9e44cf8aaa5d18dea20bac3442f13a3b7d15f941453630fc` |
| 16 | `theorem` | [union_isExtendible](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/union-isextendible--7db62e79f2b9fe07cc764ebd.md) | 135 | `result-track:7db62e79f2b9fe07cc764ebd4c4920907f82720312870fef0e02646b879efe4e` |
| 17 | `theorem` | [nonempty_algHom_of_exist_lifts_finset](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/nonempty-alghom-of-exist-lifts-finset--ab559e020b39a31fd56ca610.md) | 172 | `result-track:ab559e020b39a31fd56ca610fff2c3c5d51593386d2d9475a16e7d3c3d40adaf` |
| 18 | `theorem` | [exists_lift_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-lift-of-splits--8e7c29de380a96fab47fec19.md) | 203 | `result-track:8e7c29de380a96fab47fec194b758622da3c284d087287bd216cfb340390c291` |
| 19 | `theorem` | [exists_lift_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-lift-of-splits--ab2da6593dafcf157d87a36f.md) | 220 | `result-track:ab2da6593dafcf157d87a36f46198d116857943af36ae6236324cc0ccacce38b` |
| 20 | `theorem` | [exists_algHom_adjoin_of_splits''](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-adjoin-of-splits--0f3ae4c4fd429ea3d42437f1.md) | 229 | `result-track:0f3ae4c4fd429ea3d42437f1f57d76b9006f3aee1f79f3fa11910f14be8ca149` |
| 21 | `theorem` | [exists_algHom_adjoin_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-adjoin-of-splits--69769ada73e8e459b41936ae.md) | 248 | `result-track:69769ada73e8e459b41936aeff3e2f39e5e4be94a5c9bd88d6255524d87c10a8` |
| 22 | `theorem` | [exists_algHom_of_adjoin_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-of-adjoin-splits--305a4d87608b86669ca42dc9.md) | 272 | `result-track:305a4d87608b86669ca42dc98653994811bed20fb8d5353cb9707c8120c2a1e7` |
| 23 | `theorem` | [exists_algHom_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-of-splits--35d476eec7b72eb8cf66dbb8.md) | 277 | `result-track:35d476eec7b72eb8cf66dbb8e109980ad3a6004dd529a0f31c603f3ad0a07ba3` |
| 24 | `theorem` | [exists_algHom_adjoin_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-adjoin-of-splits--84926cd60feebd01c8d0d033.md) | 290 | `result-track:84926cd60feebd01c8d0d0335561e57d8d551c992d1c1263d51aedea35a07f65` |
| 25 | `theorem` | [nonempty_algHom_adjoin_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/nonempty-alghom-adjoin-of-splits--01a2cc5982430268c9a521ad.md) | 298 | `result-track:01a2cc5982430268c9a521ad58b5d73ca7b5cc4c4ddfbd64f623ce58fc575adc` |
| 26 | `theorem` | [exists_algHom_of_adjoin_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-of-adjoin-splits--38f79d0a7eff3bf64849bf7b.md) | 304 | `result-track:38f79d0a7eff3bf64849bf7b28a23b0c97744b77d0d38968e4d62f69da9f4fc9` |
| 27 | `theorem` | [nonempty_algHom_of_adjoin_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/nonempty-alghom-of-adjoin-splits--721b29bf708cbaf22cd8920a.md) | 309 | `result-track:721b29bf708cbaf22cd8920ae3b032d69e1d376cd4060f247e3ae41f95c1aad6` |
| 28 | `theorem` | [exists_algHom_adjoin_of_splits_of_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-adjoin-of-splits-of-aeval--7f961925bf4fc689137d7473.md) | 315 | `result-track:7f961925bf4fc689137d747371f856d6dfe49b534fb250f563d8a2bad8b04c3b` |
| 29 | `theorem` | [exists_algHom_of_adjoin_splits_of_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-of-adjoin-splits-of-aeval--8431b3a26f8e2be790646ae8.md) | 325 | `result-track:8431b3a26f8e2be790646ae89c01d03870e2be6cb319dbdb03d31b0c15de07f4` |
| 30 | `theorem` | [exists_algHom_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-of-splits--93399354251f73160d3d5b03.md) | 337 | `result-track:93399354251f73160d3d5b03a5eaf08aa5f613679838e2a97a226c3995cef467` |
| 31 | `theorem` | [nonempty_algHom_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/nonempty-alghom-of-splits--f679e0f856bc3dc450e11c4a.md) | 340 | `result-track:f679e0f856bc3dc450e11c4afe36e379e65df9a792b5999003c0e755716d0aeb` |
| 32 | `theorem` | [exists_algHom_of_splits_of_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/exists-alghom-of-splits-of-aeval--7e573c8155baed1cef389f40.md) | 343 | `result-track:7e573c8155baed1cef389f40dad8bee0fdc8d7c8621e543a98805db6f9e352d3` |
| 33 | `theorem` | [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/declarations/algebra-isalgebraic-range-eval-eq-rootset-minpoly-of-splits--ad207ff67f1227162e59669b.md) | 357 | `result-track:ad207ff67f1227162e59669bf2bc6cc40e85a9de71eb29c12f2ae18f04460496` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
