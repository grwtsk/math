# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevAbelAttempt01.Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f89078a0770256b58bb418cb7b4b6d1e6dec3034",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f89078a0770256b58bb418cb7b4b6d1e6dec3034`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTMoment` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/inverse-hasderivat--994fb8d8e32f4ed09187aac7.md) | 18 | `result-track:994fb8d8e32f4ed09187aac7879bb67586fd6123eab76ebff7cddcd6814f5f21` |
| 2 | `theorem` | [inverse_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/inverse-derivative-integrable--69d420249e8ba3ad65853e21.md) | 23 | `result-track:69d420249e8ba3ad65853e216c3aa6e3c6c3f6bc09b04add33fe9d6efc305098` |
| 3 | `theorem` | [weightedMangoldt_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/weightedmangoldt-sum-icc--a24a50d1cbd3d9617ddbc57e.md) | 36 | `result-track:a24a50d1cbd3d9617ddbc57e7bb7594deec8034b3f1c469c19e35be2065dddad` |
| 4 | `theorem` | [weightedMangoldt_eq_psi_add_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/weightedmangoldt-eq-psi-add-integral--14bc1f96f350abb7551dc686.md) | 43 | `result-track:14bc1f96f350abb7551dc686d7460b4e47f1de22f545459af3afa79add5cd3e1` |
| 5 | `theorem` | [psi_integral_log_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/psi-integral-log-dictionary--c55d10960d62a661ce7d7e3b.md) | 63 | `result-track:c55d10960d62a661ce7d7e3b7486bca50c1c5bb131380790a8975efed04805f2` |
| 6 | `theorem` | [mangoldtLogPrefix_eq_psiRelativeError_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/mangoldtlogprefix-eq-psirelativeerror-integral--e40c32d1bc4970241fd24a08.md) | 80 | `result-track:e40c32d1bc4970241fd24a08d610686c33488dd88839b02a732b67588a8c583d` |
| 7 | `theorem` | [mangoldtLogError_centered_eq_psiRelativeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/mangoldtlogerror-centered-eq-psirelativeerror--6d9c029e9706e04713bd3fa1.md) | 91 | `result-track:6d9c029e9706e04713bd3fa180fe8263c6be0631a33f07cf44fafd2ccaf622d3` |
| 8 | `theorem` | [mangoldtLogError_centered_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant1c3ee8b0d9f3f240b7a738d16855a9d582dd5760014ad70482c8e066c63faee5.lean/declarations/mangoldtlogerror-centered-eq-interval--26a250028dcdc4a35076219a.md) | 105 | `result-track:26a250028dcdc4a35076219a7463240d087539ec854e961ca5139331e9ebc1d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
