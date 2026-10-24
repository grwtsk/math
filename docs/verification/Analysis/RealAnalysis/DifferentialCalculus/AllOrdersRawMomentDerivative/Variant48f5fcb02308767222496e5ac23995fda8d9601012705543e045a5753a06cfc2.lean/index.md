# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AllOrdersRawMomentDerivative.Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504cce8b7d846b60694419d908ae30d5d8d4639f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504cce8b7d846b60694419d908ae30d5d8d4639f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean.json)

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
| 1 | `theorem` | [contDiff_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/contdiff-unnormalizedweight--617581144e83a1a61f2e2bfb.md) | 44 | `result-track:617581144e83a1a61f2e2bfb0ebf469861f106494155bb90979ed5f9921ecf2f` |
| 2 | `theorem` | [iteratedFDeriv_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/iteratedfderiv-unnormalizedweight--f9e3d8b4a49bd5825e11ae41.md) | 54 | `result-track:f9e3d8b4a49bd5825e11ae41cb79ad7796cab7b2c9167b12af696708d55d2383` |
| 3 | `theorem` | [iteratedFDeriv_partition_eq_unnormalizedMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/iteratedfderiv-partition-eq-unnormalizedmoment--9f4acb46948b42114272a96c.md) | 99 | `result-track:9f4acb46948b42114272a96c5f6e60b328d5af5025b50d378b56238632dccdcd` |
| 4 | `theorem` | [partition_mul_rawDirectionalMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/partition-mul-rawdirectionalmoment--d662bca02f68a203b9e23a7b.md) | 123 | `result-track:d662bca02f68a203b9e23a7b1027df32ef256e23759097d8d78faf86d175fbac` |
| 5 | `theorem` | [iteratedFDeriv_partition_eq_partition_mul_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/iteratedfderiv-partition-eq-partition-mul-rawmoment--15ca897d47840585310e0042.md) | 141 | `result-track:15ca897d47840585310e00426eb59e8c2d30d47df8af3e4d5500620b7c3a2ce3` |
| 6 | `theorem` | [inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/inv-partition-mul-iteratedfderiv-partition-eq-rawmoment--935ea0b1e47a5ae2484e3de3.md) | 164 | `result-track:935ea0b1e47a5ae2484e3de3b52fa15d0302147e9c82ab1381e06c9497c4da66` |
| 7 | `theorem` | [iteratedFDeriv_partition_div_partition_eq_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/declarations/iteratedfderiv-partition-div-partition-eq-rawmoment--d81156cfd8ff8140ce95cf26.md) | 176 | `result-track:d81156cfd8ff8140ce95cf26027a0c0b1285f255f796a7fa34e9f97a418521aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
