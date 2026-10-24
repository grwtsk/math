# Verification target: GRWTSK.Topology.GeneralTopology.045SourceDualFourierJump.Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a293f5068463434f1f74e1482f8c1686ccac324a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a293f5068463434f1f74e1482f8c1686ccac324a`.

Source path: `GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signModulated](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/signmodulated--c30c014d9afaa11e9043fa0b.md) | 38 | `declaration-track:c30c014d9afaa11e9043fa0b98a18f2fa1034de0d8aa9e3e7f2335c961acb1bc` |
| 2 | `theorem` | [no_continuous_ae_signModulated](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/no-continuous-ae-signmodulated--73707f8171166a2d9ae8aa8e.md) | 41 | `result-track:73707f8171166a2d9ae8aa8e0cf3ba3c8c57a5e4de1c40456f078d3e695cbc93` |
| 3 | `theorem` | [no_continuous_ae_neg_signModulated](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/no-continuous-ae-neg-signmodulated--169b9e02d49d334ad9e7fb6c.md) | 58 | `result-track:169b9e02d49d334ad9e7fb6c3db8a596331e1cfcde51a4ced141e065c7cfc6e9` |
| 4 | `def` | [standardSourceTransform](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/standardsourcetransform--db6e642ce9744e12ca38c712.md) | 68 | `declaration-track:db6e642ce9744e12ca38c71274ebb7bb0df07d7829ef53207765193d15850f8a` |
| 5 | `theorem` | [standardSourceTransform_zero](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/standardsourcetransform-zero--4c9236911e06f5077439bf33.md) | 72 | `result-track:4c9236911e06f5077439bf3359b58fc576830f59487efaf551acd5fec04bffb3` |
| 6 | `theorem` | [standardSourceTransform_zero_ne](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/standardsourcetransform-zero-ne--3ba066e1b8a24ea2ad042e61.md) | 84 | `result-track:3ba066e1b8a24ea2ad042e61c3d326e93fd9e94b460f57c7abd110bad35d0f84` |
| 7 | `theorem` | [standardSourceTransform_continuous](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/standardsourcetransform-continuous--cfff1d221582eae1a3eeabf6.md) | 93 | `result-track:cfff1d221582eae1a3eeabf6629894a53aee8d1907da886baf4a9771e8c93424` |
| 8 | `theorem` | [actual_source_spectral_jump](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/actual-source-spectral-jump--f4ba204b27f2845dda49a5bd.md) | 102 | `result-track:f4ba204b27f2845dda49a5bd2467fe01495b6eef7009458f4853b76630ff8285` |
| 9 | `theorem` | [actual_source_negative_spectral_jump](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/actual-source-negative-spectral-jump--2f4895e964bfa13ab75e73bd.md) | 109 | `result-track:2f4895e964bfa13ab75e73bdbcd73fa36bc72ba3c3afdd47cac185ad88e32884` |
| 10 | `theorem` | [no_integrable_fourier_sign_source](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/no-integrable-fourier-sign-source--43ba3cdb9345eb9259099ca2.md) | 116 | `result-track:43ba3cdb9345eb9259099ca28a4b0c14e1018739444f8eecba882b3318730f4a` |
| 11 | `theorem` | [no_continuous_compact_fourier_sign_source](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/declarations/no-continuous-compact-fourier-sign-source--4d4e451fda27b290b0e17b74.md) | 126 | `result-track:4d4e451fda27b290b0e17b7456a1f45f4c7f47ea803d0aa1b92df315b4c23ae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
