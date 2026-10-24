# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "357ed5106d860e87572dc22ccf3b1c9d24f4dae1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `357ed5106d860e87572dc22ccf3b1c9d24f4dae1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean.json)

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
| 1 | `def` | [criticalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity--f2291adf033e2c477d126e5a.md) | 26 | `declaration-track:f2291adf033e2c477d126e5afb4e7ceeb9e05d90fb374eb2e7d5c8d11758cda5` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensityprefixdiscrepancy--ce872e5b1e3c7611e826ae7f.md) | 29 | `declaration-track:ce872e5b1e3c7611e826ae7fd99dfc63c0186dc914fd21b7b2d36ee4ad5e5a90` |
| 3 | `theorem` | [decay_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/decay-continuous--33a2c3b1aa76fe97d4d2e291.md) | 32 | `result-track:33a2c3b1aa76fe97d4d2e2917eb01c0bdc3def6cbdf89d222c525e7e588a6ea7` |
| 4 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/density-continuous--607c4f09c03bdde4bd04d632.md) | 36 | `result-track:607c4f09c03bdde4bd04d632408977b6735aa88dbee9bf2fc78d49292d05acdc` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/decay-hasderivat--fa37166fc1db3ca8a5bc51dc.md) | 39 | `result-track:fa37166fc1db3ca8a5bc51dcd963086f97e65495f2a73c9808223c6e04f90136` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity-mem-icc--ea976a5cf480ac6870051ecb.md) | 50 | `result-track:ea976a5cf480ac6870051ecb26ee4de97601580f30b2d82472ffb6dd9dae1222` |
| 7 | `theorem` | [criticalDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity-integral--fe1cbbe4902cf1c279e34118.md) | 61 | `result-track:fe1cbbe4902cf1c279e34118245bb66725402c11a6287c770c71588121590876` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensityprefixdiscrepancy-eq--b7f644fd6bd3ff7c54f5df91.md) | 72 | `result-track:b7f644fd6bd3ff7c54f5df910b3e0928ed4ac352f4637c6ba0023ae483640ed6` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity-integral-pos--b1e1c046c06c01d1c32985e3.md) | 79 | `result-track:b1e1c046c06c01d1c32985e30bc5cbdfa1930c24ddebccdae177b70da1bced89` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity-mass-lt-raw-length--cd48f53444ff0f4bed93e421.md) | 92 | `result-track:cd48f53444ff0f4bed93e4215334d30b22671bf9c6bcd0d63fe0d1be02a0d42e` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity-weighted-pairedtailtest--c2c321ad2af0203cff58f152.md) | 102 | `result-track:c2c321ad2af0203cff58f152f6c7fc4cb6631cd24f87c8b06b1865efc69c0beb` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticaldensity-quadrature-eq-full-drift--b5939cbb4171e7d3349f8e52.md) | 152 | `result-track:b5939cbb4171e7d3349f8e52a163028570a93b5528e1fa20a13cecd1e57b663f` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/declarations/criticalremovedpairedwork-eq-density-quadrature--4e4c5d010d006b28950d400d.md) | 170 | `result-track:4e4c5d010d006b28950d400dd86b8fbed94c4513c5e8d62299b5ea8834b0155c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
