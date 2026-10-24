# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AllOrdersRawMomentDerivative.Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cc28a370bcfc0eb50a94112af6da61fe164144c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cc28a370bcfc0eb50a94112af6da61fe164144c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/contdiff-unnormalizedweight--9ffff2a822a20b7d32b18af4.md) | 44 | `result-track:9ffff2a822a20b7d32b18af4613c6c25647bf7691cd8b3dffd3ae7b53d3d5e87` |
| 2 | `theorem` | [iteratedFDeriv_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/iteratedfderiv-unnormalizedweight--e2cc784e67e8f8375478086a.md) | 54 | `result-track:e2cc784e67e8f8375478086aee82ea219f9a84ac57bfb41991f097718a7d4ee7` |
| 3 | `theorem` | [iteratedFDeriv_partition_eq_unnormalizedMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/iteratedfderiv-partition-eq-unnormalizedmoment--8e75b19aa258613d4c68c410.md) | 99 | `result-track:8e75b19aa258613d4c68c410cfbcd2666992bcb88625bba7a66363ef83e330a4` |
| 4 | `theorem` | [partition_mul_rawDirectionalMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/partition-mul-rawdirectionalmoment--85258edb8d3b115d3bb1dd9f.md) | 123 | `result-track:85258edb8d3b115d3bb1dd9f82f55ddc5291105d9c9f022624674fcebb45bb80` |
| 5 | `theorem` | [iteratedFDeriv_partition_eq_partition_mul_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/iteratedfderiv-partition-eq-partition-mul-rawmoment--21b5f748f3c20a427a1e33a8.md) | 140 | `result-track:21b5f748f3c20a427a1e33a89fc9a0e57c0af165805334922b4d8b2d1202fa4e` |
| 6 | `theorem` | [inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/inv-partition-mul-iteratedfderiv-partition-eq-rawmoment--cc7399a17f1c9885ebe6ccf1.md) | 163 | `result-track:cc7399a17f1c9885ebe6ccf1571a3e6b4d76db047050eab7eff27cdbf9ee14b5` |
| 7 | `theorem` | [iteratedFDeriv_partition_div_partition_eq_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/declarations/iteratedfderiv-partition-div-partition-eq-rawmoment--53b8024ebcab32f04127cc7a.md) | 175 | `result-track:53b8024ebcab32f04127cc7a4ecd10787c4783b771aead3b366703dc53098f08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
