# Verification target: GRWTSK.Analysis.Fourier.AngularFrequencyParseval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `839c4f378e6f0d713b26006e0239b587ff0eebdb`.

Source path: `GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/AngularFrequencyParseval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts__SourceOccurrence639d86d7014d0b023ad24fe3.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds`](../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [test_pairing](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/test-pairing--818e79cf5c015c71db2f87ce.md) | 17 | `result-track:818e79cf5c015c71db2f87ceee74fc41ffe7f1ecf958a5c81f9909ca1c85f058` |
| 2 | `theorem` | [integralFourier_eq_l2_ae](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/integralfourier-eq-l2-ae--bc6c6646c52bd01809fb6d7d.md) | 35 | `result-track:bc6c6646c52bd01809fb6d7d32ca61e10de60e77aaf68923bdd607a352e0fe8d` |
| 3 | `theorem` | [integral_norm_sq_eq_l2](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/integral-norm-sq-eq-l2--18e46deb18e8b4294f01cc03.md) | 70 | `result-track:18e46deb18e8b4294f01cc03c8ecb838656faf663b93e63d7334fe7246caf49a` |
| 4 | `theorem` | [integralFourier_memLp](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/integralfourier-memlp--1d924d17cec985fed113ddf4.md) | 78 | `result-track:1d924d17cec985fed113ddf40a7ca2a801d5997589984e6d9d9ccbb314558e7a` |
| 5 | `theorem` | [integralFourier_parseval](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/integralfourier-parseval--eeca876f3685e9d7663f4075.md) | 83 | `result-track:eeca876f3685e9d7663f4075f5c07c6a6259de59cba7dbeba2383a9c67ad0950` |
| 6 | `theorem` | [rawFourier_eq_fourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/rawfourier-eq-fourier--242030efb82ce79e1af575a5.md) | 96 | `result-track:242030efb82ce79e1af575a51c118c726ea77baeb5b06d2dcbad06a57f837d82` |
| 7 | `theorem` | [rawFourier_square_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/rawfourier-square-integrable--0f3b647b494edb0e4e93a7d6.md) | 103 | `result-track:0f3b647b494edb0e4e93a7d6adbe5a45383a677ffb32cb7ad17da5faa007d7ca` |
| 8 | `theorem` | [rawFourier_parseval](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/rawfourier-parseval--388555a4ca5731aebd58bc9d.md) | 114 | `result-track:388555a4ca5731aebd58bc9d3084c63011ad68d383ac175fbfd4b169eb0b0a4b` |
| 9 | `theorem` | [windowedSource_memLp](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/windowedsource-memlp--3be72d23272bb0dbedf4ae73.md) | 128 | `result-track:3be72d23272bb0dbedf4ae73647bd91a7d39b90ee4342f8c9054e25075e85acb` |
| 10 | `theorem` | [windowedSource_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/windowedsource-integrable--83baa9c9816848dcbd909462.md) | 132 | `result-track:83baa9c9816848dcbd909462182636993c456a0d5d379c301712823bfd8d9ad1` |
| 11 | `theorem` | [windowedSource_energy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/windowedsource-energy--9138ae66179b749c09eebb67.md) | 135 | `result-track:9138ae66179b749c09eebb6744251678e2e0eec6e2986ecf56486fda9ba19835` |
| 12 | `def` | [blockWindow](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/blockwindow--9f18522d887f807a97d2b8c9.md) | 140 | `declaration-track:9f18522d887f807a97d2b8c992aced2d4784831b3e6f01343dab12b49aaee385` |
| 13 | `theorem` | [blockWindow_memLp](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/blockwindow-memlp--73bd2e283e799d6bc14b9eb9.md) | 143 | `result-track:73bd2e283e799d6bc14b9eb9f03a8a515df7aeab6382a99607cedb8a296ffd2b` |
| 14 | `theorem` | [blockWindow_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/blockwindow-integrable--4851a48cd0de713c58ef20dd.md) | 148 | `result-track:4851a48cd0de713c58ef20dd58d71154811b3821df406ececd170c2c6542aac7` |
| 15 | `theorem` | [blockWindow_rawFourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/blockwindow-rawfourier--9cb244850ddd1d33d96989b3.md) | 161 | `result-track:9cb244850ddd1d33d96989b3b5bbea3e42c36b12f895b829a16f418e1b415a93` |
| 16 | `theorem` | [blockDensity_eq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/blockdensity-eq--11b8ecdf4cbc397f9ab28a93.md) | 167 | `result-track:11b8ecdf4cbc397f9ab28a9379cb63c6618f68a9c4df55aa35c21fd248e9b2ad` |
| 17 | `theorem` | [actualFourierReduction](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/actualfourierreduction--6e948750d842257d1c638e55.md) | 175 | `result-track:6e948750d842257d1c638e55965fd74679a97c83a8e33e46958e63e225d1c0fe` |
| 18 | `theorem` | [actualFourierReductionObligation](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/actualfourierreductionobligation--738a4d07d5c4405844d5a53b.md) | 195 | `result-track:738a4d07d5c4405844d5a53bdc40430bbdf1b6abb0282ea4930388d17fd67024` |
| 19 | `theorem` | [actual_broad_narrow_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/actual-broad-narrow-bound--525f8bef6b3a9544a40440bc.md) | 206 | `result-track:525f8bef6b3a9544a40440bc1c0889d47695e97e5afdc070d9313e38ef7993cc` |
| 20 | `theorem` | [actual_narrow_return](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/declarations/actual-narrow-return--806c5eb558a7e9433f85176d.md) | 214 | `result-track:806c5eb558a7e9433f85176de186b1cba12b9ea63dc8a9db41f372b7f96ef6c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
