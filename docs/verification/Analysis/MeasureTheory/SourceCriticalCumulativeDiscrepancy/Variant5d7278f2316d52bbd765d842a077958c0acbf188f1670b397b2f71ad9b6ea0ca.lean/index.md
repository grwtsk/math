# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2ef870d5bf24dda9e1402dd5165a54cfd50d90d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2ef870d5bf24dda9e1402dd5165a54cfd50d90d`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticalcumulativediscrepancy--54bbeda50bc2efef2a43ee0e.md) | 30 | `declaration-track:54bbeda50bc2efef2a43ee0e63b6e31ec085f079df2ae6099b65afaa4349cf98` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive--a35235d43cc235b508c39ad5.md) | 34 | `declaration-track:a35235d43cc235b508c39ad5debac611d067f286f8dbb4ade44bf90799041e52` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancybridge--60a14e58ee97b73498502be4.md) | 38 | `declaration-track:60a14e58ee97b73498502be4bf1a280a86b59ef13ab8589181f798ff5034ac83` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/decay-continuous--4f48ed17fdd53b7fd5468556.md) | 42 | `result-track:4f48ed17fdd53b7fd546855617090a64e1757203b715417a3e12e4d558c54f11` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/decay-hasderivat--088a2b37cd410af36fe538e9.md) | 46 | `result-track:088a2b37cd410af36fe538e9f9c0134855d4e3dfc3c66c7f01ae684951552763` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/density-mass--28791dac46b04a1884c3e14e.md) | 56 | `result-track:28791dac46b04a1884c3e14e3df6be0767c9ef6dc93a11b6139b0465a8d8b013` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/density-mass-continuous--029d4565c7195b51fd08795e.md) | 62 | `result-track:029d4565c7195b51fd08795e496312e9a5fefb1839df48cb3223fcb72ba94e45` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/prime-prefix-intervalintegrable--59d10c93460f5ae34881b11c.md) | 69 | `result-track:59d10c93460f5ae34881b11cd906a32e82ceeaf43b1267a77cdb5d63a8a84971` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticalcumulativediscrepancy-eq--389759b461d1e8b3fe0cc30e.md) | 82 | `result-track:389759b461d1e8b3fe0cc30ee5bc950358974b055cbe7a1c9e6d8e91471e67c3` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticalcumulativediscrepancy-at-upper--837d0f6e47d42b50767fdd1d.md) | 89 | `result-track:837d0f6e47d42b50767fdd1dc0bf717e551ac890a2ced5265d3da7a641eec247` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticalcumulativediscrepancy-at-zero--185f7db1fe0c6d78a50f8dc8.md) | 93 | `result-track:185f7db1fe0c6d78a50f8dc88bfe22a1c5e293decec00b7d1d8bd04f0d233954` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--83a557a430379e914cadf2bd.md) | 97 | `result-track:83a557a430379e914cadf2bd7205cdc7fe47efc5d0796b4a6d521286f5ab871b` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive-at-zero--b55b23f772f784329706f634.md) | 103 | `result-track:b55b23f772f784329706f634117fc31ba4eca547f2fc4791933535d453511d8a` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive-continuous--53e3abf33c98bd78ca979099.md) | 107 | `result-track:53e3abf33c98bd78ca9790994bdb33f5cc28fce7be4878985aca94244d21419b` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--05d8fc4d5710c5a89959b0fb.md) | 111 | `result-track:05d8fc4d5710c5a89959b0fb19ca5ab5a305d44781adb55655364715dd3fc60f` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--9cc7de954dee2c51695b524e.md) | 117 | `result-track:9cc7de954dee2c51695b524eb5f0e0bcbd41ea8d3a8f5008b63dbf9e4bc8a939` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive-sub--1c5923af7959f852397e2079.md) | 126 | `result-track:1c5923af7959f852397e20794276b02040c7204242bf05b44672722ee9e467d5` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/density-mass-integral--f4dbb8c6ab23c95b7dcfb407.md) | 133 | `result-track:f4dbb8c6ab23c95b7dcfb407807fa7cc20cf826e5869d09a6033fb151432871a` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--c931d5b87aa9d7047d54809e.md) | 154 | `result-track:c931d5b87aa9d7047d54809e6ffc80b21b779d216f45d20cc453ad25702b5516` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancybridge-at-zero--6e57bf2eb72c66188cf7bc06.md) | 176 | `result-track:6e57bf2eb72c66188cf7bc06b111398058dc7af35818751dd3654bbc6148d685` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancybridge-at-upper--36d7965f1444778ae6d1c7f3.md) | 181 | `result-track:36d7965f1444778ae6d1c7f3b5518657c6726dfb4ddafe8c0470a88a103e76b7` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancybridge-continuous--21fa1f7db5548f2f5f0a5176.md) | 187 | `result-track:21fa1f7db5548f2f5f0a5176eaa7293aa7805ab836357920b5aabf6928d19baf` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--a3219ce57bf8381ad1de8733.md) | 193 | `result-track:a3219ce57bf8381ad1de873383cf0ef1728235982851d9cabeda5c9fc77b5589` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--4548b4d41a8f2bfc7100cbf2.md) | 201 | `result-track:4548b4d41a8f2bfc7100cbf2b77a892ab77e234304302820f31513dcee1e414a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
