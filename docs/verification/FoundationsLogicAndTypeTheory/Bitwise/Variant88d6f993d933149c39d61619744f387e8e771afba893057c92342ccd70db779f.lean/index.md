# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bitwise.Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1962bb4c51cb46c5263984155adb869c5a46f59a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1962bb4c51cb46c5263984155adb869c5a46f59a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Bitwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bodd_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-zero--af1c32a4657e3d05bbac20e0.md) | 35 | `result-track:af1c32a4657e3d05bbac20e0665d43979def76bb564056022039b6a85d0febf7` |
| 2 | `theorem` | [bodd_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-one--44fa6459fd0dac1789ad0121.md) | 40 | `result-track:44fa6459fd0dac1789ad0121063c08f33187e6c7b8ddcf07f479bd16def98875` |
| 3 | `theorem` | [bodd_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-two--31496fa261c3cccb8e745c94.md) | 44 | `result-track:31496fa261c3cccb8e745c94095c8dfc141ced8fb409568772761abee22d5647` |
| 4 | `theorem` | [bodd_coe](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-coe--7c33ba99547d08c870649597.md) | 49 | `result-track:7c33ba99547d08c870649597f3d0b51935ce7e4cc898898db637ecd5563d9487` |
| 5 | `theorem` | [bodd_subNatNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-subnatnat--f521fb389c0a38c337e5a0fe.md) | 54 | `result-track:f521fb389c0a38c337e5a0fec4590888234d35ec80a2172cffb8cf4c15c27ed1` |
| 6 | `theorem` | [bodd_negOfNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-negofnat--1739065c1ecb3d9e905631c8.md) | 62 | `result-track:1739065c1ecb3d9e905631c81437fe1b42a188d5e9672660e0b8e6e0d57fb020` |
| 7 | `theorem` | [bodd_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-neg--46352c5d62dbf85133a4963c.md) | 68 | `result-track:46352c5d62dbf85133a4963c9e56f83a167eb32476db2c75cc45b7d06acb534e` |
| 8 | `theorem` | [bodd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-add--16330dec1ef0720fd95ce776.md) | 82 | `result-track:16330dec1ef0720fd95ce7762e5d0cfaf8bfb0f2d8f26301a5fb8c187b3b24e1` |
| 9 | `theorem` | [bodd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-mul--7be1165ace4e587c1b79cd46.md) | 95 | `result-track:7be1165ace4e587c1b79cd4675e7381e03eac80496d39701610bcf1e144cf26c` |
| 10 | `theorem` | [bodd_add_div2](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-add-div2--25956b8d6c5cc1de2e389a35.md) | 105 | `result-track:25956b8d6c5cc1de2e389a353846ce867a72b6d86a3039036be89b53abddd8cf` |
| 11 | `theorem` | [div2_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/div2-val--a6eb0e3b2e74b9283120ef13.md) | 118 | `result-track:a6eb0e3b2e74b9283120ef1385a84ff23b2a62a29625918a091f90e422061b16` |
| 12 | `theorem` | [bit0_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit0-val--4838072fcb8c7adbd6f4f56d.md) | 128 | `result-track:4838072fcb8c7adbd6f4f56d00276593cfa098e69353a5a16c18617ddd59ccb1` |
| 13 | `theorem` | [bit1_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit1-val--dcd6b66d1aa24f94cc895d01.md) | 133 | `result-track:dcd6b66d1aa24f94cc895d01dbcb777533559e73564a19f5fbe8d5a568e289ce` |
| 14 | `theorem` | [bit_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit-val--7a1b1e7161894556c52ceebf.md) | 137 | `result-track:7a1b1e7161894556c52ceebfd8e867ca22fa26979c7fd99bce3cfe9ada3ee096` |
| 15 | `theorem` | [bit_decomp](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit-decomp--074139e18a622a54402ddffb.md) | 143 | `result-track:074139e18a622a54402ddffb77adbe1e81c6253c8aa466627dc693a453f7a256` |
| 16 | `def` | [bitCasesOn.](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bitcaseson--986b9c068c995d0ec511b81c.md) | 149 | `declaration-track:986b9c068c995d0ec511b81c4083af626945f9b360491317bf50ca46e3d57896` |
| 17 | `theorem` | [bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit-zero--1a3e62352a6f98b814cff7df.md) | 155 | `result-track:1a3e62352a6f98b814cff7df946c03a4f313249fd41c3c2e534a415366e02ad6` |
| 18 | `theorem` | [bit_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit-coe-nat--4c569a9a830b86bc3c64fadf.md) | 160 | `result-track:4c569a9a830b86bc3c64fadf7a2a52c43173c2502eee16eadba8815a979b8f1a` |
| 19 | `theorem` | [bit_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit-negsucc--288d13e9d6dcb6fed137fd8a.md) | 166 | `result-track:288d13e9d6dcb6fed137fd8ab44cea0f26d09190c25f9dbd5ff41e2691947a08` |
| 20 | `theorem` | [bodd_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-bit--4896fc8cce634ea494378f8e.md) | 172 | `result-track:4896fc8cce634ea494378f8e63d63a19a0aae5792bfa2ef07711a50fc9f26d12` |
| 21 | `theorem` | [bodd_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-bit0--514702dd82cabcbd2a34c4b5.md) | 178 | `result-track:514702dd82cabcbd2a34c4b5bec7ce799c5883e062704f942811a9f29ab7ab33` |
| 22 | `theorem` | [bodd_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bodd-bit1--9a704a27c06a6a21eb071c35.md) | 183 | `result-track:9a704a27c06a6a21eb071c35d2b42e24ec8abd855022cdc374e0c279d182f523` |
| 23 | `theorem` | [bit0_ne_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit0-ne-bit1--788352ee10082b3ed14a9e17.md) | 188 | `result-track:788352ee10082b3ed14a9e172c90d367cc78fc47cf3f781ab31761eee0bfebc5` |
| 24 | `theorem` | [bit1_ne_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit1-ne-bit0--7df895680a0b14491f7b92c5.md) | 193 | `result-track:7df895680a0b14491f7b92c5e64c0efdf63c268395fd03cdb98b4fcb782a8cdb` |
| 25 | `theorem` | [bit1_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bit1-ne-zero--52b1c7736b6567125ace20e2.md) | 198 | `result-track:52b1c7736b6567125ace20e24c632febfbc86a3a3c7583be8f3c277ac4676449` |
| 26 | `theorem` | [testBit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-zero--a6afcacc4a7c3958e4048719.md) | 204 | `result-track:a6afcacc4a7c3958e4048719ab47c33e612c3218ce47422b013fe21bd860e122` |
| 27 | `theorem` | [testBit_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-succ--26e05bdca01b6eda1cc894d7.md) | 213 | `result-track:26e05bdca01b6eda1cc894d707b5246527d761d0eb3c94e3b7d31725a2347929` |
| 28 | `theorem` | [bitwise_or](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bitwise-or--3db82ba1cf78efe175fd9601.md) | 228 | `result-track:3db82ba1cf78efe175fd9601bdb8cab8d25541398d226624dbc178c1a078dd4e` |
| 29 | `theorem` | [bitwise_and](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bitwise-and--0cb427885c5e3c66b63911de.md) | 247 | `result-track:0cb427885c5e3c66b63911de0f07e75cee16917393db5fd3a078e8e9135ab1ba` |
| 30 | `theorem` | [bitwise_diff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bitwise-diff--81a6ce8e219ed39fc9a6b60e.md) | 264 | `result-track:81a6ce8e219ed39fc9a6b60ede1862fd25083682eae6a048521f6aa0dfebae20` |
| 31 | `theorem` | [bitwise_xor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bitwise-xor--57aef7f2e6cd6a2b8489b63a.md) | 284 | `result-track:57aef7f2e6cd6a2b8489b63aa856d0804bb6695fd03f7f63b5dc9a10dbd85343` |
| 32 | `theorem` | [bitwise_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/bitwise-bit--ff4f52a94ea9949f66642a4b.md) | 302 | `result-track:ff4f52a94ea9949f66642a4bf8e3e7092de0407e049a54d14a34008956053172` |
| 33 | `theorem` | [lor_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/lor-bit--3fb2dccc084746523b2014f1.md) | 314 | `result-track:3fb2dccc084746523b2014f1715feddfa376a1c534826c1dbf76e4c2f4a1ae42` |
| 34 | `theorem` | [land_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/land-bit--8593dd94397aae5f14f7d0fa.md) | 319 | `result-track:8593dd94397aae5f14f7d0fa8134e6f45d6691e2ac417ae1550ce2ce116c2766` |
| 35 | `theorem` | [ldiff_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/ldiff-bit--b543f72c94254db706e9ba2e.md) | 324 | `result-track:b543f72c94254db706e9ba2e90068c850bcf082ba9b32efb60ad6f8a3158d7fa` |
| 36 | `theorem` | [lxor_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/lxor-bit--a21ea27110a56a0947277d68.md) | 329 | `result-track:a21ea27110a56a0947277d683a7b3d994ce8192005dda19619615d99c196dd24` |
| 37 | `theorem` | [lnot_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/lnot-bit--2c3c4076cad33a66d2df2e75.md) | 334 | `result-track:2c3c4076cad33a66d2df2e75a41344cc4947cd69921f4b43ae16f9335f19c0ec` |
| 38 | `theorem` | [testBit_bitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-bitwise--a560f7dfbfeae43ed0b5cf1a.md) | 340 | `result-track:a560f7dfbfeae43ed0b5cf1a7a895e92c3bd39b4b63a66a857c1a445ded4c895` |
| 39 | `theorem` | [testBit_lor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-lor--806762cf6f03e7aed7729ed6.md) | 350 | `result-track:806762cf6f03e7aed7729ed6e444a6db63cf0e3999e65c3ed30e3d1057ef9455` |
| 40 | `theorem` | [testBit_land](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-land--9a7f1663444d36aded63d3b6.md) | 355 | `result-track:9a7f1663444d36aded63d3b6a59332b90aec30975a81d62ba461e59bba1e42af` |
| 41 | `theorem` | [testBit_ldiff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-ldiff--0a1cf60fc7355bad6a8d1b6c.md) | 360 | `result-track:0a1cf60fc7355bad6a8d1b6c2e935b8ac35fc8e8ef18f7491a3887846a3a4c95` |
| 42 | `theorem` | [testBit_lxor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-lxor--69c03ae300e8888ab4e0f854.md) | 365 | `result-track:69c03ae300e8888ab4e0f854c30a3db5334d1095764a5cc9e7ace6d5ff127bbc` |
| 43 | `theorem` | [testBit_lnot](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/testbit-lnot--6ed1e6318472c205c5be71da.md) | 370 | `result-track:6ed1e6318472c205c5be71daaa1bd2d281bc4cbdd8dc4283544bbb33d7871f00` |
| 44 | `theorem` | [shiftl_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftl-neg--4937ef747e4ee0e14742c0eb.md) | 376 | `result-track:4937ef747e4ee0e14742c0eb74e561216389b7365f9562c935141fa6bbc31edf` |
| 45 | `theorem` | [shiftr_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftr-neg--04156fdf57ea4e1e5f9ea3ca.md) | 381 | `result-track:04156fdf57ea4e1e5f9ea3ca12ab0982005dab1d4ae96f2c06c3956eafc74bbc` |
| 46 | `theorem` | [shiftl_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftl-coe-nat--6bb4e730f751f03217ff4008.md) | 386 | `result-track:6bb4e730f751f03217ff40081bfed384516f088b603734e09845fa57a96d453d` |
| 47 | `theorem` | [shiftr_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftr-coe-nat--9fa83121a8454f49353baef1.md) | 392 | `result-track:9fa83121a8454f49353baef1d2d66df6da1480dd477af0399efa1925598e66c3` |
| 48 | `theorem` | [shiftl_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftl-negsucc--d9508cc3df579479bba34e60.md) | 396 | `result-track:d9508cc3df579479bba34e60650c42fda96f2ce5af56eec94a20f9693091f371` |
| 49 | `theorem` | [shiftr_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftr-negsucc--353498014afe537332e82a3e.md) | 401 | `result-track:353498014afe537332e82a3ed9fa050f181d5dc827dea62be16fff9cf08ec1ac` |
| 50 | `theorem` | [shiftr_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftr-add--a894de9c7684ea07ef0adbd8.md) | 404 | `result-track:a894de9c7684ea07ef0adbd86c7b19cd25c269338cf25ba3def6521ac6a3d6eb` |
| 51 | `theorem` | [shiftl_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftl-add--4699c6ef63cbf517ca8fc317.md) | 415 | `result-track:4699c6ef63cbf517ca8fc3179803eeab13b1f712439654f7a7017f881a809b83` |
| 52 | `theorem` | [shiftl_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftl-sub--f464de5c0a351c20169dd3ba.md) | 437 | `result-track:f464de5c0a351c20169dd3ba0abefab2c21adf2676dd7ba9c668171680e8d3e9` |
| 53 | `theorem` | [shiftl_eq_mul_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftl-eq-mul-pow--26200ee9b81fafc334b9c3d4.md) | 441 | `result-track:26200ee9b81fafc334b9c3d43085abf62560809e927255ebb8f8374a6c0f5e59` |
| 54 | `theorem` | [shiftr_eq_div_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/shiftr-eq-div-pow--b599d33d7147568aee6feae0.md) | 446 | `result-track:b599d33d7147568aee6feae06b2e847d629a2dca184b2c1e69d5405bc9ee41cd` |
| 55 | `theorem` | [one_shiftl](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/one-shiftl--0f2755f231b74a7cbbfae005.md) | 453 | `result-track:0f2755f231b74a7cbbfae0052218ff2778c21dd89eb929757c27923c58a7d04a` |
| 56 | `theorem` | [zero_shiftl](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/zero-shiftl--c9abc844f97385c14904fbc3.md) | 458 | `result-track:c9abc844f97385c14904fbc371f247231510dc481996d7333450d1fe130d5dcb` |
| 57 | `theorem` | [zero_shiftr](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variant88d6f993d933149c39d61619744f387e8e771afba893057c92342ccd70db779f.lean/declarations/zero-shiftr--ec62fb9fe774ee17f69a2a60.md) | 464 | `result-track:ec62fb9fe774ee17f69a2a60cfae4231c1abd9209132c294bff1f6b7f3a51f24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
