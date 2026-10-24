# Verification target: GRWTSK.Analysis.Fourier.IntegerSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3af0946dd6f2f704059027b4587ab1b961cb66",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/IntegerSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3af0946dd6f2f704059027b4587ab1b961cb66`.

Source path: `GRWTSK/Analysis/Fourier/IntegerSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/IntegerSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eta](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/eta--5362e4c6ed974dc3d0ad70ed.md) | 24 | `declaration-track:5362e4c6ed974dc3d0ad70ed4a36f35d986925e53104d771a4107a8c19329f8d` |
| 2 | `theorem` | [eta_abs_lt_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/eta-abs-lt-one--8f36c768e66c60bb6b359156.md) | 26 | `result-track:8f36c768e66c60bb6b3591560095a8ac76137eb55fd42f8e17d83b280eb984fe` |
| 3 | `theorem` | [eta_injective](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/eta-injective--87f916077e19d3c1df86ce8e.md) | 31 | `result-track:87f916077e19d3c1df86ce8ea3e7ace394917ea095055a5167920d7a9b18e009` |
| 4 | `def` | [carrier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/carrier--3a3b2f29097568f8f0f9aa19.md) | 49 | `declaration-track:3a3b2f29097568f8f0f9aa1959db8f40ab0f3c305e4b610094d3fb2680383687` |
| 5 | `def` | [coefficientWaveform](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform--39385f7f5ce7aa49ad72481a.md) | 50 | `declaration-track:39385f7f5ce7aa49ad72481a441cd597b99529e8cae2f6c58b9f706ebd9f8509` |
| 6 | `theorem` | [carrier_norm_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/carrier-norm-bound--6b55b5e285549b5ece1c705c.md) | 53 | `result-track:6b55b5e285549b5ece1c705c73793fcf9ac20250b75b1ebf90f62172d1aaff73` |
| 7 | `theorem` | [carrier_summable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/carrier-summable--08e0503fd1ab8b6b30d7b6d9.md) | 59 | `result-track:08e0503fd1ab8b6b30d7b6d99213fa1e019999008d8175ea198809eff1773dbc` |
| 8 | `theorem` | [coefficientWaveform_summable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform-summable--86eb5ab6175ea301c3278a8c.md) | 64 | `result-track:86eb5ab6175ea301c3278a8c6a102e1519432b4301b05d0ce7909beecaef464b` |
| 9 | `theorem` | [coefficientWaveform_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform-continuous--e67520c3cf10a53f1c1499a6.md) | 71 | `result-track:e67520c3cf10a53f1c1499a679ab8c24cad5274a4383ecdca785fd1d3575bf0a` |
| 10 | `theorem` | [coefficientWaveform_periodic](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform-periodic--fa26278780f88b071ed5b106.md) | 80 | `result-track:fa26278780f88b071ed5b10694555b3a997f14598cdd7c86adea8aa92b63a1ec` |
| 11 | `theorem` | [coefficientWaveform_hasDerivAt](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform-hasderivat--57b6eb11c1050e2f9f491baf.md) | 92 | `result-track:57b6eb11c1050e2f9f491bafc4a6ae1d7b259f7cb3a9959fac3e9b8c6f13fb28` |
| 12 | `theorem` | [carrier_derivative_summable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/carrier-derivative-summable--c0defd9a721a65aaf63512db.md) | 108 | `result-track:c0defd9a721a65aaf63512db4d55aefc745c965a5fbd64538d83c50ec9e1a271` |
| 13 | `theorem` | [coefficientWaveform_contDiff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform-contdiff--bf33c28e98c5ea0706c4c62b.md) | 121 | `result-track:bf33c28e98c5ea0706c4c62b8fa273ddf865bd84278beaa19f80349431439e7b` |
| 14 | `theorem` | [coefficientWaveform_lipschitz](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/coefficientwaveform-lipschitz--140d5ab0a046250ae0f93fa3.md) | 140 | `result-track:140d5ab0a046250ae0f93fa3ea1c866b14d664e898146195f6e50aa3275d2798` |
| 15 | `theorem` | [encoded_sequence_contDiff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/encoded-sequence-contdiff--c3d81d6be92487c6910d006e.md) | 159 | `result-track:c3d81d6be92487c6910d006e7579adfd8cec2559ccb276d605baa4243dd38fe7` |
| 16 | `def` | [frequencyAmplitude](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/frequencyamplitude--659da1f3871eba5eac159f75.md) | 164 | `declaration-track:659da1f3871eba5eac159f75db6e93762c8c22e88efec102a33158023e1c3aa8` |
| 17 | `theorem` | [frequency_derivative_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/declarations/frequency-derivative-bound--5cebcc53e25aa7dcea92c1a9.md) | 167 | `result-track:5cebcc53e25aa7dcea92c1a9ce06ee7f018fcc9f9504d478debe5a9f5f3922ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
