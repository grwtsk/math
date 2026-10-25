# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73bf15fb44457c009b9a84700b30bc2e630c092e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73bf15fb44457c009b9a84700b30bc2e630c092e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint--da6895cd1c51226af7804cd0.md) | 50 | `declaration-track:da6895cd1c51226af7804cd0b3b4be97c1de94c8d22fc62d1ecb744bbefb31f8` |
| 2 | `theorem` | [AffineMap.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/affinemap-map-midpoint--1e5b909b809bec008066e6ff.md) | 56 | `result-track:1e5b909b809bec008066e6ffd92338133af730d7c9dee999e4b08d030f52b840` |
| 3 | `theorem` | [AffineEquiv.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/affineequiv-map-midpoint--4cf33e188654c6255670b292.md) | 61 | `result-track:4cf33e188654c6255670b292b5b2606f872c70473bba2199d2629503ae8e9ba2` |
| 4 | `theorem` | [AffineEquiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/affineequiv-pointreflection-midpoint-left--54dd5528521ac99d87d8b7d1.md) | 65 | `result-track:54dd5528521ac99d87d8b7d10562a28e3aa27098f6c5f716b13a3c18daa80303` |
| 5 | `theorem` | [Equiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/equiv-pointreflection-midpoint-left--1b8187fb357fcb276d1a3a2d.md) | 71 | `result-track:1b8187fb357fcb276d1a3a2da4a72dc5b1b14c7e4e3f0938cdd7aa45bfe969b8` |
| 6 | `theorem` | [midpoint_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-comm--6470c8a27e0da1aaec1d80d7.md) | 76 | `result-track:6470c8a27e0da1aaec1d80d79e9881a478b712879bc68c62d785cc2b1d16f2d0` |
| 7 | `theorem` | [AffineEquiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/affineequiv-pointreflection-midpoint-right--1cc4b67c2da4fec72acf1abc.md) | 79 | `result-track:1cc4b67c2da4fec72acf1abcb5aa4fe1574a9a3b02e64063e25457e1ac2235b6` |
| 8 | `theorem` | [Equiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/equiv-pointreflection-midpoint-right--abf2ab9e3343f07a3e9b96cf.md) | 84 | `result-track:abf2ab9e3343f07a3e9b96cf44d4cb47e56ab614a9b7cf247995c7ca65393b00` |
| 9 | `theorem` | [midpoint_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-vsub-midpoint--96b14332b0e3f97ca0fd9038.md) | 88 | `result-track:96b14332b0e3f97ca0fd903871866b6826a70e4f87b22797f51791d2cfc1cda9` |
| 10 | `theorem` | [midpoint_vadd_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-vadd-midpoint--cb9606cfd72830d5d52dbef9.md) | 92 | `result-track:cb9606cfd72830d5d52dbef9120eef6abdf56b9b5bcf82f4eeb1055a60291c33` |
| 11 | `theorem` | [midpoint_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-eq-iff--ddffa816cef1a1cadc2a5060.md) | 96 | `result-track:ddffa816cef1a1cadc2a50603278154279ac2584e32041fbaec1cded0e5f011c` |
| 12 | `theorem` | [midpoint_pointReflection_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-pointreflection-left--6cd0c13611b9fa7edf89db40.md) | 102 | `result-track:6cd0c13611b9fa7edf89db4050c0162142927836f84eca1ba20d9a7d4322aeda` |
| 13 | `theorem` | [midpoint_pointReflection_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-pointreflection-right--ce17b257cc86b2573fb08f50.md) | 107 | `result-track:ce17b257cc86b2573fb08f50cc09dc85a104adb7a6cdacfa227c1cc56cdb020a` |
| 14 | `lemma` | [AffineEquiv.midpoint_pointReflection_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/affineequiv-midpoint-pointreflection-left--3c4af63e457e0233a6d8c0f0.md) | 111 | `result-track:3c4af63e457e0233a6d8c0f0046529a8656b559b73df0b46a99c352f9179033c` |
| 15 | `lemma` | [AffineEquiv.midpoint_pointReflection_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/affineequiv-midpoint-pointreflection-right--e5f755842a2697b3eecf0e18.md) | 115 | `result-track:e5f755842a2697b3eecf0e18e83f58e503740dde160b5d6ec8fcecade3899c69` |
| 16 | `theorem` | [midpoint_vsub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-vsub-left--df76bbcd32bec4f264976752.md) | 120 | `result-track:df76bbcd32bec4f26497675234aab48bfb3b3bcb3167a1e330a70ae248f27adb` |
| 17 | `theorem` | [midpoint_vsub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-vsub-right--fe1abcd9fc6dd1a60f0f9cfb.md) | 124 | `result-track:fe1abcd9fc6dd1a60f0f9cfbaf08829801e28c850734d32960e1421de788cb6d` |
| 18 | `theorem` | [left_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/left-vsub-midpoint--9994ecac9597cbe56fee917d.md) | 128 | `result-track:9994ecac9597cbe56fee917db8021935c45d969218e5e249af86b01d9db84699` |
| 19 | `theorem` | [right_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/right-vsub-midpoint--b915eb0a91a0f37ee55d83de.md) | 132 | `result-track:b915eb0a91a0f37ee55d83dec396cf68104720f3a0a80baa2f329053cc5bf75b` |
| 20 | `theorem` | [midpoint_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-vsub--48b513cf1b69e28148b1b564.md) | 135 | `result-track:48b513cf1b69e28148b1b5648dda6ee46e3c52f7049158b711c7c302489a89df` |
| 21 | `theorem` | [vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/vsub-midpoint--246229f517345b921fd35ebd.md) | 141 | `result-track:246229f517345b921fd35ebd934c4544b2e439a0d06d6af42dd7eeb0be812be3` |
| 22 | `theorem` | [midpoint_sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-sub-left--cffd25fe7528400318da47a3.md) | 147 | `result-track:cffd25fe7528400318da47a3ac66516512f3e7d5c10015d36e127ab3ab06fb62` |
| 23 | `theorem` | [midpoint_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-sub-right--1e15e21670cf85300978d18a.md) | 151 | `result-track:1e15e21670cf85300978d18a72e5d6214c866212e0a05bb928a1dc1f0fd477b1` |
| 24 | `theorem` | [left_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/left-sub-midpoint--998c88fd39d99684c8219983.md) | 155 | `result-track:998c88fd39d99684c8219983bf4371811839307164ea9f9a14ad511a3296b53b` |
| 25 | `theorem` | [right_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/right-sub-midpoint--4001104a9b286e25af355dca.md) | 159 | `result-track:4001104a9b286e25af355dca9242ab4337b495f2ac7c8b1a1c060f331564b7ee` |
| 26 | `theorem` | [midpoint_eq_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-eq-left-iff--1d1725acfd20c0d5f54605e3.md) | 165 | `result-track:1d1725acfd20c0d5f54605e3b5a48280540d8154fd1c5b0fb1cbeb77b0fc4718` |
| 27 | `theorem` | [left_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/left-eq-midpoint-iff--8f4ad8f672f053f6a57caa7a.md) | 169 | `result-track:8f4ad8f672f053f6a57caa7af8c5c4240b4afc3e347c67c6b75e1331cee03221` |
| 28 | `theorem` | [midpoint_eq_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-eq-right-iff--86d480027cdb70e6cdd92b9b.md) | 173 | `result-track:86d480027cdb70e6cdd92b9bf289179c28e6e8817f043b203c57723583adf11b` |
| 29 | `theorem` | [right_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/right-eq-midpoint-iff--c8da3039cbe086b05045c689.md) | 177 | `result-track:c8da3039cbe086b05045c6895948d7a584c582373c6329e084143feb3818081f` |
| 30 | `theorem` | [midpoint_eq_midpoint_iff_vsub_eq_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-eq-midpoint-iff-vsub-eq-vsub--4d1ed587929b3fd2cb49b04a.md) | 180 | `result-track:4d1ed587929b3fd2cb49b04a63104a0eb7a6caabbaaf4c64021b28d110f80212` |
| 31 | `theorem` | [midpoint_eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-eq-iff--473dc5b5ac7996bb39b613eb.md) | 185 | `result-track:473dc5b5ac7996bb39b613eb5c8769382bd1941d10aca59af66dddf50ef63bd7` |
| 32 | `theorem` | [midpoint_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-unique--c6f0eee0892becea80c75481.md) | 189 | `result-track:c6f0eee0892becea80c7548176345f9d3c37f8b81f63dd3bd76766dc269ede32` |
| 33 | `theorem` | [midpoint_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-self--75f8d0cc60f091385d515e42.md) | 194 | `result-track:75f8d0cc60f091385d515e42958b72e1a2b821f5f4be6abd67bbdfc372081cff` |
| 34 | `theorem` | [midpoint_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-add-self--7a24433dc5db411de690f400.md) | 198 | `result-track:7a24433dc5db411de690f400b9a545bbe997bea4a12239c80cc25e96866f98f5` |
| 35 | `theorem` | [midpoint_zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-zero-add--1980016f3a99c167e6a5517e.md) | 203 | `result-track:1980016f3a99c167e6a5517ed4b6ab141809df951c263f68515238f7f8d7f07f` |
| 36 | `theorem` | [midpoint_eq_smul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-eq-smul-add--7205ca5c7965e756e1aef6b2.md) | 206 | `result-track:7205ca5c7965e756e1aef6b2a9bd5334b08578c03353c99772b4f6bb3369f4f1` |
| 37 | `theorem` | [midpoint_self_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-self-neg--7adabacdde00da264962110d.md) | 211 | `result-track:7adabacdde00da264962110dc76a0e3c9a4230f98fe53e64a232b995b9aa580d` |
| 38 | `theorem` | [midpoint_neg_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-neg-self--293c4509282242cab72c881f.md) | 215 | `result-track:293c4509282242cab72c881f6c60d331695ad801518d48271698961f3d326707` |
| 39 | `theorem` | [midpoint_sub_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-sub-add--464853505835826e80418637.md) | 218 | `result-track:464853505835826e80418637218656621606a3c50b32259b4758cb5001305b9e` |
| 40 | `theorem` | [midpoint_add_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/midpoint-add-sub--9de1877665905782218f3593.md) | 222 | `result-track:9de1877665905782218f3593857ee74a62bfc5fe53d07dd659c353045c8dc192` |
| 41 | `def` | [ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/ofmapmidpoint--40bb124924991873b9521660.md) | 233 | `declaration-track:40bb124924991873b95216607967e3762ec50e5a2605ae9fedd8dce833308c08` |
| 42 | `theorem` | [coe_ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Varianted752173c0e639d510021d6933127eb99a0517e41e0f3ae5ea733296ab81fd31.lean/declarations/coe-ofmapmidpoint--57a1f5d20d136e0031f71d75.md) | 246 | `result-track:57a1f5d20d136e0031f71d752f7e21634c236c4b5deae099d2fac40b8dba89a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
