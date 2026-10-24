# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleRealEdgeEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e032cec8aca0c68bc47a7bf305076ad13971243d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e032cec8aca0c68bc47a7bf305076ad13971243d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalClosedInterval`](../../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleSymmetricEdgeEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealRectangleEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/realrectangleedgeenclosure--d208b42727e5788527d6c2d7.md) | 62 | `declaration-track:d208b42727e5788527d6c2d79607944ac785d7df2bfc8c4ee5f56b75695cac89` |
| 2 | `def` | [indexLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/indexlower--20da1b820de015476aa96962.md) | 76 | `declaration-track:20da1b820de015476aa96962dda82a744d40bd6d02f4504f74fff683b965aa92` |
| 3 | `def` | [indexUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/indexupper--eabf5b351062aea2e0edd3bb.md) | 80 | `declaration-track:eabf5b351062aea2e0edd3bb604b05d43bba403b4cb2962c6716c70a010ff6ef` |
| 4 | `def` | [indexInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/indexinterval--99a8c8a5dbbe64c38ba800fb.md) | 84 | `declaration-track:99a8c8a5dbbe64c38ba800fb105bf2f22ab6772fa103225e5399a2847cd10068` |
| 5 | `theorem` | [cast_indexLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/cast-indexlower--1f664817dff2941c10a4eabb.md) | 92 | `result-track:1f664817dff2941c10a4eabb1e8a85ea756f24176140ee04652e9e451f80dcfe` |
| 6 | `theorem` | [cast_indexUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/cast-indexupper--27aea26d58abd0dccea53a9f.md) | 99 | `result-track:27aea26d58abd0dccea53a9fc6dbfa6c17bfdacf0825f553188cacc43e407ae3` |
| 7 | `theorem` | [indexInterval_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/indexinterval-contains--84f24af7e10f0509932fb339.md) | 108 | `result-track:84f24af7e10f0509932fb33935f03706e19b50b99487815adae794c497a586a0` |
| 8 | `theorem` | [indexInterval_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/indexinterval-width--5a876a8a59e817131d5475b6.md) | 123 | `result-track:5a876a8a59e817131d5475b6f49ca04eb9a7d22fc6fdcea3efea4a0dc09a191f` |
| 9 | `theorem` | [positiveCountInterval_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/positivecountinterval-width--1c100ed9c38df3d65b3d46c6.md) | 133 | `result-track:1c100ed9c38df3d65b3d46c6f4bf517657845b3305f9a8951b0a46a87ab2cc58` |
| 10 | `theorem` | [positiveCountInterval_width_lt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/positivecountinterval-width-lt-one--a08bfbf69676fbb5d4737a8e.md) | 146 | `result-track:a08bfbf69676fbb5d4737a8e87ab1b8f0925454f684170bfa9134493f728e7d3` |
| 11 | `def` | [realProjection](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/realprojection--bdfe63ed255d335f318185ca.md) | 157 | `declaration-track:bdfe63ed255d335f318185cadf35df11be31a5a9c9dece68f018558c42bca8a2` |
| 12 | `theorem` | [realProjection_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/realprojection-contains--c4128b10d05847a7280dbc70.md) | 164 | `result-track:c4128b10d05847a7280dbc701641b611f2d78ab207dc2fc25de4adf74e5f8c0c` |
| 13 | `theorem` | [realProjection_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/realprojection-width--5f613735abec2809673d93fb.md) | 169 | `result-track:5f613735abec2809673d93fbf68e5bcbbc5dbda6940b6e4adcd863b9f45c9838` |
| 14 | `def` | [ofSymmetricComplexBalls](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/ofsymmetriccomplexballs--25363f88e58c22c02e7251ba.md) | 178 | `declaration-track:25363f88e58c22c02e7251baa06dd5672d9938aa392530ec4540a0f7c8dddf57` |
| 15 | `theorem` | [ofSymmetricComplexBalls_indexInterval_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/ofsymmetriccomplexballs-indexinterval-width--de88048fb3768d775756ddaf.md) | 189 | `result-track:de88048fb3768d775756ddaf1472f7225e3a8b4ff115b9e2526cef90a2e6e5b9` |
| 16 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/tocanonicalrectangleindexenclosure--102ce23466332d6942bd0d3e.md) | 201 | `declaration-track:102ce23466332d6942bd0d3ee3d7e3fe8fd564824cf1628cea718df7b130ce1d` |
| 17 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/accepts--054b129b8bef6bd9043f4b31.md) | 210 | `declaration-track:054b129b8bef6bd9043f4b31768d2766300f04010c7f139b7c5db769ed503f0f` |
| 18 | `theorem` | [accepts_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/accepts-iff--0a16f91afc0da12850609089.md) | 214 | `result-track:0a16f91afc0da12850609089c86c62e9b7626518d3e4e9d9da9071479f6b044e` |
| 19 | `theorem` | [exact_positive_count_of_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/exact-positive-count-of-accepts--c90d04c1ad55cd1aa297e694.md) | 224 | `result-track:c90d04c1ad55cd1aa297e694e074eb0495076d029d0aced933bbafb702353f87` |
| 20 | `def` | [packetOfRealEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/packetofrealedgeenclosure--83631a795e7edcc0550a7659.md) | 236 | `declaration-track:83631a795e7edcc0550a7659027ebe692d7819b6910bae6ae9286b1500f50db3` |
| 21 | `theorem` | [packet_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/packet-totalcount--4ef93ea5372263d7287b63ba.md) | 245 | `result-track:4ef93ea5372263d7287b63ba0afc4d14f4e86df761a83209272d49bb31d23563` |
| 22 | `theorem` | [rhThrough_of_real_edge_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/rhthrough-of-real-edge-count-margin--92bf294895d681bfbff11f90.md) | 255 | `result-track:92bf294895d681bfbff11f90b9e0ff68eb4b96dd9ce97653e734116c6121d183` |
| 23 | `theorem` | [knownPoints_eq_positiveHeightHead_of_real_edge_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/knownpoints-eq-positiveheighthead-of-real-edge-count-eq--39d6e4a0d80be41234de3b00.md) | 267 | `result-track:39d6e4a0d80be41234de3b00d49e2e8e993eae9977e60a76b47e2c4c0251e94e` |
| 24 | `theorem` | [packet_gap_eq_zero_of_real_edge_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/packet-gap-eq-zero-of-real-edge-count-eq--1d076f50d62bbbf4996991c1.md) | 279 | `result-track:1d076f50d62bbbf4996991c1c0935efa496ac7b16a9e8b5d444bffe9cd2cb5df` |
| 25 | `theorem` | [narrow_real_interval_does_not_supply_candidate_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/declarations/narrow-real-interval-does-not-supply-candidate-fixture--89d6ff7eacbc8768aacd112f.md) | 292 | `result-track:89d6ff7eacbc8768aacd112fceba976f506e69b151b89270744aa76fdb923d58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
