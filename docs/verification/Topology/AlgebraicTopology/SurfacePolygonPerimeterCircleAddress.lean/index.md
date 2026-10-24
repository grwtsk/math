# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73836f1ca73c8653dc58c5de21aa45f64adf758f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73836f1ca73c8653dc58c5de21aa45f64adf758f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/cornerdiscretetopology--bd290c14ffc0a4a8ac5766bb.md) | 63 | `declaration-track:bd290c14ffc0a4a8ac5766bb2106f6729a0747c49f7525f32d76f30c16f5502c` |
| 2 | `instance` | [cornerDiscrete](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/cornerdiscrete--b072e4541f0b5bf4c3e42b1d.md) | 66 | `declaration-track:b072e4541f0b5bf4c3e42b1dcb0cd9c3677bd4b2aa3f7a9d0f0a077675a54a26` |
| 3 | `def` | [handleOrdinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/handleordinal--242b9ede986f6ca18fa9ec59.md) | 71 | `declaration-track:242b9ede986f6ca18fa9ec597b8f3169f3296a3f40e4194d06cdc9088b607a8f` |
| 4 | `def` | [directedSideOrdinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/directedsideordinal--2d38a964817af9c6c881c976.md) | 77 | `declaration-track:2d38a964817af9c6c881c9761833728a9fc4344b4e6ad5b5379670c841efe827` |
| 5 | `def` | [angularPeriod](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/angularperiod--9391beb10f5bb6161cefef71.md) | 82 | `declaration-track:9391beb10f5bb6161cefef711e3d7712763c56a9250c10de2525b035cdc34ea0` |
| 6 | `theorem` | [angularPeriod_pos](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/angularperiod-pos--bffc1339016ecd1a8c59f49d.md) | 85 | `result-track:bffc1339016ecd1a8c59f49df184906e884259c6d9f0a838e758dd9191fad92d` |
| 7 | `theorem` | [angularPeriod_ne_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/angularperiod-ne-zero--3f11769d4eb43ce2dad50977.md) | 89 | `result-track:3f11769d4eb43ce2dad50977358eed7505e944cb51658f2b101bae248bc616bc` |
| 8 | `theorem` | [handleOrdinal_next_or_wrap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/handleordinal-next-or-wrap--371fd3b3cdcba8fbec33d445.md) | 95 | `result-track:371fd3b3cdcba8fbec33d445c9f6617483106768a2c4df94be418b58304d3a28` |
| 9 | `theorem` | [directedSideOrdinal_next_or_period](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/directedsideordinal-next-or-period--75a46ccddc1694acd15f2dcf.md) | 125 | `result-track:75a46ccddc1694acd15f2dcfb1ba92c674fac32c956e613ca2cad6aee42d4587` |
| 10 | `theorem` | [directedSideOrdinal_bound](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/directedsideordinal-bound--0a3b67ca005c98a2ad2d4cb4.md) | 143 | `result-track:0a3b67ca005c98a2ad2d4cb416f2a1852da718527ff1974b5477224382c1aa7b` |
| 11 | `def` | [sourceAngularAddress](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/sourceangularaddress--c01c1cfc0e0574e3491db58c.md) | 160 | `declaration-track:c01c1cfc0e0574e3491db58c4125077efbdc53c5b45b0d7ce3352cdccebbf733` |
| 12 | `theorem` | [sourceAngularAddress_of_next_ordinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/sourceangularaddress-of-next-ordinal--e94244e6e2c8d70896028b8d.md) | 167 | `result-track:e94244e6e2c8d70896028b8d31611db3e650312eebca918ed44d739cda8595fe` |
| 13 | `theorem` | [localSideOrdinal_seam01](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/localsideordinal-seam01--29b505729fb49caa7b487d68.md) | 179 | `result-track:29b505729fb49caa7b487d68c84de614e238b5c2b7adf43706465f3b1625147e` |
| 14 | `theorem` | [localSideOrdinal_seam12](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/localsideordinal-seam12--e2351125be70cbbd8bd167b3.md) | 184 | `result-track:e2351125be70cbbd8bd167b3c4b07cfbf31e444d3809b5a41523e06b12db9816` |
| 15 | `theorem` | [localSideOrdinal_seam23](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/localsideordinal-seam23--ba1fb6f4189fb058762973e1.md) | 189 | `result-track:ba1fb6f4189fb058762973e1cb0b8b5883dbd01e885a037992e783b950782062` |
| 16 | `theorem` | [sourceAngularAddress_cyclic_seam](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/sourceangularaddress-cyclic-seam--2582f23ccad4300a9a419651.md) | 197 | `result-track:2582f23ccad4300a9a419651dcb0a139d076bac8fc3ed1dafb182d85e2fa951b` |
| 17 | `theorem` | [sourceAngularAddress_respects_step](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/sourceangularaddress-respects-step--460b1424c8ea5ed5a8ff1ea0.md) | 218 | `result-track:460b1424c8ea5ed5a8ff1ea0ad4e4665e04fdabe8b30dd507554cccd54eb49b7` |
| 18 | `theorem` | [sourceAngularAddress_respects_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/sourceangularaddress-respects-connected--84a953056cdea01f24b346ac.md) | 236 | `result-track:84a953056cdea01f24b346acb61505f8e28e9bbd39c53daa610fc603d96b0d29` |
| 19 | `theorem` | [sourceAngularAddress_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/sourceangularaddress-continuous--53e41393e74055cf9640b01a.md) | 248 | `result-track:53e41393e74055cf9640b01a2fca966b4cb40a045aeaf9b795198d56e96d3fa9` |
| 20 | `def` | [perimeterAngle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/perimeterangle--6d674d53105087e2da67a455.md) | 263 | `declaration-track:6d674d53105087e2da67a4557614f414b604b0c13d60a69812028ef444336623` |
| 21 | `theorem` | [perimeterAngle_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/perimeterangle-continuous--179bc779da5432f1ee283eff.md) | 269 | `result-track:179bc779da5432f1ee283effc460d9b2f3c934ff1e5295344ee7ab8162477518` |
| 22 | `theorem` | [perimeterAngle_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/perimeterangle-projection--46afe72ef1f8c6b7180152ad.md) | 275 | `result-track:46afe72ef1f8c6b7180152ad5960da099236bd74eefc047964e194a7a52956f3` |
| 23 | `theorem` | [perimeterAngle_cyclic_endpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/perimeterangle-cyclic-endpoint--d7934b344fa033b067a248c8.md) | 282 | `result-track:d7934b344fa033b067a248c8409d160121b81863e68c16c3bf8eb4ec57ce20b2` |
| 24 | `def` | [periodCircleHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/periodcirclehomeomorph--45079d2abc3d73dcbe977083.md) | 290 | `declaration-track:45079d2abc3d73dcbe977083440312b06ed7c1c7bc4adaccaf9e3ecf27ede47e` |
| 25 | `def` | [perimeterUnitAngle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/perimeterunitangle--5f808393328ceecf03a52a40.md) | 298 | `declaration-track:5f808393328ceecf03a52a4049135df48016f45bc307102bf2913ba8c36910ca` |
| 26 | `theorem` | [perimeterUnitAngle_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/perimeterunitangle-continuous--547c38db2a32bfefd3f67638.md) | 302 | `result-track:547c38db2a32bfefd3f676386f9b793664e699ba94c36021a8ea379a0795ca25` |
| 27 | `theorem` | [firstCorner_angle_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/firstcorner-angle-zero--c9d066999da96188de4f032e.md) | 309 | `result-track:c9d066999da96188de4f032e68235480c85f1bad2147bff1282c6e2febf4e268` |
| 28 | `theorem` | [nextCorner_angle_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/nextcorner-angle-one--1a66a3b78a28c34fd3de42c8.md) | 317 | `result-track:1a66a3b78a28c34fd3de42c89f09ba43e586f64875442e9e3354fc6153e9cf3a` |
| 29 | `theorem` | [one_mem_circle_fundamental_domain](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/one-mem-circle-fundamental-domain--4a5b233818a000489ffc784d.md) | 326 | `result-track:4a5b233818a000489ffc784d6b84ca32e0ad4c9e5a6953db6eea0bf4c40a44f0` |
| 30 | `theorem` | [angle_one_ne_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/angle-one-ne-zero--56d5bb770ec07ba91c25b960.md) | 335 | `result-track:56d5bb770ec07ba91c25b960cf7faf370d434734734d2bb5a2246c57159cd084` |
| 31 | `theorem` | [distinct_first_corner_angles](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/distinct-first-corner-angles--72375b5ba7796310df66f808.md) | 346 | `result-track:72375b5ba7796310df66f8086d2dc9177f67270d25ed84270b410fa0f18fa1bb` |
| 32 | `theorem` | [distinct_angles_same_attached_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/distinct-angles-same-attached-vertex--c847b6b297c3d353879ed372.md) | 358 | `result-track:c847b6b297c3d353879ed37239ec58a2ba8bae55ca3a4c717599fd40aca0e11e` |
| 33 | `theorem` | [genusTwo_angular_period](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/genustwo-angular-period--61a670bc151501c29be5483c.md) | 373 | `result-track:61a670bc151501c29be5483c9de398a90fca0ecbb74f0117c478514ca1b3bb27` |
| 34 | `theorem` | [genusThree_angular_period](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/declarations/genusthree-angular-period--195e968f4df8372e83a797fe.md) | 378 | `result-track:195e968f4df8372e83a797fed176b849ea947bd8fcb836ea7e5c87b8c5ce2792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
