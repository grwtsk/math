# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt03.Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0f055b6bd780b06fde5a208c502a98ddd06236f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0f055b6bd780b06fde5a208c502a98ddd06236f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzMellinDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample--a57f8d0499348e432b7d1a99.md) | 22 | `declaration-track:a57f8d0499348e432b7d1a991f16c8d7bd6ce55e448757ef59f8746349fd3c1c` |
| 2 | `def` | [sourceNormMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/sourcenormmoment--0bab24da114ce4426c157c9a.md) | 25 | `declaration-track:0bab24da114ce4426c157c9a126b5b18c8b7a3dd120091802b3cf024ed4dee0e` |
| 3 | `theorem` | [weightedSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample-integrable--1e141f5feb20984e6eabc64d.md) | 28 | `result-track:1e141f5feb20984e6eabc64d7259316bbcb74be2dab8164df851184f179fb209` |
| 4 | `theorem` | [weightedSample_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample-norm--71e96d246add9b00899297b9.md) | 35 | `result-track:71e96d246add9b00899297b9c1807c332e909f8a2681fd4e412bae4d800511af` |
| 5 | `theorem` | [weightedSample_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample-norm-integral--08d8e66280d5f2b1d303687c.md) | 41 | `result-track:08d8e66280d5f2b1d303687cb7c0fd307b3e23ca44ff48e56627900bbc7a9935` |
| 6 | `theorem` | [weightedSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample-norm-integrals-summable--1a8efd9241528041d3050a56.md) | 63 | `result-track:1a8efd9241528041d3050a567d3c825af4f308ea23fa20de94903d50ed48bca4` |
| 7 | `theorem` | [complexMuntz_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/complexmuntz-eq-tsum--218f8449e03b1bc4cd5638a5.md) | 70 | `result-track:218f8449e03b1bc4cd5638a5c50ab44a6e1f037af8e5e39c16f68300024efa90` |
| 8 | `theorem` | [weightedSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample-tsum--e0614c96d60ab7ee1ecf8c27.md) | 75 | `result-track:e0614c96d60ab7ee1ecf8c279c5db1f212cb978c80ed0b1cedcdcfb8c807fe4e` |
| 9 | `theorem` | [weightedSample_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/weightedsample-integral--82e90dfb74855be1698b0a73.md) | 79 | `result-track:82e90dfb74855be1698b0a73dc1a58c442efd83e0e76d55924899e4a4228f8ab` |
| 10 | `theorem` | [actual_muntz_mellin_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/declarations/actual-muntz-mellin-dirichlet--fe989498aa84b2755e2c4a8d.md) | 87 | `result-track:fe989498aa84b2755e2c4a8d21581da0a5900f195f26bd497e258b20abff6237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
