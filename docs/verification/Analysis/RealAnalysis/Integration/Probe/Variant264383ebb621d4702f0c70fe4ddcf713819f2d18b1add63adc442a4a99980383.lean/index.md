# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Probe.Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec572f3c47017226ac8223f2c6e19c6da1bb1d65",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec572f3c47017226ac8223f2c6e19c6da1bb1d65`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellcorrection--cdad956e2c71b682a5280ab4.md) | 15 | `declaration-track:cdad956e2c71b682a5280ab435173650ad50e5f2f47d08eeda3372a03c5cdd07` |
| 2 | `def` | [cellMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellmajorant--a446cca2390ecebba6886643.md) | 21 | `declaration-track:a446cca2390ecebba6886643c60848e68106673f025a48dde1146b1098da963f` |
| 3 | `def` | [majorantPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/majorantprimitive--8b710f1dfcd271b0ffea3885.md) | 24 | `declaration-track:8b710f1dfcd271b0ffea38854c0331aae6f4f5d4c862d2c341225701d1cf08ff` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/majorantprimitive-hasderivat--4c549c9da77eb73e5a70503a.md) | 26 | `result-track:4c549c9da77eb73e5a70503aefe16f402c7a488e71a44f052d7906525e5c139a` |
| 5 | `theorem` | [cellMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellmajorant-continuouson--e2d8abbc45857f05186123e8.md) | 37 | `result-track:e2d8abbc45857f05186123e838c741b5fe4ea96f847c58f1be2abd77b67b3685` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellmajorant-intervalintegrable--1422c984577655d7494395cc.md) | 43 | `result-track:1422c984577655d7494395cc599023e283e2af416852949ee6d896c549c9e656` |
| 7 | `theorem` | [cellMajorant_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellmajorant-integral-eq--5f87b732b3a1a2fe2f0f7818.md) | 48 | `result-track:5f87b732b3a1a2fe2f0f7818e6774816e30215987b064010485ef91c71d1f406` |
| 8 | `theorem` | [cellMajorant_integral_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellmajorant-integral-le-four--e7374533994dca897701fe06.md) | 58 | `result-track:e7374533994dca897701fe067b076268e6a265672f8c540bacc119b94fa01046` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/sourcecorrelation-log-increment-bound--b797db218ed2edbd67fe11d2.md) | 65 | `result-track:b797db218ed2edbd67fe11d297a34c68231eefc3baba7a79c7a7f23bcd3de96c` |
| 10 | `theorem` | [log_cell_increment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/log-cell-increment-le--b45921f3dd70dd6055255e0e.md) | 90 | `result-track:b45921f3dd70dd6055255e0ede7036375c4a20feddc876716eca1a251a41ca58` |
| 11 | `theorem` | [cell_integrand_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cell-integrand-abs-le--f5f0932323ddd11a1d7434c8.md) | 103 | `result-track:f5f0932323ddd11a1d7434c8cfc551d27936de3dbb653a46cf56176529b2d36c` |
| 12 | `theorem` | [div_sqrt_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/div-sqrt-continuouson--700bc82e45eec2a4b4c15956.md) | 124 | `result-track:700bc82e45eec2a4b4c15956106c74bdfd6c75c48030e02c9a60e720c6ba6724` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellintegrand-intervalintegrable--de9a88fb620998dc5e903b6a.md) | 131 | `result-track:de9a88fb620998dc5e903b6a93a06954fdaeda8d0ea6eee14c1065719f1e75a0` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/cellcorrection-abs-le-majorant--f69333a4ed8896a747df9513.md) | 145 | `result-track:f69333a4ed8896a747df9513622fc6b8aceeb0b044fc9727d7b3d8b995549261` |
| 15 | `theorem` | [sum_cellMajorant_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/sum-cellmajorant-integrals--473c0dd08e0f16332aafaa08.md) | 164 | `result-track:473c0dd08e0f16332aafaa08e23725b436a9e9187b2d0cfee9111bc995af75d5` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/sum-cellcorrection-abs-le--cbff115d903730a0a75f1849.md) | 177 | `result-track:cbff115d903730a0a75f184944422d609e966753fc1b6cd540e413c376feb27f` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/declarations/sum-sourcecorrelation-cell-transport-le--b723549822a83256b8dda8e2.md) | 196 | `result-track:b723549822a83256b8dda8e2d9597ddc983ddaf3366ed4a80080ad25f2fb5154` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
