# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbolaGain.Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c91dcbe0ee5c0b702f622404f844a983f7fba14",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c91dcbe0ee5c0b702f622404f844a983f7fba14`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UpperBoundaryHyperbola` — import line 1; external provider; requires a separately pinned dependency.
- `scratch.mertens.EndpointMonotonicity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperSmallIndices_empty_below_quarter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/declarations/uppersmallindices-empty-below-quarter--2de4d958a694bcb2171e175f.md) | 14 | `result-track:2de4d958a694bcb2171e175f7560cafd2bbe8784a551785db61315d800dfa30b` |
| 2 | `theorem` | [upperSmallSum_zero_below_quarter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/declarations/uppersmallsum-zero-below-quarter--fa1351a7229b9ad52cd98688.md) | 24 | `result-track:fa1351a7229b9ad52cd986887bcaacea06b5fdf379d1b3379160e4bef86496e5` |
| 3 | `theorem` | [source_square_derivative_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/declarations/source-square-derivative-nonpos--deb9a43c140476976bedd03f.md) | 29 | `result-track:deb9a43c140476976bedd03f51555547248c65c3b45897c878e4b7209f168f0f` |
| 4 | `theorem` | [source_square_derivative_integral_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/declarations/source-square-derivative-integral-nonpos--87b67003a3c6ea79deffbee7.md) | 38 | `result-track:87b67003a3c6ea79deffbee70d2a7e1076b2c65681149e05b05c7fe9612786ee` |
| 5 | `theorem` | [sourceQuadraticValue_ge_core_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/declarations/sourcequadraticvalue-ge-core-hyperbola--7472916f951ce49eff8cc53c.md) | 47 | `result-track:7472916f951ce49eff8cc53ca847e9e3a3d6dbbb8286040a7027c35d4cc5a740` |
| 6 | `theorem` | [sourceQuadraticValue_negativePart_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbolaGain/Variant9b67cec29dbe3ec2be52f52f4d6bcfa78e36d9e450422cc68c8dff37d7410c4b.lean/declarations/sourcequadraticvalue-negativepart-le--63e2ccb40cdbb4cc8e35ff0a.md) | 57 | `result-track:63e2ccb40cdbb4cc8e35ff0ade16ca74fedd26e7d23c48438e701aea7ee04dfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
