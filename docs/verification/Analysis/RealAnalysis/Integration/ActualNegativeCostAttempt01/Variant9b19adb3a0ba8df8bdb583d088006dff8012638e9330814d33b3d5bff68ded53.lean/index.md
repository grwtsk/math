# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualNegativeCostAttempt01.Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "508154e67c0786f7de4aeabc3ab7ac043e6887fa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `508154e67c0786f7de4aeabc3ab7ac043e6887fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NegativeCostFatou` — import line 6; external provider; requires a separately pinned dependency.
- `ActualCumulativeIntercept` — import line 7; external provider; requires a separately pinned dependency.
- `FixedCurvatureLimit` — import line 8; external provider; requires a separately pinned dependency.
- `ActualSecondAbel` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualNegativeDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actualnegativedensity--91fc6e096eef11124671bdb6.md) | 30 | `declaration-track:91fc6e096eef11124671bdb67948a9905235bed0ff677d3b9ce6b4b0eb27a094` |
| 2 | `def` | [actualNegativeLimit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actualnegativelimit--185a70e3a2ec5b03edfe3cae.md) | 35 | `declaration-track:185a70e3a2ec5b03edfe3cae3a72f77583a2b82e3d239f2f262de895d0d5f63d` |
| 3 | `theorem` | [actual_negative_density_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-negative-density-nonneg--4225108437b317b82c89981d.md) | 38 | `result-track:4225108437b317b82c89981d74387b31e5ca28a800d2806c57a4290423dec342` |
| 4 | `theorem` | [actual_negative_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-negative-density-integrable--4156d6cd1940cc713dcb1864.md) | 45 | `result-track:4156d6cd1940cc713dcb1864c76c4d256ed3110d61d0a04dc2faf7175381f9e5` |
| 5 | `theorem` | [actual_negative_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-negative-density-integral--acb124fbb45abbe80c299959.md) | 51 | `result-track:acb124fbb45abbe80c29995987207063e0aebbc9e0aaabf855fa6054bfef9253` |
| 6 | `theorem` | [actual_negative_density_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-negative-density-fixed-tendsto--626f4e86ef1f3bba1862614d.md) | 56 | `result-track:626f4e86ef1f3bba1862614d910f18a7bc0ca437e7b60ac9447252f2c8a40635` |
| 7 | `theorem` | [actual_prime_intercept_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-prime-intercept-pos--e478a125bcd067cf54385319.md) | 77 | `result-track:e478a125bcd067cf54385319dedd58b2b5c3d877759d5d10ae06e6a99a69f05e` |
| 8 | `theorem` | [actual_negative_limit_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-negative-limit-not-integrable--525b7f5798d87480150633ad.md) | 82 | `result-track:525b7f5798d87480150633ad582c6860a0d4c5aaae115ca4b45ddeb9014a90e3` |
| 9 | `theorem` | [actual_negative_curvature_budget_false](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/declarations/actual-negative-curvature-budget-false--b4130fecc4169d496b43aad0.md) | 103 | `result-track:b4130fecc4169d496b43aad098f8ca59dc5ea6fd00e1bc74c88e6f4d4660feaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
