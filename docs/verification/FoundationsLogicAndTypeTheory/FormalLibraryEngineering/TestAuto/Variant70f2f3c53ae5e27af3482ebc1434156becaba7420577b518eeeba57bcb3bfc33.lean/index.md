# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestAuto.Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61bddb4cb8b1b3c47c1462c74dad89a8fea1387d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61bddb4cb8b1b3c47c1462c74dad89a8fea1387d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/i01--740893099ef94a021f4185f9.md) | 28 | `declaration-track:740893099ef94a021f4185f99d1434090cedc5f7acfe4847d7796ad893dd744a` |
| 2 | `theorem` | [test_xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-xsq-le-one--f7425cc741212f97a93a8ce7.md) | 31 | `result-track:f7425cc741212f97a93a8ce7d803849bfe18f1a1297260b0b07eecb0805d80da` |
| 3 | `theorem` | [test_zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-zero-le-xsq--1b7bf154949450f20cc4603d.md) | 35 | `result-track:1b7bf154949450f20cc4603db59ec182e1de15d3a05f98290d1d2806b0ce28b1` |
| 4 | `theorem` | [test_sin_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-sin-le-one--77550380904ed0830499d8a7.md) | 39 | `result-track:77550380904ed0830499d8a7dcefdc2d7ff1299199559db31f28e61275f2292f` |
| 5 | `theorem` | [test_neg_one_le_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-neg-one-le-sin--91a670b6020c45c263c7780e.md) | 43 | `result-track:91a670b6020c45c263c7780ecebacb01acd468cceaca5dffe00c8c12a3445df5` |
| 6 | `theorem` | [test_xsq_plus_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-xsq-plus-sin--980e22b8fd34b47accf8b565.md) | 47 | `result-track:980e22b8fd34b47accf8b565c010977ac5368c59b41fdc78729426fab3b27505` |
| 7 | `theorem` | [test_xsq_minus_two_lt_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-xsq-minus-two-lt-zero--92046a3ef705f5f6a9eeb515.md) | 52 | `result-track:92046a3ef705f5f6a9eeb515f32928ca5f181cad49f6442acd010299bf223e06` |
| 8 | `theorem` | [test_exp_le_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-exp-le-three--c1d292fe051dbcdd8f668b9f.md) | 57 | `result-track:c1d292fe051dbcdd8f668b9f71b870c1e81515d2caa71f70d5460c94fc88a7c2` |
| 9 | `theorem` | [test_point_nine_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-point-nine-le-exp--c87073fef6c8f82b5c40cba1.md) | 62 | `result-track:c87073fef6c8f82b5c40cba1afc88d94379bf385d46626439d5aa340f9c98f04` |
| 10 | `theorem` | [test_one_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-one-le-exp--27c5c116ccd494dd3b52b48b.md) | 69 | `result-track:27c5c116ccd494dd3b52b48bb150527f20960daa70f916385aa9cffeae1ba495` |
| 11 | `theorem` | [test_exp_le_e_approx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-exp-le-e-approx--343c418db6d2f6aef1ca4f01.md) | 75 | `result-track:343c418db6d2f6aef1ca4f0139934f63fa48276b8224b241bafb1776c388a4fc` |
| 12 | `theorem` | [test_raw_xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-raw-xsq-le-one--14e491a90b14ac6069f27f59.md) | 86 | `result-track:14e491a90b14ac6069f27f59354b7efb275ffcc976420a0dfa06c2fd648380be` |
| 13 | `theorem` | [test_raw_zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-raw-zero-le-xsq--200f19990e77c2053d5371e3.md) | 90 | `result-track:200f19990e77c2053d5371e3a926c5758951c165ebc44036cdc8e813d46d6bb0` |
| 14 | `theorem` | [test_raw_sin_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-raw-sin-le-one--057f10719dc3ae363cab8b1f.md) | 94 | `result-track:057f10719dc3ae363cab8b1f5109cbb551b0d8b2b643f21ad82473945aa34585` |
| 15 | `theorem` | [test_raw_exp_le_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-raw-exp-le-three--eef51fcdc2f35ec2251ef7d8.md) | 98 | `result-track:eef51fcdc2f35ec2251ef7d81bd7c321f96870a61d757e34a1cc64fc5c790b2c` |
| 16 | `theorem` | [test_raw_one_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-raw-one-le-exp--5d30ee4ec76c4d30de1e8911.md) | 102 | `result-track:5d30ee4ec76c4d30de1e891143a966470a45d9ba7366d856ad859e693687fccd` |
| 17 | `theorem` | [test_raw_xsq_plus_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-raw-xsq-plus-sin--831460a44d2593621a54c40e.md) | 106 | `result-track:831460a44d2593621a54c40ebf6a7969c73a30b1ffa44ea9897b353e7f417593` |
| 18 | `def` | [B01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/b01--ea12c34c33facafe1a84b00a.md) | 118 | `declaration-track:ea12c34c33facafe1a84b00a90a946f97f3563ed5113158db13fbd955f6d10f9` |
| 19 | `def` | [B01_2D](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/b01-2d--d1b3e3864ed5bf4b59680888.md) | 122 | `declaration-track:d1b3e3864ed5bf4b59680888507153853cbcc2ccf8761b88cecd9b75e1ab6fd7` |
| 20 | `theorem` | [test_opt_xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-opt-xsq-le-one--01610fceae162f3a04afbd4d.md) | 128 | `result-track:01610fceae162f3a04afbd4dbf1a457df3888c10e327f6d2ecbcb41c669cfb1f` |
| 21 | `theorem` | [test_opt_zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-opt-zero-le-xsq--8bd9205e0a93d3edce1e7afd.md) | 139 | `result-track:8bd9205e0a93d3edce1e7afdbf91bd649963633f2b0ba87d5e91c5481ea4a62d` |
| 22 | `theorem` | [test_opt_2d_sum_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-opt-2d-sum-sq--5fd5a4a75e04b68d8b9fab57.md) | 150 | `result-track:5fd5a4a75e04b68d8b9fab57f53ae6c3ed31a219f0d02fd5f43b1c7c513fa32d` |
| 23 | `theorem` | [test_xsq_plus_one_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-xsq-plus-one-ne-zero--c660ac2fa158969f81020971.md) | 168 | `result-track:c660ac2fa158969f810209714222ef19853d478e2b8837bdbce233a425a8272d` |
| 24 | `theorem` | [test_exp_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-exp-ne-zero--e035259d2c89246f0451e324.md) | 173 | `result-track:e035259d2c89246f0451e32463db38bb2656965beb48859c9678443524c51801` |
| 25 | `theorem` | [test_x_plus_two_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-x-plus-two-ne-zero--bdc3bcf5c9eaefeb86cd795f.md) | 178 | `result-track:bdc3bcf5c9eaefeb86cd795fc8acd438b760a8bdf457943aca51d710cca266a3` |
| 26 | `theorem` | [test_xsq_minus_two_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/declarations/test-xsq-minus-two-ne-zero--e23d6c71108d235e1d3814e1.md) | 184 | `result-track:e23d6c71108d235e1d3814e11ca24a2e3cacb93b961da559762eb8fb647ef922` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
