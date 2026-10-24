# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32cd2ea9b6695a6d19c99f22151834870ff773b9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32cd2ea9b6695a6d19c99f22151834870ff773b9`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean.json)

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
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticalcumulativediscrepancy--f886d1ef3624096b4ea831a0.md) | 39 | `declaration-track:f886d1ef3624096b4ea831a0b93df02653b554b37803d7449df53f6c2fb1cad0` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive--65bdd17368870edf55db0cca.md) | 43 | `declaration-track:65bdd17368870edf55db0ccaac74725829ada2616185b84effddbe10ca6dd6e1` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancybridge--8aac0ed121fc1a2db433b642.md) | 47 | `declaration-track:8aac0ed121fc1a2db433b642ba2bd5a7d37d983614f0c58500a50d6864e8ea30` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/decay-continuous--d074fff4cea98a58986bdcf7.md) | 51 | `result-track:d074fff4cea98a58986bdcf7ff2c4ccae81c702ef6d5735d6f117e73746fe908` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/decay-hasderivat--95a9d5b9b43ea0198d439c95.md) | 55 | `result-track:95a9d5b9b43ea0198d439c9595d466a9c73e0000553be288e979f103df73ed1c` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/density-mass--da1e7299cf645a9da18abd78.md) | 65 | `result-track:da1e7299cf645a9da18abd78d37efe2668bcefb55baba13359e62f64d3d08aa4` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/density-mass-continuous--67760d62766112364cedb886.md) | 71 | `result-track:67760d62766112364cedb886d2a80ba31cbd76fa9b235991c935d483c061a025` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/prime-prefix-intervalintegrable--f99f6e36b1e8b712e9d5729c.md) | 78 | `result-track:f99f6e36b1e8b712e9d5729c66fb40bd459677ba610ecdd63693426306446756` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticalcumulativediscrepancy-eq--4ab73566513018705dac2ade.md) | 91 | `result-track:4ab73566513018705dac2ade50451a311c9146c9e8904e7b22f0abcfdaa8faec` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticalcumulativediscrepancy-at-upper--db9b57d72b83290d4d7c6672.md) | 98 | `result-track:db9b57d72b83290d4d7c6672fe38af2d2d4414b852053d4946a2b80eeb4890b3` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticalcumulativediscrepancy-at-zero--dfd850bc65f3f1d6a681e0d0.md) | 102 | `result-track:dfd850bc65f3f1d6a681e0d03a5317f5f9b74090d11d61a994702ad5928ac338` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--7ab169310d713c1d101013c9.md) | 106 | `result-track:7ab169310d713c1d101013c9f4f370a9b78399f053fb81b8428ef37f0ae59e8b` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive-at-zero--e0222b8537fa9a1b811fedbe.md) | 112 | `result-track:e0222b8537fa9a1b811fedbe1108c5ff59ad2540792d0e3f77ee653c8e790afb` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive-continuous--4bb225e8ce7f5a28b67a3aaf.md) | 116 | `result-track:4bb225e8ce7f5a28b67a3aaf9a7976085fb3a76e20cb7e91572e3836fdcb156f` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--5218a6903142c6519a0f77f4.md) | 120 | `result-track:5218a6903142c6519a0f77f430bc42d4800f9c9c81004c8a8ab54939983091b1` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--63094aa8b2ffc7d2a747a383.md) | 126 | `result-track:63094aa8b2ffc7d2a747a383b7b462e2c0a4433615eb2754b82c079212c969f4` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive-sub--83d7cd2b9bd89d88ce48faed.md) | 135 | `result-track:83d7cd2b9bd89d88ce48faedf81ebdf09435d831022196717a0cf1424f74d4c4` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/density-mass-integral--f87c0f670fa60f192c367091.md) | 142 | `result-track:f87c0f670fa60f192c36709188719256d8f074cb38e7e1965d41429b5c2539fa` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--199d60fbfadd56e96a62c067.md) | 163 | `result-track:199d60fbfadd56e96a62c0676347411298006c36ad028df2158b0b6a959e1100` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancybridge-at-zero--1ede3acb576e11b93c365669.md) | 185 | `result-track:1ede3acb576e11b93c36566941550a01e821c56f743f74236b5160951750954a` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancybridge-at-upper--28e0dd4d6b296d45871c4f8e.md) | 190 | `result-track:28e0dd4d6b296d45871c4f8e45503894506f590ced7333db8eab113731007855` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancybridge-continuous--1594e48ee12b5d5466408d03.md) | 196 | `result-track:1594e48ee12b5d5466408d03936b656818c2dab4bf54013e13ad00ab993d8972` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--d4a07abcb42076a16819a4f6.md) | 202 | `result-track:d4a07abcb42076a16819a4f6677ac374cf01ef30e9dd9ecf8eb906adfcb55c87` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--c7608e99f54facbf59c45b6e.md) | 210 | `result-track:c7608e99f54facbf59c45b6ea852a5920fb459729011249ac611b671035f6165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
