# Verification target: GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22`.

Source path: `GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LogarithmicMertensBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Integration.ExponentialVolterraL2`](../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks`](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedMertensSource](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource--c288f37fa36d496c598210dd.md) | 36 | `declaration-track:c288f37fa36d496c598210dd44fe67d326982574fd0d72313338eae069822065` |
| 2 | `theorem` | [dampedMertensSource_eq_mertensPrefix](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-eq-mertensprefix--f12a1b9250b8e0f5691021df.md) | 41 | `result-track:f12a1b9250b8e0f5691021df6f5f37684f233ad9f1993bc28b6909e180c40835` |
| 3 | `theorem` | [dampedMertensSource_intervalIntegrable](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-intervalintegrable--702dd541fe721e018a9f763e.md) | 49 | `result-track:702dd541fe721e018a9f763e231a106e3e0c7438e83220fb748a9e54f134ecab` |
| 4 | `theorem` | [damped_wholePickup_eq_exponentialVolterra](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/damped-wholepickup-eq-exponentialvolterra--127d144fbd5b1693d251554c.md) | 63 | `result-track:127d144fbd5b1693d251554cc35e6d274ae328f83fb359139ebb36e433e4742b` |
| 5 | `theorem` | [dampedMertensSource_half](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half--16ea039979ec651288a81e60.md) | 80 | `result-track:16ea039979ec651288a81e6032e99604d1a90aa600f3a5f73ecfb1bbf2cba81d` |
| 6 | `theorem` | [dampedMertensSource_half_abs_le_one](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half-abs-le-one--607c5225432b619f2fba6002.md) | 87 | `result-track:607c5225432b619f2fba60027a0ecc3f47f5cf8899d08a9c385a7dd1ade30c3e` |
| 7 | `theorem` | [dampedMertensSource_half_sq_intervalIntegrable](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half-sq-intervalintegrable--6505f4ca82d7e4612a2fc3e7.md) | 100 | `result-track:6505f4ca82d7e4612a2fc3e73fde96402f00ff4b977169a9fce925520d1496e9` |
| 8 | `theorem` | [verticalLineMass_le_dampedSource](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-le-dampedsource--f13ef63df6baa1d24ae89f9a.md) | 139 | `result-track:f13ef63df6baa1d24ae89f9adefc975997e4b10db5ba78508005a6ac94e19aab` |
| 9 | `theorem` | [verticalLineMass_le_of_source_exp_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-le-of-source-exp-bound--b9f9dc5249e0e70b9960161d.md) | 174 | `result-track:b9f9dc5249e0e70b9960161dcac2e0f8232f39d6d0eca51e4d923ed596aef13e` |
| 10 | `theorem` | [verticalLineMass_le_of_real_mertens_power_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-le-of-real-mertens-power-bound--6b7d1e4e78141d879fc652b5.md) | 259 | `result-track:6b7d1e4e78141d879fc652b5e0fac588bba26039d9060d4dd07ac5c4b589ea12` |
| 11 | `theorem` | [verticalLineMass_le_of_nat_mertens_power_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-le-of-nat-mertens-power-bound--bc7dce9cea95afd436f352fd.md) | 293 | `result-track:bc7dce9cea95afd436f352fdb300a63b89345af7198379d8ede973f20f0cf8f9` |
| 12 | `theorem` | [dampedMertensSource_half_sq_integral_zero_one_le](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half-sq-integral-zero-one-le--208f1ff5e0b9c9478b5806dc.md) | 322 | `result-track:208f1ff5e0b9c9478b5806dc489ac1ee24fef611aa8ec700af2a2b386e85f549` |
| 13 | `def` | [MertensLogSquareBound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/mertenslogsquarebound--d70c58146375154d7bd453fa.md) | 337 | `declaration-track:d70c58146375154d7bd453fa7c172057df57d895259d28dd06ec8552e1176644` |
| 14 | `theorem` | [dampedMertensSource_half_sq_le_tail](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half-sq-le-tail--d3b5d5f5721de527381ae433.md) | 341 | `result-track:d3b5d5f5721de527381ae43314348462b089d24a5ae47f30852b2669906ab27d` |
| 15 | `theorem` | [dampedMertensSource_half_sq_tail_le_three](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half-sq-tail-le-three--6edce092807b2c62cc4090c1.md) | 376 | `result-track:6edce092807b2c62cc4090c18e908c2a4b742070745da4a54590049229d8e0ed` |
| 16 | `theorem` | [dampedMertensSource_half_sq_integral_le_four](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/dampedmertenssource-half-sq-integral-le-four--f1d686f0e11dba821722d5cd.md) | 411 | `result-track:f1d686f0e11dba821722d5cd828b3eae04ebb135b282ed79d07d37b47ed3f797` |
| 17 | `theorem` | [verticalLineMass_half_le_of_mertens_log_sq_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-half-le-of-mertens-log-sq-bound--39509fcd9f324c8e7e5db463.md) | 436 | `result-track:39509fcd9f324c8e7e5db463602d58bdb3843ed4eaf48ce57b3d88076805b9dc` |
| 18 | `theorem` | [criticalBoundaryVerticalLineUniform_of_mertens_log_sq_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/criticalboundaryverticallineuniform-of-mertens-log-sq-bound--bdff36d1a351e78d1463184c.md) | 445 | `result-track:bdff36d1a351e78d1463184cd1981cdc380953ea80016d944fba667ad3ef7296` |
| 19 | `theorem` | [verticalLineMass_le_sixteen_of_half_le](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-le-sixteen-of-half-le--893b5e29cb3330b1852a2e90.md) | 451 | `result-track:893b5e29cb3330b1852a2e908f9add177c7bf64796c958eaa99d263b0949ce7a` |
| 20 | `theorem` | [verticalLineMass_le_sixteen_of_mertens_log_sq_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/declarations/verticallinemass-le-sixteen-of-mertens-log-sq-bound--8b7cbaf2ebbfc6f72bbfd889.md) | 459 | `result-track:8b7cbaf2ebbfc6f72bbfd88938eff1a3fe88840d3c2a65f86a467849733ea3de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
