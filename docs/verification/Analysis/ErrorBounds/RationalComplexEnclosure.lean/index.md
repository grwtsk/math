# Verification target: GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85c4c2e02d489c1eb44e090694b4edcc8d3c7d07",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalComplexEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85c4c2e02d489c1eb44e090694b4edcc8d3c7d07`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalComplexEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalComplexEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ComplexExpScaling`](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Rat.Cast.Order` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coordinates](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/coordinates--5494891a0d6c458390274c10.md) | 24 | `declaration-track:5494891a0d6c458390274c10bd4c0417520a5520e76ed890dd59336d13f100a4` |
| 2 | `def` | [zero](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/zero--a39d588c4eed1ed313544be5.md) | 26 | `declaration-track:a39d588c4eed1ed313544be54cc0687fdeec61fc1bde707aa5512b68dce3ce75` |
| 3 | `def` | [one](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/one--9e1a4363bca2c1a2a4524fee.md) | 27 | `declaration-track:9e1a4363bca2c1a2a4524feed000cf553104d59ac9e0de1b0b60a28903271219` |
| 4 | `def` | [add](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/add--921983c0dd367651d118f412.md) | 28 | `declaration-track:921983c0dd367651d118f412a68383b1d166a6c9fe487728b1eb45f4cae0a557` |
| 5 | `def` | [sub](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/sub--2f5e2b4775ac04d148375432.md) | 29 | `declaration-track:2f5e2b4775ac04d148375432709d1e0ba5d68a99841cf49449f16fc960846793` |
| 6 | `def` | [mul](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/mul--b17d8a827facdc26b2aac229.md) | 30 | `declaration-track:b17d8a827facdc26b2aac2298baf89e630437fcf48097e12b489fbc59f6e4898` |
| 7 | `def` | [divNat](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/divnat--35964ec342796686faceda24.md) | 34 | `declaration-track:35964ec342796686faceda240bfceef86576ade4d2ff7c373bb0373cce3138ca` |
| 8 | `def` | [power](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/power--aa9f986aedfa930cb2a32fe4.md) | 36 | `declaration-track:aa9f986aedfa930cb2a32fe4497c15ba12d8eb12ced69d2ea5000c0a3194d9f1` |
| 9 | `def` | [taylor](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/taylor--3dbd5edaf32fde4c4969dad5.md) | 41 | `declaration-track:3dbd5edaf32fde4c4969dad5c68387c70a1b4992f032657d7f1ec39f30d0d572` |
| 10 | `def` | [squareNorm](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/squarenorm--070376f641cb7f44acc19fe1.md) | 45 | `declaration-track:070376f641cb7f44acc19fe1dfd02d0c971bb86bde4138af0e817f6ccbf43c59` |
| 11 | `def` | [inBall](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/inball--7d354bd0f83e728254a7ea50.md) | 48 | `declaration-track:7d354bd0f83e728254a7ea50eac85cd38998ea891db1fb5c90a518ef13b55c83` |
| 12 | `def` | [toComplex](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex--c02cb8030b1f7faaf1286a1a.md) | 52 | `declaration-track:c02cb8030b1f7faaf1286a1ac1e8890e863b84ce4c5c9002ab20f3477a1ba702` |
| 13 | `theorem` | [sub_self](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/sub-self--276dc535a65b87ffe014899b.md) | 54 | `result-track:276dc535a65b87ffe014899bfae47ee67503af4fb15936b128c48aa7d1834812` |
| 14 | `theorem` | [inBall_zero](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/inball-zero--d907554e7e21f8799fe6dc8a.md) | 58 | `result-track:d907554e7e21f8799fe6dc8ae35529f13e5a21e2c56a52953d02649536f625b3` |
| 15 | `theorem` | [toComplex_real](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-real--e9ec2e4f1fb269abe9271a83.md) | 60 | `result-track:e9ec2e4f1fb269abe9271a830acae62fe74d306a3815be0622c824e720b5389c` |
| 16 | `theorem` | [toComplex_zero](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-zero--b3fe8654917939ce9adaf8e9.md) | 63 | `result-track:b3fe8654917939ce9adaf8e90731e2ee3458c997117aa65eee9bd52a3c815f71` |
| 17 | `theorem` | [toComplex_one](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-one--3d7deba48e1eaca6ae7799c3.md) | 66 | `result-track:3d7deba48e1eaca6ae7799c3fd1fab605406222a0928266012f349f7820c7438` |
| 18 | `theorem` | [toComplex_add](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-add--2fc632a69c553d248b58dfe4.md) | 69 | `result-track:2fc632a69c553d248b58dfe47d69e4e9b364504ec9b48a59dce5fe5f17b10ccf` |
| 19 | `theorem` | [toComplex_sub](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-sub--267e11304f7f97a79f03fb3f.md) | 73 | `result-track:267e11304f7f97a79f03fb3f571ac08cf1ec9981ce65a6939f6abf0a83f2d328` |
| 20 | `theorem` | [toComplex_mul](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-mul--c6d8262684d710de20bff4b0.md) | 77 | `result-track:c6d8262684d710de20bff4b0ef2ed2639a12d89fa3eddc2385ab7e3aa05a4443` |
| 21 | `theorem` | [toComplex_divNat](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-divnat--aedb8723210501352f514e97.md) | 81 | `result-track:aedb8723210501352f514e97a82a21e8375a93e972aed22fdda18883f9c2788d` |
| 22 | `theorem` | [toComplex_power](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-power--017239513cb69aec2e559297.md) | 85 | `result-track:017239513cb69aec2e559297c31f1bacdc3ca292307534b0027dd2e482b9d026` |
| 23 | `theorem` | [toComplex_taylor](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/tocomplex-taylor--7176c52cc659502d1d4253cd.md) | 92 | `result-track:7176c52cc659502d1d4253cd79bb1464582c6286b4904f0b11dead5e2fee7c18` |
| 24 | `theorem` | [norm_sq_toComplex](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/norm-sq-tocomplex--96a3a0a0a86f990286a9623a.md) | 100 | `result-track:96a3a0a0a86f990286a9623a8a0911fe79f08a0387595d5812262c68ebd28be5` |
| 25 | `theorem` | [inBall_iff](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/inball-iff--0a91065a305a1feba715049e.md) | 106 | `result-track:0a91065a305a1feba715049e19a7fc5f896d7fa51aed393c9e824caf1301f48d` |
| 26 | `theorem` | [negative_radius_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/negative-radius-rejected--ffe7cd1a54dc778b79410a4c.md) | 125 | `result-track:ffe7cd1a54dc778b79410a4c167dd8039cb1111ab4eb9b292a377c1441581da1` |
| 27 | `theorem` | [diagonal_ball_control](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/diagonal-ball-control--6b6aad45fd2933144db0fa4a.md) | 130 | `result-track:6b6aad45fd2933144db0fa4af880bdc283c8fe17f733766b9b65be05050b1ec9` |
| 28 | `theorem` | [imaginary_arithmetic_control](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/declarations/imaginary-arithmetic-control--e465aad7a84dba0c4cf1a5ab.md) | 134 | `result-track:e465aad7a84dba0c4cf1a5ab15709248ff3618318ceb7af353b614eae1ddc3ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
