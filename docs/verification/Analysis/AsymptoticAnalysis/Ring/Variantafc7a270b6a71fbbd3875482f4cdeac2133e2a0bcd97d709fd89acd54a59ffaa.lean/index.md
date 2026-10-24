# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "642352028661cbe6ef09463ed9a68521228ec234",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `642352028661cbe6ef09463ed9a68521228ec234`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigOWith_const_mul_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-const-mul-self--ffbce0d4f6edf8b844b6f5e1.md) | 35 | `result-track:ffbce0d4f6edf8b844b6f5e1c1b2b4a9bd6f5020a169f060f4b930d8bb1da794` |
| 2 | `theorem` | [isBigO_const_mul_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-self--d0ea38004369be3e41b0cfcf.md) | 39 | `result-track:d0ea38004369be3e41b0cfcf3ae005156e3cb091ecfa7cf95d6a069891cffdcd` |
| 3 | `theorem` | [IsBigOWith.const_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-const-mul-left--0dce48cd35e904ed6e95dd5f.md) | 42 | `result-track:0dce48cd35e904ed6e95dd5f511f940b2f613821ed783a6e896b2f95e304a9e3` |
| 4 | `theorem` | [IsBigO.const_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-left--f8c4a3de93ff224771e79e38.md) | 46 | `result-track:f8c4a3de93ff224771e79e38691acc108227699843b37869c427f87054d2c65c` |
| 5 | `theorem` | [isBigOWith_self_const_mul'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-self-const-mul--2085eb327ceb18f87e5d60e1.md) | 50 | `result-track:2085eb327ceb18f87e5d60e109b399f029b9ba552a8d95e87e727fa2dfb57118` |
| 6 | `theorem` | [isBigOWith_self_const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-self-const-mul--b6c712a248755d898e7ec557.md) | 55 | `result-track:b6c712a248755d898e7ec5571b7cb8074019d901ea41cb90318da86a19c33073` |
| 7 | `theorem` | [isBigO_self_const_mul'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-self-const-mul--a6fdd1cda5beea0c12996a3d.md) | 59 | `result-track:a6fdd1cda5beea0c12996a3d46cbac0cd2be6c7bc5793e416fe98be823c32c0e` |
| 8 | `theorem` | [isBigO_self_const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-self-const-mul--0a8b79c6931bca95891a2d09.md) | 64 | `result-track:0a8b79c6931bca95891a2d0953af8a3198746051e7adc5d9a5e22e3d6259d494` |
| 9 | `theorem` | [isBigO_const_mul_left_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-left-iff--ab400232e1018d53564ad227.md) | 68 | `result-track:ab400232e1018d53564ad227b83fa027a80cc782df2ae9808bc0cf41233b262c` |
| 10 | `theorem` | [isBigO_const_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-left-iff--6cfed4cffe9fad344762d9c0.md) | 72 | `result-track:6cfed4cffe9fad344762d9c08244f96deffb8363da098bed20ca06cb4ab8d8a7` |
| 11 | `theorem` | [IsLittleO.const_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-left--b0a48f333383a43e56ae6a8b.md) | 76 | `result-track:b0a48f333383a43e56ae6a8ba769018ba33dcde006500bfa09e22371a95f8441` |
| 12 | `theorem` | [isLittleO_const_mul_left_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-left-iff--1048f796a3a765aa7dd2c0a2.md) | 79 | `result-track:1048f796a3a765aa7dd2c0a20b7fb786813986845a91772fec7c959408aab8bb` |
| 13 | `theorem` | [isLittleO_const_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-left-iff--694f39998e510bb923c812e8.md) | 83 | `result-track:694f39998e510bb923c812e88d06ab4a1539413187ff5d2cd832bfaabfb60381` |
| 14 | `theorem` | [IsBigOWith.of_const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-of-const-mul-right--57ba59d868af9e5074f4326d.md) | 87 | `result-track:57ba59d868af9e5074f4326d947a12c5a4491f98fd4c57af7099c5475e7e1184` |
| 15 | `theorem` | [IsBigO.of_const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-of-const-mul-right--1fd470b0ede396d0c1bd41ac.md) | 91 | `result-track:1fd470b0ede396d0c1bd41ac9cefdc90e657ae4bb63b85b02f444704e19cead5` |
| 16 | `theorem` | [IsBigOWith.const_mul_right'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-const-mul-right--f9c0b4e4f2064f82f1a1d939.md) | 95 | `result-track:f9c0b4e4f2064f82f1a1d939ab258524d405ecc83a0e6e4275efa4cc3202bfec` |
| 17 | `theorem` | [IsBigOWith.const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-const-mul-right--23b6a41b470dd95a4b48c8af.md) | 99 | `result-track:23b6a41b470dd95a4b48c8af3ebdaa161df2437056eee8e36084db854abb66dd` |
| 18 | `theorem` | [IsBigO.const_mul_right'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-right--07666e986e48974f60a538f7.md) | 103 | `result-track:07666e986e48974f60a538f7bc22359d828e1ef4f087d725d3e37d5c2d565fce` |
| 19 | `theorem` | [IsBigO.const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-right--7d1dac7529f365c5fd1cbca1.md) | 107 | `result-track:7d1dac7529f365c5fd1cbca1f304f4e1f4e4c227f6d06563b0e2c4d7f8fe46c9` |
| 20 | `theorem` | [isBigO_const_mul_right_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-right-iff--d440f91b39e31aa09ba08c4a.md) | 112 | `result-track:d440f91b39e31aa09ba08c4a76465a88daa5545041cfcddd374507786fa6ffbd` |
| 21 | `theorem` | [isBigO_const_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-const-mul-right-iff--83c8c1306240909e37c8d419.md) | 116 | `result-track:83c8c1306240909e37c8d419c09c62acc2933c6a7a12db0722a3b8c6af300632` |
| 22 | `theorem` | [IsLittleO.of_const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-of-const-mul-right--e22333c26068fb589bffb2bf.md) | 120 | `result-track:e22333c26068fb589bffb2bfca2445d0126824ccffb0e99d47ceb32fd916022e` |
| 23 | `theorem` | [IsLittleO.const_mul_right'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-right--4501cafeef2d2ea34131fd66.md) | 124 | `result-track:4501cafeef2d2ea34131fd66597db5e9bee4c95149b07a6cfb34cfa3bf918072` |
| 24 | `theorem` | [IsLittleO.const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-right--ac7c46b05ffee42138e1c814.md) | 128 | `result-track:ac7c46b05ffee42138e1c8145fb2e690a80adbc340984f734a0145b1014fb76a` |
| 25 | `theorem` | [isLittleO_const_mul_right_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-right-iff--fdb78317412382f7c65813fa.md) | 132 | `result-track:fdb78317412382f7c65813fa302f0b7f2254bba870f94b452c2ecacce1623e63` |
| 26 | `theorem` | [isLittleO_const_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-const-mul-right-iff--78482a4fda4e5384300ff3de.md) | 136 | `result-track:78482a4fda4e5384300ff3debe25727d9c9a9cf37629cb094f1c3c8f0a1a9972` |
| 27 | `theorem` | [IsBigOWith.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-mul--ab0ba3468bcb1bc8b00320d2.md) | 142 | `result-track:ab0ba3468bcb1bc8b00320d2621f6beb39f53bfa6d6ec35bba6f947e822341c1` |
| 28 | `theorem` | [IsBigO.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-mul--227f0c87791251a18083da00.md) | 151 | `result-track:227f0c87791251a18083da0042e206ace5f67bedd1d990d3cfabe05e499ab284` |
| 29 | `theorem` | [IsBigO.mul_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-mul-islittleo--797ca8c6f41d2d1a3073d900.md) | 157 | `result-track:797ca8c6f41d2d1a3073d900b7e2440570f5f64f6f9879e0af7d7a420b5b210a` |
| 30 | `theorem` | [IsLittleO.mul_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-mul-isbigo--13eaccb01dcf4331edbb016b.md) | 164 | `result-track:13eaccb01dcf4331edbb016b2c898e7db1cfdaf0cabf9e92d51a3ad86f9becbf` |
| 31 | `theorem` | [IsLittleO.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-mul--14dd33cf9954fb06efacc400.md) | 171 | `result-track:14dd33cf9954fb06efacc4003d7ecbc380c378be97d9eac3ae6f63073b00186f` |
| 32 | `theorem` | [IsBigOWith.pow'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-pow--ea249180d6fd77b24ee5e8bc.md) | 175 | `result-track:ea249180d6fd77b24ee5e8bcb3ba2f408a21a7e7303173edec82cb1d42736f43` |
| 33 | `theorem` | [IsBigOWith.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-pow--806b0a1b6e46924c8f1c0586.md) | 184 | `result-track:806b0a1b6e46924c8f1c05865370df7b6234e3f8580a44eb7ccee91a0dcdaef2` |
| 34 | `theorem` | [IsBigOWith.of_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-of-pow--802924cff7d7519b5258aec9.md) | 190 | `result-track:802924cff7d7519b5258aec9b59701003d145f76954e839aaa2de7c5ba92f990` |
| 35 | `theorem` | [IsBigO.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-pow--7b88f862e2a355da6d19378d.md) | 201 | `result-track:7b88f862e2a355da6d19378dc637d70fec445f0c72581b7eca872caf04887f43` |
| 36 | `theorem` | [IsLittleO.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-pow--474b75f79fa69aad8f333cbc.md) | 206 | `result-track:474b75f79fa69aad8f333cbc97611f5084dbae9c8eea293b5df46855a6ae8163` |
| 37 | `theorem` | [IsLittleO.of_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-of-pow--20aee63f710d1dcc355869cf.md) | 213 | `result-track:20aee63f710d1dcc355869cfc1a84de8733685e10d362864c5ec94549958433c` |
| 38 | `theorem` | [IsBigOWith.inv_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-inv-rev--ff6b9576e9fd19feb0c9b86d.md) | 219 | `result-track:ff6b9576e9fd19feb0c9b86dc692ff0b656a727fd18fa619ce0a895c35bc39dd` |
| 39 | `theorem` | [IsBigO.inv_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-inv-rev--29d4d79fae68fef89ed19e86.md) | 228 | `result-track:29d4d79fae68fef89ed19e862cfd87f5b77f45a66399080fda16ceb6be60f461` |
| 40 | `theorem` | [IsLittleO.inv_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-inv-rev--665c693faf9c3d020ea4edc0.md) | 233 | `result-track:665c693faf9c3d020ea4edc01cc98bb78a9d32d0ddf4dea5049318e15d5feb9d` |
| 41 | `theorem` | [IsBigOWith.eventually_mul_div_cancel](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigowith-eventually-mul-div-cancel--998a816432900308661b75e2.md) | 248 | `result-track:998a816432900308661b75e21b69ae38cdbf03b77c0b0cf9bfb333fc74bf4c66` |
| 42 | `theorem` | [IsBigO.eventually_mul_div_cancel](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/isbigo-eventually-mul-div-cancel--142900c193542733d5806d21.md) | 252 | `result-track:142900c193542733d5806d2125bdc139cea787906dc00074cd8beeb05fc54787` |
| 43 | `theorem` | [IsLittleO.eventually_mul_div_cancel](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantafc7a270b6a71fbbd3875482f4cdeac2133e2a0bcd97d709fd89acd54a59ffaa.lean/declarations/islittleo-eventually-mul-div-cancel--8bbdb8e51c1bf7a551a8e1d5.md) | 257 | `result-track:8bbdb8e51c1bf7a551a8e1d589a2f2e56ce4958d8c15289e95164627028f70b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
