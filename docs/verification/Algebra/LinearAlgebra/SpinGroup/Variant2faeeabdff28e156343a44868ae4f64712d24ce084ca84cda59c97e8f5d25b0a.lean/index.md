# Verification target: GRWTSK.Algebra.LinearAlgebra.SpinGroup.Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6756cc2054591d8a73b21533f475a3eda7f4dea1",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6756cc2054591d8a73b21533f475a3eda7f4dea1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.ConjAct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Star` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Even` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Inversion` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/lipschitzgroup--3f7efc81e9222ee61a9c6ae0.md) | 58 | `declaration-track:3f7efc81e9222ee61a9c6ae033deee7fd1893e7ae06f07dd107e0ee1a10d6713` |
| 2 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/conjact-smul-mem-range--455f0b8b65ede8f3eb699529.md) | 64 | `result-track:455f0b8b65ede8f3eb6995293b44b9456f52aa9818dd29e5d448cc01e39fd72a` |
| 3 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/involute-act-mem-range--a30f9ec96f1aa705e382c996.md) | 94 | `result-track:a30f9ec96f1aa705e382c9965af8d75b3c70d91880685ae3f80491555c102172` |
| 4 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/conjact-smul-range--28fe43aa30d7afbf5db99dfe.md) | 126 | `result-track:28fe43aa30d7afbf5db99dfee8b72e75c6d5f02c5492d7cee76852b271a17f5c` |
| 5 | `theorem` | [coe_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-mem-iff-mem--a4f14297ea1b750cb98fffd3.md) | 141 | `result-track:a4f14297ea1b750cb98fffd385c7ab7d30646ae29ea9ac74d97c059f7c30c279` |
| 6 | `def` | [pinGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/pingroup--5b0f85d211fa3f54f9ab9afc.md) | 152 | `declaration-track:5b0f85d211fa3f54f9ab9afc14cd2486277ef52be06e9e4b3a7fafa71eb76c05` |
| 7 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mem-iff--c45c7fa4113fd28c686838b6.md) | 158 | `result-track:c45c7fa4113fd28c686838b61c8df91c00b25b10867aac6ecb22c4290d4fe5da` |
| 8 | `theorem` | [mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mem-lipschitzgroup--546bfdceb043ba50f70848d8.md) | 164 | `result-track:546bfdceb043ba50f70848d8880fc29505ae57d55b1ef2d465c831a48c5835f2` |
| 9 | `theorem` | [mem_unitary](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mem-unitary--4dba7046d2cc2d73a9705ba9.md) | 168 | `result-track:4dba7046d2cc2d73a9705ba9125dd652faa5e9f23110c7e7d5f4fb51ffa16ef4` |
| 10 | `theorem` | [units_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/units-mem-iff--22fa8edc52042731e11786a6.md) | 172 | `result-track:22fa8edc52042731e11786a61d277deecce0f0107c9788dd8e3cf9b7b1b49460` |
| 11 | `theorem` | [units_mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/units-mem-lipschitzgroup--9983d6f104699b224c0d87cb.md) | 176 | `result-track:9983d6f104699b224c0d87cb3b820172654bb4cd4f02d7b5d453b4cfad3790e2` |
| 12 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/conjact-smul-mem-range--dfba896f6434d11bde5b7117.md) | 181 | `result-track:dfba896f6434d11bde5b7117e0426eb84018c9c9111d00a11a97d3d14044382e` |
| 13 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/involute-act-mem-range--85e2f5d6f110af89e38f52b9.md) | 186 | `result-track:85e2f5d6f110af89e38f52b9bcc8fe395c2fedd55b33581a53e79d0830a54b80` |
| 14 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/conjact-smul-range--e3f5404dad3e1ea1ca475c5f.md) | 192 | `result-track:e3f5404dad3e1ea1ca475c5f9b041ee3d060f08924b274c6e681fd5110f9aa16` |
| 15 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mul-self-of-mem--c53b908ba7e24f9831cd4ddb.md) | 197 | `result-track:c53b908ba7e24f9831cd4ddb31ebc00366674bb13397704824b5e64848380cfa` |
| 16 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mul-star-self-of-mem--3b5192b6e410d3fb1bfcb08b.md) | 201 | `result-track:3b5192b6e410d3fb1bfcb08b5c85fc76913a776b029cd84c60bc3d29e00b0461` |
| 17 | `theorem` | [star_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mem--47ecc32fa2668aa677b8911f.md) | 205 | `result-track:47ecc32fa2668aa677b8911ff2a57aeecc0cefbfa8f3742a1175fd4d57a0ba69` |
| 18 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mem-iff--8cf96053e13b75b1b435988a.md) | 224 | `result-track:8cf96053e13b75b1b435988a15ab8171d3ea54b220abe3cf8f78ebaeb97c49ee` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--b8521d540676c971d63a4290.md) | 230 | `declaration-track:b8521d540676c971d63a4290ef9ae58919d7a023b1765eb3844fe4f24d2b5dc8` |
| 20 | `theorem` | [coe_star](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-star--922d756c5cbd1c9d92d3f760.md) | 234 | `result-track:922d756c5cbd1c9d92d3f76043fb2bdaae5ac795431e8a29bcc7900190c9bf38` |
| 21 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-star-mul-self--26167c8582173b9d0b5d3abe.md) | 237 | `result-track:26167c8582173b9d0b5d3abeeaa67e18021bf5d5d619062d4bff35d971a1a18b` |
| 22 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-mul-star-self--f3f5381c9b1a67a4deccb6e3.md) | 240 | `result-track:f3f5381c9b1a67a4deccb6e32dfcd15f67737859837a71e1703094e099352b3d` |
| 23 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mul-self--bca3c6b4eaf92bc0a8fef1e1.md) | 244 | `result-track:bca3c6b4eaf92bc0a8fef1e1bc7ad20b6d47c04ec9c3ede877b04692cfbc8cab` |
| 24 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mul-star-self--6843501ea5485f484d248143.md) | 248 | `result-track:6843501ea5485f484d2481434ab0b62497e1992f3e5b2c40b20db84a136ef032` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--36dd63267474295cd7458c5b.md) | 252 | `declaration-track:36dd63267474295cd7458c5bd7f37b9513d57f77231f34cdb8b81dc17bf5a7ea` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--ba2fb115e49e53f095c6711f.md) | 256 | `declaration-track:ba2fb115e49e53f095c6711f3bdb383fe442890193018f05fbfbf3aa841c8d44` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--4c3bfa142340b8bd957791ce.md) | 260 | `declaration-track:4c3bfa142340b8bd957791ceddc5c5f2ae326c432008617830342c31597fd55e` |
| 28 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-eq-inv--e7316250fc41e8b0c3db5d49.md) | 263 | `result-track:e7316250fc41e8b0c3db5d4914f0a3272de977bdd41ea042a61970702cbf3022` |
| 29 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-eq-inv--e024f71764a45b543cd11dd4.md) | 266 | `result-track:e024f71764a45b543cd11dd475bc07e29da0b1c4b63a3ccc11f4cb1615c4ae51` |
| 30 | `def` | [toUnits](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/tounits--556cd1d77b66c527ff69a4f5.md) | 271 | `declaration-track:556cd1d77b66c527ff69a4f5dafd37c958b9cfc43e61746e133350ed822057a9` |
| 31 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/tounits-injective--d6feeecd48a241a1ce876fdf.md) | 276 | `result-track:d6feeecd48a241a1ce876fdf5da1a43c5c0e60f0713a337d1a927b6238751700` |
| 32 | `def` | [spinGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/spingroup--363765454a0c01881bf6fa94.md) | 291 | `declaration-track:363765454a0c01881bf6fa949f56d0a8de26651c1b08ef9591c20e39d35644fb` |
| 33 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mem-iff--83fab41af122bde6a4411d31.md) | 297 | `result-track:83fab41af122bde6a4411d31d2e0e89c552c655b576c481ca323b68481ea1ed4` |
| 34 | `theorem` | [mem_pin](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mem-pin--4a384765b1abe98a2658a306.md) | 300 | `result-track:4a384765b1abe98a2658a30686172d3ccf09ecd477d71dc353d6c1b9030c479d` |
| 35 | `theorem` | [mem_even](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mem-even--5a3af8dcdc639ff6d710c856.md) | 303 | `result-track:5a3af8dcdc639ff6d710c85644df8c546603804cf896113e8ee85fd56196a6ac` |
| 36 | `theorem` | [units_mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/units-mem-lipschitzgroup--cd14e54bec647dcd9d698308.md) | 306 | `result-track:cd14e54bec647dcd9d698308b474e71fe04347b25a95cf7b5fd55b5e0602c9d1` |
| 37 | `theorem` | [involute_eq](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/involute-eq--2e65f8269123b50045ecb440.md) | 311 | `result-track:2e65f8269123b50045ecb4401bc5d2e7cb9ef5d599077a1d568790afbdd52ab2` |
| 38 | `theorem` | [units_involute_act_eq_conjAct](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/units-involute-act-eq-conjact--b64ae2581cb88bfcb5d05f33.md) | 314 | `result-track:b64ae2581cb88bfcb5d05f33d83e168d16265999976f04583d5140778a6504e1` |
| 39 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/conjact-smul-mem-range--cbcfb5038ad190237511aa20.md) | 319 | `result-track:cbcfb5038ad190237511aa20c2f1966cf3a6949703a9f790ce0768e654d21801` |
| 40 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/involute-act-mem-range--daa2712a723dc3abf8d8711f.md) | 324 | `result-track:daa2712a723dc3abf8d8711f06c7006f91fa396521a1602fedd0c9b57208bcf1` |
| 41 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/conjact-smul-range--4203bb340852638a5a3b4586.md) | 330 | `result-track:4203bb340852638a5a3b458683e1c6bfc0bb6bb2f4abf13b4f0edcedb8ee26b6` |
| 42 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mul-self-of-mem--27af5c16542a426115459faa.md) | 335 | `result-track:27af5c16542a426115459faacab9036f7473d835290dc2f03e8a36597083b17b` |
| 43 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mul-star-self-of-mem--cc35a522a87fc2de97ecbf68.md) | 339 | `result-track:cc35a522a87fc2de97ecbf68914e6530e4619034ce1734faa22bcff8501c833a` |
| 44 | `theorem` | [star_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mem--e7fa020ca9c75f35b55cb7be.md) | 343 | `result-track:e7fa020ca9c75f35b55cb7be527ca252c37bb23c3f70103c43d101d90460c433` |
| 45 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mem-iff--aa66b8ac7c1d42f73e5337a2.md) | 355 | `result-track:aa66b8ac7c1d42f73e5337a24d90b99ace86b154913a5c3795db82675200e886` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--cafa5d054b181d250c712c1d.md) | 361 | `declaration-track:cafa5d054b181d250c712c1d971594b418929f896665cbbbe5aa5d8c76c38b27` |
| 47 | `theorem` | [coe_star](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-star--c62fdc114cc5cade8dcc7384.md) | 365 | `result-track:c62fdc114cc5cade8dcc73848a06faba3f61dde2a3247a65bf1dd6771e3b82bb` |
| 48 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-star-mul-self--1c7b48511e4ce15cf86a7dfa.md) | 368 | `result-track:1c7b48511e4ce15cf86a7dfa052e12d9bf75775e468d65cc345aaa7e23bcd8b4` |
| 49 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/coe-mul-star-self--e4ff13e92bd9346bcb92864b.md) | 371 | `result-track:e4ff13e92bd9346bcb92864bf85bf3f7abc2cfa4abed3f7190ec8f2b32dd66ca` |
| 50 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-mul-self--3f081f49df10a0fa6291120f.md) | 375 | `result-track:3f081f49df10a0fa6291120face237745b4821f35b2d5da8b7f939b749033ad4` |
| 51 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/mul-star-self--82916c9b0857d750278e3844.md) | 379 | `result-track:82916c9b0857d750278e3844812dfe35afa27cd464aaa4318b186381dce3a2d7` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--40f01a29d35b0ce36759e5b9.md) | 383 | `declaration-track:40f01a29d35b0ce36759e5b9554422f04f201c706b7e78f8bce3052919cb846f` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--5d8c6cd5d15ad22afe5c43e8.md) | 387 | `declaration-track:5d8c6cd5d15ad22afe5c43e8a1a4b82266da5a4b83afb105098454558a231cb4` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/instance--33a6415135081437dbc8f04e.md) | 391 | `declaration-track:33a6415135081437dbc8f04eabc9ff13214e70787f5664ba6fe2415495d64669` |
| 55 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-eq-inv--3c2829a23991589fc895d57d.md) | 394 | `result-track:3c2829a23991589fc895d57d371000ac312dc6438a574627aedf37bbac1efb21` |
| 56 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/star-eq-inv--24ce879fd067652b0387ae7c.md) | 397 | `result-track:24ce879fd067652b0387ae7cab6810e4b0c230987157b9d879005291133fb7a0` |
| 57 | `def` | [toUnits](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/tounits--4bcb5a193464dde9e2dd3895.md) | 402 | `declaration-track:4bcb5a193464dde9e2dd389548341d19ccc4a51184f2c12775bd574e1fbce485` |
| 58 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2faeeabdff28e156343a44868ae4f64712d24ce084ca84cda59c97e8f5d25b0a.lean/declarations/tounits-injective--2014c9c7a71e6c9cc959cc4e.md) | 407 | `result-track:2014c9c7a71e6c9cc959cc4e135136c53fcf88d203ffdca94e5488ed4383aeb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
