# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Monad.Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bfbf6b5d5daba52ef5b27c316138eed379f279c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bfbf6b5d5daba52ef5b27c316138eed379f279c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean.json)

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
| 1 | `def` | [pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/pure--c9e655cf97866386164167d5.md) | 41 | `declaration-track:c9e655cf97866386164167d56cf41a2f85996f263072ddec484c33963f225c39` |
| 2 | `theorem` | [pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/pure-apply--40ad25a179ff28a545a28671.md) | 48 | `result-track:40ad25a179ff28a545a2867119b0efd645333554d4c269ef4efffa6046a14baa` |
| 3 | `theorem` | [support_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/support-pure--87812819f05fb1116a31912b.md) | 51 | `result-track:87812819f05fb1116a31912bfc2c298e8b8ac57c9f06f7a19d7a271da3e1a2b5` |
| 4 | `theorem` | [mem_support_pure_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/mem-support-pure-iff--bb45afe1121b3b5e1bdec251.md) | 54 | `result-track:bb45afe1121b3b5e1bdec25137916de9a8a444550350914c07dbdd2851696742` |
| 5 | `theorem` | [pure_apply_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/pure-apply-self--4bfe02017e98f2f69880371b.md) | 56 | `result-track:4bfe02017e98f2f69880371bc6ad3c73c3a17dd89e34633bf48821305446f3df` |
| 6 | `theorem` | [pure_apply_of_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/pure-apply-of-ne--66d4f9204063b4b3e8c1ef4a.md) | 59 | `result-track:66d4f9204063b4b3e8c1ef4a8f1f4a6cc5cab6df36b6f66c52b73a101346456a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/instance--37c3b1496701cccd891e9c76.md) | 62 | `declaration-track:37c3b1496701cccd891e9c760fb9ce479f08993a6450d070a960416ea89347a4` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tooutermeasure-pure-apply--69560b6a33a97bd4421f44b9.md) | 71 | `result-track:69560b6a33a97bd4421f44b9114652fda4e8bee55ebc67a5e2ffb2d4a24a72ee` |
| 9 | `theorem` | [toMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tomeasure-pure-apply--daf822cfca05c7a22103a6b7.md) | 86 | `result-track:daf822cfca05c7a22103a6b790013fd8d4207cb73c8da93f8604f7b6e6b405fe` |
| 10 | `theorem` | [toMeasure_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tomeasure-pure--b1a75a59c6560375f012e4be.md) | 90 | `result-track:b1a75a59c6560375f012e4beff0604572b6021aa3efe07b907e1fd049cf3cb4c` |
| 11 | `theorem` | [toPMF_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/topmf-dirac--c1c7f67c97273c1af25dcaa7.md) | 94 | `result-track:c1c7f67c97273c1af25dcaa73d4f05e5935343f0163837c6390f82bc8c356909` |
| 12 | `def` | [bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bind--b339c4b18d0efa329104cf03.md) | 105 | `declaration-track:b339c4b18d0efa329104cf038ad1b1b6ac52ca39e5edb07276cbecfb69a897f9` |
| 13 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bind-apply--3e749e290167acd730ed92c6.md) | 113 | `result-track:3e749e290167acd730ed92c6b51aefe14d11b6f6be301558dd73004270a334f7` |
| 14 | `theorem` | [support_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/support-bind--8e412c64f23a8c3363e38a7e.md) | 116 | `result-track:8e412c64f23a8c3363e38a7e29c3aa7c21014f4144ef06853102b643b7a8fa3e` |
| 15 | `theorem` | [mem_support_bind_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/mem-support-bind-iff--f50b663d02a56442e0d6881c.md) | 119 | `result-track:f50b663d02a56442e0d6881c50ebb981a71cb604a995a74e67e6a0feed6a9182` |
| 16 | `theorem` | [pure_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/pure-bind--eacf32df1b40cde410fa7cfa.md) | 124 | `result-track:eacf32df1b40cde410fa7cfac102eaa68bd1f09312cfe0fabbe27b55019e603c` |
| 17 | `theorem` | [bind_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bind-pure--e277c01a4663f2a3ce9cc186.md) | 129 | `result-track:e277c01a4663f2a3ce9cc18658d73fe36383de9019ddcc6018e1baa126fc351c` |
| 18 | `theorem` | [bind_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bind-const--93c52930e01266312a174274.md) | 135 | `result-track:93c52930e01266312a174274594cc31d2fab246c7dbdb4e2fa73ea937209f978` |
| 19 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bind-bind--0e9c5e2ef5e9d03029181287.md) | 139 | `result-track:0e9c5e2ef5e9d03029181287a6a72b526d704cc7cdbb7dcaa76a727f90eb4f41` |
| 20 | `theorem` | [bind_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bind-comm--5eea83965f5e09b0f1d3c264.md) | 144 | `result-track:5eea83965f5e09b0f1d3c26450ea5f2653d3a5850334dea2df546b7e8cae38ab` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tooutermeasure-bind-apply--b7b54e6c476f9e0be65e04cf.md) | 155 | `result-track:b7b54e6c476f9e0be65e04cf14c34fd36edb7ef0a97a1f28eed1bf909f0c7fa1` |
| 22 | `theorem` | [toMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tomeasure-bind-apply--1f4a6791fa514347d0932c4e.md) | 172 | `result-track:1f4a6791fa514347d0932c4e66a674efabb42f0a2bf719c2e575f6bb84d4aeca` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/instance--d9d6c2305f3f39a46b5bb129.md) | 183 | `declaration-track:d9d6c2305f3f39a46b5bb129173260cd8194c297eadfb5dbde50888bad849e63` |
| 24 | `def` | [bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport--ec38238e37bfa322718af0d1.md) | 191 | `declaration-track:ec38238e37bfa322718af0d140fa6d70e9680a0dfb1b05f5b0384813830948e4` |
| 25 | `theorem` | [bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport-apply--fe37d6cb84c368d529327438.md) | 202 | `result-track:fe37d6cb84c368d52932743884cc7c832a6c1033b9092b9aaecdfd62a77963b5` |
| 26 | `theorem` | [support_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/support-bindonsupport--270be9ca9029af618fcb8cae.md) | 206 | `result-track:270be9ca9029af618fcb8cae24ad7de9bb822afb2f71638b9c7425ad6b8e7933` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/mem-support-bindonsupport-iff--d5e6710ca5707f57197275cd.md) | 214 | `result-track:d5e6710ca5707f57197275cde69b8debc6b2fda9b5e2714fe2081c1af8943ba1` |
| 28 | `theorem` | [bindOnSupport_eq_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport-eq-bind--818f5e478103b2a670c3a32c.md) | 220 | `result-track:818f5e478103b2a670c3a32c81772e5734c413fb8451e170dd8344728399aadc` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport-eq-zero-iff--91d703626bd33924b0df85af.md) | 228 | `result-track:91d703626bd33924b0df85afa19537254f25f76b7546999861f37a10e3b6f75c` |
| 30 | `theorem` | [pure_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/pure-bindonsupport--d0ea7f5fa05c9fc2c85c418b.md) | 235 | `result-track:d0ea7f5fa05c9fc2c85c418b5c126b2411357a0da6429e7274146a789f430a5d` |
| 31 | `theorem` | [bindOnSupport_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport-pure--fb4cb2ac9986f6f03c4039b0.md) | 243 | `result-track:fb4cb2ac9986f6f03c4039b065b594b298afbb66be4065a6e2fb73dbfdab1bd2` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport-bindonsupport--faaaf4d09de6ff42129e2d01.md) | 248 | `result-track:faaaf4d09de6ff42129e2d0139e66768326d03ad30b2a55a00bc710a13848fb6` |
| 33 | `theorem` | [bindOnSupport_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/bindonsupport-comm--fa99c09812f0a2980da9e451.md) | 266 | `result-track:fa99c09812f0a2980da9e451330e85ac9a0b08aada273d8e4cdcd08dc7f7148b` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tooutermeasure-bindonsupport-apply--585d1cfb7d751fa7f001d5b0.md) | 280 | `result-track:585d1cfb7d751fa7f001d5b0ab88c9f88e3b0942a358bf4146f63f96a3c39a9c` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/declarations/tomeasure-bindonsupport-apply--569f2646ffc9f4119ecc9fcb.md) | 300 | `result-track:569f2646ffc9f4119ecc9fcbf0831457d4a950ab84e327303648efca78d97e97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
