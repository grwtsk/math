# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative05.Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae9879acde98cc25fc5725ea1673f296006c8582",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae9879acde98cc25fc5725ea1673f296006c8582`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realrampantiderivative--921e9e59b8747bd646f5fdbf.md) | 29 | `declaration-track:921e9e59b8747bd646f5fdbf3c92c9900195ad2839ed084fc50064ea0c03e90e` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realrampantiderivative-hasderivat--b2a6a8be45003ecbd2bd9ca9.md) | 32 | `result-track:b2a6a8be45003ecbd2bd9ca99467ab6cb45fc8940d8797df39da90ddfefd3b49` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realrampantiderivative-tendsto--303483e5542523d594c799e9.md) | 42 | `result-track:303483e5542523d594c799e94ac612c56f303ad4d3127ac9acb0f7a67eb6fcd8` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realramp-tail-integrable--fd9543551c11fdbfbf033f9b.md) | 56 | `result-track:fd9543551c11fdbfbf033f9b7ba4243a88f9f019808042aeefb08f4914f2f89c` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realramp-tail-integral--d481b5fa7b4eaf19f72c9991.md) | 64 | `result-track:d481b5fa7b4eaf19f72c9991e024452df972de7516264350af4f5585b8de92aa` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/zeroon-lower-integrable--a337a9e1e72f7386c28335a0.md) | 71 | `result-track:a337a9e1e72f7386c28335a071ab705be36985cfb1fcebc0a9b5c0d98310fb61` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realramp-integrable--0d97d511d07ad0a4b76df846.md) | 77 | `result-track:0d97d511d07ad0a4b76df846050cc000c527910a0368815cc0303579be2aa6f2` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/realramp-integral--82e617d08b47deb241a00463.md) | 87 | `result-track:82e617d08b47deb241a004635f3899c813cb7dd6837785c7c40eb15204732253` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/complexramp-norm--7b636a2f99591984cfd7ff40.md) | 105 | `result-track:7b636a2f99591984cfd7ff404affc16f51236c08d15e5512c3419e0d80948c71` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualsinglerieszramp-integrable--c64b1af7398e5e4de79aa798.md) | 114 | `result-track:c64b1af7398e5e4de79aa798a71960c1900040a2af0674110dfc16ee2fd6763d` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualsinglerieszramp-integral-norm--6156a5ccdf9eb153e00650c9.md) | 124 | `result-track:6156a5ccdf9eb153e00650c9a464ac15f1a409b66ee47d0ad2fcd7fd87362b5a` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/complexrampantiderivative--80f372e2deeb5e60d15e45b2.md) | 130 | `declaration-track:80f372e2deeb5e60d15e45b29728734115ce5a6cef7b0147529391758685037d` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/complexrampantiderivative-hasderivat--bd7747ed56655ce13af14c3c.md) | 133 | `result-track:bd7747ed56655ce13af14c3cab6a020b0b2383e2ba416023635e7168c308d872` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/complex-exp-monomial-zero--f6102e36b0d4cc84991256fe.md) | 148 | `result-track:f6102e36b0d4cc84991256fee8fa756ee3f78326f4f1289eb3b048fc1a995b90` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/complexrampantiderivative-tendsto--0bcbdd9481313a72f6a4795c.md) | 162 | `result-track:0bcbdd9481313a72f6a4795cf458285c650548b03db4e989530fd9bcbfff95c2` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualsinglerieszramp-integral--c8b1e83933fa6904b488d14b.md) | 176 | `result-track:c8b1e83933fa6904b488d14b41751e951038d0bbdfe22a4b39ddaddab4ba897d` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatom--2bee94541b90450884aeb088.md) | 209 | `declaration-track:2bee94541b90450884aeb088c83fa9fdbd956b85fe1ffe2f8c65e65dfdfdc573` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualmangoldtrieszlaplace--4c26a3e3cc796d2f228ad5d3.md) | 214 | `declaration-track:4c26a3e3cc796d2f228ad5d30676d4dc93d11f7cb7f3d81eb746fe324cb3a41f` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/atom-factor--90ebe24529f8899a247704a8.md) | 218 | `result-track:90ebe24529f8899a247704a81066fc55a62ffd4e0b647724abb4b6258d62a8ab` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatom-integrable--cf3ff9f019875dc31519bbbf.md) | 227 | `result-track:cf3ff9f019875dc31519bbbf9128a62e7cf574e0467034366535d2cd3f4a0de9` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatom-integral-norm--1dc27b438dfa1c40d9d86d6f.md) | 245 | `result-track:1dc27b438dfa1c40d9d86d6f998bd35ebf1b37e4685afd10e4069d732fd19264` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--edffee7d4a38283ed5d3abfe.md) | 281 | `result-track:edffee7d4a38283ed5d3abfeace627e29a7be2addcdc193b3603931a240a6110` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatoms-tsum--d2a1f24d051dc93b78da79e8.md) | 292 | `result-track:d2a1f24d051dc93b78da79e8222542bb902f7ddb2b2fb45f29b60fae21dff724` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszprimitive-continuous--5b503646e0670b843febe726.md) | 317 | `result-track:5b503646e0670b843febe726c81781d38ececf79722915d96d04881e4979097a` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--4aeaf580f1126e8d35c0b20f.md) | 336 | `result-track:4aeaf580f1126e8d35c0b20f1a6440a74ccf80f49f3265ea977d154c2c592d2a` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variante12cbd5314c35a5fa0fd3072d2a1fb89659219e4401e467907d2b21578283fe1.lean/declarations/actualrieszlaplaceatoms-integral-tsum--66de69f08ede0daa6203457c.md) | 365 | `result-track:66de69f08ede0daa6203457c18b6ff663907054a4034721c23d382021a63c74f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
