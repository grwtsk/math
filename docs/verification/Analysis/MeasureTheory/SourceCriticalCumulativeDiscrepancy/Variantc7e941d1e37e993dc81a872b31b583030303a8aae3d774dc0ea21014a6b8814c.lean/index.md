# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1c476e319406eed50ce5aab901f8f19d281a755",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1c476e319406eed50ce5aab901f8f19d281a755`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean.json)

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
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticalcumulativediscrepancy--a36c154ee4f0f5966fa57833.md) | 38 | `declaration-track:a36c154ee4f0f5966fa57833bb327ac1a6bfcb37c761789413eae97210679121` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive--0ad33aed4192e5a29e1681d6.md) | 42 | `declaration-track:0ad33aed4192e5a29e1681d60159b6c27056f3b7ecf62ebbbc7a3d3daaece34a` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancybridge--1da5aaa01b853c7e08d2d08b.md) | 46 | `declaration-track:1da5aaa01b853c7e08d2d08b6fe572367f9209018c981c1118dba3f7e0a15413` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/decay-continuous--f5a922df75eefb1d968d7293.md) | 50 | `result-track:f5a922df75eefb1d968d7293d4fabc32a25fb85bb087edcc8924ebf036d52eab` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/decay-hasderivat--513e69cfb835ebf058196ff0.md) | 54 | `result-track:513e69cfb835ebf058196ff0ee09651a155a8e7c889fc4f59ef75682e8968e8d` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/density-mass--6a7daf9f50d03fa2ad7d5090.md) | 64 | `result-track:6a7daf9f50d03fa2ad7d509058d1b1739d262cef134f49d86f90e6b13d5a893e` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/density-mass-continuous--51be2cd40bfb0df5fdb73a00.md) | 70 | `result-track:51be2cd40bfb0df5fdb73a00d6b4bb6339ff06340feeda52c767028b8f4af2d6` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/prime-prefix-intervalintegrable--1b6547d8dfd08a3880b71c87.md) | 77 | `result-track:1b6547d8dfd08a3880b71c872e00fe017d2013a82a6d4ee73992f7fc586223d0` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticalcumulativediscrepancy-eq--3a8293af91817f5aecd1fd7c.md) | 86 | `result-track:3a8293af91817f5aecd1fd7c3093be38e660562e77b1d2b05392ea031320bc49` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticalcumulativediscrepancy-at-upper--5b0faaaf0038b1399596974b.md) | 93 | `result-track:5b0faaaf0038b1399596974b29067a08aad813dea95186204765b2c21ff3ad6c` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticalcumulativediscrepancy-at-zero--394bccbd643fa0876675884f.md) | 97 | `result-track:394bccbd643fa0876675884f62897851f0876c0a64a81f9f4fc1f848eac883b3` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--d658fa39d16b82f7fb6a7e16.md) | 101 | `result-track:d658fa39d16b82f7fb6a7e162c5c1d1946578684bf46356c610024d2c8c57623` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive-at-zero--d7b4872e1d1d476068d501d6.md) | 107 | `result-track:d7b4872e1d1d476068d501d6aea8ce73b4c3df1008ce8736ea13946bd53b2d35` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive-continuous--2fa50fb88b1741759ccdc9bb.md) | 111 | `result-track:2fa50fb88b1741759ccdc9bb191d45c6f23a5b69a8f7f985898f851ae7a012c7` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--8c6b0b1aa767d5b985020a32.md) | 115 | `result-track:8c6b0b1aa767d5b985020a324da232f0c02f5a0fb5ceedb3d383c8fd483ea429` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--2f7d0204444a8c629a0013cb.md) | 121 | `result-track:2f7d0204444a8c629a0013cbcf2873c14edec650f19d348362b3368fe363fe5a` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive-sub--21896643150d05dacce2ca16.md) | 130 | `result-track:21896643150d05dacce2ca16d92a6e5211c68e47409663367585e17958ed74d3` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/density-mass-integral--de744c5227dcf499ceec0185.md) | 137 | `result-track:de744c5227dcf499ceec0185af1ec8605564b306c996ce0fa28cb9c4b0d2a397` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--84e448b3a9b110edb71483c2.md) | 155 | `result-track:84e448b3a9b110edb71483c2794e42791776833a7959f09fdce4bbacc26003c8` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancybridge-at-zero--bb38df532d120102645a4553.md) | 176 | `result-track:bb38df532d120102645a45533ac20476efa34dbb4d6461d3e3e115a93ab89822` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancybridge-at-upper--7938955da5a7ea29727e36d5.md) | 181 | `result-track:7938955da5a7ea29727e36d5205d6a1baa1e0fb79aa83a935be4e21ee341ad86` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancybridge-continuous--e329325eebc27ec4d5f4347e.md) | 187 | `result-track:e329325eebc27ec4d5f4347eb899895087fea40322c00581605ba45bdb2842ae` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--a2a51f314b2b9d8a0c7825e8.md) | 193 | `result-track:a2a51f314b2b9d8a0c7825e886b367633e2cdbefe5f894aa0d488b71d94095a9` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantc7e941d1e37e993dc81a872b31b583030303a8aae3d774dc0ea21014a6b8814c.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--d6b50afef40f34b467c085f3.md) | 201 | `result-track:d6b50afef40f34b467c085f3d432f611ee0cbfa9b875d5e0146823c10e0f2ee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
