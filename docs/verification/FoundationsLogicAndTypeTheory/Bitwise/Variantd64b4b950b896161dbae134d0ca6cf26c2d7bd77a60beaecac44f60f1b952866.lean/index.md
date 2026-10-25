# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bitwise.Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "104d452e5308bbaa39a509864a2a8c4efa741447",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `104d452e5308bbaa39a509864a2a8c4efa741447`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.Int` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [div2](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/div2--b8efabc8315acf1156369590.md) | 32 | `declaration-track:b8efabc8315acf1156369590b2776038d80fb4cfa40d9b953835c81840eed534` |
| 2 | `def` | [bodd](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd--c15a9fcb6600af5045bd174a.md) | 37 | `declaration-track:c15a9fcb6600af5045bd174aef6e69d2e5c2cb716f21cbe9dba9a3384400e2f9` |
| 3 | `def` | [bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bit--27e8fbd74f357a02f75d10a5.md) | 43 | `declaration-track:27e8fbd74f357a02f75d10a581344938fb24599e94883823759d8e22d03e7d95` |
| 4 | `def` | [natBitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/natbitwise--61732e9cc0296d6c83e37dc8.md) | 47 | `declaration-track:61732e9cc0296d6c83e37dc82830137da390adbb89ac61955bab258f6cde0c20` |
| 5 | `def` | [bitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitwise--4a5055e32ce7ff2918728ad2.md) | 52 | `declaration-track:4a5055e32ce7ff2918728ad236e52bf36a964d0c08121f478ab704fe41533845` |
| 6 | `def` | [lnot](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/lnot--204409a4916cad4700da5577.md) | 59 | `declaration-track:204409a4916cad4700da5577b20589fea9a9ba31bb238c55a9b0acb80f8e2ccb` |
| 7 | `def` | [lor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/lor--996394e007492d6c2b4bb367.md) | 64 | `declaration-track:996394e007492d6c2b4bb367a4390c42fc8f73031305c00ef6668ec96e9a0692` |
| 8 | `def` | [land](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/land--626e440b838715a315d2ca42.md) | 71 | `declaration-track:626e440b838715a315d2ca42063507b26a344acc1c5aeca514007fffa760a233` |
| 9 | `def` | [ldiff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/ldiff--0df8b8354c825855a8a003d2.md) | 80 | `declaration-track:0df8b8354c825855a8a003d2d24d45cf3c75c98d6baadd127d1f0501f20e4b66` |
| 10 | `def` | [xor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/xor--f074d1cb95265ee21cc3be4a.md) | 87 | `declaration-track:f074d1cb95265ee21cc3be4a20f5624548bf5ca6f53f183c2fd2bfee4f01cafc` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/instance--24e0604caefacc5fb5a78744.md) | 95 | `declaration-track:24e0604caefacc5fb5a7874432098ed0b85e38d8af29efe25bb6e911ace7a71b` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/instance--1ae9ff23064fb8f9e905ee05.md) | 104 | `declaration-track:1ae9ff23064fb8f9e905ee0541eb0689b50e956505bd2a7b7da4fb7ccef3433d` |
| 13 | `theorem` | [bodd_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-zero--47db4df629ec2b706086bb5d.md) | 110 | `result-track:47db4df629ec2b706086bb5d1b25887de7d3f29d94be44df625e5ffc18c0d09f` |
| 14 | `theorem` | [bodd_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-one--b009111dad8e03936135db68.md) | 114 | `result-track:b009111dad8e03936135db68e4042c42c8840bad6739e7479f6562caa13c2c24` |
| 15 | `theorem` | [bodd_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-two--cddf723f0e0a7facac0b36cb.md) | 117 | `result-track:cddf723f0e0a7facac0b36cbbd9e8af9fa05e3760a30f8ceb557352d21e5212f` |
| 16 | `theorem` | [bodd_coe](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-coe--aa17dedf687e3516307218a5.md) | 121 | `result-track:aa17dedf687e3516307218a5353c99e3eaff679b859305ae64f8c999391bbc19` |
| 17 | `theorem` | [bodd_subNatNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-subnatnat--3f16a8f6074a63f81da89737.md) | 125 | `result-track:3f16a8f6074a63f81da8973740e9cc5581961a23e4ae952b342ca412239d69f2` |
| 18 | `theorem` | [bodd_negOfNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-negofnat--7661c425895a3aea48bf369b.md) | 132 | `result-track:7661c425895a3aea48bf369b3e1abe0be851097a5e072ad59d677dac02f7b23d` |
| 19 | `theorem` | [bodd_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-neg--8e0de3bbb9a063931d9fd265.md) | 137 | `result-track:8e0de3bbb9a063931d9fd265e5b67688a9f213c50a9fe0b6b8928e364efdd52c` |
| 20 | `theorem` | [bodd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-add--ec58925ba4d746527d44dde1.md) | 141 | `result-track:ec58925ba4d746527d44dde1de2d157fea1ab47bda0cf9efe242dbac12282edf` |
| 21 | `theorem` | [bodd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-mul--387d476e00f5fa8477b5b6a7.md) | 149 | `result-track:387d476e00f5fa8477b5b6a70f2a4d75e7b831ea0570a6d76d1cf1bdb653a962` |
| 22 | `theorem` | [bodd_add_div2](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-add-div2--6de94cdd60479c93b2cd555e.md) | 155 | `result-track:6de94cdd60479c93b2cd555e02d4dc58b3add3b55eb1da7b93e3e8c5f960d8cf` |
| 23 | `theorem` | [div2_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/div2-val--992831e30c6b87a1d8a80570.md) | 167 | `result-track:992831e30c6b87a1d8a80570b3c5a3effc0371f9e79073132500f4baee0926ee` |
| 24 | `theorem` | [bit_val](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bit-val--7a99046fe1e07e7c415ad2ce.md) | 171 | `result-track:7a99046fe1e07e7c415ad2cefe5f54cc352bba583fd86398b9f7d523a8f7570c` |
| 25 | `theorem` | [bit_decomp](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bit-decomp--f0f8dd0b7d73c44e68277169.md) | 176 | `result-track:f0f8dd0b7d73c44e682771698abc0c00913a082e9695c72047311a614c8f58d5` |
| 26 | `def` | [bitCasesOn.](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitcaseson--91bf9fbfc7774569291b2e55.md) | 181 | `declaration-track:91bf9fbfc7774569291b2e55bf00c8815ddb78c733bc5385b6a07fb0bf93ac8a` |
| 27 | `theorem` | [bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bit-zero--b24f4db81b0f8b494d2b07d3.md) | 186 | `result-track:b24f4db81b0f8b494d2b07d33d060047cd6ed068a4a1a3f03e2db5fcaa2f5727` |
| 28 | `theorem` | [bit_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bit-coe-nat--c74a797d5931c023d63b9d55.md) | 190 | `result-track:c74a797d5931c023d63b9d552f42bf8e872b9c49425e1b337fdbc1310049b654` |
| 29 | `theorem` | [bit_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bit-negsucc--8dfbd11715d5af8f0454c5dc.md) | 195 | `result-track:8dfbd11715d5af8f0454c5dc82d69b29588b91a99bdd947b8af873943d9bfd4c` |
| 30 | `theorem` | [bodd_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bodd-bit--37934fdd798856ac5b29ef02.md) | 200 | `result-track:37934fdd798856ac5b29ef02075e00e627947adaf65117181c4a4d9476553584` |
| 31 | `theorem` | [testBit_bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-bit-zero--4765e9895c0f918e342d5f21.md) | 205 | `result-track:4765e9895c0f918e342d5f21204c92eed6a4582eb78d28d9332626e5be88ccc3` |
| 32 | `theorem` | [testBit_bit_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-bit-succ--e1b0cd89ab2de1b4ce483dc3.md) | 213 | `result-track:e1b0cd89ab2de1b4ce483dc3106c03632a3af42c8ac74f5dc1646a688c626ece` |
| 33 | `theorem` | [bitwise_or](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitwise-or--75851b283e2ae268d598e771.md) | 225 | `result-track:75851b283e2ae268d598e7712e1b118ac362dac3a387a4a3b0fcfccf8de53f97` |
| 34 | `theorem` | [bitwise_and](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitwise-and--dfd74786956627241961897e.md) | 242 | `result-track:dfd74786956627241961897e3d87f28b7ed69b216099e64c983a87d8a6b8ea87` |
| 35 | `theorem` | [bitwise_diff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitwise-diff--4f623a0d3f864a0c80fc7cdc.md) | 257 | `result-track:4f623a0d3f864a0c80fc7cdcd7336fe76398b143459eda219caaeb02231f01af` |
| 36 | `theorem` | [bitwise_xor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitwise-xor--ad16096d457b0ad09c57b9d9.md) | 275 | `result-track:ad16096d457b0ad09c57b9d99c05f96e155b2f6e1ea6ad077b3cfb0c76d5ed7c` |
| 37 | `theorem` | [bitwise_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/bitwise-bit--b7292f30ec58af1deb39b71e.md) | 293 | `result-track:b7292f30ec58af1deb39b71ed59bc4a8ae8e191b11500c9950df2962be0f5e0b` |
| 38 | `theorem` | [lor_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/lor-bit--0987f269a0f335ced583eff0.md) | 304 | `result-track:0987f269a0f335ced583eff0fe66f5382fdf599870c6c8826f767577402f44a1` |
| 39 | `theorem` | [land_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/land-bit--4bc0af2b04955cca7de643d4.md) | 308 | `result-track:4bc0af2b04955cca7de643d4df826a7b610c873f237bcaacbb0bb23595892a33` |
| 40 | `theorem` | [ldiff_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/ldiff-bit--a04dac2b6f33d44e4bd72afe.md) | 312 | `result-track:a04dac2b6f33d44e4bd72afea8dca4334523215dc6785bb9b688831d4bd7f70c` |
| 41 | `theorem` | [lxor_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/lxor-bit--43f329f9ffab20e5b8acaf2d.md) | 316 | `result-track:43f329f9ffab20e5b8acaf2d2d6f6208e76ef0907192df5d558f204b779be516` |
| 42 | `theorem` | [lnot_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/lnot-bit--77a6f37425cb50eb68f9d668.md) | 320 | `result-track:77a6f37425cb50eb68f9d668db919a0c1c35087b3e75c123f83d0b76ecbb8401` |
| 43 | `theorem` | [testBit_bitwise](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-bitwise--83ec017f62af093b7f59cea7.md) | 325 | `result-track:83ec017f62af093b7f59cea779cbfc1ce0c32a3f90bacce34de49a34c77ff948` |
| 44 | `theorem` | [testBit_lor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-lor--736a7bafb3abf6c7e22ae8f6.md) | 334 | `result-track:736a7bafb3abf6c7e22ae8f6bd6b048b6616ae91708da759b6ecfb21bcb91f07` |
| 45 | `theorem` | [testBit_land](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-land--44ce69212bad5d4973afdf07.md) | 338 | `result-track:44ce69212bad5d4973afdf077df4ffe269a44e5509b23b9ed43b67edbebb7571` |
| 46 | `theorem` | [testBit_ldiff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-ldiff--89b5c3f7e5527e225990a968.md) | 342 | `result-track:89b5c3f7e5527e225990a968af8d8a4bd30ae4ebeec602be925d5acc3eec601e` |
| 47 | `theorem` | [testBit_lxor](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-lxor--acd151e5ff2a5400ee05b0bd.md) | 346 | `result-track:acd151e5ff2a5400ee05b0bdae74843f47f85fa1624c62781e27b2d7201faf26` |
| 48 | `theorem` | [testBit_lnot](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/testbit-lnot--2bd382c83db8da24c64b53b8.md) | 350 | `result-track:2bd382c83db8da24c64b53b84901368bae5a13e2c48fe1ccaf7b8cd65269e054` |
| 49 | `theorem` | [shiftLeft_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftleft-neg--ffa605820bb23b788f75a364.md) | 355 | `result-track:ffa605820bb23b788f75a364e8fed408c95967c0ebe99dc032c88522d9c5be57` |
| 50 | `theorem` | [shiftRight_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftright-neg--8196686dd35988bfba0112b1.md) | 359 | `result-track:8196686dd35988bfba0112b117a6fc79926c4df50e393ed33252ba9d33166ae0` |
| 51 | `theorem` | [shiftLeft_natCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftleft-natcast--894bfef2c65e0a5448e1f998.md) | 362 | `result-track:894bfef2c65e0a5448e1f9985a611c2a0241a8166e14b199b7222a016cd16334` |
| 52 | `theorem` | [shiftRight_natCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftright-natcast--11b40809953326b1c5e0291b.md) | 366 | `result-track:11b40809953326b1c5e0291bba4e8924e60b25aaf2e74a9a051229614c026f4e` |
| 53 | `theorem` | [shiftLeft_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftleft-negsucc--7c54f0513e01c7d876cbc194.md) | 372 | `result-track:7c54f0513e01c7d876cbc19407547131768ec4b62bd36fec00b5c5ad4a5918e7` |
| 54 | `theorem` | [shiftRight_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftright-negsucc--3b0b431d81934c5d308edf32.md) | 376 | `result-track:3b0b431d81934c5d308edf324174a0231a24734367f69e1c1cdd25e3dd700da6` |
| 55 | `theorem` | [shiftRight_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftright-add--fc8dbd6a36ac6382844716f8.md) | 379 | `result-track:fc8dbd6a36ac6382844716f805c8b99f570dfa640600200385ed7258f305a5bf` |
| 56 | `theorem` | [shiftLeft_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftleft-add--8ad4900ee4442f1f7eb12155.md) | 389 | `result-track:8ad4900ee4442f1f7eb12155ec360994de51f061a03ea9c718829965f06db595` |
| 57 | `theorem` | [shiftLeft_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftleft-sub--8bafd42e7bec0306bd6f2538.md) | 412 | `result-track:8bafd42e7bec0306bd6f25389bb7950a6170b10a379c404742fb9fa0e901972b` |
| 58 | `theorem` | [shiftLeft_eq_mul_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/shiftleft-eq-mul-pow--d4a151b3af93351c3029085a.md) | 415 | `result-track:d4a151b3af93351c3029085aae36b239799bd03a2f2e7790e9c6d5003aa99fac` |
| 59 | `theorem` | [one_shiftLeft](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/one-shiftleft--7213cf911ca8c4a5ab50474e.md) | 419 | `result-track:7213cf911ca8c4a5ab50474eab35c91bbcc20234229d0aad3b9ce49c1dc6077e` |
| 60 | `theorem` | [zero_shiftLeft](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/zero-shiftleft--2259a58641d0d4c5dce6746f.md) | 423 | `result-track:2259a58641d0d4c5dce6746fbf0add2884f65d82fd578d0879774df76aee529b` |
| 61 | `theorem` | [zero_shiftRight'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/declarations/zero-shiftright--aefbe612e2381c6daf6a1488.md) | 429 | `result-track:aefbe612e2381c6daf6a1488efcc87c31fcc64678862f4f8c74d89f36ecf0aa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
