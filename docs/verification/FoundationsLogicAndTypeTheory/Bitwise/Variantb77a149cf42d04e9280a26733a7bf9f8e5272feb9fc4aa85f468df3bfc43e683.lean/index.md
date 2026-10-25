# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bitwise.Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e67d9948368e724b0d62213c307b905c53a8b3d2",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e67d9948368e724b0d62213c307b905c53a8b3d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Data.Int` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [div2](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/div2--348ddbc7b97f98b31e25ad1b.md) | 24 | `declaration-track:348ddbc7b97f98b31e25ad1be67b3a32b02f10bbaa8b6975126158f76cdc3535` |
| 2 | `def` | [bodd](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd--bf96d414c90770b22435aa91.md) | 29 | `declaration-track:bf96d414c90770b22435aa91b5d19fddafa65e1a3624a9725295e9d98f25c419` |
| 3 | `def` | [bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bit--9aca7f227417a69badcccbb6.md) | 35 | `declaration-track:9aca7f227417a69badcccbb6bbe93663d87054ddd5eef473d81680743d8ce010` |
| 4 | `def` | [natBitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/natbitwise--6fa2d1495406d0ac93283a87.md) | 39 | `declaration-track:6fa2d1495406d0ac93283a874c856f16d06fb6e4347c0df21e824defbf0046dd` |
| 5 | `def` | [bitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitwise--31ac941ecf61882c92212e40.md) | 44 | `declaration-track:31ac941ecf61882c92212e40aeb0bdaaf0aef3d50b4a22d5a696bca2974b2f5d` |
| 6 | `def` | [lnot](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/lnot--7aa1cd68778ecbfec1986a25.md) | 51 | `declaration-track:7aa1cd68778ecbfec1986a2529180da3c898e11e97363a0a7a1f2df906c1c1a3` |
| 7 | `def` | [lor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/lor--26aa63bafd2dc718be8d15ac.md) | 56 | `declaration-track:26aa63bafd2dc718be8d15acba2f421bce0326a53727d28ac522f0c0d0b2bc5b` |
| 8 | `def` | [land](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/land--d81f1dda2d1cb32db3c63331.md) | 63 | `declaration-track:d81f1dda2d1cb32db3c633315b0be45dd030d7f8f4542b5f3963b98272788198` |
| 9 | `def` | [ldiff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/ldiff--329f81945603c9574c97e102.md) | 72 | `declaration-track:329f81945603c9574c97e102975c74f4aed71e083aa5d68766e4762faefee9fe` |
| 10 | `def` | [xor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/xor--2ce92aa89e7e491856f3961a.md) | 79 | `declaration-track:2ce92aa89e7e491856f3961abd1e84488d13c1a0bb55f4cf9b8a2a9a9baeb03d` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/instance--64767a0cc8cd3902a1d6972b.md) | 87 | `declaration-track:64767a0cc8cd3902a1d6972b430805590b504d3f8ee121de5719e5ee7cd22fb7` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/instance--03aed02a10dbc86ea7443d0c.md) | 96 | `declaration-track:03aed02a10dbc86ea7443d0c111a6a9a7e3fb57efdabb8e387420166de0b0595` |
| 13 | `theorem` | [bodd_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-zero--85eba0c068bb4290d9839a85.md) | 102 | `result-track:85eba0c068bb4290d9839a85a8ffa4fbbe31947180d77f955665247bb5ab55ca` |
| 14 | `theorem` | [bodd_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-one--ccf4ddd1bf8b6a2de4387dc4.md) | 106 | `result-track:ccf4ddd1bf8b6a2de4387dc4ed7334c486c3a94296154d40c7bc57672ca339d7` |
| 15 | `theorem` | [bodd_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-two--738c48eaebb8ce5e64ec600d.md) | 109 | `result-track:738c48eaebb8ce5e64ec600d1e2809a3ab7431dd1df2e0cd338f18909218d2b4` |
| 16 | `theorem` | [bodd_coe](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-coe--e154bc6fca92d37a0f067a0c.md) | 113 | `result-track:e154bc6fca92d37a0f067a0c89cac0b8c74d30797a3a2cc755429c9d9a2a47c1` |
| 17 | `theorem` | [bodd_subNatNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-subnatnat--9c08d209599504ee7e7f3581.md) | 117 | `result-track:9c08d209599504ee7e7f358118ac85435219a1ffe56e6ca73e3553f016222c55` |
| 18 | `theorem` | [bodd_negOfNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-negofnat--402cb062efdd73dcbf1bcfe4.md) | 124 | `result-track:402cb062efdd73dcbf1bcfe4848ef8af3207b14cbea57ae3ff0377ebc71147af` |
| 19 | `theorem` | [bodd_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-neg--baae69ec0ceaacc2fb965605.md) | 129 | `result-track:baae69ec0ceaacc2fb96560558930afe5a5b4b9fd4fc7b69a13b016252e7883d` |
| 20 | `theorem` | [bodd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-add--2411dd435f2709270f29df8e.md) | 133 | `result-track:2411dd435f2709270f29df8efd150623a93939d73a5eb0e4f7b3fc1497423188` |
| 21 | `theorem` | [bodd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-mul--684c7f4fc4c807ecd7683907.md) | 141 | `result-track:684c7f4fc4c807ecd76839076dd77a6fd97523bd2017099c92524de2c710636e` |
| 22 | `theorem` | [bodd_add_div2](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-add-div2--e217d9ba1c64a90952b677a8.md) | 147 | `result-track:e217d9ba1c64a90952b677a8fe01495f830a1dc67ea6a139730f97bad9a3ecc8` |
| 23 | `theorem` | [div2_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/div2-val--f36f43f98fb285cd264bcf1d.md) | 159 | `result-track:f36f43f98fb285cd264bcf1d9455b3fbb270353a4b443b6a090b9996211d2b60` |
| 24 | `theorem` | [bit_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bit-val--99b8088029825edc98573618.md) | 163 | `result-track:99b8088029825edc98573618abbffad0195fa444953a32ef51e93a4472c3bc4a` |
| 25 | `theorem` | [bit_decomp](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bit-decomp--06e4f43d8cfc327a58b0d5b0.md) | 168 | `result-track:06e4f43d8cfc327a58b0d5b0a9c52e0f4d2203cbb17c1a909bca1f48c82a953b` |
| 26 | `def` | [bitCasesOn.](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitcaseson--c0fec0aea7e05a8131357364.md) | 173 | `declaration-track:c0fec0aea7e05a8131357364526c7542c2b00ca1f779d4d5e9c264f1fc4a9bd2` |
| 27 | `theorem` | [bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bit-zero--0dbce103f4a5d5bab573c334.md) | 178 | `result-track:0dbce103f4a5d5bab573c33495d3837606985d68483e293c9231643c4f014f67` |
| 28 | `theorem` | [bit_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bit-coe-nat--2e82d74d1bd2588c4dd6f5a1.md) | 182 | `result-track:2e82d74d1bd2588c4dd6f5a11c2d38629e8ba0ab25747e62392316941d63c7b7` |
| 29 | `theorem` | [bit_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bit-negsucc--8c9047dce3f70902cb04665f.md) | 187 | `result-track:8c9047dce3f70902cb04665fb8970dcf33806bb1ca86f848da13d5d0a9dd7e5f` |
| 30 | `theorem` | [bodd_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bodd-bit--b4a6f1df25a574e63e9ecabb.md) | 192 | `result-track:b4a6f1df25a574e63e9ecabbde931ed36c6b29f0b6a7eac4b930a4f7938ec6ee` |
| 31 | `theorem` | [testBit_bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-bit-zero--015e937ae11c5a7019fc0de7.md) | 197 | `result-track:015e937ae11c5a7019fc0de71e2ea1c754de35413bdd682c22d552cd99c600ea` |
| 32 | `theorem` | [testBit_bit_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-bit-succ--272581bc5da30f1ef36eb86e.md) | 205 | `result-track:272581bc5da30f1ef36eb86eb6a03370da5014fbea3d29900d6694ef6eb718ff` |
| 33 | `theorem` | [bitwise_or](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitwise-or--4ec3064d08ace24565636c3b.md) | 217 | `result-track:4ec3064d08ace24565636c3b158fbfe224a83a71152f682e3b950e0393a08d2c` |
| 34 | `theorem` | [bitwise_and](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitwise-and--52eab95d00b74a276dc0a180.md) | 234 | `result-track:52eab95d00b74a276dc0a180f3fba063bca4f1af5bcb4cce739c37a9384e23fb` |
| 35 | `theorem` | [bitwise_diff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitwise-diff--5ed65b0e411987e0ff537351.md) | 249 | `result-track:5ed65b0e411987e0ff53735103d05652c267b2ad95d25482f69eb7dc88a14ac6` |
| 36 | `theorem` | [bitwise_xor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitwise-xor--84bf55d4924fd10338b4553e.md) | 267 | `result-track:84bf55d4924fd10338b4553ec81e9c643afb32eff91cab0b1d4089d99c8fa694` |
| 37 | `theorem` | [bitwise_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/bitwise-bit--5306c89c493e49ae5cfe03ec.md) | 285 | `result-track:5306c89c493e49ae5cfe03ec3586c9126d4cdc1ca46de6a844929f0dffaa9dad` |
| 38 | `theorem` | [lor_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/lor-bit--b1c6d31140d899873da3d734.md) | 296 | `result-track:b1c6d31140d899873da3d734d4af2e7f2ecbe3b26216483c6c3da9b5661f1311` |
| 39 | `theorem` | [land_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/land-bit--fbc717cf09e5a60c5ceae0a2.md) | 300 | `result-track:fbc717cf09e5a60c5ceae0a221666d6909e719489cc778dbb19529498aba388a` |
| 40 | `theorem` | [ldiff_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/ldiff-bit--65ffdb9af6344b77f6660331.md) | 304 | `result-track:65ffdb9af6344b77f6660331843f12f2b1488c974aae2d10b14147d157a491b8` |
| 41 | `theorem` | [lxor_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/lxor-bit--dd10658fb327a558a7cc6b19.md) | 308 | `result-track:dd10658fb327a558a7cc6b1957e94d107f3749bd7271273af919a50d6a2e481c` |
| 42 | `theorem` | [lnot_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/lnot-bit--014a6a0e64d653ee6b2b6fb9.md) | 312 | `result-track:014a6a0e64d653ee6b2b6fb935610eb93bc0197ff72b2c3b0f396aca452b6023` |
| 43 | `theorem` | [testBit_bitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-bitwise--d2cba21f213d7da138de6e98.md) | 317 | `result-track:d2cba21f213d7da138de6e980035d69b572dd0ca46aad0ceab7db66a6c366893` |
| 44 | `theorem` | [testBit_lor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-lor--38bc88c657d9e71175937ce8.md) | 326 | `result-track:38bc88c657d9e71175937ce8fe7f77fd88419149e92928204b1f61bea2ea1849` |
| 45 | `theorem` | [testBit_land](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-land--8393f6fe90836894928f3e3a.md) | 330 | `result-track:8393f6fe90836894928f3e3ae8aa7194ae90aaaee323503c949ee0253da5a009` |
| 46 | `theorem` | [testBit_ldiff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-ldiff--7a7c751ca6cc12ecc3a0c4e6.md) | 334 | `result-track:7a7c751ca6cc12ecc3a0c4e6a74bc78eb6bfb9cb77d98f8610f794a44eccd081` |
| 47 | `theorem` | [testBit_lxor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-lxor--37da7fe1c99ed374d2a50d27.md) | 338 | `result-track:37da7fe1c99ed374d2a50d27125d7be7cf1ea7c0a68f7b65c01ecb81aae12854` |
| 48 | `theorem` | [testBit_lnot](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/testbit-lnot--3bf73cf01eaca7560b48dda2.md) | 342 | `result-track:3bf73cf01eaca7560b48dda27e547c17804cdda5cac43a25c1b982923431cc72` |
| 49 | `theorem` | [shiftLeft_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftleft-neg--aa1c46341b682e85fe5071a3.md) | 347 | `result-track:aa1c46341b682e85fe5071a3c4c841d6e18d37f82320e24fd40738f72937d24a` |
| 50 | `theorem` | [shiftRight_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftright-neg--06e05d60020abe5f5092fac5.md) | 351 | `result-track:06e05d60020abe5f5092fac5904d648827e4438668bc95a1fb708c396968a1ec` |
| 51 | `theorem` | [shiftLeft_natCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftleft-natcast--eadab64ec1e205c92cfc8d3e.md) | 354 | `result-track:eadab64ec1e205c92cfc8d3e66e47806a92783eb4a2935800bd71474bb61a564` |
| 52 | `theorem` | [shiftRight_natCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftright-natcast--2853c19bcd75f52eb9272012.md) | 358 | `result-track:2853c19bcd75f52eb927201203f4ba8031e8679a282542e4f7cc24b53dd07aa5` |
| 53 | `theorem` | [shiftLeft_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftleft-negsucc--a467b5dcf0df0466ae53ac35.md) | 364 | `result-track:a467b5dcf0df0466ae53ac35db4320e95827785ce67e79a41393905d7f6f99b8` |
| 54 | `theorem` | [shiftRight_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftright-negsucc--7f6f1439de3711a7bf93a949.md) | 368 | `result-track:7f6f1439de3711a7bf93a949ac8e90eebbbdb3a250f801d4933f598298540d5d` |
| 55 | `theorem` | [shiftRight_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftright-add--89c0de1260ce12b4c46cbc07.md) | 371 | `result-track:89c0de1260ce12b4c46cbc07fe18560fc470c135f02da6f4c0c719314479e5fb` |
| 56 | `theorem` | [shiftLeft_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftleft-add--98474abe686420553d0a1a90.md) | 381 | `result-track:98474abe686420553d0a1a9001dfd324f9436b2a9eabe04eb25e407dcc3e8309` |
| 57 | `theorem` | [shiftLeft_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftleft-sub--4ab5946ae2c8cdb1fdb2515e.md) | 404 | `result-track:4ab5946ae2c8cdb1fdb2515e42598c6ae934cc0cde6dfe6168faaeadeac9a141` |
| 58 | `theorem` | [shiftLeft_eq_mul_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/shiftleft-eq-mul-pow--dad2971a9c673b16bb73b93e.md) | 407 | `result-track:dad2971a9c673b16bb73b93ebd46b453b8214a5cf15459978719b78ce545d050` |
| 59 | `theorem` | [one_shiftLeft](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/one-shiftleft--f829603c6408362230bdcc34.md) | 411 | `result-track:f829603c6408362230bdcc34ad3d01dcdbec81c8c072de9b50b3b8b0ab3485f4` |
| 60 | `theorem` | [zero_shiftLeft](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/zero-shiftleft--cbab05a6672980aed0ca7b4b.md) | 415 | `result-track:cbab05a6672980aed0ca7b4b441f78179be761ac42864e485fbca8f99afa60d7` |
| 61 | `theorem` | [zero_shiftRight'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantb77a149cf42d04e9280a26733a7bf9f8e5272feb9fc4aa85f468df3bfc43e683.lean/declarations/zero-shiftright--37470f6f855a92c622517203.md) | 421 | `result-track:37470f6f855a92c622517203eaaf33ee8321754e3f84495dd5f061adf686e47c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
