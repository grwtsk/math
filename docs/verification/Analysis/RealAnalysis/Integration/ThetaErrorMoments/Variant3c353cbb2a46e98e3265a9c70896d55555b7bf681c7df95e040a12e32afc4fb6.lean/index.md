# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMoments.Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5519e889510ec94c21d6792e35e1d4828337f8f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5519e889510ec94c21d6792e35e1d4828337f8f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePrimePrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/sourceprimeprefix--f2745fee1bce2ac260dd3b14.md) | 23 | `declaration-track:f2745fee1bce2ac260dd3b1424bdba22896563bef1a9415f43b6f8852677b87e` |
| 2 | `theorem` | [sourcePrimePrefix_eq_theta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/sourceprimeprefix-eq-theta--27e564513b0565bd77f29a76.md) | 26 | `result-track:27e564513b0565bd77f29a765afe1f8ea3abebf7baf2a9df1c9c6f16287b8a04` |
| 3 | `def` | [thetaLogError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror--78f73c2eb1799f97e1b977b3.md) | 46 | `declaration-track:78f73c2eb1799f97e1b977b36f9cb7ce3dc755e090abc91c3e082651eebb14b4` |
| 4 | `theorem` | [thetaLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-eq--b806d78c90aa30fe863cc529.md) | 49 | `result-track:b806d78c90aa30fe863cc529d18af7a4a99c237ff770f2e7505995e5111ce808` |
| 5 | `theorem` | [thetaLogError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-measurable--98a0097b992a7fc5b149670e.md) | 53 | `result-track:98a0097b992a7fc5b149670e6fcb3b8eaad2c016fd859f7acbff2116edb5b869` |
| 6 | `theorem` | [thetaLogError_abs_le_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-abs-le-global--dcf98d085c15c9f6e7f24b83.md) | 62 | `result-track:dcf98d085c15c9f6e7f24b835c608c1b1823db4ee0a49e5eef5e8027b8d4e6a7` |
| 7 | `theorem` | [thetaLogError_abs_le_psi_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-abs-le-psi-error--5f64185dce493b6da1bb7b04.md) | 78 | `result-track:5f64185dce493b6da1bb7b0449ce5de0e493b7f464184c79f71dd019071dead4` |
| 8 | `theorem` | [thetaLogError_eventual_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-eventual-bound--d7865d9cea215af2c4aba34d.md) | 105 | `result-track:d7865d9cea215af2c4aba34d1c6bc7f6ea459c420b0263c9b141f936cc79af92` |
| 9 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/polynomial-stretched-integrable--5f0a98f8653c803054d0d4d8.md) | 121 | `result-track:5f0a98f8653c803054d0d4d869dec88816be493202a16b7a43525f6282adc2e0` |
| 10 | `theorem` | [thetaLogError_moment_prefix_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-moment-prefix-integrable--f212e78669dad7c67ff14884.md) | 130 | `result-track:f212e78669dad7c67ff14884f65c54728c09d2fed0958480666f948e8ca10d90` |
| 11 | `theorem` | [thetaLogError_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-moment-integrable--67a7d03d06527ae944cc383e.md) | 143 | `result-track:67a7d03d06527ae944cc383e0a6107d9fa67256cb38233ffc2912564958909a2` |
| 12 | `theorem` | [thetaLogError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-integrable--b3becf3db9ee24896d325ae7.md) | 187 | `result-track:b3becf3db9ee24896d325ae77095ff849c0e3f8aead22a53e2c7a7cfdb8867d7` |
| 13 | `theorem` | [thetaLogError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-first-moment-integrable--6d2f16bc2f64897199ce0e38.md) | 190 | `result-track:6d2f16bc2f64897199ce0e383c30d250289d4e730f649705e996757851debf4e` |
| 14 | `theorem` | [thetaLogError_second_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/thetalogerror-second-moment-integrable--de514ca4c9d14c6f051b6e7f.md) | 194 | `result-track:de514ca4c9d14c6f051b6e7f7fc70ab14571a8c5f6d9894d372d805561233e39` |
| 15 | `theorem` | [theta_error_logarithmic_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/declarations/theta-error-logarithmic-moment-integrable--c466a2e2eb7cf630e92faf50.md) | 199 | `result-track:c466a2e2eb7cf630e92faf50fa148917da616fbcbf31ac068316fad3fd5874c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
