# Verification target: GRWTSK.Analysis.AdmissionSource.Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e3800002908db91490cf3cd979c952ba7156501",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/index.md) · [Full source](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e3800002908db91490cf3cd979c952ba7156501`.

Source path: `GRWTSK/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.Analysis.DigammaSeries` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.Analysis.ReciprocalKernel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuarterSeriesObligation](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/quarterseriesobligation--5dd769edeb402f0173597188.md) | 25 | `declaration-track:5dd769edeb402f0173597188cf1ac9fe5c32df896dde52d20dc0f5a791a14763` |
| 2 | `theorem` | [actual_multiplier_difference](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/actual-multiplier-difference--2154a4111e6953fee71fd4af.md) | 30 | `result-track:2154a4111e6953fee71fd4aff14a0cb33e650f09f06c3ad9c5fcb2aaa11d2ad4` |
| 3 | `theorem` | [quarter_series_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/quarter-series-of-derivative-limit--ac2fb78a9533f47759c68ce3.md) | 40 | `result-track:ac2fb78a9533f47759c68ce3a6cf99a934b9e475ed7d94846832fd35b136ed42` |
| 4 | `theorem` | [multiplier_estimate_of_series](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/multiplier-estimate-of-series--eca4a768dec9610edc567f1c.md) | 49 | `result-track:eca4a768dec9610edc567f1cd5b463fdf3d0a25dd5b54352f8e4f589a3b08a97` |
| 5 | `theorem` | [archimedean_integrability_of_series](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/archimedean-integrability-of-series--9948c9b368387ad3e6e73229.md) | 57 | `result-track:9948c9b368387ad3e6e7322992c849571a7a1d580457dd3892ab82cbe7be4bca` |
| 6 | `theorem` | [admission_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/admission-of-derivative-limit--ad7bbc13a9662405bf5015ed.md) | 64 | `result-track:ad7bbc13a9662405bf5015ed98a2a010ee34e1298bd48355da5da2289c724775` |
| 7 | `theorem` | [quarter_series](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/quarter-series--7f0229944caebf2490a2b04a.md) | 70 | `result-track:7f0229944caebf2490a2b04ab7c874619ebfec68cb3b9da0ae632a3c93651f6e` |
| 8 | `theorem` | [multiplier_estimate](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/multiplier-estimate--1d1921e445fa7db75025a21c.md) | 74 | `result-track:1d1921e445fa7db75025a21c17a4ef83844960f19e7d30768a55535eb0bc1005` |
| 9 | `theorem` | [archimedean_integrability](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/archimedean-integrability--f39e82616e79a296d6a801f9.md) | 78 | `result-track:f39e82616e79a296d6a801f98b3b5c68b54ad351ce6f2daa31b5f6eece2d391a` |
| 10 | `theorem` | [normalization_admissibility](../../../../mathematics/Analysis/AdmissionSource/Variant831463fd914f668e8d60e5738c82826641f09c0539ed0169a968705fa0d8bac9.lean/declarations/normalization-admissibility--67ced51cd7c290f0c432c170.md) | 83 | `result-track:67ced51cd7c290f0c432c17041eccf9eb3447394696969b811ea9e4220d8693d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
