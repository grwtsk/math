# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpGlobalAudit.Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54c760088e51129e72bcef74a677a42039fa257b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54c760088e51129e72bcef74a677a42039fa257b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment--70c7f97f68ff0853602a68d7.md) | 22 | `declaration-track:70c7f97f68ff0853602a68d7a1de0ecf3d893df14e0537122c148fd76e1c1cf7` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-intervalintegrable--f321b8e66e6e5db1932a92b4.md) | 27 | `result-track:f321b8e66e6e5db1932a92b4997d032be7d1e9c8bfb5065971dc60eb5d8c6d0f` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-zero-eq-source--b2a2dac0b091cb9f3d6c8018.md) | 34 | `result-track:b2a2dac0b091cb9f3d6c801814621ad2a70a43242a1daf8ac21515c1825ad638` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-zero-zero--281dad8443e651025dfc1969.md) | 47 | `result-track:281dad8443e651025dfc196905538c332fb75edfc431a2b686d6f71fed4b468d` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpflux-hasderivat--f33ad9d0fb5e8e96c4eeedeb.md) | 57 | `result-track:f33ad9d0fb5e8e96c4eeedebda89786f903d05707f717e5f291659a7a2bd4973` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-equation--943cff7d9a307048b3a60479.md) | 68 | `result-track:943cff7d9a307048b3a604790b6a734239f165d89a48e14f8ce2457cd369cf21` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/re-eq-zero-of-weighted-energy--3b15b134f63341c0c2ade776.md) | 103 | `result-track:3b15b134f63341c0c2ade7769c1e0305939db569fc82449f3b85e1425d08978a` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-hasderivat--2fd03469845f38d0045c30e4.md) | 136 | `result-track:2fd03469845f38d0045c30e45da408a4da0b594dbd2b2e93cd130050a21195ac` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-continuous--f218cc3a331c3f44f35581a1.md) | 172 | `result-track:f218cc3a331c3f44f35581a12425536413fd4e6d624536cbdcc2104b5e2c54a8` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialprofile--3cfc8bbd9503f51a9ce740e9.md) | 177 | `declaration-track:3cfc8bbd9503f51a9ce740e97bbf8faed81625ecd79f7c34a136888242c117df` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialflux--64ef785d1fff20a2d6d529f6.md) | 180 | `declaration-track:64ef785d1fff20a2d6d529f69ae917d90bd08b97f1d705ac566ed59777ff26fe` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialprofile-hasderivat--d0d967095afb9df30d8615f8.md) | 184 | `result-track:d0d967095afb9df30d8615f8c77dbcc2d0760be91e9ef1eab239f19bd358043c` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialflux-hasderivat--15306d438a7696606ea5b909.md) | 193 | `result-track:15306d438a7696606ea5b9092bdd3135165d730046ff1e16bfcbe5c040653255` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialprofile-continuous--149e4c3400883375b25f0dff.md) | 203 | `result-track:149e4c3400883375b25f0dff7fb28ff64113907b9261953a43831126e60e803e` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialflux-continuous--31b537eb896f95ca3af5a743.md) | 207 | `result-track:31b537eb896f95ca3af5a74359c9533349722725ef50adffc41df434da00230d` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialmass--48e6234ccec12c8b9ac51475.md) | 212 | `declaration-track:48e6234ccec12c8b9ac51475d499b7db3afdf8294e67cb6111d9e68223a563d2` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialenergy--d942d263750bc052924f9e39.md) | 215 | `declaration-track:d942d263750bc052924f9e394bb5f1612061acf4cdbf7ea3c71a13b31218b1de` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radial-integrands-intervalintegrable--b432679c6c094d943a87a104.md) | 219 | `result-track:b432679c6c094d943a87a104ff6fcfb7ad31b89c1b9526942e562ed3ce702586` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialenergy-nonneg--00b80114969692e29adcb1ca.md) | 231 | `result-track:00b80114969692e29adcb1ca08563758f2fd93ffbac5b80b1b9d9805cf97223b` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialprofile-eventually-ne-zero--5bcd390ed0e8b891faddba4d.md) | 237 | `result-track:5bcd390ed0e8b891faddba4dc851894511727ccd8bde2552a15851ea59c3bd07` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radialmass-pos--c4ef3b50649b0ce116bfe4a9.md) | 244 | `result-track:c4ef3b50649b0ce116bfe4a9095715c6c8c29457c4635c770bbfcf513736942b` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/radial-energy-identity--85d681b327410f9003048181.md) | 260 | `result-track:85d681b327410f9003048181add831e54c32bb200fa3df1e00bd864f258b5343` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variant8ec5438ff41da4bc9910d61de084a3de5b9276c9069cfb8ba1c25ae32f6bf85a.lean/declarations/bumpmoment-zero-re--237f5bdd9a71175e49ecfd50.md) | 318 | `result-track:237f5bdd9a71175e49ecfd50f712040e21985ed9f3c512e235ef0ae5e1db1b2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
