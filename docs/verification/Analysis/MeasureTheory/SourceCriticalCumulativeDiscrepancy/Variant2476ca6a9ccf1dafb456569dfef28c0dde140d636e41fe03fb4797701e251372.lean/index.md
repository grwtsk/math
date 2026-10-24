# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b85d7b4f5e556c6a6027ac3df47a01c24a29143",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b85d7b4f5e556c6a6027ac3df47a01c24a29143`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean.json)

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
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticalcumulativediscrepancy--7e7a1c5f891f5926d4681c01.md) | 30 | `declaration-track:7e7a1c5f891f5926d4681c01bc30aa4c5bc0aa497679ee7d39e6ce5e4036e955` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive--f60b5b7921ff7760de8662d4.md) | 34 | `declaration-track:f60b5b7921ff7760de8662d494f91e8931d487a1ca606521ace984db109b3ef1` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancybridge--1b3c5b6fb297bdec9358b522.md) | 38 | `declaration-track:1b3c5b6fb297bdec9358b52279a938efa3621c2694ef6fe88dc2cc523db2883b` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/decay-continuous--d90a3ba2ccb66707e68e1824.md) | 42 | `result-track:d90a3ba2ccb66707e68e18244071491c7b52dad2154a1ca0277f70df98392e23` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/decay-hasderivat--d8e6c71bb97e5cdb4e1f689f.md) | 46 | `result-track:d8e6c71bb97e5cdb4e1f689f88ea9fc24b209f1b230f020147019e0576e80cc0` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/density-mass--9ed77a4c4cb738012b380bfa.md) | 56 | `result-track:9ed77a4c4cb738012b380bfaa34d17b41d9af084dbaca7551894c9dfb4328316` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/density-mass-continuous--255fc4bb17cbd99b1ec8202e.md) | 62 | `result-track:255fc4bb17cbd99b1ec8202e5ba60138728c36c9eab8982de25f00c5957f141d` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/prime-prefix-intervalintegrable--3eaf41ce6cf7b57534bf73bc.md) | 69 | `result-track:3eaf41ce6cf7b57534bf73bc58c72fd0e5d254eb2ba5cbbd1cd65366cf8243cb` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticalcumulativediscrepancy-eq--5b5cf20326a6d534ae92e4c6.md) | 82 | `result-track:5b5cf20326a6d534ae92e4c612954feabbcc9e0f01a6ea6f5f3be09f9f34dc8f` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticalcumulativediscrepancy-at-upper--28656ca79181e4e6a11bde11.md) | 89 | `result-track:28656ca79181e4e6a11bde11978c1a5f14fe56177883f92bed66fd423d26f651` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticalcumulativediscrepancy-at-zero--8ca16948a31a9eafe6dc2fb3.md) | 93 | `result-track:8ca16948a31a9eafe6dc2fb34928c21e2187b6cf512eb38dad37e7a0ee813883` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--f92a934c1c4732e8a8bded34.md) | 97 | `result-track:f92a934c1c4732e8a8bded348c3382945c311d80a39855ffa0105fa9069d56b6` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive-at-zero--55eeaa7085c8a2b9eff26b2b.md) | 103 | `result-track:55eeaa7085c8a2b9eff26b2b64fdcc3d1697eaf5850c8da8f381dcdcd0bd4e34` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive-continuous--97e9a8979ffddd37c6ba6c31.md) | 107 | `result-track:97e9a8979ffddd37c6ba6c313bbd69ee7ad4efa6a88ec6942e7eefd6d1631a4a` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--f5518c5e3c4b382dec72db50.md) | 111 | `result-track:f5518c5e3c4b382dec72db502f8a1ff91bb4b667dbe97d81ad14617c682d3274` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--380b473292d5fb6793f86f37.md) | 117 | `result-track:380b473292d5fb6793f86f378817c1018722026459ab8956e13d952e0d8d10ff` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive-sub--10308df6b304bb456b3692ff.md) | 126 | `result-track:10308df6b304bb456b3692ffdc67cfd6b2bdbf990045d4d1b86b65e8ccc61f82` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/density-mass-integral--e950b78800b4f7297d970c34.md) | 133 | `result-track:e950b78800b4f7297d970c34dd9ec0b50a5206a5fb3b9e0082d36aeb52c45f92` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--67db0f8f72d67d45d654cca6.md) | 153 | `result-track:67db0f8f72d67d45d654cca6b177019954a4b14c84f52758804d0cf3a3bb7a23` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancybridge-at-zero--775e0c43cc1a6a2ab5be3bce.md) | 175 | `result-track:775e0c43cc1a6a2ab5be3bce92e76862c3275f411a53e083547d78a2421c7fd4` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancybridge-at-upper--32898ede6a0081d795d19ccd.md) | 180 | `result-track:32898ede6a0081d795d19ccd4e8d16a0357018bd9676c0799ad65ec7a9dcd64c` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancybridge-continuous--bc6be787021353bdcf4601db.md) | 186 | `result-track:bc6be787021353bdcf4601dbc9d508a782e93d6a7ad11ffb3d873c808b81260e` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--347a2bfea746a742b2ce7e0f.md) | 192 | `result-track:347a2bfea746a742b2ce7e0fe99a48121bbcf85307a06ae95d03a8c70c5cd49a` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2476ca6a9ccf1dafb456569dfef28c0dde140d636e41fe03fb4797701e251372.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--035db2c8cc05ef3e81e1975a.md) | 200 | `result-track:035db2c8cc05ef3e81e1975add635ff9e425ea954d7d46319b311761b93a4b93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
