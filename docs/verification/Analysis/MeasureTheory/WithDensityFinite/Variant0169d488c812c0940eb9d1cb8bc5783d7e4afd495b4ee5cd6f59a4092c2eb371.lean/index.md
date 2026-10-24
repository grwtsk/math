# Verification target: GRWTSK.Analysis.MeasureTheory.WithDensityFinite.Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70a96109afc08cc370f105e6569158f8cd511ea4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70a96109afc08cc370f105e6569158f8cd511ea4`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Exhaustion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.toFiniteAux](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/measure-tofiniteaux--b67cf0e2188885015994d5dd.md) | 57 | `declaration-track:b67cf0e2188885015994d5dd68a7860ff1b41ef2a6bb1e38c19ddeaafa1452ca` |
| 2 | `def` | [Measure.toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/measure-tofinite--9ae5929a806933b41a5989e1.md) | 64 | `declaration-track:9ae5929a806933b41a5989e13799f4b2df14a5170105b4f562681b89e4c1923b` |
| 3 | `lemma` | [ae_toFiniteAux](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/ae-tofiniteaux--85d516a333ed77ff9d0cb42a.md) | 68 | `result-track:85d516a333ed77ff9d0cb42adf91045268692aa49188b1e62aeb8346063b012a` |
| 4 | `theorem` | [isFiniteMeasure_toFiniteAux](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/isfinitemeasure-tofiniteaux--1dd3ec9e4a20e1272df99b48.md) | 76 | `result-track:1dd3ec9e4a20e1272df99b48e7397a6f6c7160a74fbd701cfea3d22426b5b664` |
| 5 | `lemma` | [ae_toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/ae-tofinite--095aaf28f73ffe520500b193.md) | 83 | `result-track:095aaf28f73ffe520500b19301c2c8d4f7bdd8e24f930315a36512cc69340b50` |
| 6 | `lemma` | [toFinite_apply_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/tofinite-apply-eq-zero-iff--a1b1d155c1970f7339ee9eaf.md) | 87 | `result-track:a1b1d155c1970f7339ee9eaf4f11db9e8574fef0cedd0d54c7dd18ecd1a8e070` |
| 7 | `lemma` | [toFinite_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/tofinite-eq-zero-iff--d4d94183c6e58283b51c0c27.md) | 91 | `result-track:d4d94183c6e58283b51c0c27cfff1c35f015d2b36044da8ffc4e1ba110288ee1` |
| 8 | `lemma` | [toFinite_zero](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/tofinite-zero--ff5fd58d9ddb6912d75e1ca0.md) | 95 | `result-track:ff5fd58d9ddb6912d75e1ca0fbed0df19f2a6034aadd8e625edbde4e8df48423` |
| 9 | `lemma` | [toFinite_eq_self](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/tofinite-eq-self--25ed2172df1270b6babc416e.md) | 97 | `result-track:25ed2172df1270b6babc416e5f4a176a01f2370b730f14cc2910b0e1ab75896b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/instance--e3313648338d275bb5fd42e6.md) | 101 | `declaration-track:e3313648338d275bb5fd42e672e2df1b940b8158e7aa4119b16bf4ee97bda873` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/instance--132321690c2a72d83ab2b45f.md) | 105 | `declaration-track:132321690c2a72d83ab2b45f1b886bfcb0f37d186099f59786a02cdd2d2e18e9` |
| 12 | `lemma` | [absolutelyContinuous_toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/absolutelycontinuous-tofinite--006751493b07dc6207a57912.md) | 109 | `result-track:006751493b07dc6207a57912ebc27b532e0ccfd438fac9c4f5c28f2db20accc4` |
| 13 | `lemma` | [sfiniteSeq_absolutelyContinuous_toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/sfiniteseq-absolutelycontinuous-tofinite--2d61fa5c3834a58a18e93e95.md) | 112 | `result-track:2d61fa5c3834a58a18e93e950a259cf506d6a5e69a9db32793c014923ffe7ae5` |
| 14 | `lemma` | [toFinite_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/tofinite-absolutelycontinuous--43eddf5ee8fa2497559bf737.md) | 116 | `result-track:43eddf5ee8fa2497559bf737414a594a7984442184cc66d260e4cdad1f1b6418` |
| 15 | `lemma` | [restrict_compl_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variant0169d488c812c0940eb9d1cb8bc5783d7e4afd495b4ee5cd6f59a4092c2eb371.lean/declarations/restrict-compl-sigmafiniteset--429e7ed74e1313ba59ed29b4.md) | 119 | `result-track:429e7ed74e1313ba59ed29b4a4b83c37e55f613c094921ce05cc9d7a251e36f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
