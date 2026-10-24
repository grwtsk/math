# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt02.Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bcd5248507dbb75370e5848b41d27bb0be256d5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bcd5248507dbb75370e5848b41d27bb0be256d5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean.json)

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
| 1 | `def` | [weightedSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample--d9d5753491e904804345e570.md) | 22 | `declaration-track:d9d5753491e904804345e57041be4d10f9c3aaa8d510e785df9fdaa817c3b26e` |
| 2 | `def` | [sourceNormMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/sourcenormmoment--7ab994cb8028fc28bbf2a32a.md) | 25 | `declaration-track:7ab994cb8028fc28bbf2a32adab98e04e62ff96d07aadeed4dc6e18935f41e9c` |
| 3 | `theorem` | [weightedSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample-integrable--02940fe5157e4208df6976d4.md) | 28 | `result-track:02940fe5157e4208df6976d4ae2f600a3e41419873a8195232dca5e93dd4810a` |
| 4 | `theorem` | [weightedSample_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample-norm--a4015aafd202bd74810b1cf6.md) | 35 | `result-track:a4015aafd202bd74810b1cf66828d4f68afe25915e99fa0863230af038bf9c11` |
| 5 | `theorem` | [weightedSample_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample-norm-integral--385d9562a72a7744040e8681.md) | 41 | `result-track:385d9562a72a7744040e86813c55dac4ada6b2e1f8ad9290b8636a7cd5e95995` |
| 6 | `theorem` | [weightedSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample-norm-integrals-summable--192203b4e81f73111976997d.md) | 63 | `result-track:192203b4e81f73111976997dd3df89c78a33dbe3c11c6b0e4689f664cc2e70d1` |
| 7 | `theorem` | [complexMuntz_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/complexmuntz-eq-tsum--457cb2f5c25e300b32f9312a.md) | 68 | `result-track:457cb2f5c25e300b32f9312a4acf6f879312efc9bab6a26721f201a8d7c50899` |
| 8 | `theorem` | [weightedSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample-tsum--04e4317e3a1ad228db94476c.md) | 73 | `result-track:04e4317e3a1ad228db94476c6afa7be345ce8b862b7f8ea5992b6b39bc252b66` |
| 9 | `theorem` | [weightedSample_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/weightedsample-integral--74a8f83cc987cf7dd7c307c1.md) | 77 | `result-track:74a8f83cc987cf7dd7c307c1efaf490b07a64ccabfb9fb43833fefc6cf20fe81` |
| 10 | `theorem` | [actual_muntz_mellin_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb3c8f88d95311aee0e31ae761d0c35371e4239305b018f2c305852725ee02c5b.lean/declarations/actual-muntz-mellin-dirichlet--6e36553d3208aa6dddea02be.md) | 85 | `result-track:6e36553d3208aa6dddea02be1fba0ac464f9eaca16f4639aa6b08828535b5b14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
