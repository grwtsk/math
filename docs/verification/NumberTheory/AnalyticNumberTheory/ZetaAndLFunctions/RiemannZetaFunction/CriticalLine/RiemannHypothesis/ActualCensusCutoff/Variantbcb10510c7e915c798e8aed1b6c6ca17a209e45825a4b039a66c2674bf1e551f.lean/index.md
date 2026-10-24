# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCensusCutoff.Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d00d9d873cce5585fdd5ab67f6d239f485ec90b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d00d9d873cce5585fdd5ab67f6d239f485ec90b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.ActualLogarithmicSampling` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [censusCutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/declarations/censuscutoff--be949a3bb358a60e6cfd6525.md) | 26 | `declaration-track:be949a3bb358a60e6cfd652502029c09600bf303b9456300eebd39240d956ecd` |
| 2 | `def` | [censusCount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/declarations/censuscount--4341ed52b9a9a34e425613b4.md) | 31 | `declaration-track:4341ed52b9a9a34e425613b4aac491dbbe8cd6f133b6cb0f5c68884b9a7afb03` |
| 3 | `def` | [actualCensus](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/declarations/actualcensus--9f9f4485c8c02c249b5dcfd5.md) | 36 | `declaration-track:9f9f4485c8c02c249b5dcfd5f53c2c67ff6ebc216f108d3dc90b7733e4405812` |
| 4 | `theorem` | [actual_sample_zero_at_and_beyond_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/declarations/actual-sample-zero-at-and-beyond-cutoff--ee1de285f1b866b43c626500.md) | 39 | `result-track:ee1de285f1b866b43c626500cc543f5a9bb81ae805ed40851b1a1adf8a39b36b` |
| 5 | `theorem` | [actual_census_integral_retains_final_cell](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/declarations/actual-census-integral-retains-final-cell--7c0982774915d46c0468253c.md) | 52 | `result-track:7c0982774915d46c0468253c298a5690e59219f4901094ff2782b1c1134db50c` |
| 6 | `theorem` | [actual_census_quadrature_price_le_fourteen](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/declarations/actual-census-quadrature-price-le-fourteen--afa5275e01e06c1048cae957.md) | 82 | `result-track:afa5275e01e06c1048cae95783ef8c7d336fcb7ff77bc7b40ca9e664615d98bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
