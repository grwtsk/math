# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt02.Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01cb0526005e83023c811fb7881f7b20a95328fb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01cb0526005e83023c811fb7881f7b20a95328fb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzMellinDomain` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample--b6f001c38ebd9534923008a5.md) | 14 | `declaration-track:b6f001c38ebd9534923008a515e98fb1b37d7a8d7b814394e2007fe7c11f6584` |
| 2 | `def` | [sourceNormMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/sourcenormmoment--5744db3d6804d67540442e9d.md) | 17 | `declaration-track:5744db3d6804d67540442e9d59b0e75303b1caa3a8623bf4afa5fc9355fdfc61` |
| 3 | `theorem` | [weightedSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample-integrable--8ce21bdc5ab71a6686e8810a.md) | 20 | `result-track:8ce21bdc5ab71a6686e8810a53a3534e501163d2987d236686dddb551f09ff65` |
| 4 | `theorem` | [weightedSample_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample-norm--b5f7cae28f28ea3bb93edc50.md) | 27 | `result-track:b5f7cae28f28ea3bb93edc5098f68e7cf6f2f47f568dc20f36b27efcbb982c9a` |
| 5 | `theorem` | [weightedSample_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample-norm-integral--a5425d4e6935b304fa155602.md) | 33 | `result-track:a5425d4e6935b304fa1556024a96ccb2925d933eac18d8bbc12ef0899411a23e` |
| 6 | `theorem` | [weightedSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample-norm-integrals-summable--e8c87366e074ed96073dfd5e.md) | 55 | `result-track:e8c87366e074ed96073dfd5edbe930b7bf070a541c00a99c185c4165a29b7111` |
| 7 | `theorem` | [complexMuntz_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/complexmuntz-eq-tsum--072e9394b99aa0e887027190.md) | 60 | `result-track:072e9394b99aa0e8870271909b63bbb1d87b6872360580b654f6cd417ab6d12a` |
| 8 | `theorem` | [weightedSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample-tsum--8525795800ecd2dc458cd3b5.md) | 65 | `result-track:8525795800ecd2dc458cd3b5dc26db885fdc20405de6b65e0f80b5a9a0c4c6b1` |
| 9 | `theorem` | [weightedSample_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/weightedsample-integral--457457b9e80cacfc1f039ac7.md) | 69 | `result-track:457457b9e80cacfc1f039ac73dd0616c41732cce491522f59821f8c8e30b78a0` |
| 10 | `theorem` | [actual_muntz_mellin_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/declarations/actual-muntz-mellin-dirichlet--27bcbca4bce2cf97f2350178.md) | 77 | `result-track:27bcbca4bce2cf97f235017883b2d441c8dce02c4ddccd547fd37c71476550fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
