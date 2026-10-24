# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GammaTransport.Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae6c0426d29c6a76894196ea02aa6d092498230a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae6c0426d29c6a76894196ea02aa6d092498230a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.GammaDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Spectral.Capabilities` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMeanPoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanpoint--b44eaaebc9f3eb6b93a149ec.md) | 40 | `declaration-track:b44eaaebc9f3eb6b93a149ec2fbcdbf1918e7125a6575dae28f5e0e0dbb4a297` |
| 2 | `theorem` | [dirichletMeanPoint_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanpoint-apply--b4577bd93f002e1e8616b14d.md) | 46 | `result-track:b4577bd93f002e1e8616b14daada8466d7cd2ac8471c8f594203cada98d78fb8` |
| 3 | `theorem` | [dirichletMeanPoint_reindex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanpoint-reindex--634bce4f548a5b3bf7dbc084.md) | 51 | `result-track:634bce4f548a5b3bf7dbc0842e08bb582957acddda7d47166c12983e2c5e32bc` |
| 4 | `def` | [dirichletMeanMixture](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanmixture--bd926749fa4f4ed441965209.md) | 63 | `declaration-track:bd926749fa4f4ed441965209eb311529eed544ce30e811ab337012b2d580fce9` |
| 5 | `theorem` | [dirichletMeanMixture_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanmixture-normalized--824e1efa342799c6c0352ae5.md) | 68 | `result-track:824e1efa342799c6c0352ae5898f4dbb901d6ebf905e8e58584377e454332059` |
| 6 | `theorem` | [dirichletMeanMixture_spectralExpectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanmixture-spectralexpectation--b6e1f677a9116235b95d01a6.md) | 75 | `result-track:b6e1f677a9116235b95d01a6f02e3261fa3b5014604ba73db5733d30d41acd16` |
| 7 | `theorem` | [dirichletMeanMixture_turnCovariant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/dirichletmeanmixture-turncovariant--2a98a3e5f06c375d3190a13a.md) | 87 | `result-track:2a98a3e5f06c375d3190a13a6f0a2261399a7c907fbcee6e4f279084db85a321` |
| 8 | `def` | [meanMixture](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/meanmixture--5cf5dac3d96237d422270176.md) | 104 | `declaration-track:5cf5dac3d96237d4222701761a07cb14fcbd62c3d3ddcb1c4a230888a617d41b` |
| 9 | `theorem` | [meanMixture_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/meanmixture-normalized--9c195b3cc29e696841a0e377.md) | 110 | `result-track:9c195b3cc29e696841a0e377be1211f8d60922688ad0748087ac2012997b4114` |
| 10 | `def` | [randomSpectralExpectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/randomspectralexpectation--0a36cffae039949ba8f43ef5.md) | 117 | `declaration-track:0a36cffae039949ba8f43ef52d726d8cc94c0bfc61a9441ae4559a1a43bf7a44` |
| 11 | `theorem` | [randomSpectralExpectation_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/randomspectralexpectation-eq-sum--746c6fb4197387f731ca6e1b.md) | 124 | `result-track:746c6fb4197387f731ca6e1b6b7af690f4d7b562763c31ee4220c0a67f35c96e` |
| 12 | `theorem` | [integral_randomSpectralExpectation_eq_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/integral-randomspectralexpectation-eq-mean--de590cc7f8d428376812294d.md) | 136 | `result-track:de590cc7f8d428376812294d540693ba251d9ab11eed1cc563ee1cfa44b6db82` |
| 13 | `theorem` | [integral_equalScaleMeanSpectralExpectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/integral-equalscalemeanspectralexpectation--3965abd7f6a6f8025539482a.md) | 174 | `result-track:3965abd7f6a6f8025539482a05d83aad6db61b3aaa9920bccbd6d6ea7345a618` |
| 14 | `theorem` | [spectral_changeOfMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/declarations/spectral-changeofmeasure--37692de571a0e1e1fd6ca0da.md) | 196 | `result-track:37692de571a0e1e1fd6ca0dad45e9a9f70d4cc721b92d3597646aaa83cc8e2d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
