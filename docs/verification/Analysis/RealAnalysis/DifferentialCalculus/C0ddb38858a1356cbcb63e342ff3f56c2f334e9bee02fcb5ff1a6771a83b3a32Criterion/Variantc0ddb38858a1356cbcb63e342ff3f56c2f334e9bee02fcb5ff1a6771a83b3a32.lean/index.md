# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion.Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f197dabdac14a9a7bb1f77525c55eed71c9c975e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f197dabdac14a9a7bb1f77525c55eed71c9c975e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_jetRatio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/declarations/hasderivat-jetratio--8404491e303b717f46195ab9.md) | 10 | `result-track:8404491e303b717f46195ab99dfe55ae9136c27daa2727578f47e438feede431` |
| 2 | `theorem` | [source_jet_det_nonpos_of_wronskian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/declarations/source-jet-det-nonpos-of-wronskian--90262af7b1e8ebc614d95a7d.md) | 22 | `result-track:90262af7b1e8ebc614d95a7df09bc0e40d8edce0198554fe90331dfe5c1670c0` |
| 3 | `theorem` | [residual_cross_nonpos_of_source_jet_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/declarations/residual-cross-nonpos-of-source-jet-det--d7f4b9dc484548385bfc2ef9.md) | 85 | `result-track:d7f4b9dc484548385bfc2ef90169bf77bd7c4d9ddec057d09d63b65ece61b79f` |
| 4 | `theorem` | [integral_moment_cross_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/declarations/integral-moment-cross-nonpos--f5599ba540458809b8931bf9.md) | 96 | `result-track:f5599ba540458809b8931bf918c8db0536628d474fbdb04f191a0ce080b7d3d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
