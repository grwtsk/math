# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GammaTransport.Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee2a8328f9c4c5854500b51bf6a9a2b26f29a137",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee2a8328f9c4c5854500b51bf6a9a2b26f29a137`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.GammaDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Spectral.Capabilities` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMeanPoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanpoint--c6dc296f5b4e45b613c606fc.md) | 32 | `declaration-track:c6dc296f5b4e45b613c606fcf2886eda6684e42098cf6c266aaa4150e24d2063` |
| 2 | `theorem` | [dirichletMeanPoint_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanpoint-apply--e860854ebb0586a0bafdc14c.md) | 38 | `result-track:e860854ebb0586a0bafdc14cc8e0206d974d665004a87f304040c21c93ce7a58` |
| 3 | `theorem` | [dirichletMeanPoint_reindex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanpoint-reindex--5ca5ec622a6e55df98dd17f2.md) | 43 | `result-track:5ca5ec622a6e55df98dd17f2d8767b0aa4a69751366832784fbe3e0e7c7a321c` |
| 4 | `def` | [dirichletMeanMixture](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanmixture--753693f877fcb25720b43329.md) | 55 | `declaration-track:753693f877fcb25720b433294765dbc090652421cddea0a864c5f8fa9f42d547` |
| 5 | `theorem` | [dirichletMeanMixture_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanmixture-normalized--935f87a4f976d0086ccddeea.md) | 60 | `result-track:935f87a4f976d0086ccddeeaf92701427c80cb4b523d9265a99b985bdf2a0a30` |
| 6 | `theorem` | [dirichletMeanMixture_spectralExpectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanmixture-spectralexpectation--1ea4aea28addc985fc59cb08.md) | 67 | `result-track:1ea4aea28addc985fc59cb08460c6d5e1d4c7dbbd6d102cf4600912b0d600b4a` |
| 7 | `theorem` | [dirichletMeanMixture_turnCovariant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/dirichletmeanmixture-turncovariant--ee635b0bf7ecd93d483cd68f.md) | 79 | `result-track:ee635b0bf7ecd93d483cd68ffa6ea06db3bfa2cb556c7429babc2d05f0e3e734` |
| 8 | `def` | [meanMixture](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/meanmixture--a946077caa6f81f81cb512db.md) | 96 | `declaration-track:a946077caa6f81f81cb512db8c9986cda2c0d603151bafc5a3f9408f6a289368` |
| 9 | `theorem` | [meanMixture_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/meanmixture-normalized--a9524dfa2e13d8e9f5d19944.md) | 102 | `result-track:a9524dfa2e13d8e9f5d19944e0ca32edae936b75c75f21953bad2d8a58de4328` |
| 10 | `def` | [randomSpectralExpectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/randomspectralexpectation--ba68db34540144024fd4ca63.md) | 109 | `declaration-track:ba68db34540144024fd4ca63a0936ae2f2eb21622e89665eda17aa59507b58eb` |
| 11 | `theorem` | [randomSpectralExpectation_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/randomspectralexpectation-eq-sum--18d73b60dd41c4e286c38b5a.md) | 116 | `result-track:18d73b60dd41c4e286c38b5a0adb3537bc821675d50d2b5957d163d3ff3c98ab` |
| 12 | `theorem` | [integral_randomSpectralExpectation_eq_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/integral-randomspectralexpectation-eq-mean--177f5c2e725a7a7b0375fbd4.md) | 128 | `result-track:177f5c2e725a7a7b0375fbd49fa761d8f18d57f34fefc26b94890f59d4ba8cfe` |
| 13 | `theorem` | [integral_equalScaleMeanSpectralExpectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/integral-equalscalemeanspectralexpectation--679d9ed6c3f5d04af43c2ef5.md) | 166 | `result-track:679d9ed6c3f5d04af43c2ef5d71b0c133fcbac9cfde815646805b12bf06bd7fe` |
| 14 | `theorem` | [spectral_changeOfMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/declarations/spectral-changeofmeasure--80c5f0b98bc906e3d8af1312.md) | 188 | `result-track:80c5f0b98bc906e3d8af1312e121c9905c07f0870ff9734ed50d9cf2859ef17a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
