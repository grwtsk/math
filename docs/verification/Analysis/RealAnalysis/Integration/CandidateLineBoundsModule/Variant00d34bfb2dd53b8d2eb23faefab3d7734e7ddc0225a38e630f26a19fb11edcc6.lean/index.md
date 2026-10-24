# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateLineBoundsModule.Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e22d9810bd5383210899ba01a2a636e7bca0ae71",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e22d9810bd5383210899ba01a2a636e7bca0ae71`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ReducedFilterInverse` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedQuotientBudget` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_add_norm_le_twice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/declarations/one-add-norm-le-twice--2fa0b70eb149748223766c48.md) | 15 | `result-track:2fa0b70eb149748223766c485b509584785c7cabe851566c11cb26137096ded0` |
| 2 | `theorem` | [candidate_parameter_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/declarations/candidate-parameter-decay--f59289c62ace4e03310f7a00.md) | 27 | `result-track:f59289c62ace4e03310f7a00b5a9d983bd2f1f1180b73ac03ebb2f8e88aba2e7` |
| 3 | `theorem` | [candidate_vertical_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/declarations/candidate-vertical-decay--b870a7db02c5d428d61b5b09.md) | 94 | `result-track:b870a7db02c5d428d61b5b095754c0a40f35ebf7681aa2b5af724014ed235e7f` |
| 4 | `theorem` | [scaled_cauchy_integrable_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/declarations/scaled-cauchy-integrable-integral--62ddae86f32d3c0897c981ab.md) | 107 | `result-track:62ddae86f32d3c0897c981ab61cf44a98d8a106d7a2b3db80495d1d024344c95` |
| 5 | `theorem` | [candidate_square_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/declarations/candidate-square-majorant--b22b162d0400e014cc9d0cb9.md) | 116 | `result-track:b22b162d0400e014cc9d0cb90fc03f5da15d46dd6b090582a776dac51fdc3edf` |
| 6 | `theorem` | [candidate_line_square_integrable_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/declarations/candidate-line-square-integrable-bound--14cbd1fbe3436c922b4cd0d0.md) | 139 | `result-track:14cbd1fbe3436c922b4cd0d0254bf6b6818446c5d7cdb6c42278a7f887911286` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
