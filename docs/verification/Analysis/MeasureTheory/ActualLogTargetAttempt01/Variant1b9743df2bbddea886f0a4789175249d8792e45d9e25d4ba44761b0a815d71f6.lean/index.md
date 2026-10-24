# Verification target: GRWTSK.Analysis.MeasureTheory.ActualLogTargetAttempt01.Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24fd4885b056cba7d44323e57cea382d973b92a7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24fd4885b056cba7d44323e57cea382d973b92a7`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 6; external provider; requires a separately pinned dependency.
- `UnnormalizedDilation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveTargetFunc](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positivetargetfunc--be255ffb0fb06f397ad635d8.md) | 25 | `declaration-track:be255ffb0fb06f397ad635d895835506c930c6b8bec30a98cb4368f898507054` |
| 2 | `theorem` | [positiveMeasure_unit_interval](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positivemeasure-unit-interval--411953608efb128105c5873b.md) | 27 | `result-track:411953608efb128105c5873bb351cac852baa1e8df8d3764878f190071746064` |
| 3 | `theorem` | [positiveTargetFunc_memLp](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positivetargetfunc-memlp--43a12bb80f35f2cb8f229c9e.md) | 34 | `result-track:43a12bb80f35f2cb8f229c9ed014048a5b9ae78d82b8d4e80e3e6a727fd92a83` |
| 4 | `def` | [positiveTarget](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positivetarget--8193d95494743a76abf9e98e.md) | 39 | `declaration-track:8193d95494743a76abf9e98ec30aacba3298cc8fd1fe693ce2869fc7129c8e40` |
| 5 | `theorem` | [positiveTarget_ae](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positivetarget-ae--ba439cd494f89eda40b171ad.md) | 41 | `result-track:ba439cd494f89eda40b171ad108bc01d38ee8ea81d440830e9cda36a15852505` |
| 6 | `def` | [logTargetFunc](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logtargetfunc--b62ab550019411c16fa82877.md) | 45 | `declaration-track:b62ab550019411c16fa8287712135dbeae901492635dcc50cb3ced16e1c03702` |
| 7 | `theorem` | [logTargetFunc_pointwise](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logtargetfunc-pointwise--6f8dd49228220f75637b2119.md) | 47 | `result-track:6f8dd49228220f75637b211966a03c23b30d44698a7125316005305212658e5d` |
| 8 | `theorem` | [logTargetFunc_memLp](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logtargetfunc-memlp--6fd2b073c5cd91b568ebdc47.md) | 56 | `result-track:6fd2b073c5cd91b568ebdc47f59ae492b341aac5c9d47e8a64379691e06f0982` |
| 9 | `def` | [logTarget](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logtarget--b48e1ca9d0034fc945fc105c.md) | 61 | `declaration-track:b48e1ca9d0034fc945fc105cc6fe6a2d13eb09e5d9dec8926b4dcacb9e7f28bc` |
| 10 | `theorem` | [logTarget_ae](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logtarget-ae--abe7ef99c016031932ec3248.md) | 63 | `result-track:abe7ef99c016031932ec3248cf781426633a3f5e2d8a2fb0dcfbc809a7991f57` |
| 11 | `theorem` | [logMap_positiveTarget](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logmap-positivetarget--29d4ea982141fe448e801628.md) | 65 | `result-track:29d4ea982141fe448e8016283a1f3fedff30de125b478172ad77902d5d43c213` |
| 12 | `theorem` | [positiveTarget_norm](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positivetarget-norm--4ba85f45ccd9128e03d5c5dc.md) | 73 | `result-track:4ba85f45ccd9128e03d5c5dc9e7543f0f1d484cae28fb23eb06101006c0630a1` |
| 13 | `theorem` | [logTarget_norm](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logtarget-norm--d1d390c6e1a4e2a41d064ad3.md) | 80 | `result-track:d1d390c6e1a4e2a41d064ad31111e9f8f710ff4308ca6365522854ed3a929b9b` |
| 14 | `def` | [positiveIntegerHull](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/positiveintegerhull--5bb2b5aeecf29d008c728f1c.md) | 84 | `declaration-track:5bb2b5aeecf29d008c728f1c32cdc4cb3d39dc4863b953bdc7436b58a31b2919` |
| 15 | `def` | [logIntegerOrbit](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logintegerorbit--a09a99948867f8001a21ddea.md) | 87 | `declaration-track:a09a99948867f8001a21ddeaca14f0faf3c74f38e1cc71145aa682f0f4b67e0a` |
| 16 | `def` | [logIntegerHull](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logintegerhull--d4174776dfd651e5155c5260.md) | 90 | `declaration-track:d4174776dfd651e5155c52601a34a51f8bd1a860ab60b6d7a3562855d4de9c91` |
| 17 | `theorem` | [logMap_normalized_integerOrbit](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logmap-normalized-integerorbit--2c13bb5a7b690093f4b4e2e1.md) | 93 | `result-track:2c13bb5a7b690093f4b4e2e1d36c87f5927245fc3c6a703ba2f2b772a9b67db3` |
| 18 | `theorem` | [logEquiv_span_image](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/logequiv-span-image--7278dfd502b10e49861253f0.md) | 96 | `result-track:7278dfd502b10e49861253f040f3bb9a05228924f58d4a0e31be531be152ee5d` |
| 19 | `theorem` | [actual_integer_hull_image](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/actual-integer-hull-image--695ea9b5bb45d3831f85ceaf.md) | 103 | `result-track:695ea9b5bb45d3831f85ceafb6edc926586902c468d78f6149e0c369c440c5be` |
| 20 | `theorem` | [actual_target_membership_iff](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/actual-target-membership-iff--868a5a5646efe140dec58628.md) | 121 | `result-track:868a5a5646efe140dec5862834e6965b7260a5b47063daf5ca3b840789150acc` |
| 21 | `theorem` | [actual_target_infDist_eq](../../../../../mathematics/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant1b9743df2bbddea886f0a4789175249d8792e45d9e25d4ba44761b0a815d71f6.lean/declarations/actual-target-infdist-eq--1a179a22659c237b4a054f85.md) | 133 | `result-track:1a179a22659c237b4a054f85fbb3b4181c0416f11398f9562738ef789aa79f2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
