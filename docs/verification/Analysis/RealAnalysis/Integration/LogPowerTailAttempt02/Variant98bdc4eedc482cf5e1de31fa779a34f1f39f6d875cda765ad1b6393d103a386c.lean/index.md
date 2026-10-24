# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogPowerTailAttempt02.Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f90a3dc2508663de667e1f796655ada0cb3893e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f90a3dc2508663de667e1f796655ada0cb3893e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower--768927ec888960eb4cf32318.md) | 17 | `declaration-track:768927ec888960eb4cf32318c065aee2ecf6b16a135149ecdd9864807825ad4d` |
| 2 | `def` | [logPowerPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpowerprimitive--5b0edacc22072926d9e19953.md) | 18 | `declaration-track:5b0edacc22072926d9e1995327e9287872bdc2c0d2f50f8f2b86c3627c311a6a` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower-hasderivat--a77e4c9393ab32b71cef1a6b.md) | 20 | `result-track:a77e4c9393ab32b71cef1a6b161f9204080747f7d1c8b6792f74aa67735d5aa1` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/primitive-hasderivat--de049a3f7cd33c91ba6ff2a6.md) | 30 | `result-track:de049a3f7cd33c91ba6ff2a675f528b6c69445ff3618785ac9f41488391b1514` |
| 5 | `theorem` | [logPower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower-nonneg--c9b79e398b15da80a802bae4.md) | 43 | `result-track:c9b79e398b15da80a802bae4daf726460281064df3aee0377504909ae92d1321` |
| 6 | `theorem` | [logPower_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower-antitone--430c550a3dbe7e5e8ef9a689.md) | 47 | `result-track:430c550a3dbe7e5e8ef9a689b79096454068205e1a580946ed35fc984043757d` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/primitive-tendsto-zero--2b422224b82754a624bee914.md) | 60 | `result-track:2b422224b82754a624bee91450515e5d77fc9a82d27d041ea99631424f6e8a86` |
| 8 | `theorem` | [logPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower-integrable--88303d8a7e2c3d423eb3ab1d.md) | 74 | `result-track:88303d8a7e2c3d423eb3ab1d2a957a32dacb8523cec62cb2ea1a1c876e4151e8` |
| 9 | `theorem` | [logPower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower-integral--ead08de9c9a9ed3d6d0ddae7.md) | 79 | `result-track:ead08de9c9a9ed3d6d0ddae70c93790e780dd7b05fb2935d586c437e66edf531` |
| 10 | `theorem` | [logPower_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/logpower-summable--c384410ec0bf45ab65b2758c.md) | 89 | `result-track:c384410ec0bf45ab65b2758cd4d8156020ea8740876161f1ed815b62a31c5e81` |
| 11 | `theorem` | [tail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/tail-summable--8b588a6bca0d344d10c1f0d9.md) | 93 | `result-track:8b588a6bca0d344d10c1f0d939ed339e1049e428d7a4e817f3c9a25d0be3d38b` |
| 12 | `theorem` | [tail_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/tail-le-integral--601e8c2fc65ff3595ee0f7b3.md) | 97 | `result-track:601e8c2fc65ff3595ee0f7b3b626491f0bf198c2093e432868a001d79eee256b` |
| 13 | `theorem` | [tail_le_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant98bdc4eedc482cf5e1de31fa779a34f1f39f6d875cda765ad1b6393d103a386c.lean/declarations/tail-le-rational--08b8f3a6048e58ada13d639e.md) | 109 | `result-track:08b8f3a6048e58ada13d639e4f2fb3712082bc61da80d6278819b50bd6f85b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
