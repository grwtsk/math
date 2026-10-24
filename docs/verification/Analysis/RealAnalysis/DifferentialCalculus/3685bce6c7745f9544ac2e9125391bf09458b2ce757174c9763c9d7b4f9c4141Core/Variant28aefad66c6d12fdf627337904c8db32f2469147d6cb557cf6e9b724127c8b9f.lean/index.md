# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core.Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "934daaec16b42d9735d447c89c7a2b19b6dd728d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `934daaec16b42d9735d447c89c7a2b19b6dd728d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_poly_exp_norm_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphi-poly-exp-norm-le-tail--b86476d64a82b7b3325fe663.md) | 23 | `result-track:b86476d64a82b7b3325fe66346625b36aea38969b20662a6f3a16b529ecad70c` |
| 2 | `theorem` | [thetaPhi_poly_exp_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphi-poly-exp-integrableon--174fc1cf29e653c80b6ca408.md) | 64 | `result-track:174fc1cf29e653c80b6ca408abbcf9d63582c267a4cade9d3a4b47ae72cae065` |
| 3 | `theorem` | [thetaPhi_evenBasis_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphi-evenbasis-integrableon--1978c0db4d760980cd9440d2.md) | 90 | `result-track:1978c0db4d760980cd9440d24cfa676e41521452c86a19a4f143fa4f54dec9c6` |
| 4 | `def` | [thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphiexpmomentintegrand--788a9c251d058fab923f56ec.md) | 106 | `declaration-track:788a9c251d058fab923f56ec5fe9e615bb21f4ddb4e722a49646d8083132399c` |
| 5 | `def` | [thetaPhiExpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphiexpmoment--951210f3a9392d71fc3349dc.md) | 110 | `declaration-track:951210f3a9392d71fc3349dc54984af78b25c33b87dd80587e5ec7dfc65b092f` |
| 6 | `theorem` | [continuous_thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/continuous-thetaphiexpmomentintegrand--9ba9588161943b59fb8d8ada.md) | 114 | `result-track:9ba9588161943b59fb8d8ada498cdc53d4febca500e920ffcd3e06096d9efc97` |
| 7 | `theorem` | [thetaPhiExpMomentIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphiexpmomentintegrand-norm-le--49b6fd68d2a902e2ab395f41.md) | 122 | `result-track:49b6fd68d2a902e2ab395f412f76a91c6988db4f10c761fa0fb0032e3bbe55e4` |
| 8 | `theorem` | [thetaPhiExpMomentIntegrand_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetaphiexpmomentintegrand-integrableon--24f3c738f5c8cdee390ec853.md) | 142 | `result-track:24f3c738f5c8cdee390ec853d4a9149963f0181651e58821a3edc380823ea1a0` |
| 9 | `theorem` | [hasDerivAt_thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/hasderivat-thetaphiexpmomentintegrand--ab1500fe53e4f90fd9ca669e.md) | 150 | `result-track:ab1500fe53e4f90fd9ca669e07b29ea9c9636f829ecb92e5f2ef96b842b56e6c` |
| 10 | `theorem` | [hasDerivAt_thetaPhiExpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/hasderivat-thetaphiexpmoment--6dcca9d06475ff386bc45b9d.md) | 160 | `result-track:6dcca9d06475ff386bc45b9ddee64962b4f7f3e0a81c1891a96f905352e6e98a` |
| 11 | `def` | [thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetacenteredmomentjet--0950f72b4904ce6cc2532470.md) | 187 | `declaration-track:0950f72b4904ce6cc2532470b90bc93a8e68392a27719f03c11825b88c5110a8` |
| 12 | `theorem` | [hasDerivAt_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/hasderivat-thetacenteredmomentjet--ff416e1ed55c0e74c6b8b85c.md) | 191 | `result-track:ff416e1ed55c0e74c6b8b85c7b31c9724f35534d197c6c104f83f2104fa31c36` |
| 13 | `theorem` | [iteratedDeriv_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/iteratedderiv-thetacenteredmomentjet--7f61d5b922476d3524cc8509.md) | 200 | `result-track:7f61d5b922476d3524cc850999055dec388e0dd724eaaee4e8e94caf9c484595` |
| 14 | `theorem` | [thetaCenteredMomentJet_even_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/declarations/thetacenteredmomentjet-even-zero--edea3ab33cea3169475ae8fd.md) | 209 | `result-track:edea3ab33cea3169475ae8fdb9a47f32ce8b60ff0c0a8882f7a197b48518b574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
