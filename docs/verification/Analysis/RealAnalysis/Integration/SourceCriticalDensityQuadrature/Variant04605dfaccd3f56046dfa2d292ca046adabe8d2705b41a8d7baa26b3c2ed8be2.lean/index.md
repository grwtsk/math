# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "901250803c7cb0e58d7a41e58129887b04f55517",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `901250803c7cb0e58d7a41e58129887b04f55517`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean.json)

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
| 1 | `def` | [criticalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity--92151f27107a3b9c7b81a75a.md) | 35 | `declaration-track:92151f27107a3b9c7b81a75ac8a0600f4f2ba01249925a7bed52b4913971d158` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensityprefixdiscrepancy--6bea956f925639c046c130a0.md) | 38 | `declaration-track:6bea956f925639c046c130a032d79e607e46daeda43e53003be69d17e1d3343d` |
| 3 | `theorem` | [decay_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/decay-continuous--345a54ead45a11ebbe01354b.md) | 41 | `result-track:345a54ead45a11ebbe01354b4acddb0bce1d71992a719c77bc63bb4e42576521` |
| 4 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/density-continuous--e7ebb72bcc7d45a54dd38429.md) | 45 | `result-track:e7ebb72bcc7d45a54dd3842974a61fbcc19129820372a2010609e1385dd65473` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/decay-hasderivat--6c8eae9c67893b141de8190d.md) | 48 | `result-track:6c8eae9c67893b141de8190d7a2f53112436dba9c0a92e3bf03b55209a5ec6bf` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity-mem-icc--b77c2c2374bf5e61751dec4f.md) | 59 | `result-track:b77c2c2374bf5e61751dec4f710aab22bc641fe7e9166b6c4bb97f1d96840a49` |
| 7 | `theorem` | [criticalDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity-integral--68547e2c201cedd0b92a6862.md) | 70 | `result-track:68547e2c201cedd0b92a68622d7bd2cb42ff16129003b4b7a642f12ed32ccb9d` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensityprefixdiscrepancy-eq--34d5787451992da307211efe.md) | 82 | `result-track:34d5787451992da307211efe8960062bbab114a9eca8d76e933d9f04460227f0` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity-integral-pos--2f5aac1994a08bab299d1382.md) | 89 | `result-track:2f5aac1994a08bab299d1382eb2743c923ef7ee90e2daa46a3d005e0f76f5864` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity-mass-lt-raw-length--79b72f052cf5ec3c42656eb0.md) | 102 | `result-track:79b72f052cf5ec3c42656eb055d696ae8e0594af012de9df159c288164b78e4c` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity-weighted-pairedtailtest--adc5cf0ca3855eb7609142f2.md) | 112 | `result-track:adc5cf0ca3855eb7609142f2232f54829ff5f1982c41b01efeb5db79ccc35fee` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticaldensity-quadrature-eq-full-drift--1ac05feb97630a2cacc56066.md) | 166 | `result-track:1ac05feb97630a2cacc56066f4304f9165a3859e7d62c111eac9fc5743f2965d` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2.lean/declarations/criticalremovedpairedwork-eq-density-quadrature--8baf97edbd0ef55d71466f28.md) | 187 | `result-track:8baf97edbd0ef55d71466f2893a84a958eeb549307af824c041390fe645ce48f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
