# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt03.Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb249ca04adafacf2ea003653cb022839946da33",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb249ca04adafacf2ea003653cb022839946da33`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondAbel` — import line 6; external provider; requires a separately pinned dependency.
- `BridgeLipschitz` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/criticalprimetest-second-deriv--0f6e650a6e65fd0736fea312.md) | 29 | `result-track:0f6e650a6e65fd0736fea312b3482cb09cfa7a4e392739dd7f2c8a671bd3e7d2` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/criticalprimetest-deriv-zero-after--3ec1a06af0463b93e11b2340.md) | 51 | `result-track:3ec1a06af0463b93e11b2340779bb58a17e7da394132d41bf1dab112617c4042` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/criticalprimetest-second-deriv-zero-after--880c157c7f5382e8deb0f994.md) | 59 | `result-track:880c157c7f5382e8deb0f994c76593618a2a379fd0b3f4178f4e9f50052382ea` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/criticalprimetest-second-deriv-abs-le--f312df54b9bda2edc806a32e.md) | 67 | `result-track:f312df54b9bda2edc806a32e9886d304a137e14338d962cdd31aa50a55300764` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--01f0a251fa8107d286119f94.md) | 97 | `result-track:01f0a251fa8107d286119f946d33edeb2baafbae5324e90828a4f750a703bcda` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/mass-ratio-bounds--6acbcaff844240b4eabca151.md) | 105 | `result-track:6acbcaff844240b4eabca151850cbb5de41c31d3f48c6708fd11557188e3439b` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/pairedtailcurvature-abs-le--d152272bf9cb7013b1cd8c22.md) | 112 | `result-track:d152272bf9cb7013b1cd8c22cfcb2adab4846bc71fdf1e4a99b8db8e189cfea6` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/curvaturevariation--90f745679610f37ba91386f4.md) | 138 | `declaration-track:90f745679610f37ba91386f4704fb3436bd24f3a5583858b00a2cd0b1c463b00` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/curvaturevariation-nonneg--a5de598b3441350537af6191.md) | 140 | `result-track:a5de598b3441350537af6191c8dc3021a1a4e0f31c319185ce1f2a4cb869d953` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/declarations/curvaturevariation-le--583642abe9b4c1934de115f9.md) | 143 | `result-track:583642abe9b4c1934de115f9e585a25c6961c1596bac328fa20958d912cf9456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
