# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cd78d36030481cbad0d6423993c24c0104ddf98",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cd78d36030481cbad0d6423993c24c0104ddf98`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Bitwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_sub₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/pow-sub--83e1f81a93b8bf8726a9352e.md) | 25 | `result-track:83e1f81a93b8bf8726a9352e01b699db8a7881d930f7a1e5d101b98aa51d5ad7` |
| 2 | `theorem` | [pow_sub_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/pow-sub-of-lt--6bb4aacca6365e3553462850.md) | 31 | `result-track:6bb4aacca6365e355346285005046b34449aaf6ae60960a06be7e7d7360e3670` |
| 3 | `theorem` | [pow_inv_comm₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/pow-inv-comm--b558ba1f848c6f013ff6283a.md) | 37 | `result-track:b558ba1f848c6f013ff6283ab4bfb6648a746c6961b9fc18f90ad3b0fd863573` |
| 4 | `theorem` | [inv_pow_sub₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/inv-pow-sub--959946f4491e676207be372a.md) | 41 | `result-track:959946f4491e676207be372a388acff87cfe3b6ca1b1b6a2ee4447eb110527ff` |
| 5 | `theorem` | [inv_pow_sub_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/inv-pow-sub-of-lt--63c0951bc0c84afba9d94595.md) | 45 | `result-track:63c0951bc0c84afba9d945959ed0c030d4f055c7a11015db89d0070771438b31` |
| 6 | `theorem` | [zero_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zero-zpow--23c15f5802934b3e1c3af3ed.md) | 61 | `result-track:23c15f5802934b3e1c3af3ed7c0aa98a7395341fada106c66d9a64681b294a7e` |
| 7 | `theorem` | [zero_zpow_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zero-zpow-eq--3d5df027a8260a818624aca3.md) | 68 | `result-track:3d5df027a8260a818624aca38f6b526f3e3433554c702169e8a277f1eb258033` |
| 8 | `theorem` | [zpow_add_one₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-add-one--e980bc8048309cc73dd59c18.md) | 74 | `result-track:e980bc8048309cc73dd59c1842a8d93780de5d1b5e54baf954156f1cd1e9856a` |
| 9 | `theorem` | [zpow_sub_one₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-sub-one--1068c91806a40e8f0aee33a0.md) | 83 | `result-track:1068c91806a40e8f0aee33a07aa58e93b426eb8b7b171e29294d148b453a584c` |
| 10 | `theorem` | [zpow_add₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-add--44b0771b0cb81af1a9590dfc.md) | 89 | `result-track:44b0771b0cb81af1a9590dfcd2cbfc9ea7f65abf733ef56b65cb5f41cf5eefba` |
| 11 | `theorem` | [zpow_add'](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-add--63e236ffd92df6234fe8eea2.md) | 96 | `result-track:63e236ffd92df6234fe8eea290dffa0c67fc6d10698cf1b526685f1306a3e0c0` |
| 12 | `theorem` | [zpow_one_add₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-one-add--9ac8303308ded6cf0b7986e6.md) | 110 | `result-track:9ac8303308ded6cf0b7986e6770f10de52da8e4b98438be458207ebfde492efe` |
| 13 | `theorem` | [SemiconjBy.zpow_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/semiconjby-zpow-right--9d74804b8ba011418ce9eea9.md) | 114 | `result-track:9d74804b8ba011418ce9eea9ab2174f82b5f22833ff12e9fd3795579b64592e4` |
| 14 | `theorem` | [Commute.zpow_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/commute-zpow-right--d581383dd55f0f23baab2950.md) | 120 | `result-track:d581383dd55f0f23baab2950b5e056397c0efbf5dfcefea740a0fe0cbe5c0986` |
| 15 | `theorem` | [Commute.zpow_left₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/commute-zpow-left--b05d7fa1948a14675f2f1e16.md) | 124 | `result-track:b05d7fa1948a14675f2f1e16b6bb4d82435cf6b1cdc7d8469d123c54123502d1` |
| 16 | `theorem` | [Commute.zpow_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/commute-zpow-zpow--55088f4fbb5c0df3b633bb40.md) | 128 | `result-track:55088f4fbb5c0df3b633bb40e1a1fa88cb013c5a6055c878cc6be11fd1e8c5fd` |
| 17 | `theorem` | [Commute.zpow_self₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/commute-zpow-self--2ed2db86f0caecb0f849a1b6.md) | 132 | `result-track:2ed2db86f0caecb0f849a1b6e036b6e6626c4e9570d6c9bf25ac6f74a3fd1035` |
| 18 | `theorem` | [Commute.self_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/commute-self-zpow--d913cc59f3dc25a0a3124204.md) | 136 | `result-track:d913cc59f3dc25a0a3124204ff8d18bed0ea770dda3222235bb0c7fd26e208da` |
| 19 | `theorem` | [Commute.zpow_zpow_self₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/commute-zpow-zpow-self--1e28a9a32731ff2c7e9a61fd.md) | 140 | `result-track:1e28a9a32731ff2c7e9a61fd49af3609efe2026754611748faa7a8e0ac0da4c5` |
| 20 | `theorem` | [zpow_bit1₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-bit1--4395853b6f8a88289aef420f.md) | 145 | `result-track:4395853b6f8a88289aef420fb8f09c24e69881fccfcfbc8b8622d85e0fd944f6` |
| 21 | `theorem` | [zpow_ne_zero_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-ne-zero-of-ne-zero--f04c88a4316f6b67106231ba.md) | 151 | `result-track:f04c88a4316f6b67106231ba3f296d1c4121ceccfc78719965e046c59ac474ed` |
| 22 | `theorem` | [zpow_sub₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-sub--564239d5305add3476294d7c.md) | 160 | `result-track:564239d5305add3476294d7ca5cbb31b6dc45f0bd1e624fd298e007a2bb39c0a` |
| 23 | `theorem` | [zpow_bit1'](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-bit1--594b265f6348ba930af3c834.md) | 165 | `result-track:594b265f6348ba930af3c83420415465ff2749abf6763f526b6534855667bdc2` |
| 24 | `theorem` | [zpow_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-eq-zero--f0d447afc99d1f309ecc1c2f.md) | 169 | `result-track:f0d447afc99d1f309ecc1c2f8f6c2bd7bb06d52d5d1678f7a5453ba462e1a73c` |
| 25 | `theorem` | [zpow_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-eq-zero-iff--a8a85f4ce0bf628d26efedef.md) | 173 | `result-track:a8a85f4ce0bf628d26efedef951b179366eafd04199c57bf7acb9b53c6b1715a` |
| 26 | `theorem` | [zpow_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-ne-zero--a9b1b548d4a104e98b46289c.md) | 177 | `result-track:a9b1b548d4a104e98b46289c9acc7894ee214ade74e09cdeb65fa9a79c171fa4` |
| 27 | `theorem` | [zpow_neg_mul_zpow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/zpow-neg-mul-zpow-self--4897bc3f4bf2fd5497f23cfd.md) | 181 | `result-track:4897bc3f4bf2fd5497f23cfd6b4f70a0bfb369515543de95e3d2709718a0fe23` |
| 28 | `theorem` | [div_sq_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/div-sq-cancel--38f5ae48f00a026aa2f1f326.md) | 192 | `result-track:38f5ae48f00a026aa2f1f326cab9465f4eda311d3bc49ee91a1376be832002cc` |
| 29 | `theorem` | [map_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/declarations/map-zpow--c0179feafc2c3ca9e1b98a2a.md) | 203 | `result-track:c0179feafc2c3ca9e1b98a2aa0e61ebd27b52292318f8da0ab374f7d4c1cf5ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
