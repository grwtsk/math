# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e35e3a8cd0ecef76e3b68db016fa98b474a0f12",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e35e3a8cd0ecef76e3b68db016fa98b474a0f12`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/coe-dvd--a96e659631fae6b3623b4dcb.md) | 38 | `result-track:a96e659631fae6b3623b4dcbc016a5fdd9b4cb6c832219dc3613e4d65920833c` |
| 2 | `theorem` | [dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/dvd-mul-right--3cd737e7612ed26792062582.md) | 43 | `result-track:3cd737e7612ed2679206258248ba7b302694a6e109c3ab5daf1b8fe92f33abda` |
| 3 | `theorem` | [mul_right_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/mul-right-dvd--4ffa2a6238106f4b03a92289.md) | 48 | `result-track:4ffa2a6238106f4b03a9228903dbdb2b71353133db189060a36b9f224f69eb7c` |
| 4 | `theorem` | [dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/dvd-mul-left--0d4e11b9555315a13913244b.md) | 60 | `result-track:0d4e11b9555315a13913244b4a670b19587d6895a0956517ef50844168181f6c` |
| 5 | `theorem` | [mul_left_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/mul-left-dvd--4ad5d66acb1528c1e3a07bc5.md) | 66 | `result-track:4ad5d66acb1528c1e3a07bc58bc7e6aa7e8c4a48e609660015d023ae943ef451` |
| 6 | `theorem` | [dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/dvd--6c6145fb73c889b1906568fc.md) | 82 | `result-track:6c6145fb73c889b1906568fcf95097c69a791842c4e97288a90d96a420da71e8` |
| 7 | `theorem` | [dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/dvd-mul-right--a014a82afb563113ea0c3d71.md) | 87 | `result-track:a014a82afb563113ea0c3d71edaca38c74b94be34cb6d770c56f93899cec8e31` |
| 8 | `theorem` | [mul_right_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/mul-right-dvd--05952cfff4ff80f5a2e14e64.md) | 93 | `result-track:05952cfff4ff80f5a2e14e649d8292ecb7a221dd2da46f8655cf789acfab90d2` |
| 9 | `theorem` | [isPrimal](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isprimal--1247b0b5d1e5d32d32756ede.md) | 97 | `result-track:1247b0b5d1e5d32d32756edee8f936cd4d6385bcdfe6aac65f5b3d3adbb0358a` |
| 10 | `theorem` | [dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/dvd-mul-left--6a4187c57b32e01152e9715d.md) | 109 | `result-track:6a4187c57b32e01152e9715d3aba0a6b2dd5a4ec6962ff37d30d7400b01a131e` |
| 11 | `theorem` | [mul_left_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/mul-left-dvd--9830cd11ab62da712219234f.md) | 116 | `result-track:9830cd11ab62da712219234f8be65b5b74be00a4c6ff60fab3ba202ba66a38a4` |
| 12 | `theorem` | [isUnit_iff_dvd_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isunit-iff-dvd-one--a5fbaf4f9b5c70af7ed30604.md) | 128 | `result-track:a5fbaf4f9b5c70af7ed306042a8fb0d9f413f15b4bb3463d15b2e462819c47b0` |
| 13 | `theorem` | [isUnit_iff_forall_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isunit-iff-forall-dvd--4e1e5af9ccebeedc3305cafd.md) | 131 | `result-track:4e1e5af9ccebeedc3305cafdde61fd1cf5fbe878157a975bc05514d9a04c90f1` |
| 14 | `theorem` | [isUnit_of_dvd_unit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isunit-of-dvd-unit--482fb48121bda9761814f4ee.md) | 134 | `result-track:482fb48121bda9761814f4ee2847aa27cba0b55622c37a6ac5f483cba3703e0c` |
| 15 | `theorem` | [isUnit_of_dvd_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isunit-of-dvd-one--56080c329b7b79a8c6da7256.md) | 137 | `result-track:56080c329b7b79a8c6da72566b5603203cdc0b557d9ca41ce43965a3ffe2006a` |
| 16 | `theorem` | [not_isUnit_of_not_isUnit_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/not-isunit-of-not-isunit-dvd--4b03e7503ca3625d3fa2b0b5.md) | 140 | `result-track:4b03e7503ca3625d3fa2b0b5a009027c4806551c7c64afb3fca4ecfef5eca693` |
| 17 | `def` | [IsRelPrime](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime--c0bdf43261d83f79523266b1.md) | 148 | `declaration-track:c0bdf43261d83f79523266b1ea5a4b7b3aa8a8cfb9f1c607277fad1b091f922e` |
| 18 | `theorem` | [IsRelPrime.symm](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-symm--16fea1bede2bbe3cbf5fd1c2.md) | 152 | `result-track:16fea1bede2bbe3cbf5fd1c26ad34c1866bb0967ffc6e9a6f951f41a33361b62` |
| 19 | `theorem` | [isRelPrime_comm](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-comm--47243aa39970d1da57391dac.md) | 154 | `result-track:47243aa39970d1da57391dac8fec2205c4e70880d3fd5edc2543e31c1f6a6a79` |
| 20 | `theorem` | [isRelPrime_self](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-self--23cde825704f86fc9815b2e6.md) | 157 | `result-track:23cde825704f86fc9815b2e62487b944c5471969b80f46001707f65d71c539f0` |
| 21 | `theorem` | [IsUnit.isRelPrime_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isunit-isrelprime-left--20d225f543a93e357da7584a.md) | 160 | `result-track:20d225f543a93e357da7584afed69ac86b5ea6bea0de8cc7db3ff9edb5d95037` |
| 22 | `theorem` | [IsUnit.isRelPrime_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isunit-isrelprime-right--c253f57d874d9110613db606.md) | 162 | `result-track:c253f57d874d9110613db606172a78ce1f10a1d9278ce65b7eb53f83ae48eacc` |
| 23 | `theorem` | [isRelPrime_one_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-one-left--8d5586318cecc03a9490d161.md) | 163 | `result-track:8d5586318cecc03a9490d16182a77fde35adb3f5ceccb791201bfda17a1a4842` |
| 24 | `theorem` | [isRelPrime_one_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-one-right--c7c556e7035ee5d183de2019.md) | 164 | `result-track:c7c556e7035ee5d183de201930e4b9e76a6b67b5ddcd62db95a6b8dddf0b2bf1` |
| 25 | `theorem` | [IsRelPrime.of_mul_left_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-of-mul-left-left--4de49c0069bdfc60503b9e4f.md) | 166 | `result-track:4de49c0069bdfc60503b9e4f25064e599a4c251ffb3847cfcbab16adc96a0b36` |
| 26 | `theorem` | [IsRelPrime.of_mul_left_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-of-mul-left-right--3966f25829950e44e6182f21.md) | 169 | `result-track:3966f25829950e44e6182f214d27b02995df1630d87cd046c9ed15177b218a70` |
| 27 | `theorem` | [IsRelPrime.of_mul_right_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-of-mul-right-left--4113e323e0c52c0e7659dab3.md) | 172 | `result-track:4113e323e0c52c0e7659dab375344038471ba674ed627e2f5fd33ec83bd4cc18` |
| 28 | `theorem` | [IsRelPrime.of_mul_right_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-of-mul-right-right--dff2fbeb2e6ecac1cc433751.md) | 176 | `result-track:dff2fbeb2e6ecac1cc433751c48fb60b0a649775ec06fb9a65f1330f09cfe79c` |
| 29 | `theorem` | [IsRelPrime.of_dvd_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-of-dvd-left--00a80971f9330e401f9f5dd6.md) | 179 | `result-track:00a80971f9330e401f9f5dd6b32c185cad51212ccabdbe09d1b3e9edd5b5ae19` |
| 30 | `theorem` | [IsRelPrime.of_dvd_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-of-dvd-right--b446c7c4aab02d2498cd4d15.md) | 182 | `result-track:b446c7c4aab02d2498cd4d153915429160f8e8ccb106484dee65cb80ffe84b07` |
| 31 | `theorem` | [IsRelPrime.isUnit_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-isunit-of-dvd--266c4b106e819f14d43beb58.md) | 185 | `result-track:266c4b106e819f14d43beb5878d8ae33f38013c04bd27c2157eef08bdcb1e4a5` |
| 32 | `theorem` | [isRelPrime_mul_unit_left_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-unit-left-left--a297d74fa7f5a8f68118cdf2.md) | 193 | `result-track:a297d74fa7f5a8f68118cdf203ceea156f1365337efac8d82977833d3f5ff325` |
| 33 | `theorem` | [isRelPrime_mul_unit_left_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-unit-left-right--17a716f1d915f16c5823f7d8.md) | 196 | `result-track:17a716f1d915f16c5823f7d8cf0606ccff725b087bb63cb05fe6b70cc0efa8e9` |
| 34 | `theorem` | [isRelPrime_mul_unit_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-unit-left--e2559efe5a5073b5cae4030f.md) | 199 | `result-track:e2559efe5a5073b5cae4030fda68b684ddae958d528b3b3e289a0fa3db6e5b4d` |
| 35 | `theorem` | [isRelPrime_mul_unit_right_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-unit-right-left--ebf140f3d0a173d29bdec418.md) | 202 | `result-track:ebf140f3d0a173d29bdec418024401532a7c388b49c9b271e6de5ccda5e98b4c` |
| 36 | `theorem` | [isRelPrime_mul_unit_right_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-unit-right-right--73c01fd13c6de2685556571e.md) | 205 | `result-track:73c01fd13c6de2685556571e32f8fc8a57f426449ac417ad1f1d0fa52c743493` |
| 37 | `theorem` | [isRelPrime_mul_unit_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-unit-right--51d0900a4e4d24b77213b496.md) | 208 | `result-track:51d0900a4e4d24b77213b4962140331f8305fdb86103febdf1f4c77cf005287b` |
| 38 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_right_of_isPrimal](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-dvd-of-dvd-mul-right-of-isprimal--644a4b34f0af2fed92c756d3.md) | 213 | `result-track:644a4b34f0af2fed92c756d348cb5151432c1f14d952cc648805ab60f23bca7c` |
| 39 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_left_of_isPrimal](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-dvd-of-dvd-mul-left-of-isprimal--9203426ac684086a0e7a0e13.md) | 218 | `result-track:9203426ac684086a0e7a0e13b73f6490ee53dbdf717d583c07a1510616402922` |
| 40 | `theorem` | [IsRelPrime.mul_dvd_of_right_isPrimal](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-dvd-of-right-isprimal--810d125e8fe9b65d881f2ba6.md) | 222 | `result-track:810d125e8fe9b65d881f2ba63f139d31719b2af3608a3aa32f3793d007baa3f2` |
| 41 | `theorem` | [IsRelPrime.mul_dvd_of_left_isPrimal](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-dvd-of-left-isprimal--93350e1e77c9fae0490771a4.md) | 227 | `result-track:93350e1e77c9fae0490771a44affafd8515ed002d3b0c8bca62ce5086878724f` |
| 42 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-dvd-of-dvd-mul-right--5453ffc7f15139aa6613ea2f.md) | 237 | `result-track:5453ffc7f15139aa6613ea2f5790f8c0bb326e4a437c9ee6c821fdbbe8bb0d5b` |
| 43 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-dvd-of-dvd-mul-left--e3b91ee2d28341b9b6cd4256.md) | 240 | `result-track:e3b91ee2d28341b9b6cd42564f6ab2fd34ddaaf1cfc40c160af358141d61de71` |
| 44 | `theorem` | [IsRelPrime.mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-left--cb9b655b8ed4205d1793dd02.md) | 243 | `result-track:cb9b655b8ed4205d1793dd02f671bd49c6744d0d34b67bdf07b45fd6a6b64cdc` |
| 45 | `theorem` | [IsRelPrime.mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-right--8477e4329ec13c6a23966417.md) | 248 | `result-track:8477e4329ec13c6a23966417ebb04f1c43f84f95bb841e70c658fba2170e9327` |
| 46 | `theorem` | [IsRelPrime.mul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-left-iff--3f5bdcc8b9acae614bde1c81.md) | 252 | `result-track:3f5bdcc8b9acae614bde1c8100f8202ff08ae6b2d989c5e582c427eeab2b7097` |
| 47 | `theorem` | [IsRelPrime.mul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-right-iff--a091c0f419cf0197996ed46e.md) | 255 | `result-track:a091c0f419cf0197996ed46e39ba6b17ea6161387383960203f9b0088689b6d1` |
| 48 | `theorem` | [IsRelPrime.mul_dvd](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/declarations/isrelprime-mul-dvd--418113b2b7030e9cbdac8877.md) | 258 | `result-track:418113b2b7030e9cbdac8877710933b28b103dbf8e9363397cfd7a000e26ddaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
