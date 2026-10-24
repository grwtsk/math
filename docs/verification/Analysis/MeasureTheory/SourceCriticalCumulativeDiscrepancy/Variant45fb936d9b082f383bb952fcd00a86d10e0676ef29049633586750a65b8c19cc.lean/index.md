# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80ce55de1c441d92963b35fac984b2ab5f818496",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80ce55de1c441d92963b35fac984b2ab5f818496`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean.json)

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
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticalcumulativediscrepancy--c6be4342d62086e743a5ce7f.md) | 39 | `declaration-track:c6be4342d62086e743a5ce7fc45f080beaf0f715c734f329df2d105272d36d9e` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive--b699a0aeb6bfe3678bc94e25.md) | 43 | `declaration-track:b699a0aeb6bfe3678bc94e250b212a9af3f3bb66cc2bacd9b3b001f1433d11b2` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancybridge--fb2b696d98ef185c9a46239b.md) | 47 | `declaration-track:fb2b696d98ef185c9a46239bdc7a3fe68a4066ea56854f1749ca0eeff91b4935` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/decay-continuous--02f915c9d2c00859a568db0d.md) | 51 | `result-track:02f915c9d2c00859a568db0de7a45db2f55b5dfd5866972e12cdf9cd4140ec5e` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/decay-hasderivat--9dde2ae5be4f9ccbcbcfd2a9.md) | 55 | `result-track:9dde2ae5be4f9ccbcbcfd2a9b535d367366609c5ded0a0373cea65edd669a48d` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/density-mass--1d4b2d65875ed06fbe67b534.md) | 65 | `result-track:1d4b2d65875ed06fbe67b534dc148b0fdc9269c18d46d4a6bef439f63e038787` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/density-mass-continuous--caeb0f1b442736ef93f2f62a.md) | 71 | `result-track:caeb0f1b442736ef93f2f62a508678760e6788213268a17ab87a2193c67964b9` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/prime-prefix-intervalintegrable--de764d9b1b6f23b5ebe334b4.md) | 78 | `result-track:de764d9b1b6f23b5ebe334b4c4c511156c4c882f18e4b6e5c4c29ef6f4b4ad8f` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticalcumulativediscrepancy-eq--bf1ddc1b56556aa0761310d5.md) | 91 | `result-track:bf1ddc1b56556aa0761310d51ef8e359fe3512afcbdff278a06d1ed9108b2be7` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticalcumulativediscrepancy-at-upper--9aebe7c2b6f08c36db76afaa.md) | 98 | `result-track:9aebe7c2b6f08c36db76afaa9cf41e00a7dc9d62a04e29500df34bc1752ad50b` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticalcumulativediscrepancy-at-zero--4f8c7c8a5cf34b8a9d369184.md) | 102 | `result-track:4f8c7c8a5cf34b8a9d369184beb36f19e14840ed4e2f63469310940dc500915a` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--094793d0ba95e1bddedac229.md) | 106 | `result-track:094793d0ba95e1bddedac2299f46e377b16fd1940194c1b8ba5d2ef09959035a` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive-at-zero--a000aadc08498cce721de821.md) | 112 | `result-track:a000aadc08498cce721de8214f41bf5c2f8823e01b3e9395dcdbcf8024032d98` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive-continuous--5f20c0da3a624b1300063886.md) | 116 | `result-track:5f20c0da3a624b1300063886974cacac9afd78f6a85ce45a2dee821c000b343f` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--ebbc9b101ba972167e51699f.md) | 120 | `result-track:ebbc9b101ba972167e51699ff0677aca9036375bb300241e9f476a9a39e540c1` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--953e58817cab33781428ed06.md) | 126 | `result-track:953e58817cab33781428ed06b32f40978df72e9d39a6bf2de030e9685f2952e0` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive-sub--ac58fcf6a8197122db4e6a67.md) | 135 | `result-track:ac58fcf6a8197122db4e6a674d5a786161d6e4ae631bf5c150d701a88c0c6295` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/density-mass-integral--3b14ea663af51d5505c166b0.md) | 142 | `result-track:3b14ea663af51d5505c166b010b6a5db98aeb986adb8758aa29803358f88c1c7` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--cecf87bbc8bde2277ad4eb6c.md) | 163 | `result-track:cecf87bbc8bde2277ad4eb6c5cadb64a411819ac76ab673083d95959664638f9` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancybridge-at-zero--5e807669ec35292bf1b9761d.md) | 185 | `result-track:5e807669ec35292bf1b9761dde2fc6a211f14ca642f87c4fb1b8e74b868149bb` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancybridge-at-upper--3e7e61cc3f78ab483056c735.md) | 190 | `result-track:3e7e61cc3f78ab483056c735fa3999b269140daa4005df8df9d921fbd2dafee4` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancybridge-continuous--39605157b81b6fa492b565c0.md) | 196 | `result-track:39605157b81b6fa492b565c0d7f92865a7eab84a07890c175c0a7659351a0846` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--e134a505a2ecd5add78ec6d8.md) | 202 | `result-track:e134a505a2ecd5add78ec6d8bdf82a28578e06e0aaebb3c4c71ed94e81bd3f62` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--40c9ec73dd78dc3c71ed481a.md) | 210 | `result-track:40c9ec73dd78dc3c71ed481a3b6dcb8403b5390ec147783c7ee7820566316431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
