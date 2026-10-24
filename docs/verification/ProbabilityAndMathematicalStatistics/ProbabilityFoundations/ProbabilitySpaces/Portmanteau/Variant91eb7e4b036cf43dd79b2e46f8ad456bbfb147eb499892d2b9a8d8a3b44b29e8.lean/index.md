# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Portmanteau.Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "239be2dfad1189f9f5eb45f346e635f2dfbd5930",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `239be2dfad1189f9f5eb45f346e635f2dfbd5930`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_measure_compl_liminf_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/le-measure-compl-liminf-of-limsup-measure-le--5a90faeb704ca6e17efaf582.md) | 118 | `result-track:5a90faeb704ca6e17efaf58227ba1e65966d830ebaec4322714e1bdcdd780452` |
| 2 | `theorem` | [le_measure_liminf_of_limsup_measure_compl_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/le-measure-liminf-of-limsup-measure-compl-le--67b61fcef89107d33db85f39.md) | 139 | `result-track:67b61fcef89107d33db85f39968e23cc8055d3d798daca774f96928c1fb31ef7` |
| 3 | `theorem` | [limsup_measure_compl_le_of_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/limsup-measure-compl-le-of-le-liminf-measure--da643e54cd5391b83feca673.md) | 146 | `result-track:da643e54cd5391b83feca673e1feed7f24ddd9d0b90c4cb64845ae5a80c2666c` |
| 4 | `theorem` | [limsup_measure_le_of_le_liminf_measure_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/limsup-measure-le-of-le-liminf-measure-compl--58c0175e9101e2fe690df0ff.md) | 167 | `result-track:58c0175e9101e2fe690df0ff33bfcc6e0469b5f5b023359724651292692abc02` |
| 5 | `theorem` | [limsup_measure_closed_le_iff_liminf_measure_open_ge](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/limsup-measure-closed-le-iff-liminf-measure-open-ge--103fa62ee9d3290efca1e597.md) | 185 | `result-track:103fa62ee9d3290efca1e597be306d16aba5b72a8d64e8e1c88a537a4ad61404` |
| 6 | `theorem` | [tendsto_measure_of_le_liminf_measure_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/tendsto-measure-of-le-liminf-measure-of-limsup-measure-le--2cf582d96b16e01def86a430.md) | 222 | `result-track:2cf582d96b16e01def86a4303082cbe231a4a54ee2dff3bd9b86c5230195cbfd` |
| 7 | `theorem` | [tendsto_measure_of_null_frontier](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/tendsto-measure-of-null-frontier--8a1db51141a8863551489f6c.md) | 255 | `result-track:8a1db51141a8863551489f6c87c8a70b1a91ac9a112e62592db1a63722bfcbee` |
| 8 | `theorem` | [measure_of_cont_bdd_of_tendsto_filter_indicator](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/measure-of-cont-bdd-of-tendsto-filter-indicator--3a98db2c2f42ac9a8d7e974f.md) | 299 | `result-track:3a98db2c2f42ac9a8d7e974f20c421f1323c920e8ad723187d376a875fa88c05` |
| 9 | `theorem` | [measure_of_cont_bdd_of_tendsto_indicator](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/measure-of-cont-bdd-of-tendsto-indicator--000768dc014463d6ae56f26e.md) | 320 | `result-track:000768dc014463d6ae56f26ea3d7bc8a8ea6094dba817da1c364a1a7c019705f` |
| 10 | `theorem` | [tendsto_lintegral_thickenedIndicator_of_isClosed](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/tendsto-lintegral-thickenedindicator-of-isclosed--810794f57b725200395c745c.md) | 337 | `result-track:810794f57b725200395c745c043630afa47d55945b3bed03c0d06ece40a68859` |
| 11 | `theorem` | [FiniteMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/finitemeasure-limsup-measure-closed-le-of-tendsto--7257cbe67c28139e4607402a.md) | 353 | `result-track:7257cbe67c28139e4607402abce3cc4587d6fceb56630853bc276474fa406ec4` |
| 12 | `theorem` | [ProbabilityMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/probabilitymeasure-limsup-measure-closed-le-of-tendsto--d866634e05ab8edb1d83e3d3.md) | 392 | `result-track:d866634e05ab8edb1d83e3d329147a760b5647a10930631204b0c97c5c85c163` |
| 13 | `theorem` | [ProbabilityMeasure.le_liminf_measure_open_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/probabilitymeasure-le-liminf-measure-open-of-tendsto--aaa39288eb2770e638cde795.md) | 404 | `result-track:aaa39288eb2770e638cde795953756ade7fa659dfdc656ea2da7fc4f5a6e4559` |
| 14 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--2c061b0743d9490e3c5ae469.md) | 414 | `result-track:2c061b0743d9490e3c5ae469553cd21bc72551bff271f10f8bc311737b748186` |
| 15 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--67e2be270a2cf7d3a8cbb738.md) | 432 | `result-track:67e2be270a2cf7d3a8cbb7383654ae81fedbd342b8f2deb8d204fb3f14d2a7f2` |
| 16 | `theorem` | [exists_null_frontier_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/exists-null-frontier-thickening--67534e4b7df6947d5da98b1e.md) | 471 | `result-track:67534e4b7df6947d5da98b1eaf5ee071dd8298c925f1bce6554d8c583f1b2664` |
| 17 | `theorem` | [exists_null_frontiers_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/exists-null-frontiers-thickening--0d61f89dc5b7797e16c17d91.md) | 485 | `result-track:0d61f89dc5b7797e16c17d913a21651ec2821b78321310f0f9f01a689eecbd4d` |
| 18 | `lemma` | [limsup_measure_closed_le_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/limsup-measure-closed-le-of-forall-tendsto-measure--5a274c107e8966da59245940.md) | 500 | `result-track:5a274c107e8966da59245940d56f756d9d7afa87ccdc5fbbdcd63696402be01e` |
| 19 | `lemma` | [le_liminf_measure_open_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/declarations/le-liminf-measure-open-of-forall-tendsto-measure--93d7c1e79285939fe33f16db.md) | 538 | `result-track:93d7c1e79285939fe33f16db8aa19b4caedc88422824722f0ea04091f136d9e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
