# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeTables.Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee4f3f12029edb8244fe77be4224e23aa79911ed",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee4f3f12029edb8244fe77be4224e23aa79911ed`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Count` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeCert` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Tactic.Simprocs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_211](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/prime-211--833cf8d46aa3d65ba0d96967.md) | 27 | `result-track:833cf8d46aa3d65ba0d9696700d162f0925bfef52200d5b87c0a9c0e38cd522f` |
| 2 | `theorem` | [prime_313](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/prime-313--1acf8a430408a947517006ab.md) | 29 | `result-track:1acf8a430408a947517006ab323ecb21d49bd8ba399250a587e1b082baf12a72` |
| 3 | `theorem` | [prime_3999999999999999791](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/prime-3999999999999999791--4d77245ad98664b4a879da4b.md) | 31 | `result-track:4d77245ad98664b4a879da4bf85466c87f50c173a51bfcf043546fcfdc0577f6` |
| 4 | `theorem` | [prime_3999999999999999691](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/prime-3999999999999999691--8ce17edf1f31fa2356bb7c23.md) | 37 | `result-track:8ce17edf1f31fa2356bb7c237df409ecae15b87d10a89d955bba64fbea330d74` |
| 5 | `theorem` | [count_prime_3_le_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-3-le-1--e50f040f6a1fd14976e2226e.md) | 50 | `result-track:e50f040f6a1fd14976e2226e819babf73b2c62d179d710bb443bf9a1414365b3` |
| 6 | `theorem` | [count_prime_5_le_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-5-le-2--eaca3358b8c79ee78ad34c69.md) | 51 | `result-track:eaca3358b8c79ee78ad34c6995a0834fb0e89c8ca4cc57adb23928f8210daf3b` |
| 7 | `theorem` | [count_prime_7_le_3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-7-le-3--51e26a807705d9e9eedb6865.md) | 52 | `result-track:51e26a807705d9e9eedb6865fda74ca0bd0fe35f49d765d95d51cb2cf2a04d1c` |
| 8 | `theorem` | [count_prime_11_le_4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-11-le-4--1daa75849aac6aa2806b564b.md) | 53 | `result-track:1daa75849aac6aa2806b564b69966903d13b79dc1052c28c9aa2fbb488223d24` |
| 9 | `theorem` | [count_prime_13_le_5](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-13-le-5--c6ee9f9b69ef279fcf2c8c40.md) | 54 | `result-track:c6ee9f9b69ef279fcf2c8c40a5008120365ff2b2c31d07de8f37dd6cd1ec4af0` |
| 10 | `theorem` | [count_prime_17_le_6](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-17-le-6--71516f53f8a026860020a686.md) | 55 | `result-track:71516f53f8a026860020a6863a867d8c0cf3356dec320dfeeac98b8942325a56` |
| 11 | `theorem` | [count_prime_19_le_7](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-19-le-7--2c583fe3709f759e75366274.md) | 56 | `result-track:2c583fe3709f759e75366274b850fd33852f5682f53b50d3d9d33ebd276aeb35` |
| 12 | `theorem` | [count_prime_23_le_8](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-23-le-8--060666a5ec37f87356fa5360.md) | 57 | `result-track:060666a5ec37f87356fa5360d65d0321f03eb31566bd0c993f7558e9e486aa91` |
| 13 | `theorem` | [count_prime_29_le_9](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-29-le-9--419f4291a6bb9e7db0c1aee6.md) | 58 | `result-track:419f4291a6bb9e7db0c1aee6f219a9faee8417ad5a563f65f5a61fc13736f91d` |
| 14 | `theorem` | [count_prime_31_le_10](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-31-le-10--7d877ed7e90bcd7651765bf7.md) | 59 | `result-track:7d877ed7e90bcd7651765bf7df1a70836e733bfc77efcb9b27f96bd92794b80f` |
| 15 | `theorem` | [count_prime_37_le_11](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-37-le-11--c177395e26fd0a190d6da2b0.md) | 60 | `result-track:c177395e26fd0a190d6da2b0462b0edcde396d0d8063cf6fc5fa370ac3f2bacc` |
| 16 | `theorem` | [count_prime_41_le_12](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-41-le-12--22fdfc6eca3530c95c9923cc.md) | 61 | `result-track:22fdfc6eca3530c95c9923ccbf58bee838ae4436d29495a6eb83efc2b2c6c62b` |
| 17 | `theorem` | [count_prime_43_le_13](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-43-le-13--2eca15d65bf114badd93e9fe.md) | 62 | `result-track:2eca15d65bf114badd93e9fe673011a83111b090398ba57ab0e927ed0c4ca505` |
| 18 | `theorem` | [count_prime_47_le_14](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-47-le-14--5ac0060e862a94f2ae80c1c9.md) | 63 | `result-track:5ac0060e862a94f2ae80c1c9333ac37889b2604b9afb40f7857c575cd6432440` |
| 19 | `theorem` | [count_prime_53_le_15](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-53-le-15--b27fb25b58e582e93f96dd50.md) | 64 | `result-track:b27fb25b58e582e93f96dd506f493a0d16a7d2514d635b5d029bfe422dbbfca0` |
| 20 | `theorem` | [count_prime_59_le_16](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-59-le-16--e3bba468fd3057355c319a22.md) | 65 | `result-track:e3bba468fd3057355c319a22f3f9f995c9d959464552bb315e7c83bf233c3924` |
| 21 | `theorem` | [count_prime_61_le_17](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-61-le-17--4c20be05829170ca5e3c79bc.md) | 66 | `result-track:4c20be05829170ca5e3c79bc6c24013bcb802e5ddffd80b5865b063883a91854` |
| 22 | `theorem` | [count_prime_67_le_18](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-67-le-18--52a8480212cec9c6e538987f.md) | 67 | `result-track:52a8480212cec9c6e538987f6b66ac1f198d1c3f5e02bffd0236118dfbcc9836` |
| 23 | `theorem` | [count_prime_71_le_19](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-71-le-19--b9dbda66636341d2736fdc0a.md) | 68 | `result-track:b9dbda66636341d2736fdc0aaedf11cd0b61f9df339f33a7282bc1ac9a3c4c57` |
| 24 | `theorem` | [count_prime_73_le_20](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-73-le-20--141d18c8a667ae0acb3fcd0c.md) | 69 | `result-track:141d18c8a667ae0acb3fcd0cb96bc7fedf815a3aff1068299ef2268b55433660` |
| 25 | `theorem` | [count_prime_79_le_21](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-79-le-21--c2f51276b847bd904dda474d.md) | 70 | `result-track:c2f51276b847bd904dda474de018890a1f0e2a0597314c449004ede0f98d1db9` |
| 26 | `theorem` | [count_prime_83_le_22](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-83-le-22--d1ccc05812033be2925cc1f8.md) | 71 | `result-track:d1ccc05812033be2925cc1f845f2ddbaa67f26b3c198e6ebfa9e3850807ad25d` |
| 27 | `theorem` | [count_prime_89_le_23](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-89-le-23--1b680de6cfa042b17140216a.md) | 72 | `result-track:1b680de6cfa042b17140216ab3489965442d02e54f0502f6940119a65e39f91d` |
| 28 | `theorem` | [count_prime_97_le_24](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-97-le-24--8a87c802ef4ff934574c66a1.md) | 73 | `result-track:8a87c802ef4ff934574c66a1f627d58108baac9fb3ab50266a660870d98357e1` |
| 29 | `theorem` | [count_prime_101_le_25](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-101-le-25--528953395e8570924e2b2035.md) | 74 | `result-track:528953395e8570924e2b20358f9f4930c164bccdc7040cdc4643213a8f7ff6d8` |
| 30 | `theorem` | [count_prime_103_le_26](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-103-le-26--e1ccea44ea2c07342347a917.md) | 75 | `result-track:e1ccea44ea2c07342347a917555793efeab4b7271ec9e527b0a5899e19444a64` |
| 31 | `theorem` | [count_prime_107_le_27](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-107-le-27--e2a62bb963b3bdff9c73d026.md) | 76 | `result-track:e2a62bb963b3bdff9c73d026d068712bfbda39d18a63eaa5d25089b98a27f69b` |
| 32 | `theorem` | [count_prime_109_le_28](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-109-le-28--195625cf865cb36890b85a1d.md) | 77 | `result-track:195625cf865cb36890b85a1df2b6a15a9bfe57143b2c5a0888081ca805c4be61` |
| 33 | `theorem` | [count_prime_113_le_29](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-113-le-29--88b7b79e165f5731a53e88a1.md) | 78 | `result-track:88b7b79e165f5731a53e88a1bf6e544f31b7a8a625f1a74da824b1a73ce194d0` |
| 34 | `theorem` | [count_prime_127_le_30](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/declarations/count-prime-127-le-30--1647147b80b2fcdc44ec32e9.md) | 79 | `result-track:1647147b80b2fcdc44ec32e9722ec768ff3b530753239b3b49a75c299376646c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
