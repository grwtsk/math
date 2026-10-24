# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21191c3bd17ca3280441b9068e48385f14d9f69f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21191c3bd17ca3280441b9068e48385f14d9f69f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Iterate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.NonUnitalAlg` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mul--89c5e8b0b1b143130e07a69b.md) | 34 | `declaration-track:89c5e8b0b1b143130e07a69bccb3497e4cae75adf9b28f1eb09f218220067448` |
| 2 | `def` | [mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mul--2662c041df9e26046ca5bc71.md) | 39 | `declaration-track:2662c041df9e26046ca5bc719aaa73950618507312b7ce03194a9d6557f4beae` |
| 3 | `def` | [mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft--2055b4328bef0270e3e01750.md) | 46 | `declaration-track:2055b4328bef0270e3e01750374a105b8aeca9b47214d497ff8002d85301419f` |
| 4 | `def` | [mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright--03c23fcb80d17cab47df8793.md) | 51 | `declaration-track:03c23fcb80d17cab47df8793b4bd804f2f73cbafc4ab21a5dc6ac61aa45ce1f9` |
| 5 | `def` | [mulLeftRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleftright--3225ebeeed8d9ad65bbf03cc.md) | 56 | `declaration-track:3225ebeeed8d9ad65bbf03ccf52aa825c17674f2a9d033f8c70ccfd1665ae8b4` |
| 6 | `theorem` | [mulLeft_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-toaddmonoidhom--9c21f1406b33bf8f38a635e0.md) | 61 | `result-track:9c21f1406b33bf8f38a635e09240d28c1264c7dd6b5119da80f4e02f2e81aeb9` |
| 7 | `theorem` | [mulRight_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-toaddmonoidhom--2dcb973461f288d9eceba8c3.md) | 66 | `result-track:2dcb973461f288d9eceba8c32eef2b99a2c21e5b482e74404b68d1c9cc21166a` |
| 8 | `theorem` | [mul_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mul-apply--a001a8dfd24f523d5c7efac0.md) | 73 | `result-track:a001a8dfd24f523d5c7efac05890c541df3a190d04001d870bd211df7513ad30` |
| 9 | `theorem` | [mulLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-apply--a08a73dd1a01b472c56e6108.md) | 78 | `result-track:a08a73dd1a01b472c56e61084400fe8bd5383675203fc1ca9651aca6cc58f7a9` |
| 10 | `theorem` | [mulRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-apply--a3702003b1fb2e042560eb4c.md) | 83 | `result-track:a3702003b1fb2e042560eb4c2713035d0d461021ee59fb1702ae600fbea95c96` |
| 11 | `theorem` | [mulLeftRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleftright-apply--c86e09e6deaf9dce20b475d4.md) | 88 | `result-track:c86e09e6deaf9dce20b475d490484ab03d49208823b1310c53000cb53a650fad` |
| 12 | `theorem` | [mul'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mul-apply--ed0fbae69d71464aaad8913d.md) | 93 | `result-track:ed0fbae69d71464aaad8913d83091fa8842b93f50286c2766b824f7b7f323027` |
| 13 | `theorem` | [mulLeft_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-zero-eq-zero--77ca6735651673cd1142da44.md) | 98 | `result-track:77ca6735651673cd1142da44f5867a807df2e1b52d73f64e529af2bb928f004f` |
| 14 | `theorem` | [mulRight_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-zero-eq-zero--ee92a8c9b8757f284fb2b529.md) | 103 | `result-track:ee92a8c9b8757f284fb2b5296c7bb7017c0ca921ff87e75f8b54757754faa23a` |
| 15 | `def` | [_root_.NonUnitalAlgHom.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/root-nonunitalalghom-lmul--22452cb442b23f49a74b3377.md) | 117 | `declaration-track:22452cb442b23f49a74b3377b4daaa8e29461ecafb60949de8d7c96406351448` |
| 16 | `theorem` | [_root_.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/root-nonunitalalghom-coe-lmul-eq-mul--0933d5349d0aff821d6bf391.md) | 131 | `result-track:0933d5349d0aff821d6bf391ebfd6f962c4fba1412dfaddfff0d22e84d3e8ba9` |
| 17 | `theorem` | [commute_mulLeft_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/commute-mulleft-right--8ba23941cec3c66e0cdc0cf2.md) | 135 | `result-track:8ba23941cec3c66e0cdc0cf2ec76d6ebfb9daa1b9a7b75e4e6ad40f9007eba60` |
| 18 | `theorem` | [mulLeft_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-mul--70c74a5ac02e2d6607418d9a.md) | 141 | `result-track:70c74a5ac02e2d6607418d9acab882269bd7d69c4d7398f9d7dfc4c1118271e6` |
| 19 | `theorem` | [mulRight_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-mul--8d85dcdb65f447525f5b824a.md) | 147 | `result-track:8d85dcdb65f447525f5b824ac88bd9ca3a66dfbf81bfd0f6c1b5951824f0e59e` |
| 20 | `def` | [_root_.Algebra.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/root-algebra-lmul--9ca8c81591d193e23d77d443.md) | 162 | `declaration-track:9ca8c81591d193e23d77d4439fb0cd18cac6be906613aa4c65a6541ccb53ec85` |
| 21 | `theorem` | [_root_.Algebra.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/root-algebra-coe-lmul-eq-mul--a4f7e6ae0faa79a02e802821.md) | 183 | `result-track:a4f7e6ae0faa79a02e802821ac6b729b9ede819cde66f2bf92972e64a1ad0237` |
| 22 | `theorem` | [mulLeft_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-eq-zero-iff--6c0cdeeb6940870e1c5c00c5.md) | 188 | `result-track:6c0cdeeb6940870e1c5c00c5d184fb26cdc68ffa353c8ac755606fb259f8d827` |
| 23 | `theorem` | [mulRight_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-eq-zero-iff--425abdeb7f528867b95cbeab.md) | 197 | `result-track:425abdeb7f528867b95cbeab90dc8d430aaacf54d359fa78f3c76519fc3cad72` |
| 24 | `theorem` | [mulLeft_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-one--a849441cc198677a688229f1.md) | 206 | `result-track:a849441cc198677a688229f18b7d5b9ba0fd16af76f5e9a989fc82f66842c0b1` |
| 25 | `theorem` | [mulRight_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-one--b5fac149321039af6b6a4880.md) | 212 | `result-track:b5fac149321039af6b6a488058c5dd785f5ecf44ca1446771576df9f347fbdc3` |
| 26 | `theorem` | [pow_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/pow-mulleft--d5e122607a4e4e9e57104fb3.md) | 218 | `result-track:d5e122607a4e4e9e57104fb32ec12429c48f7eeb6a60f5bd3ebe235ca0b8a4af` |
| 27 | `theorem` | [pow_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/pow-mulright--39cde43812164ea6d57bc800.md) | 223 | `result-track:39cde43812164ea6d57bc80006d1a75d9972459eb6f7d8bf2528715dcd01f479` |
| 28 | `theorem` | [mulLeft_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulleft-injective--6b498be787e2557cd7bb8943.md) | 235 | `result-track:6b498be787e2557cd7bb894319a5d57153341dd220900be1b44ef3e95dd9b756` |
| 29 | `theorem` | [mulRight_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mulright-injective--905d49fd8bd3273d20761018.md) | 242 | `result-track:905d49fd8bd3273d2076101856280279fe449a307012d08618885e4a899d671e` |
| 30 | `theorem` | [mul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean/declarations/mul-injective--4cb0dcfe2fe286c467f38f89.md) | 249 | `result-track:4cb0dcfe2fe286c467f38f89a8edf41ae9289289e6a4160183ebf1b659be5ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
