# Verification target: GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1a16d2861823d13dd8130fa0725d042ab7dc64c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1a16d2861823d13dd8130fa0725d042ab7dc64c`.

Source path: `GRWTSK/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples`](../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.EvenLinearDefect`](../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EvenLinearDefect.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy`](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.Integration.TranslationSeamLowerBound`](../../../../mathematics/Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [second_representative_memLp](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/declarations/second-representative-memlp--7f6a5595d1ac83f1dc9ccee3.md) | 35 | `result-track:7f6a5595d1ac83f1dc9ccee388e8103a28241b8629ca4f94f7a9334c85543508` |
| 2 | `theorem` | [normalized_second_interior_continuous](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/declarations/normalized-second-interior-continuous--ffe16fe8874a5a5a35c83cb5.md) | 39 | `result-track:ffe16fe8874a5a5a35c83cb594a43f94560ee6f7a0522b47f4096f2d63145a0b` |
| 3 | `theorem` | [actual_second_autocorrelation_not_differentiable_at_zero](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/declarations/actual-second-autocorrelation-not-differentiable-at-zero--310aad701b9b7254aed778e1.md) | 46 | `result-track:310aad701b9b7254aed778e1e3ee4fcdcc174bc179f9dac5d39531a5660d2ba4` |
| 4 | `theorem` | [fourth_correlation_eq_autocorrelation](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/declarations/fourth-correlation-eq-autocorrelation--0ebf7a93de2d582ad9039824.md) | 75 | `result-track:0ebf7a93de2d582ad9039824972fb7e902b910869e750e7e00b8bd4d775e7627` |
| 5 | `theorem` | [fourth_correlation_not_differentiable_at_zero](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/declarations/fourth-correlation-not-differentiable-at-zero--75b87a93358b26227fc7250d.md) | 81 | `result-track:75b87a93358b26227fc7250d89306c016dbf0676138cfdf8f5447fd0ce8465f7` |
| 6 | `theorem` | [correlation_not_contDiff_five](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/declarations/correlation-not-contdiff-five--4055138e15439991156d3b95.md) | 87 | `result-track:4055138e15439991156d3b95323c9b6d080384a51e7e5741e5c5ec8b38de0d94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
