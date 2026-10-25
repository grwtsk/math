# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4579adf70daab78a4042e44426e5f5b20a40cbd",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4579adf70daab78a4042e44426e5f5b20a40cbd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNilpotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent--980911beebfc574b44013bbe.md) | 46 | `declaration-track:980911beebfc574b44013bbe77b4203d189c42c6ace4a5909dcc9a304a9faa2d` |
| 2 | `theorem` | [IsNilpotent.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-mk--8160202718f0c3bc0e3e679b.md) | 49 | `result-track:8160202718f0c3bc0e3e679bfb54c5bf3b67676ab3b8124edc7e6f693cef5b34` |
| 3 | `lemma` | [isNilpotent_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-of-subsingleton--ab88a63e1735b490bf3de000.md) | 52 | `result-track:ab88a63e1735b490bf3de0000a86fa907d494634fb070b020772ef0dd2db1e87` |
| 4 | `theorem` | [IsNilpotent.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-zero--a6a4d5131a12356c42a83483.md) | 55 | `result-track:a6a4d5131a12356c42a83483e96bb8b600bb6ec76bda45861fd2f544af331f7d` |
| 5 | `theorem` | [not_isNilpotent_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/not-isnilpotent-one--cf17efae0f55abb4221950cb.md) | 58 | `result-track:cf17efae0f55abb4221950cb503a3f00ca1fb285c9fea3c5ef5e5d537f634658` |
| 6 | `lemma` | [IsNilpotent.pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-pow-succ--ac74874fc85486d5c02dd6ee.md) | 61 | `result-track:ac74874fc85486d5c02dd6ee312371c1e5b6d762c5dbd514dcca9f9fc3e81656` |
| 7 | `theorem` | [IsNilpotent.of_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-of-pow--816a2e1413f164c7768a8dec.md) | 67 | `result-track:816a2e1413f164c7768a8dec3aec8322b82c4f0851cdbe58b5a9bc3d8f49164a` |
| 8 | `lemma` | [IsNilpotent.pow_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-pow-of-pos--eb2abf2bf3c214a354ddbbf3.md) | 73 | `result-track:eb2abf2bf3c214a354ddbbf3b0245fe6a4e8b8bdb746520fa0d3025775b7f400` |
| 9 | `lemma` | [IsNilpotent.pow_iff_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-pow-iff-pos--a426afd7484fedfd93ec1733.md) | 80 | `result-track:a426afd7484fedfd93ec17339e58bd67a5d7ccceb9dac842728a7dc80baf650f` |
| 10 | `theorem` | [IsNilpotent.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-map--454304d74c2cce1a9a2e57d5.md) | 84 | `result-track:454304d74c2cce1a9a2e57d588797311eae8b4fe958d4c5cf6befffd05806992` |
| 11 | `lemma` | [IsNilpotent.map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-map-iff--4a96cc923f2c657ec2a14ee3.md) | 90 | `result-track:4a96cc923f2c657ec2a14ee30e4d3fba0b956171382ec3c47af278a8ecbf2918` |
| 12 | `theorem` | [IsUnit.isNilpotent_mul_unit_of_commute_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isunit-isnilpotent-mul-unit-of-commute-iff--13ecb253ddf868c667a007f6.md) | 95 | `result-track:13ecb253ddf868c667a007f6d0e27c2a68e827db9262afaaf655f7ca04dc24b9` |
| 13 | `theorem` | [IsUnit.isNilpotent_unit_mul_of_commute_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isunit-isnilpotent-unit-mul-of-commute-iff--6967cf9c99d735eb338e8a76.md) | 100 | `result-track:6967cf9c99d735eb338e8a76347b7057d2830825fcc99ceb7ffce966e47b1d1b` |
| 14 | `def` | [nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/nilpotencyclass--164f49ea3cfffe699c0bf595.md) | 114 | `declaration-track:164f49ea3cfffe699c0bf595a2a9c7933ddfb020fbc2d1e98855c333baa7076e` |
| 15 | `lemma` | [nilpotencyClass_eq_zero_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/nilpotencyclass-eq-zero-of-subsingleton--a019b02a834b5743b9191dd4.md) | 116 | `result-track:a019b02a834b5743b9191dd4be7f871572a11e1a415f995582e15f157c6a44d0` |
| 16 | `lemma` | [isNilpotent_of_pos_nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-of-pos-nilpotencyclass--a1171d4ff06022ffc2cd62fb.md) | 122 | `result-track:a1171d4ff06022ffc2cd62fbc7a5aca0b2f91e93df28698a91260292dbad6e3f` |
| 17 | `lemma` | [pow_nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-nilpotencyclass--c6ef078479dff98632ce7d98.md) | 130 | `result-track:c6ef078479dff98632ce7d98d0e908399e3dab820c4a97b42450a6f8a6155f4b` |
| 18 | `lemma` | [nilpotencyClass_eq_succ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/nilpotencyclass-eq-succ-iff--239d298b059e85600b7c1d75.md) | 139 | `result-track:239d298b059e85600b7c1d75b84994cd8824736e77ba11186a09f0814ce8063e` |
| 19 | `lemma` | [nilpotencyClass_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/nilpotencyclass-zero--319fa9513c577999f27327f5.md) | 145 | `result-track:319fa9513c577999f27327f55387ad6018c473325c43aef0c0a0a99838f8bf29` |
| 20 | `lemma` | [pos_nilpotencyClass_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pos-nilpotencyclass-iff--ea11ea78892c84ff7715850c.md) | 149 | `result-track:ea11ea78892c84ff7715850c152261c73ff3f4bba40acdb0d4821c6db8597d86` |
| 21 | `lemma` | [pow_pred_nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-pred-nilpotencyclass--f8bb2b38468324b46e0d9c2f.md) | 156 | `result-track:f8bb2b38468324b46e0d9c2f384e5a316ff92787cced9933dc5b88747681728b` |
| 22 | `lemma` | [eq_zero_of_nilpotencyClass_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/eq-zero-of-nilpotencyclass-eq-one--81c17a10ba34e64f1c6223b2.md) | 160 | `result-track:81c17a10ba34e64f1c6223b29259f21f9bc3106bf3e7be91d0569df84ec4b254` |
| 23 | `lemma` | [nilpotencyClass_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/nilpotencyclass-eq-one--8c51e178394543fbe6c92c17.md) | 165 | `result-track:8c51e178394543fbe6c92c1733afddd99bda0a21b92429d49cc757be3a1c52b3` |
| 24 | `class` | [IsReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isreduced--150481cba6dae770284b704c.md) | 175 | `declaration-track:150481cba6dae770284b704c697c2f416adb68d6a6606290f2b654f6afaed8a2` |
| 25 | `theorem` | [pow_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-eq-zero--a310cdbb9d990c9418caa6a3.md) | 181 | `result-track:a310cdbb9d990c9418caa6a357f504f6d251420f1f18e34faf89363523a91563` |
| 26 | `theorem` | [pow_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-eq-zero-iff--6b14894c2cf899fbe99347c6.md) | 185 | `result-track:6b14894c2cf899fbe99347c64940b61a3a11abb59e47cde558cb6d56cdee8b5a` |
| 27 | `theorem` | [pow_ne_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-ne-zero-iff--7d7407478841d95fb4cd4d5f.md) | 188 | `result-track:7d7407478841d95fb4cd4d5fcff09f4a151a8a37879004d6875ad601488400df` |
| 28 | `theorem` | [pow_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-ne-zero--57ce24efdcac0df1a4f21f90.md) | 191 | `result-track:57ce24efdcac0df1a4f21f90b5ea9d207a0cfad02b8172925dc279f9c0007311` |
| 29 | `theorem` | [pow_eq_zero_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/pow-eq-zero-iff--2d26b8683aebbfe9b21f3b7a.md) | 196 | `result-track:2d26b8683aebbfe9b21f3b7aafb86af073b02ba0ac54ea0a64bfa8dd813fc251` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/instance--ac767c36c465cf01ca07a8b2.md) | 202 | `declaration-track:ac767c36c465cf01ca07a8b21d8d7d3c534e1a3a5067d4bde8c854d567ac0976` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/instance--c620cf2b550ceacb8fe11bf4.md) | 206 | `declaration-track:c620cf2b550ceacb8fe11bf4c45a01910ec7928cbd7fd6b8acfb857ec06010e0` |
| 32 | `theorem` | [IsNilpotent.eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-eq-zero--5b8a3edf97f9455abe7b9b85.md) | 210 | `result-track:5b8a3edf97f9455abe7b9b8574f6cdac8c00ef4dc5ee4ece88df3f57438c9b10` |
| 33 | `theorem` | [isNilpotent_iff_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-iff-eq-zero--86fddf8b188326c8c71e6449.md) | 214 | `result-track:86fddf8b188326c8c71e6449d5af1dac54162425a368ed8e0463c5bf0326cf1b` |
| 34 | `theorem` | [isReduced_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isreduced-of-injective--2b2f214f61b9b34c1ce3dcd2.md) | 217 | `result-track:2b2f214f61b9b34c1ce3dcd2dc99ad995ab6bfd45342331bb7686341ae274479` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/instance--282b15b4f5f3d9f829063262.md) | 227 | `declaration-track:282b15b4f5f3d9f8290632626a2454dfc8dcdc7da23afb9f2a817d1f99125e8e` |
| 36 | `def` | [IsRadical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isradical--f7f4853895b2e80eeca70251.md) | 233 | `declaration-track:f7f4853895b2e80eeca70251364df5866ce37194103d62be697a9c246af5b28e` |
| 37 | `theorem` | [isRadical_iff_pow_one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isradical-iff-pow-one-lt--f71b526867e20e06db9c2371.md) | 236 | `result-track:f71b526867e20e06db9c2371d3a8193bbdd689b4c609cf61cfe48f41ca79fe03` |
| 38 | `theorem` | [isNilpotent_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-mul-left--30181a154e43f556d5ea7902.md) | 246 | `result-track:30181a154e43f556d5ea79020f9b55f41ea71f9831838116c6556000aad32c18` |
| 39 | `theorem` | [isNilpotent_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant0abe1c07bcf2783acd132041d2653221acda0b1534baa336f9365ad37c9031cc.lean/declarations/isnilpotent-mul-right--9165471628ad4a76d93eab3a.md) | 251 | `result-track:9165471628ad4a76d93eab3a54dba04153fa2479202b34ea8034cf93fe00b105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
