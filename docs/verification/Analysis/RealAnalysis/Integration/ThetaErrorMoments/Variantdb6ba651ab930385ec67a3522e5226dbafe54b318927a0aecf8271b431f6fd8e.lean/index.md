# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMoments.Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f9219d73a14d76665463c39fdb274862f1f669",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f9219d73a14d76665463c39fdb274862f1f669`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePrimePrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/sourceprimeprefix--1ea6f6f3c150820c039f255d.md) | 15 | `declaration-track:1ea6f6f3c150820c039f255d791f8d160c3600494c1bc0ccaa4dad0e74c2b558` |
| 2 | `theorem` | [sourcePrimePrefix_eq_theta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/sourceprimeprefix-eq-theta--e44061c03ceaeef7ecb3a18a.md) | 18 | `result-track:e44061c03ceaeef7ecb3a18a1f0cc3d793db874e5676556cd5c3f232b799a088` |
| 3 | `def` | [thetaLogError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror--8e2ea63061eb29b39db36643.md) | 38 | `declaration-track:8e2ea63061eb29b39db366431e6e30c0bee4056e676f532bedbb6bbf22f2effe` |
| 4 | `theorem` | [thetaLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-eq--a3d176a215d131db98789062.md) | 41 | `result-track:a3d176a215d131db987890620b528ed2d380d167fa719f0ea21cb10050daaa8f` |
| 5 | `theorem` | [thetaLogError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-measurable--b8c37ebaf5bd3e0ad580361b.md) | 45 | `result-track:b8c37ebaf5bd3e0ad580361b852969c946bd1637492b2ad455bb3aee41922bea` |
| 6 | `theorem` | [thetaLogError_abs_le_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-abs-le-global--61b2db63d03231533760466d.md) | 54 | `result-track:61b2db63d03231533760466d8699394a3459cafd9c9a1fe38adc1d457377058d` |
| 7 | `theorem` | [thetaLogError_abs_le_psi_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-abs-le-psi-error--e1bc30bc64322562ec5fdd79.md) | 70 | `result-track:e1bc30bc64322562ec5fdd795f39a6395380e809ae79d2c43d3ba11cf5382c04` |
| 8 | `theorem` | [thetaLogError_eventual_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-eventual-bound--2188ecb48a22c79739b94adb.md) | 97 | `result-track:2188ecb48a22c79739b94adb7a970bf04fd22a4f36d3aa6806206b45f31cd3d0` |
| 9 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/polynomial-stretched-integrable--414d1a69ce23a902ea1f8e3d.md) | 113 | `result-track:414d1a69ce23a902ea1f8e3d92535066dd8d9f4d584ad5f1c2c1ecd996a667a9` |
| 10 | `theorem` | [thetaLogError_moment_prefix_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-moment-prefix-integrable--9e30ff127d3d8cbe223fa1f4.md) | 122 | `result-track:9e30ff127d3d8cbe223fa1f4f84134c24ab3d1bf75eab0af42f0c4173da03b75` |
| 11 | `theorem` | [thetaLogError_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-moment-integrable--6612109dc9269813e56fc056.md) | 135 | `result-track:6612109dc9269813e56fc0569550c1439587176b720822a98529685d4685c7fa` |
| 12 | `theorem` | [thetaLogError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-integrable--273194b5f3200632a2569800.md) | 179 | `result-track:273194b5f3200632a25698006c156309265c99b09b73c047bb4ece3a7ef19f54` |
| 13 | `theorem` | [thetaLogError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-first-moment-integrable--1be379979a062ac0d274d27f.md) | 182 | `result-track:1be379979a062ac0d274d27fa2353f9057860b19a9955d75bc44b9ef30e4a9a1` |
| 14 | `theorem` | [thetaLogError_second_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/thetalogerror-second-moment-integrable--46c96190160c77d57a3e633f.md) | 186 | `result-track:46c96190160c77d57a3e633fa3f8d048a222b99a6bbcd80263b81d49b25c2c4d` |
| 15 | `theorem` | [theta_error_logarithmic_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variantdb6ba651ab930385ec67a3522e5226dbafe54b318927a0aecf8271b431f6fd8e.lean/declarations/theta-error-logarithmic-moment-integrable--282195e35814a1544ac91425.md) | 191 | `result-track:282195e35814a1544ac914255a9dd5c44e9b04a9404b4b6996941ab53d5251ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
