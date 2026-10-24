# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "126247f85d7b1102de744b698efd41eab61fe787",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `126247f85d7b1102de744b698efd41eab61fe787`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MellinTransform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GammaIntegral_eq_mellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/declarations/gammaintegral-eq-mellin--85d6dd38349675ad7679f2c6.md) | 49 | `result-track:85d6dd38349675ad7679f2c6aadf1fb8f29b80bebb85e2b97d6a827e3995e137` |
| 2 | `theorem` | [hasDerivAt_GammaIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/declarations/hasderivat-gammaintegral--10bb3561874e139d8de08563.md) | 54 | `result-track:10bb3561874e139d8de08563f2ebf7f03af91cee3b8ba982b82d010958272e39` |
| 3 | `theorem` | [differentiableAt_GammaAux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/declarations/differentiableat-gammaaux--c57377994cb956553e6d67ed.md) | 68 | `result-track:c57377994cb956553e6d67ed14b3ba29c3320ce398821ff3e3dee695309b105f` |
| 4 | `theorem` | [differentiableAt_Gamma](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/declarations/differentiableat-gamma--7de8ba8b5a0b42c57de9e6b9.md) | 88 | `result-track:7de8ba8b5a0b42c57de9e6b9867e2ecd3ea9ea00b260bfa3765f6a5872333e69` |
| 5 | `theorem` | [tendsto_self_mul_Gamma_nhds_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/declarations/tendsto-self-mul-gamma-nhds-zero--60b6adf965ed9c529e1bcb49.md) | 107 | `result-track:60b6adf965ed9c529e1bcb490276efeea02dcebb672c1ef6c5622620927244d0` |
| 6 | `theorem` | [differentiableAt_Gamma](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/declarations/differentiableat-gamma--361b367cfdd9e0037122ac18.md) | 122 | `result-track:361b367cfdd9e0037122ac1853281fc8c05a6a52c2e4fb56a9b397f956549058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
