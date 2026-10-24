# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleEdgeEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03e91067d479a26a99b7d3ab0faa8f62ffcac67b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03e91067d479a26a99b7d3ab0faa8f62ffcac67b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalComplexBall`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCompleteRegularization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleTuringPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectangleNormalizer](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/rectanglenormalizer--fbe4fc5c12dde98c30eb9f8e.md) | 55 | `declaration-track:fbe4fc5c12dde98c30eb9f8e04945a555427ffd6fbce307d11a4f2edeeca15e4` |
| 2 | `def` | [normalizedBottomContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/normalizedbottomcontribution--d549f7ab71d3be163c31fbc8.md) | 59 | `declaration-track:d549f7ab71d3be163c31fbc8085851e1e2d6378149cbcccf70d8d5727ddd6d88` |
| 3 | `def` | [normalizedRightContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/normalizedrightcontribution--b5c0364365de833637383476.md) | 65 | `declaration-track:b5c0364365de833637383476efbfaaef46ddb11248953e145a87310dc285b84a` |
| 4 | `def` | [normalizedTopContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/normalizedtopcontribution--1bb34bc007dec2265ff8036c.md) | 71 | `declaration-track:1bb34bc007dec2265ff8036c3523488de39be91d6c687a48e4fa4ae711edfa5c` |
| 5 | `def` | [normalizedLeftContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/normalizedleftcontribution--1ad50dd88ac2aa6d764d9c81.md) | 77 | `declaration-track:1ad50dd88ac2aa6d764d9c81b7b3ff14f4db319bc6e2243f71989b8375925ec8` |
| 6 | `theorem` | [normalizedRectangleIndex_eq_edge_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/normalizedrectangleindex-eq-edge-sum--f8c058b149cbacf473139dc5.md) | 84 | `result-track:f8c058b149cbacf473139dc59f0917cf18fc903872a325ef721724cdf0a14f03` |
| 7 | `structure` | [RectangleEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/rectangleedgeenclosure--9792a6d4beba283647933058.md) | 94 | `declaration-track:9792a6d4beba28364793305886e8ff1f5d6035dd01b7702092c526bfbe871812` |
| 8 | `def` | [totalBall](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/totalball--2258c93b105ad7610d690662.md) | 107 | `declaration-track:2258c93b105ad7610d690662cee4deb9317010a9489dfc4be4feb80adb132b46` |
| 9 | `theorem` | [totalBall_radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/totalball-radius--0206ad5e558914baa30521b5.md) | 110 | `result-track:0206ad5e558914baa30521b5abe36379d06dcd86d96bd62395a32533e2a524e1` |
| 10 | `theorem` | [total_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/total-contains--9d914d8b86aad51b713a9c1d.md) | 118 | `result-track:9d914d8b86aad51b713a9c1da2a66d7b664881bf7bb18cd0375aa990601abdde` |
| 11 | `def` | [indexInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/indexinterval--d0ed960c924699f772a9856a.md) | 129 | `declaration-track:d0ed960c924699f772a9856a794a9cd8749020877ca2b63e6ef23d8dd27f887c` |
| 12 | `theorem` | [indexInterval_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/indexinterval-lower--474e2fc33b3bf1662609b9cd.md) | 135 | `result-track:474e2fc33b3bf1662609b9cd0abd97b88d1d4a38804aa4a29171c45181cfc90d` |
| 13 | `theorem` | [indexInterval_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/indexinterval-upper--18038f27c33f2bc1af8441e5.md) | 139 | `result-track:18038f27c33f2bc1af8441e530471cdec0d5f95d8409c9f59a0132575805892e` |
| 14 | `theorem` | [indexInterval_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/indexinterval-contains--e48452deaf87369c3e6fd654.md) | 144 | `result-track:e48452deaf87369c3e6fd654a3e92e055be4360ddad144e9a0119faf8ae906bc` |
| 15 | `theorem` | [indexInterval_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/indexinterval-width--b71e7470e6b9c323f973c913.md) | 150 | `result-track:b71e7470e6b9c323f973c913eb1fc8ca703ff72f84c8d45f5e173fbe559300c3` |
| 16 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/tocanonicalrectangleindexenclosure--bf89072f7fda5ae289558a65.md) | 159 | `declaration-track:bf89072f7fda5ae289558a65d16e66b5d8d4006723205010c0c544c2dc0257c0` |
| 17 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/accepts--729b378fbca72bd429d5a980.md) | 169 | `declaration-track:729b378fbca72bd429d5a980f1e03f11d8400d49d498676f8959f23b464f4169` |
| 18 | `theorem` | [accepts_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/accepts-iff--9bd419c8166be04b06dfa43f.md) | 173 | `result-track:9bd419c8166be04b06dfa43f72eb86f5e18568a12d35850aaf372a9fd523cd1a` |
| 19 | `theorem` | [exact_positive_count_of_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/exact-positive-count-of-accepts--94e8dec9a2b836bde4e15871.md) | 183 | `result-track:94e8dec9a2b836bde4e15871be9564aa5386f17073efe05523d180a068b6a8ea` |
| 20 | `def` | [packetOfEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/packetofedgeenclosure--6e82e5b3bed7c2960f99f653.md) | 195 | `declaration-track:6e82e5b3bed7c2960f99f6531883c89755bec449d083b442eabf102529bb5738` |
| 21 | `theorem` | [packet_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/packet-totalcount--7eb24f30f714fb7c50f3c649.md) | 204 | `result-track:7eb24f30f714fb7c50f3c6495977b39690ce616bc38a5655360c51dc9408a631` |
| 22 | `theorem` | [rhThrough_of_edge_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/rhthrough-of-edge-count-margin--68308b3a3b9cdc06cff45098.md) | 214 | `result-track:68308b3a3b9cdc06cff450984bffa02577062f7a7b18c401b1b7a0df1a1a5cd9` |
| 23 | `theorem` | [knownPoints_eq_positiveHeightHead_of_edge_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/knownpoints-eq-positiveheighthead-of-edge-count-eq--6eac3c0558bc35904cc3a9d1.md) | 226 | `result-track:6eac3c0558bc35904cc3a9d10822dd225d4e71b803277a73840b14e214b6e347` |
| 24 | `theorem` | [packet_gap_eq_zero_of_edge_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/packet-gap-eq-zero-of-edge-count-eq--3f9c6c7a3f7b6d1a96a06523.md) | 238 | `result-track:3f9c6c7a3f7b6d1a96a065237d6aa2736428da4165feff0a22f1b4a4e35267f4` |
| 25 | `theorem` | [radius_only_not_count_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/declarations/radius-only-not-count-fixture--b40851441020b580e9c9011c.md) | 252 | `result-track:b40851441020b580e9c9011c6b8cc2c705c95935d0cd3f95d0cfc46bff6bc52a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
