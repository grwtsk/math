# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithZero.Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "518aba381de380ce15a734e7976c1ec734121b6b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `518aba381de380ce15a734e7976c1ec734121b6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Units.GroupWithZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithZero.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.TypeTags` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedCommGroupWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/linearorderedcommgroupwithzero--56d1c2e40afe1b3dc80ad64a.md) | 35 | `declaration-track:56d1c2e40afe1b3dc80ad64adcb9534ffc06378737abbca44b37fa6cccf707fc` |
| 2 | `instance` | [instLinearOrderedCommMonoidWithZeroMultiplicativeOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/instlinearorderedcommmonoidwithzeromultiplicativeorderdual--ee8a9d9d69d4030ed126a7b0.md) | 43 | `declaration-track:ee8a9d9d69d4030ed126a7b04253b1ad38cba95166a28fe8a278e2e2555b0e96` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/instance--f1e6255d074751074d221b51.md) | 55 | `declaration-track:f1e6255d074751074d221b517360c7b3fcfe525aeb7aed510783631c27960df5` |
| 4 | `instance` | [instLinearOrderedCommMonoidWithZeroWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/instlinearorderedcommmonoidwithzerowithzero--6fb818f3071b5943afce97d7.md) | 62 | `declaration-track:6fb818f3071b5943afce97d72baba8e7391f3cd387feb7ed492722296bfaa418` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/instance--c41cf048914e55a927423baa.md) | 68 | `declaration-track:c41cf048914e55a927423baa09e7a41fa78d8d4257986916d4fed0647b45ec78` |
| 6 | `def` | [Function.Injective.linearOrderedCommMonoidWithZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/function-injective-linearorderedcommmonoidwithzero--b8462133be4c9c7ce0b1e2ba.md) | 81 | `declaration-track:b8462133be4c9c7ce0b1e2ba754a3a3f1320fc6252dd9ddd799ef3a3d61fff2d` |
| 7 | `theorem` | [zero_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/zero-le--164c8894e4d3be4ca4a3a315.md) | 93 | `result-track:164c8894e4d3be4ca4a3a3152f7f9e43c3ed7047b06d326abf93861edebd7926` |
| 8 | `theorem` | [not_lt_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/not-lt-zero--f0186d251d22d1969dd4dc00.md) | 97 | `result-track:f0186d251d22d1969dd4dc00db9825f8821c88f3a189272cf54a6473980f2a41` |
| 9 | `theorem` | [le_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/le-zero-iff--a9a6d3d6a3033c55e6593848.md) | 102 | `result-track:a9a6d3d6a3033c55e6593848b46e2270547bd7f47164efd8d15201a7c6d0c563` |
| 10 | `theorem` | [zero_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/zero-lt-iff--49165dc1c988ce3561b0492c.md) | 106 | `result-track:49165dc1c988ce3561b0492c3b4d222df93a269f01444469d889c760f0076617` |
| 11 | `theorem` | [ne_zero_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/ne-zero-of-lt--9303bec213b5171bff429b8b.md) | 110 | `result-track:9303bec213b5171bff429b8bdd2e410612bf2bfb2589352bd02b1be940d11ae0` |
| 12 | `instance` | [instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/instlinearorderedaddcommmonoidwithtopadditiveorderdual--cf1da95cffa96cb70daa909a.md) | 113 | `declaration-track:cf1da95cffa96cb70daa909abdff164da4bbc15f2f11b4fd7151f20512ee9897` |
| 13 | `theorem` | [mul_le_one₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-le-one--76c093f3f47f55500c9c493d.md) | 127 | `result-track:76c093f3f47f55500c9c493d02362dd657d26846f492520973c93fce1c39f700` |
| 14 | `theorem` | [one_le_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/one-le-mul--0194056e017f8e46acca8811.md) | 132 | `result-track:0194056e017f8e46acca8811cd2a4a4cd5cb1d6d38f409935ab46febd61f03e2` |
| 15 | `theorem` | [le_of_le_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/le-of-le-mul-right--5aa4e5f1bd24d787cb18bdb7.md) | 136 | `result-track:5aa4e5f1bd24d787cb18bdb7f5db441c3b89e0b27a03722c0aa2e7f4bad86f8f` |
| 16 | `theorem` | [le_mul_inv_of_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/le-mul-inv-of-mul-le--822e841103a88e2c8826c4c8.md) | 140 | `result-track:822e841103a88e2c8826c4c871a6bbcc6eae4b12da442fa2f04cf9cdfbdd1703` |
| 17 | `theorem` | [mul_inv_le_of_le_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-inv-le-of-le-mul--d162c1a5cab6836a6bb382ec.md) | 144 | `result-track:d162c1a5cab6836a6bb382ec055cca82d8ae070056dd3d3b72945f0879d4a825` |
| 18 | `theorem` | [inv_le_one₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/inv-le-one--c747f71225fea87db4c59cfe.md) | 150 | `result-track:c747f71225fea87db4c59cfe64ce4f8a2de2821818258009354fd620ecae40a0` |
| 19 | `theorem` | [one_le_inv₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/one-le-inv--2b3378d213091f1c6cb26e02.md) | 154 | `result-track:2b3378d213091f1c6cb26e0244f0399640ae9e45a7c2496c95a7fc7aadee56ef` |
| 20 | `theorem` | [le_mul_inv_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/le-mul-inv-iff--ce0680d38ccfbef8d93e083f.md) | 158 | `result-track:ce0680d38ccfbef8d93e083f2d2d52282dd02ff9bbe338d1fee1972fba82d41d` |
| 21 | `theorem` | [mul_inv_le_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-inv-le-iff--6f2c1a2733bb754800bde2f8.md) | 162 | `result-track:6f2c1a2733bb754800bde2f80ba65a2308c139e110a47605e403675a39dae1c6` |
| 22 | `theorem` | [div_le_div₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/div-le-div--6af3331b3fdd99944c533adc.md) | 166 | `result-track:6af3331b3fdd99944c533adc48a849b42b9ac88b27765d8d13d4c72b1310ac77` |
| 23 | `theorem` | [Units.zero_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/units-zero-lt--b827a601b763e017d08281c9.md) | 171 | `result-track:b827a601b763e017d08281c99f3f9e9ca4e3890fc291ee566ef93f904656d471` |
| 24 | `theorem` | [mul_lt_mul_of_lt_of_le₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-lt-mul-of-lt-of-le--facefd68302a7d8680508ee0.md) | 175 | `result-track:facefd68302a7d8680508ee0420a8b275ab0528916afa29fe0814b70192abcb7` |
| 25 | `theorem` | [mul_lt_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-lt-mul--79d14a53afaa264de1b76f73.md) | 189 | `result-track:79d14a53afaa264de1b76f73ed14fdc0ab2d42aa5292db9549ca0d881c798aab` |
| 26 | `theorem` | [mul_inv_lt_of_lt_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-inv-lt-of-lt-mul--b51cae8d719f2e9eab45e4c6.md) | 193 | `result-track:b51cae8d719f2e9eab45e4c6dc1f7880e21f8ba471589aad0c651e27c5a21abe` |
| 27 | `theorem` | [inv_mul_lt_of_lt_mul₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/inv-mul-lt-of-lt-mul--929f6bccbf29d0429231ec0e.md) | 198 | `result-track:929f6bccbf29d0429231ec0e3eda0c187f42a3930c188cde1c9dfbd94d4f0bf8` |
| 28 | `theorem` | [mul_lt_right₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-lt-right--158ed655a6d53f05f997dd59.md) | 203 | `result-track:158ed655a6d53f05f997dd594cf9f14a59b4d62541b6bbff414ecb4f39796f0f` |
| 29 | `theorem` | [inv_lt_inv₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/inv-lt-inv--3c477b0ea0e89b908f16f972.md) | 208 | `result-track:3c477b0ea0e89b908f16f9726334e128aa5f736e2c7e5230652b5ab25f2c3928` |
| 30 | `theorem` | [inv_le_inv₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/inv-le-inv--124d348dab18a4e6e75dfcc7.md) | 215 | `result-track:124d348dab18a4e6e75dfcc76424641a176a3f65e8e4ebb5d4fc2103be916d19` |
| 31 | `theorem` | [lt_of_mul_lt_mul_of_le₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/lt-of-mul-lt-mul-of-le--04165209bedc5d5a3c41c10a.md) | 224 | `result-track:04165209bedc5d5a3c41c10af95a219837834e0972febc824c71bb76398a6e3b` |
| 32 | `theorem` | [mul_le_mul_right₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-le-mul-right--ce28470b3fe6ef1aee230301.md) | 231 | `result-track:ce28470b3fe6ef1aee230301664b53d8830eb20b50cbd820454dc5ffa68a9463` |
| 33 | `theorem` | [mul_le_mul_left₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/mul-le-mul-left--39656162245ece2d855f0e72.md) | 235 | `result-track:39656162245ece2d855f0e72729637aa531be23b022b35aacb16469f68bde8f8` |
| 34 | `theorem` | [div_le_div_right₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/div-le-div-right--84b803b5b7a68249ecc66efc.md) | 240 | `result-track:84b803b5b7a68249ecc66efc92a268dcca81ac7b2f28fbe71344199fbf2ff530` |
| 35 | `theorem` | [div_le_div_left₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/div-le-div-left--26434dbde8535279a8aa9239.md) | 244 | `result-track:26434dbde8535279a8aa92399fa3efb521492261bbe538ddaa864684bc726547` |
| 36 | `theorem` | [le_div_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/le-div-iff--b0959cd29595866efbcb012e.md) | 248 | `result-track:b0959cd29595866efbcb012eb8f55c3695f1ee3fc32cd121a935704806c1cfe2` |
| 37 | `theorem` | [div_le_iff₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/div-le-iff--d61a0def3cbf03801cc8c4da.md) | 252 | `result-track:d61a0def3cbf03801cc8c4daaaaa6d1f5bf976ffe58d922c107a36d4dc033151` |
| 38 | `def` | [OrderIso.mulLeft₀'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/orderiso-mulleft--525dbbf4dd50b56a6594b4bc.md) | 260 | `declaration-track:525dbbf4dd50b56a6594b4bc7eda29a95a9a98e07fa72aff84c27981906b911f` |
| 39 | `theorem` | [OrderIso.mulLeft₀'_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/orderiso-mulleft-symm--e7e363a22158f9223b2da762.md) | 266 | `result-track:e7e363a22158f9223b2da762c86cbb67b5b3905f880a9d3ac12f066d11a2ccb8` |
| 40 | `def` | [OrderIso.mulRight₀'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/orderiso-mulright--cb8d82fdff5db531e6826348.md) | 276 | `declaration-track:cb8d82fdff5db531e6826348904e0812aaf91c30a4900ca0604ae2fe2fcb8509` |
| 41 | `theorem` | [OrderIso.mulRight₀'_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/orderiso-mulright-symm--87d456b077d63f3c6e29520a.md) | 282 | `result-track:87d456b077d63f3c6e29520ad2060a16bbffa77c9a6cbd921040cc108ff27f8b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/declarations/instance--138e5f80b445133ab443b41e.md) | 288 | `declaration-track:138e5f80b445133ab443b41e283d214788ff4a87b125cdfdd501541aa5f307b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
