# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative04.Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e980cd5b26b1fa9c5f61272a302f5880148a537",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e980cd5b26b1fa9c5f61272a302f5880148a537`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realrampantiderivative--e582b02293cf7fd55b25eda7.md) | 21 | `declaration-track:e582b02293cf7fd55b25eda771426288e9eac967aee6fde95d65f60e84798aae` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realrampantiderivative-hasderivat--c4278c38bbe032bd1e8eff4e.md) | 24 | `result-track:c4278c38bbe032bd1e8eff4ebf8fe922b28b4093e96106b6695ff2330eb2bef4` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realrampantiderivative-tendsto--18f696b372c785fcb45c7df8.md) | 34 | `result-track:18f696b372c785fcb45c7df8dd07c676fe9b8c44b22f65e258116da06bd587c9` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realramp-tail-integrable--e5d30d63520bf2c1293a3e23.md) | 48 | `result-track:e5d30d63520bf2c1293a3e2345de9246d86571bddb86441d7c7ec2ae05470a5c` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realramp-tail-integral--f45475b536d924d9d095ade3.md) | 56 | `result-track:f45475b536d924d9d095ade3ac1738f66a7d6405b6086bf539f7119a1e0f0fff` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/zeroon-lower-integrable--2210a785fc7d28e17dd60d41.md) | 63 | `result-track:2210a785fc7d28e17dd60d4168a5c46ecfc305f680bc9a309a97a1e6dc662e88` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realramp-integrable--b38ba81923c84a61b5fdf2e6.md) | 69 | `result-track:b38ba81923c84a61b5fdf2e60cfcf7244731749cf51174bbb5d6f5f43ed6a963` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/realramp-integral--4a54cdb4f8a9ad5af46dbb44.md) | 79 | `result-track:4a54cdb4f8a9ad5af46dbb44cb7f1f52f180d38a9fe89a273409b95df094dca4` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/complexramp-norm--da4acf7ee94dc7f98de82d8a.md) | 97 | `result-track:da4acf7ee94dc7f98de82d8a94008326fa0080dd8ac68aa12e25d89384d0704c` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualsinglerieszramp-integrable--54e1f1ee483cdf9a0bf5f316.md) | 106 | `result-track:54e1f1ee483cdf9a0bf5f3166b3a53ceeba7fb14e93c09bb3c0935e88ba34760` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualsinglerieszramp-integral-norm--2f0ef3910c0b49afa8c32f5f.md) | 116 | `result-track:2f0ef3910c0b49afa8c32f5f3e30732c96b3e54e9a372da08ad71a8b58f619e0` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/complexrampantiderivative--2655e7be3bae4deaa7128749.md) | 122 | `declaration-track:2655e7be3bae4deaa7128749a423dbf5cb89bec705b737347e619e15136a9e59` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/complexrampantiderivative-hasderivat--d2593ffe29dfbf177b4f4dfd.md) | 125 | `result-track:d2593ffe29dfbf177b4f4dfdeaf5460555102f51be9273fb2f73098602b9c579` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/complex-exp-monomial-zero--89b2012b4ba2e40e8683692d.md) | 141 | `result-track:89b2012b4ba2e40e8683692dde3bc11e5a9fe15da15f2e55db4308a52e2443db` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/complexrampantiderivative-tendsto--ff9f8872b4f202013c577c35.md) | 155 | `result-track:ff9f8872b4f202013c577c3585787c5cb99b3cf12ba15c853f273a8a157a015e` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualsinglerieszramp-integral--4d480954071087e8f242b544.md) | 169 | `result-track:4d480954071087e8f242b544588b30a23d49cc021f8e2fce279a7cbe449d8783` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualrieszlaplaceatom--3446ffc7c73241604c08769d.md) | 202 | `declaration-track:3446ffc7c73241604c08769d46148a805681194f0a32cbf2bd36133e1f0a9818` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualmangoldtrieszlaplace--06c04717239f7d6b678b177a.md) | 207 | `declaration-track:06c04717239f7d6b678b177ac4f7c00f25e38f1ecc848264010d1d30e4ac9a32` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/atom-factor--c12a5f7d970e532bd8c7af18.md) | 211 | `result-track:c12a5f7d970e532bd8c7af1898c510fedcc1bacbc2353a19358d67d98bbab22a` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualrieszlaplaceatom-integrable--9341903d8b962704d892006e.md) | 220 | `result-track:9341903d8b962704d892006e7aa8076c4a682c9af90457d890cb52c99f181b3b` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualrieszlaplaceatom-integral-norm--33331b7340b601facefb8a78.md) | 238 | `result-track:33331b7340b601facefb8a7879a1e75e4d2385ae8dd131d7b3a456ad79de3d2b` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--72ef4092dc73630d08bfc2b0.md) | 273 | `result-track:72ef4092dc73630d08bfc2b031212b0347dff76ea13ecabc960a90e6375855cb` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/declarations/actualrieszlaplaceatoms-tsum--e84a356498f00d1d7367891b.md) | 284 | `result-track:e84a356498f00d1d7367891be1c8adecc8913d3cb288c1804ee39bc5d452f589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
