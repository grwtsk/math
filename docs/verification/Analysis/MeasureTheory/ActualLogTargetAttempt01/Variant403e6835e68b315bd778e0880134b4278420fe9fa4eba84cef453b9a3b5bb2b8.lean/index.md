# Verification target: GRWTSK.Analysis.MeasureTheory.ActualLogTargetAttempt01.Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1c12a393c7417885720dbf18e3930b2f4c04211",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1c12a393c7417885720dbf18e3930b2f4c04211`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 1; external provider; requires a separately pinned dependency.
- `UnnormalizedDilation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveTargetFunc](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positivetargetfunc--20fa9e9dc9ba9efc9b41c04b.md) | 17 | `declaration-track:20fa9e9dc9ba9efc9b41c04b1804b55a8a8504dd599e5eb4f5f910fb48f31a13` |
| 2 | `theorem` | [positiveMeasure_unit_interval](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positivemeasure-unit-interval--47997722d7fe888125f86834.md) | 19 | `result-track:47997722d7fe888125f86834564aa3d7d3644965a06e2e4b6c3fec5c3fed31ff` |
| 3 | `theorem` | [positiveTargetFunc_memLp](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positivetargetfunc-memlp--adfcfe207d8ad2bfe28e0216.md) | 26 | `result-track:adfcfe207d8ad2bfe28e021673e7e88ba2a23aa3454fe97d0a424e5f701c4241` |
| 4 | `def` | [positiveTarget](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positivetarget--a840d6cd79c55c042337b594.md) | 31 | `declaration-track:a840d6cd79c55c042337b5946b5d8067f894501bd11f787b592481cf63962441` |
| 5 | `theorem` | [positiveTarget_ae](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positivetarget-ae--a7c6f70409f152def4b94cc2.md) | 33 | `result-track:a7c6f70409f152def4b94cc250a8fdf766182f23fc448f4a2cb849f6c139115b` |
| 6 | `def` | [logTargetFunc](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logtargetfunc--5a783ea491f5a8f9e71f6bc0.md) | 37 | `declaration-track:5a783ea491f5a8f9e71f6bc06ab181e89bd025366ea3ba41f9d69f4afed4f4a5` |
| 7 | `theorem` | [logTargetFunc_pointwise](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logtargetfunc-pointwise--3142b1208be7c34c9a1790ed.md) | 39 | `result-track:3142b1208be7c34c9a1790ed8fa1eca9fd2c20cc346561e06a2a970febcbc128` |
| 8 | `theorem` | [logTargetFunc_memLp](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logtargetfunc-memlp--01a1d09dc1314c5dd6a019cc.md) | 48 | `result-track:01a1d09dc1314c5dd6a019ccd7c6f11177844ebdcbec6027f3585051ab1545be` |
| 9 | `def` | [logTarget](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logtarget--39caced884c50d4ce95c9c06.md) | 53 | `declaration-track:39caced884c50d4ce95c9c0686a7548cd7a95a4e4349846f9d41eeddc814db96` |
| 10 | `theorem` | [logTarget_ae](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logtarget-ae--908f2daa2e2a141ba9d64106.md) | 55 | `result-track:908f2daa2e2a141ba9d64106ada8d76ee2a63d5f44b175f36fa07a84943901ae` |
| 11 | `theorem` | [logMap_positiveTarget](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logmap-positivetarget--80677dc3a248d7af5e2c043a.md) | 57 | `result-track:80677dc3a248d7af5e2c043a7b0314a6258cbbfc308c71b6ad18d6bada230040` |
| 12 | `theorem` | [positiveTarget_norm](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positivetarget-norm--14a0d052306a23ffb1e8ceab.md) | 65 | `result-track:14a0d052306a23ffb1e8ceab1ea3a055b168d109609453ad81f5ec3f194aedf7` |
| 13 | `theorem` | [logTarget_norm](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logtarget-norm--36a3240ac7c9c1dd511af579.md) | 72 | `result-track:36a3240ac7c9c1dd511af579b60a2eb08daf4fe08c2c59a23a6061709b1d1fe1` |
| 14 | `def` | [positiveIntegerHull](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/positiveintegerhull--fbb167b601e3778bc13fdeaa.md) | 76 | `declaration-track:fbb167b601e3778bc13fdeaa651828eca7b219f0082b5c40995acd7b4fa5e8dd` |
| 15 | `def` | [logIntegerOrbit](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logintegerorbit--69ab68c30889b54741b2a86b.md) | 79 | `declaration-track:69ab68c30889b54741b2a86b56dd0c44d07e0cb17229dd0ee5e5238fe8d50674` |
| 16 | `def` | [logIntegerHull](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logintegerhull--e2047c575a383fed0799e6af.md) | 82 | `declaration-track:e2047c575a383fed0799e6af2d822f93b6f71f3bccccb83e7979148f3e99e0df` |
| 17 | `theorem` | [logMap_normalized_integerOrbit](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logmap-normalized-integerorbit--5194e56e70668481a99ee4d3.md) | 85 | `result-track:5194e56e70668481a99ee4d34eb6ac2b99a52449291a076f751662bf13c1cb1a` |
| 18 | `theorem` | [logEquiv_span_image](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/logequiv-span-image--80686341e55441899bd0c662.md) | 88 | `result-track:80686341e55441899bd0c662ac6c2cd99e1eca889f339bf530c261c87523b8d3` |
| 19 | `theorem` | [actual_integer_hull_image](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/actual-integer-hull-image--56c16bdf9cc780fbd5d20fbf.md) | 95 | `result-track:56c16bdf9cc780fbd5d20fbf56a86679757b50bb06e4847ff2dd82ebcbde6767` |
| 20 | `theorem` | [actual_target_membership_iff](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/actual-target-membership-iff--74f891e0af3bd8443bed6da2.md) | 113 | `result-track:74f891e0af3bd8443bed6da2a5514d73ccdd82f7b6c72f0ec7dcdaf04731e702` |
| 21 | `theorem` | [actual_target_infDist_eq](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/declarations/actual-target-infdist-eq--9e698015ac9292ad5465f033.md) | 125 | `result-track:9e698015ac9292ad5465f033b5e13436e2f7ab70cabbf9349c9e7e743400f21e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
