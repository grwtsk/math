# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBotTop.Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177274ae1e0f40019d88e7ab337f9a39ce151cc4",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177274ae1e0f40019d88e7ab337f9a39ce151cc4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preimage_coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-top--6db3c4f617a8317e7922b8d4.md) | 34 | `result-track:6db3c4f617a8317e7922b8d4b00a5780596e23184740f8fe2a2e2042b0329ba6` |
| 2 | `theorem` | [range_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/range-coe--85ce3bbd47476aa58de8335b.md) | 39 | `result-track:85ce3bbd47476aa58de8335b5935ae201de4c27374c41bb2935b2e9ad49e8c57` |
| 3 | `theorem` | [preimage_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioi--e92f1096f87edac46d28041d.md) | 44 | `result-track:e92f1096f87edac46d28041db94dfc714ebd674e9ce70ab20aa9c84052bb019d` |
| 4 | `theorem` | [preimage_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ici--9e7538c46a76f2c89c7ba378.md) | 48 | `result-track:9e7538c46a76f2c89c7ba37829f3d035c49acbcad25757d9e3ea7ee0f26c5be3` |
| 5 | `theorem` | [preimage_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-iio--9db520defd86edec1f6e148b.md) | 52 | `result-track:9db520defd86edec1f6e148bd2b6644513f5c6b2a5b1513720a172c875113b00` |
| 6 | `theorem` | [preimage_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-iic--b96ddf2230c9fce3b9fb923b.md) | 56 | `result-track:b96ddf2230c9fce3b9fb923b0cafb0f595ccfa4235661a2580b1bff5c06895a0` |
| 7 | `theorem` | [preimage_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-icc--88c52cc253cd7e5e537bb4df.md) | 60 | `result-track:88c52cc253cd7e5e537bb4df1bc2b25de8423b39da7315ba94dcf8558ab714cd` |
| 8 | `theorem` | [preimage_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ico--2d282274959dca9d02763af5.md) | 63 | `result-track:2d282274959dca9d02763af58ab4480b2ddc4a33d6d226d2cf7ddfe351552607` |
| 9 | `theorem` | [preimage_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioc--e282c9a5bbbb9e56984bd2f8.md) | 66 | `result-track:e282c9a5bbbb9e56984bd2f8dac5dbead65c65be1842a63690e4369f3a1dae6c` |
| 10 | `theorem` | [preimage_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioo--70a38f2ff93127baa7a089c1.md) | 69 | `result-track:70a38f2ff93127baa7a089c1d754ff496660fa22d85c70766606162a33784e17` |
| 11 | `theorem` | [preimage_coe_Iio_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-iio-top--6b2bef722800fa9c0794e88f.md) | 72 | `result-track:6b2bef722800fa9c0794e88ffb35af1b765c26a9ba3172956cf47ddd8354170e` |
| 12 | `theorem` | [preimage_coe_Ico_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ico-top--09590c4e5e4a00542cf23537.md) | 76 | `result-track:09590c4e5e4a00542cf23537ec22f769a2b23fb380212ae096def24c8630b19f` |
| 13 | `theorem` | [preimage_coe_Ioo_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioo-top--5799b4b743c60d482d1d0c14.md) | 80 | `result-track:5799b4b743c60d482d1d0c14a680b042c411b47118464a119b9a11b1facab0b1` |
| 14 | `theorem` | [image_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ioi--5c05d2f47f5a288062713494.md) | 83 | `result-track:5c05d2f47f5a288062713494b1462d8775bab6e706938bad667df33bba25fc70` |
| 15 | `theorem` | [image_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ici--43cd00340ed84d8e43724b5a.md) | 86 | `result-track:43cd00340ed84d8e43724b5a0e38a30aeb45805abe6c58d47f46211e1eb30fbd` |
| 16 | `theorem` | [image_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-iio--4e23d90a45a7005e11c3dd13.md) | 89 | `result-track:4e23d90a45a7005e11c3dd13b9898413d3f8226d9b753a07ff0c8120e627dca8` |
| 17 | `theorem` | [image_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-iic--7b1b22c1a5a825a736a58e5e.md) | 93 | `result-track:7b1b22c1a5a825a736a58e5e6d572826cd2b3b5ca4007298704f77ec2ca98c5c` |
| 18 | `theorem` | [image_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-icc--fd14b8b58720ae4a8756912e.md) | 97 | `result-track:fd14b8b58720ae4a8756912ebf8144f0efb70590b56c0b683fba98133226db0d` |
| 19 | `theorem` | [image_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ico--3496b702817fbd7e26f91f71.md) | 102 | `result-track:3496b702817fbd7e26f91f7143f93ae4b301c11bc1c4c25ca8112a584b183b9a` |
| 20 | `theorem` | [image_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ioc--b5ebd35f93e82616c6dc32b7.md) | 106 | `result-track:b5ebd35f93e82616c6dc32b7af34855396a2282f609443d5722a396906add86c` |
| 21 | `theorem` | [image_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ioo--0501749239521f6745e1dd70.md) | 111 | `result-track:0501749239521f6745e1dd70b86d0f88fcdb79e00ca6369ec2bca53e2a452145` |
| 22 | `theorem` | [preimage_coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-bot--d063edb44a04b92a6d45426f.md) | 122 | `result-track:d063edb44a04b92a6d45426f87bfbe019fff06a88a65a853cbb3016c88937c07` |
| 23 | `theorem` | [range_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/range-coe--03aa349a5f2f5bbc0333ca65.md) | 127 | `result-track:03aa349a5f2f5bbc0333ca6588c59aa06ad59f8545855f7d370f9fabb5199e0b` |
| 24 | `theorem` | [preimage_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioi--20fbfd25a44c55de68c00d25.md) | 131 | `result-track:20fbfd25a44c55de68c00d253b75186fc435ac77578299fc734f18dbc7bef47a` |
| 25 | `theorem` | [preimage_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ici--08fb0c7975b5bf0e09d2c01e.md) | 135 | `result-track:08fb0c7975b5bf0e09d2c01eb2cf9057ebcf5e0728d55be1988acf5b44d7a9ce` |
| 26 | `theorem` | [preimage_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-iio--867c218dafcff2332840bb01.md) | 139 | `result-track:867c218dafcff2332840bb016259468a29f08283a5d8ad3b7853451838db541c` |
| 27 | `theorem` | [preimage_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-iic--b6235dbf944f34066d48ce83.md) | 143 | `result-track:b6235dbf944f34066d48ce83d42462781b12f10c572793b3e1bbc40ed37761ff` |
| 28 | `theorem` | [preimage_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-icc--cf951e962025ac97b3267b25.md) | 147 | `result-track:cf951e962025ac97b3267b25a87f9bbb94e3bc2a61ab44fbe6cb3a15ada7a671` |
| 29 | `theorem` | [preimage_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ico--9d9a38b96054a775293886aa.md) | 150 | `result-track:9d9a38b96054a775293886aa82fae96f72f5c83b7c7cc92506625fa97ae7886f` |
| 30 | `theorem` | [preimage_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioc--c733c463483f87b67f5d53c0.md) | 153 | `result-track:c733c463483f87b67f5d53c0f6b13d825db09eb92c3c93fcc7471545ed7766ca` |
| 31 | `theorem` | [preimage_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioo--4287e9e99efaec8b2c1ccb3c.md) | 156 | `result-track:4287e9e99efaec8b2c1ccb3cb9acef9717ecbd6b5f6bfa9ea969af289e5485a1` |
| 32 | `theorem` | [preimage_coe_Ioi_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioi-bot--dd47e16166f509e24af2473f.md) | 159 | `result-track:dd47e16166f509e24af2473fffe9202e15a09d77053fed69a9e0e637d9cb8592` |
| 33 | `theorem` | [preimage_coe_Ioc_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioc-bot--27dd466fa405627d30f98bf5.md) | 163 | `result-track:27dd466fa405627d30f98bf51e7ea6cb17bf28655669d8096ce8727dcbab43f4` |
| 34 | `theorem` | [preimage_coe_Ioo_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/preimage-coe-ioo-bot--6e9c2777ed326bc955565ec7.md) | 167 | `result-track:6e9c2777ed326bc955565ec7a41fe67b06f87157b911742da57bec2b654bfd94` |
| 35 | `theorem` | [image_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-iio--c7fa1cb262b5a164f9eec762.md) | 170 | `result-track:c7fa1cb262b5a164f9eec762866a04cee1e17b3973f62fa28fb860fff353d576` |
| 36 | `theorem` | [image_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-iic--e8cbb0fc8a8e91e430a133d6.md) | 173 | `result-track:e8cbb0fc8a8e91e430a133d6d9e91611c1cf92a18673662c12097ad518549f46` |
| 37 | `theorem` | [image_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ioi--294f2e684523b17caa0dead5.md) | 176 | `result-track:294f2e684523b17caa0dead5675abeb4a7dbca82c7f2cac6a0e1e10d94a40d2b` |
| 38 | `theorem` | [image_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ici--6f7abb5905daf197d1528ae1.md) | 180 | `result-track:6f7abb5905daf197d1528ae1a674b8e9e3a1514fc0c25333871ce201d8ba7251` |
| 39 | `theorem` | [image_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-icc--8b170bac936686da3cc58041.md) | 184 | `result-track:8b170bac936686da3cc580418909d9b0cecbeea0c091cd882345b54d78c2b9b6` |
| 40 | `theorem` | [image_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ioc--2edf1013fe31706e42f2e054.md) | 189 | `result-track:2edf1013fe31706e42f2e054b67b8a57eeb754d126f21e508ec6b0a3979054ed` |
| 41 | `theorem` | [image_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ico--dfd27e9b854dc0cf7a44961a.md) | 193 | `result-track:dfd27e9b854dc0cf7a44961a26de9924798c33d8ba27255bbd752753ca334052` |
| 42 | `theorem` | [image_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf253e4ac30f6180324df75a64e7733db43a1fd6339ecc8b6d8ee60a83c872ba2.lean/declarations/image-coe-ioo--07b5e14d95385f47f28e5db2.md) | 198 | `result-track:07b5e14d95385f47f28e5db218a381ef6ad1f21d419adad315e37db4b5e6c2dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
