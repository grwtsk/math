# Verification target: GRWTSK.NumberTheory.Farey.GroupSuperwalk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18676d1d9b7ae5f4359dc2c5c1bb8c8730188e91",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/GroupSuperwalk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18676d1d9b7ae5f4359dc2c5c1bb8c8730188e91`.

Source path: `GRWTSK/NumberTheory/Farey/GroupSuperwalk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/GroupSuperwalk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ResolvableQuintic`](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatZ](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/matz--c15a4c1226b8688081c5065d.md) | 36 | `declaration-track:c15a4c1226b8688081c5065ddeea19b5c4287b15276583c38bd3ef5737e915a7` |
| 2 | `inductive` | [Turn](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/turn--f01a617fae1310f68380a9cc.md) | 38 | `declaration-track:f01a617fae1310f68380a9cc35653478112fafca9cdd636a5141504ba11d2c78` |
| 3 | `def` | [turnCell](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/turncell--6395d08dcb851a6d38df6bd8.md) | 44 | `declaration-track:6395d08dcb851a6d38df6bd88177ed8b955cfd6b99765d4ddd59c77ebf96a24d` |
| 4 | `def` | [walk](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/walk--ec0da558c9666b99f5b4b030.md) | 49 | `declaration-track:ec0da558c9666b99f5b4b0306eff339122c22ca028dbb096b4d84bae96faf0c5` |
| 5 | `theorem` | [walk_nil](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/walk-nil--98b8a66f0347b2ce083220ad.md) | 53 | `result-track:98b8a66f0347b2ce083220ad532abe9f8469502b36cf1b44c57f9fb3d89ae310` |
| 6 | `theorem` | [walk_cons](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/walk-cons--76f6f8cad45b3da0611e75ce.md) | 55 | `result-track:76f6f8cad45b3da0611e75ce4b7ef3311c29f9b45bef86566a35bc9e3ca9e4e8` |
| 7 | `theorem` | [walk_append](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/walk-append--4c3c0c244d1614e12c0f1afb.md) | 58 | `result-track:4c3c0c244d1614e12c0f1afba9937113ca7904a8f1294548c8fc451d6f44483b` |
| 8 | `def` | [frame](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/frame--b5d17513f74e2c30f573968c.md) | 65 | `declaration-track:b5d17513f74e2c30f573968c181dff37c46890eb4ff2ef7ce321eb08c814f53b` |
| 9 | `def` | [leftShear](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/leftshear--15a64cf4c671554e7ab841f5.md) | 70 | `declaration-track:15a64cf4c671554e7ab841f5f9365d1e36d32314e68383bc653b364010b4ead1` |
| 10 | `def` | [rightShear](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/rightshear--102be06af66bee25b2bc8634.md) | 73 | `declaration-track:102be06af66bee25b2bc863466ba2696ead78a63347fe60e593d076f62afa147` |
| 11 | `def` | [turnShear](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/turnshear--edb5df17852330ebd59f13d6.md) | 76 | `declaration-track:edb5df17852330ebd59f13d65a7903f3f2e37fbdc30dde4314598a82dd21de8e` |
| 12 | `def` | [leftUnit](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/leftunit--0578b9dddabd599a1a142ffe.md) | 81 | `declaration-track:0578b9dddabd599a1a142ffeb270c164c6b806a839e77ef5354e68ec1d0a7f49` |
| 13 | `def` | [rightUnit](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/rightunit--28b4f209b5b70591e714ad91.md) | 93 | `declaration-track:28b4f209b5b70591e714ad91e702e4f29b3c02a38e3214260a047b8e6ed4b084` |
| 14 | `def` | [turnUnit](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/turnunit--17740fd5737608fccdf577f5.md) | 105 | `declaration-track:17740fd5737608fccdf577f50aaed70f5f0979f6695ea94c15a72776f6946900` |
| 15 | `def` | [wordUnit](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/wordunit--6e4eaff5374343af2873befc.md) | 111 | `declaration-track:6e4eaff5374343af2873befc8c566a6d45dbdaa857f56edc2acc8b1e45d0a2f7` |
| 16 | `theorem` | [wordUnit_nil](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/wordunit-nil--d3791fdd256c4684a31c69ab.md) | 115 | `result-track:d3791fdd256c4684a31c69ab263a35a3a3dc1d0776a67f204c16335ecc945925` |
| 17 | `theorem` | [wordUnit_cons](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/wordunit-cons--80066c87e13ea061e8d2453c.md) | 117 | `result-track:80066c87e13ea061e8d2453c7a617ab07de77526af1e949b3fc8291821dd3006` |
| 18 | `theorem` | [wordUnit_append](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/wordunit-append--c1bd29d0fd266efeead8a999.md) | 121 | `result-track:c1bd29d0fd266efeead8a99901dabab9b14fbc85e08f15d39ae45000222d4974` |
| 19 | `theorem` | [frame_leftChild](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/frame-leftchild--41a7a63942d430e40f849e89.md) | 128 | `result-track:41a7a63942d430e40f849e8935a4248dfa45d391d80a122b5da2b9405269340f` |
| 20 | `theorem` | [frame_rightChild](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/frame-rightchild--489fa1db46c3a5da6a62f213.md) | 136 | `result-track:489fa1db46c3a5da6a62f213c36fd9019b4476173cb92bb00caf9e66864ea13e` |
| 21 | `theorem` | [frame_turn](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/frame-turn--4e7389fe9d82e2d7f7ff1be3.md) | 143 | `result-track:4e7389fe9d82e2d7f7ff1be3a68aec84d4ee6ae668b8b46d7519c868f79ee6bf` |
| 22 | `theorem` | [frame_walk](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/frame-walk--341c155bd4af3f96a5b53b46.md) | 151 | `result-track:341c155bd4af3f96a5b53b4688b03c1997b8008ad0509f5b57b3af478e5fd11a` |
| 23 | `theorem` | [frame_det](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/frame-det--f907c1fa812dcb1444e99281.md) | 162 | `result-track:f907c1fa812dcb1444e9928129fdaa544857e2f516716a4ce8a97cc90434e2a8` |
| 24 | `theorem` | [walk_frame_det](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/walk-frame-det--71a23d760c8222ad3882f20d.md) | 171 | `result-track:71a23d760c8222ad3882f20d866e4ddc64628fbd1da4ad94532b5e719c42a5b5` |
| 25 | `theorem` | [left_right_product](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/left-right-product--f6fccb59e45cf3710d46a7b9.md) | 175 | `result-track:f6fccb59e45cf3710d46a7b9adac5fd576951c3e2e1219617f33400129d0fcef` |
| 26 | `theorem` | [right_left_product](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/right-left-product--c683100488dd6a871df9abc9.md) | 181 | `result-track:c683100488dd6a871df9abc9b383b947fd7979a4f158badd27f08638fc6456bb` |
| 27 | `theorem` | [shears_do_not_commute](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/shears-do-not-commute--b30c043c28006f5265b27aa0.md) | 187 | `result-track:b30c043c28006f5265b27aa08fe022dd01e74dec647a164a3c9c4d38b1a99d48` |
| 28 | `theorem` | [left_right_trace_three](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/left-right-trace-three--06cf5166a3ae3fc3f33eb16f.md) | 196 | `result-track:06cf5166a3ae3fc3f33eb16ff6a3236847eeb14958a57505d7bac4bd07aca1b5` |
| 29 | `theorem` | [quintic_eye_on_walk_iff_of_endpoint_pos](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/quintic-eye-on-walk-iff-of-endpoint-pos--cf7e35e996daf52b31dee11d.md) | 203 | `result-track:cf7e35e996daf52b31dee11d54743b821e39046c5c9c32b02d7fd9fc9d2488d3` |
| 30 | `theorem` | [quintic_eye_on_walk_iff](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/quintic-eye-on-walk-iff--cdb173c47d329da3649d033c.md) | 213 | `result-track:cdb173c47d329da3649d033ca6bf07a6e0d0cb91ad1bd84ad5a7a85963c1ebfd` |
| 31 | `def` | [rootCell](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/declarations/rootcell--d5627db741d394fca82c1bde.md) | 221 | `declaration-track:d5627db741d394fca82c1bde95ca417594ea012375766ecd4ffa3bcde842b21b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
