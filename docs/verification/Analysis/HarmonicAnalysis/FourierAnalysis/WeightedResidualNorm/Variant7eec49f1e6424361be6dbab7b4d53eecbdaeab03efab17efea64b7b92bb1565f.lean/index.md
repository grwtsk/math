# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WeightedResidualNorm.Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0331081ed484478ba3acddd4a04ce865afea82d6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0331081ed484478ba3acddd4a04ce865afea82d6`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [l2_angular_square](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/declarations/l2-angular-square--461e0af9861954bc1abac585.md) | 25 | `result-track:461e0af9861954bc1abac585274018dc7fd6911191fb729fa1d82bcee78aab19` |
| 2 | `theorem` | [weightedResidual_fourier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/declarations/weightedresidual-fourier-ae--240ee1a475c3ed844417b376.md) | 50 | `result-track:240ee1a475c3ed844417b376958c0c76a87712b48bee68835789e4a8fb7b1eb0` |
| 3 | `theorem` | [weightedResidual_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/declarations/weightedresidual-norm-sq--26b87f42d1044ff081a983fc.md) | 71 | `result-track:26b87f42d1044ff081a983fc1704a7442b7b866db62b95299fbeb40e46ae796b` |
| 4 | `theorem` | [arithmeticError_le_core_tails](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/declarations/arithmeticerror-le-core-tails--137224cc1c62acd76280d56c.md) | 79 | `result-track:137224cc1c62acd76280d56c0dd3de1070d00ae9e039b42407b652af24baee20` |
| 5 | `theorem` | [arithmeticError_le_scheduled_core](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/declarations/arithmeticerror-le-scheduled-core--b0673ceca783eaa52204470f.md) | 92 | `result-track:b0673ceca783eaa52204470f1b56cbdd2db02af5c13b7ceaa11649bad5113dea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
