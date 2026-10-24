# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60318f6102f674ecf6768f1da316f8d798783367",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60318f6102f674ecf6768f1da316f8d798783367`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean.json)

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
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticalcumulativediscrepancy--2e41a86612665408f8668d8b.md) | 30 | `declaration-track:2e41a86612665408f8668d8b6ef6a0e3c6ee4388d301c6016bea3316f79fea83` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive--433315feaa16c1f437a519ff.md) | 34 | `declaration-track:433315feaa16c1f437a519ffaca4ccbe217e13068d770dd3871f16254bd953f7` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancybridge--501cddde432d836c768617c7.md) | 38 | `declaration-track:501cddde432d836c768617c78799cf01b4525e7aad0fe0a3893b4c93823bd770` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/decay-continuous--8f467cc453117f3502cf84a8.md) | 42 | `result-track:8f467cc453117f3502cf84a8414049c9e27edf751a28cc166a41344f3c7a93e1` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/decay-hasderivat--9b918713132660b261c1fc17.md) | 46 | `result-track:9b918713132660b261c1fc1738faaa78c587bf5029a6cd8c4817c3c9420391f8` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/density-mass--1de63f170babf6fafb781303.md) | 56 | `result-track:1de63f170babf6fafb78130393a8c43e7f88030cc897e12a0c879071ad916dd3` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/density-mass-continuous--6791e293c1851a240ba29477.md) | 62 | `result-track:6791e293c1851a240ba29477112a90fffe95641fdf5c315e6e0db01e9805a2bb` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/prime-prefix-intervalintegrable--4f0deaa59fb3d09d510fbd0f.md) | 69 | `result-track:4f0deaa59fb3d09d510fbd0f587440fd99d5f1b6378c65490825b08ccc681ca3` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticalcumulativediscrepancy-eq--a4438b8e910dd3f834da6754.md) | 78 | `result-track:a4438b8e910dd3f834da67542c207e56e244074faad4c6142beac5e9638cf583` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticalcumulativediscrepancy-at-upper--36ccc508659c97ed75843c54.md) | 85 | `result-track:36ccc508659c97ed75843c54b53396e431ed252de6b0944701a2b840df38da5b` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticalcumulativediscrepancy-at-zero--d0aa997e8f61f0be1c42f71b.md) | 89 | `result-track:d0aa997e8f61f0be1c42f71b4a93d1ebd52b5fa89e3cd3b0b6bcaa44cea453f2` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--e3a0a3ba75ade943cfb3f1e7.md) | 93 | `result-track:e3a0a3ba75ade943cfb3f1e7ea4b27a98054a915601274cd9186383c1d135e13` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive-at-zero--e20e91e4a560a5974abc922a.md) | 99 | `result-track:e20e91e4a560a5974abc922add5e572e739152df6fe0df51b4f73f8528baa3b6` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive-continuous--88bce524d443d98ab65c70df.md) | 103 | `result-track:88bce524d443d98ab65c70dfdd0e5a582eac23d0c615464033ccbff1524daf59` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--5f6d3ba58d70dadb1d19b12b.md) | 107 | `result-track:5f6d3ba58d70dadb1d19b12b37fcfc6ae445a718c7bf0f166bc44d697cd287f4` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--04fc6814f07c92b1aea4916a.md) | 113 | `result-track:04fc6814f07c92b1aea4916ab1a84c00a45931a9d33eab0f1b68db9dd936d4a5` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive-sub--0e4403dc5a48af0b40918eba.md) | 122 | `result-track:0e4403dc5a48af0b40918eba1afe94407acb9c2c7fc881bff8761c952ec4a55a` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/density-mass-integral--bb1388c960e8dd20182545a3.md) | 129 | `result-track:bb1388c960e8dd20182545a32d075af421d8a429ff14676932276916d6587040` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--f50419e6702b38cc3af52906.md) | 147 | `result-track:f50419e6702b38cc3af52906b7965f869edb6a8d619fcb9b191771e6c4784d31` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancybridge-at-zero--a9ee47eaf99d0e256e26cdf9.md) | 168 | `result-track:a9ee47eaf99d0e256e26cdf9ad3788a01e538d7b03d3c1a3736ffce2761f0dc1` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancybridge-at-upper--aa58e789cb6b9c426ec18ad1.md) | 173 | `result-track:aa58e789cb6b9c426ec18ad120a3fd9b29bb23d7b8d6449953ded9fc1950167c` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancybridge-continuous--9d7e31f75949b431c4666a2f.md) | 179 | `result-track:9d7e31f75949b431c4666a2fd33ff13010a6d518b6a5287025ee9d14e202ec46` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--abb7c3016533c55557122d55.md) | 185 | `result-track:abb7c3016533c55557122d5596349b428851ea0192c06b952c5c8e8ddc593d0a` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variante1f28ef3572cecffdd368f7fc24540342509f89e5677372dd0dfc2b17bd704ed.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--31e302566fc24a0cb9d83783.md) | 193 | `result-track:31e302566fc24a0cb9d83783599d5632a5075f7a48450db5ff97563a86c3f6b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
