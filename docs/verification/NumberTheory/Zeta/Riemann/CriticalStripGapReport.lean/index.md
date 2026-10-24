# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434579e29c5d860b4dcbcb25938e98f12f6505be",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434579e29c5d860b4dcbcb25938e98f12f6505be`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAtlas`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AtlasGapKind](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/atlasgapkind--56a093330416d13defc8cd65.md) | 27 | `declaration-track:56a093330416d13defc8cd655ac13bbcc828c46b2041c5a747816f2319f6a862` |
| 2 | `inductive` | [GapDisposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/gapdisposition--46f53dcfc1547e5fcc972a9c.md) | 51 | `declaration-track:46f53dcfc1547e5fcc972a9c2063cc2efcbcc74528d2162a5b4b8001e8ce4468` |
| 3 | `def` | [IsOpen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/isopen--40590dc9871256837d5804d0.md) | 63 | `declaration-track:40590dc9871256837d5804d0642c6ad21fd7867a0be756a04288db7ff8c7f836` |
| 4 | `structure` | [SourceBinding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/sourcebinding--66887417fa5527b80822525e.md) | 71 | `declaration-track:66887417fa5527b80822525e1b271592a2bc52531b9b3c7c7e8390d410ff175c` |
| 5 | `def` | [Matches](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/matches--48586ef3058ff0d775042898.md) | 80 | `declaration-track:48586ef3058ff0d7750428988217adbb5c1d1010c9f634b29d3de866ddfe3520` |
| 6 | `structure` | [AtlasGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/atlasgap--5488d299604d93cd5f51588a.md) | 92 | `declaration-track:5488d299604d93cd5f51588a183c1ff7a42cc2790b8521576f0a2aaffaba689b` |
| 7 | `def` | [IsOpen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/isopen--ca966ab555dbfd4771e890f9.md) | 104 | `declaration-track:ca966ab555dbfd4771e890f9f3cb93876058b4e24ce05b4c49e8b4b57b6ff511` |
| 8 | `def` | [HasOpenGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/hasopengap--e6a7c8f6ca4db253a08996ff.md) | 110 | `declaration-track:e6a7c8f6ca4db253a08996ffd529b81b8f67f1f4cdda3ce9cba7ffa8bbcae611` |
| 9 | `def` | [HasForward](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/hasforward--d10eeaa523ced7990cd29431.md) | 116 | `declaration-track:d10eeaa523ced7990cd2943107b9528692c3ee061f00a81249ea0e7a8c243706` |
| 10 | `def` | [HasReverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/hasreverse--c85dc898c192937dbbb61e07.md) | 120 | `declaration-track:c85dc898c192937dbbb61e07af26115a1b20d81b6d82f1d7b69e9094404c01bc` |
| 11 | `theorem` | [status_eq_equivalent_of_hasForward_hasReverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/status-eq-equivalent-of-hasforward-hasreverse--53188ff6f85dbea85fd42127.md) | 125 | `result-track:53188ff6f85dbea85fd4212704ff27922b4fe66a9db247dd9838474852cc3e5c` |
| 12 | `structure` | [ChartAuditEntry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/chartauditentry--7100868e059d1735263da7a3.md) | 143 | `declaration-track:7100868e059d1735263da7a3585f4e74f2547db8f3fb07e173b6f5832958dea9` |
| 13 | `theorem` | [carrier_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/carrier-nonempty--d1e65192a81672a840cb6dc8.md) | 177 | `result-track:d1e65192a81672a840cb6dc85c9e879fc8a5a7d295b45f87a635f28dcb9337a5` |
| 14 | `theorem` | [neutral_reports_both_directional_gaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/neutral-reports-both-directional-gaps--c49e6c8f22e3e983c91a9ac9.md) | 185 | `result-track:c49e6c8f22e3e983c91a9ac9d8dbf35c9e06d0dee443f0730201c647fa2f96b8` |
| 15 | `theorem` | [sufficient_reports_reverse_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/sufficient-reports-reverse-gap--2398feb1a2c198c81dc66a8f.md) | 209 | `result-track:2398feb1a2c198c81dc66a8fb283b891cc1e86bb33ef0b8d952f4d7e15eff878` |
| 16 | `theorem` | [necessary_reports_forward_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/necessary-reports-forward-gap--e7fcbf6349e5fa896bfca7d6.md) | 224 | `result-track:e7fcbf6349e5fa896bfca7d6f932d51a6cf0e90f9baeac1eed802e3a8b07a6ed` |
| 17 | `theorem` | [equivalent_closes_directional_gaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/equivalent-closes-directional-gaps--d502af75128532e58dfc1f16.md) | 239 | `result-track:d502af75128532e58dfc1f16da716e50ce9272d19aa1c621bc164c95a5652790` |
| 18 | `structure` | [AtlasGapReport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/atlasgapreport--02c5e72c320b2678cd1a9fd5.md) | 252 | `declaration-track:02c5e72c320b2678cd1a9fd5a400a4d0e057996047604dd9c5139d10ea756fd8` |
| 19 | `def` | [CoversAll](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/coversall--3ca59a605a28017baf3a78a1.md) | 264 | `declaration-track:3ca59a605a28017baf3a78a1666694a652237f51de75f157bb3408a85ab0a1a0` |
| 20 | `def` | [DirectionalGapsDischarged](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/directionalgapsdischarged--0202b48e751379f530b74935.md) | 272 | `declaration-track:0202b48e751379f530b749352c45735607ac07f9e761f88feb08ac3b102892dc` |
| 21 | `theorem` | [gapFree_of_directionalGapsDischarged](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/declarations/gapfree-of-directionalgapsdischarged--b8a6e5640e38112dd6b7dc24.md) | 283 | `result-track:b8a6e5640e38112dd6b7dc2423081a984fcaf0e9a1d85ed73574b79110723bdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
