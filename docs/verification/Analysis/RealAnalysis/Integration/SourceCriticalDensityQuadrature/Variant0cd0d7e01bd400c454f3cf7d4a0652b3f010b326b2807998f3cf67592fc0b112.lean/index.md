# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalRemovedPrimeWork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity--c25a6ac052f02f1490bcfe77.md) | 27 | `declaration-track:c25a6ac052f02f1490bcfe778857de06ab6cd69e328170840dd5a9acf88cd766` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensityprefixdiscrepancy--ddb7927bf280c4966e4be6d4.md) | 30 | `declaration-track:ddb7927bf280c4966e4be6d4d2196a65d44416c21feb595accd16978191498a8` |
| 3 | `theorem` | [decay_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/decay-continuous--3635263c24b3f89ccf7bcc40.md) | 33 | `result-track:3635263c24b3f89ccf7bcc402db808613e2e915efbe56be465f5a2d468713717` |
| 4 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/density-continuous--281baed0f01ac47d4ed4658f.md) | 37 | `result-track:281baed0f01ac47d4ed4658f8fcf62232eae9c387c17fdb032cb3f84c4c6c495` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/decay-hasderivat--2b46a5e6a347b359401448dc.md) | 40 | `result-track:2b46a5e6a347b359401448dcda4371abd80bd01196d3dca2a6ae1c6cf9e85957` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity-mem-icc--31edc0901e3536e5e6e3c9c0.md) | 51 | `result-track:31edc0901e3536e5e6e3c9c02cdf79d71192b9679bd970dbdaa98a19efc2a8b4` |
| 7 | `theorem` | [criticalDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity-integral--d30344754ba127b4084ecbba.md) | 62 | `result-track:d30344754ba127b4084ecbbaa1a5ce025f5c82f27a3cf2fb350b7d38bfcaaaba` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensityprefixdiscrepancy-eq--ee4e88fd33be99265b69cbb9.md) | 74 | `result-track:ee4e88fd33be99265b69cbb92c0102b72a29a5a04269d1d51b5d4633c3b7f0b5` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity-integral-pos--89fa54b777d085cfec732906.md) | 81 | `result-track:89fa54b777d085cfec7329067a62ef435c19ce022949fdc34714fc8ea9d03398` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity-mass-lt-raw-length--eb09ec1189de4104e072337b.md) | 94 | `result-track:eb09ec1189de4104e072337bc4f6cd6e1026d4e5744d67f250cce70886878f04` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity-weighted-pairedtailtest--3f36b3edf7bfd78303f4e19e.md) | 104 | `result-track:3f36b3edf7bfd78303f4e19e1d1f53e2add4ecb2d3946dff767f61ea615a2d55` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticaldensity-quadrature-eq-full-drift--7a2a892b99607211e0c1ef33.md) | 160 | `result-track:7a2a892b99607211e0c1ef335fd3d036aff4a0a3b8fd433d82d39bed18d6d1ee` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/declarations/criticalremovedpairedwork-eq-density-quadrature--21f992c1cc1d5010fcf3cbea.md) | 181 | `result-track:21f992c1cc1d5010fcf3cbea089cffbab3b8805a5b7812c5954de668f029507a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
