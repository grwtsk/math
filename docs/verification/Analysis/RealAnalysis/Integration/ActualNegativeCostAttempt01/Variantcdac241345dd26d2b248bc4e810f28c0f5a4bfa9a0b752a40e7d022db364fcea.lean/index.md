# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualNegativeCostAttempt01.Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b450731a860828d8231d8c2db8a53dc0ac0e795",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b450731a860828d8231d8c2db8a53dc0ac0e795`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NegativeCostFatou` — import line 1; external provider; requires a separately pinned dependency.
- `ActualCumulativeIntercept` — import line 2; external provider; requires a separately pinned dependency.
- `FixedCurvatureLimit` — import line 3; external provider; requires a separately pinned dependency.
- `ActualSecondAbel` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualNegativeDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actualnegativedensity--20182016021221fc7db0f84e.md) | 22 | `declaration-track:20182016021221fc7db0f84e9597370457aee28a3fdcbd3aeb38eb1250c504e0` |
| 2 | `def` | [actualNegativeLimit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actualnegativelimit--7b3e501a01c74fb75d537acd.md) | 27 | `declaration-track:7b3e501a01c74fb75d537acd5c4ca28ff98927c1ff88777732def3977af9a701` |
| 3 | `theorem` | [actual_negative_density_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-negative-density-nonneg--51cfcd03fe6d06eb45948e3d.md) | 30 | `result-track:51cfcd03fe6d06eb45948e3df636886797fa0457b4cda6ff458139441a4f3997` |
| 4 | `theorem` | [actual_negative_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-negative-density-integrable--cb8042c309fceb6dc382d04f.md) | 37 | `result-track:cb8042c309fceb6dc382d04f44635361f837c172f2b8f9be1c42b6540891edde` |
| 5 | `theorem` | [actual_negative_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-negative-density-integral--f7df27feccaef345ec336cb6.md) | 43 | `result-track:f7df27feccaef345ec336cb6053340961f801b2fa1697793a560b30adc5d616f` |
| 6 | `theorem` | [actual_negative_density_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-negative-density-fixed-tendsto--26e83bf21bf35c5963d3260c.md) | 48 | `result-track:26e83bf21bf35c5963d3260c8ad84eab05e748dd4ac048efe050e5c694e761f4` |
| 7 | `theorem` | [actual_prime_intercept_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-prime-intercept-pos--a1e6c42cab79c54aeff3f622.md) | 69 | `result-track:a1e6c42cab79c54aeff3f622bc0c957f88e12b6ecd1aaf9df491bbd381b770ab` |
| 8 | `theorem` | [actual_negative_limit_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-negative-limit-not-integrable--ce784e5df89caf5a32267879.md) | 74 | `result-track:ce784e5df89caf5a32267879df22cdfbf23d50070d8178db617320c43cf31201` |
| 9 | `theorem` | [actual_negative_curvature_budget_false](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/declarations/actual-negative-curvature-budget-false--2926f10d4de0cac9f81094cd.md) | 95 | `result-track:2926f10d4de0cac9f81094cd533ec49f2be8a60f668459f1661800ecec1b7a7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
