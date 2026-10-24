# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb38b675c8a73d12aef33546c2e7b7974806792",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb38b675c8a73d12aef33546c2e7b7974806792`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticalcumulativediscrepancy--5a1fe81c2800d7fc0d97e780.md) | 38 | `declaration-track:5a1fe81c2800d7fc0d97e780f5adec71ab8196e89622c6c8d3b610e6f230f13d` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive--a020492deb9a51761fef47e0.md) | 42 | `declaration-track:a020492deb9a51761fef47e0a13064cfeb2e5728a35b081c1e0f6026e9ad9281` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancybridge--50647047ef409d9bbf7ec75e.md) | 46 | `declaration-track:50647047ef409d9bbf7ec75ebb8963349d5b60d7283c674204701782266c5e50` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/decay-continuous--2e3e3813abc768f18ad58806.md) | 50 | `result-track:2e3e3813abc768f18ad588069add666b08b335bd287dbe7fa58274d4794661a2` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/decay-hasderivat--282a3ce336df9d939adbb05e.md) | 54 | `result-track:282a3ce336df9d939adbb05ed1023605334dc05104045b714bd78a99939e3da5` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/density-mass--7fd80bb8bd10d4db1ca381c6.md) | 64 | `result-track:7fd80bb8bd10d4db1ca381c63a8b387d20106478863bdf6ce75bb5d8fb7b49f5` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/density-mass-continuous--b7abdc7247b84943fd19ec7f.md) | 70 | `result-track:b7abdc7247b84943fd19ec7fc67fc6ca1875f8ba53359473b8da40c7dc18e989` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/prime-prefix-intervalintegrable--9c25ec927cb1904899e8246a.md) | 77 | `result-track:9c25ec927cb1904899e8246a8988e4af55d30710761bb038fd4b5298f83884f5` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticalcumulativediscrepancy-eq--785a7c2acfc037ca5071d2f3.md) | 90 | `result-track:785a7c2acfc037ca5071d2f34d5373091ffe36abcbfb1168ccc437812e96b8bb` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticalcumulativediscrepancy-at-upper--299c3470a38744510377131e.md) | 97 | `result-track:299c3470a38744510377131e8c3aedff06f043d65515e3006d9775817f3a6710` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticalcumulativediscrepancy-at-zero--756a0e6f40f4ab98dfd56cb3.md) | 101 | `result-track:756a0e6f40f4ab98dfd56cb32655d2d80088e65e9e61cc0c9c488bd2450257bd` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--1a8fb2c800c265c384a34762.md) | 105 | `result-track:1a8fb2c800c265c384a34762f478d27803abc94dbb70cbf637eeeadbe0418107` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive-at-zero--31f9b5802280fbc0b5360b91.md) | 111 | `result-track:31f9b5802280fbc0b5360b915257787141a709da3abb549ce6644972b56abe0f` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive-continuous--486eb12172f5f94337e01ee5.md) | 115 | `result-track:486eb12172f5f94337e01ee53acc89661239716b072dd00dc2a39e1e17c4d239` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--43ebfdc3230a831e344de4fa.md) | 119 | `result-track:43ebfdc3230a831e344de4fa90c983cc6e85cd0f333883d7a1195468b4cc7aa2` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--acc91a2cd917155cae2c860b.md) | 125 | `result-track:acc91a2cd917155cae2c860b4449830468d79496d1b23ae59ef2017945fea1fe` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive-sub--67ae3dc50212c0d6386ebf0a.md) | 134 | `result-track:67ae3dc50212c0d6386ebf0a6d3a2d2143d7701118905cda3e943e19dc9c6413` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/density-mass-integral--49ea29b9d8451b6b847622f9.md) | 141 | `result-track:49ea29b9d8451b6b847622f9736e0c18d8a838b856b4425e978017d45b729ff6` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--c87c51d659be78b3889c0c57.md) | 162 | `result-track:c87c51d659be78b3889c0c572bd5f4489e42b28d2b2bf00df2805c10d86cef0e` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancybridge-at-zero--a10e5f3ff1391c4c013e34be.md) | 184 | `result-track:a10e5f3ff1391c4c013e34be360b91fb301e99948012fa526f624075daa98e1c` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancybridge-at-upper--2d4d213ae2397c0d79d8a154.md) | 189 | `result-track:2d4d213ae2397c0d79d8a154f65858b53144beee22ea9cd464dfce16094391a1` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancybridge-continuous--d8ddfa0446bb94042fcfe373.md) | 195 | `result-track:d8ddfa0446bb94042fcfe373829c6c6ea5226427668800679af7b87854454500` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--9ccfe5000f8d6147918b579e.md) | 201 | `result-track:9ccfe5000f8d6147918b579e7267baadf5c30641690a9804171e1e9df06c2a59` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--2de9ff0e4c14f858637cd995.md) | 209 | `result-track:2de9ff0e4c14f858637cd995c591c7f53452a69ca3d9f35675b89b6ebf007cfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
