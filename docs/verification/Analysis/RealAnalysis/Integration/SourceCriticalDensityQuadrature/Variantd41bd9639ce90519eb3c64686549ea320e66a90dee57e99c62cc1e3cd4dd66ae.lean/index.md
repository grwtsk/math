# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b719fc3e68888fc7f8e42d39745e1484e779c93",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b719fc3e68888fc7f8e42d39745e1484e779c93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalRemovedPrimeWork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity--c515ef856ebc7d727abf3442.md) | 35 | `declaration-track:c515ef856ebc7d727abf34424619c8e196287298a66d677d45f8112e29504f01` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensityprefixdiscrepancy--d32f122777ad98edde0f979d.md) | 38 | `declaration-track:d32f122777ad98edde0f979d4f52fe600d29e19545410701ded1554eb9aa9a9e` |
| 3 | `theorem` | [decay_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/decay-continuous--63269737b9ef586c479bc6f2.md) | 41 | `result-track:63269737b9ef586c479bc6f2f16395768c48e52d2d399ced179ef66b80f989d0` |
| 4 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/density-continuous--b1395c063ce42bde91b1d5a9.md) | 45 | `result-track:b1395c063ce42bde91b1d5a905fc84e7e9fe73007abd767d39eda3496dd1f96f` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/decay-hasderivat--67948341822df87550c4f0e2.md) | 48 | `result-track:67948341822df87550c4f0e2565e963778e26a3a3b5a9a769e9b0dc35f172d45` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity-mem-icc--df4cda96cbcfa5206f212f84.md) | 59 | `result-track:df4cda96cbcfa5206f212f84169b6f6e6893be3363ef37eb4a7fc0ca50ad31c3` |
| 7 | `theorem` | [criticalDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity-integral--c085aa617f7df6c6c84ad0eb.md) | 70 | `result-track:c085aa617f7df6c6c84ad0ebd624dd66775a7d57f58a641d20e331ed6044fe01` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensityprefixdiscrepancy-eq--65181117caa22269f8820bab.md) | 82 | `result-track:65181117caa22269f8820bab7d3269f2b8e97ab771de7021d396a100b48bf767` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity-integral-pos--7d35e0cc4be1b75d7fc0d8f4.md) | 89 | `result-track:7d35e0cc4be1b75d7fc0d8f4aa35ced08697f43123dab1c9295824f22bf47c69` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity-mass-lt-raw-length--5afb868bbf66e95efc5412ae.md) | 102 | `result-track:5afb868bbf66e95efc5412ae675f025c9049af84e1e6e848f982ba1839b83e66` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity-weighted-pairedtailtest--fa7a18a121e523407b30cd51.md) | 112 | `result-track:fa7a18a121e523407b30cd51902994fcc24ea96bc31ad1cb37599b34f02e2782` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticaldensity-quadrature-eq-full-drift--08e68e10eb4f5b6db6644a9c.md) | 168 | `result-track:08e68e10eb4f5b6db6644a9c6be484c796dfc502993dd6100c39713239e2ca51` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantd41bd9639ce90519eb3c64686549ea320e66a90dee57e99c62cc1e3cd4dd66ae.lean/declarations/criticalremovedpairedwork-eq-density-quadrature--83ae1af3322955605292c26c.md) | 189 | `result-track:83ae1af3322955605292c26ccfab750f9458b587bf357e663ba8795961d0b5a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
