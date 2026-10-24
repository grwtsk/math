# Verification target: GRWTSK.Topology.GeneralTopology.Attempt04.Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94d5889eb28f53510db1862d0e13213e5b7abd9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94d5889eb28f53510db1862d0e13213e5b7abd9`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/smallpositive--40f6f87cf9614b4504ab2232.md) | 17 | `declaration-track:40f6f87cf9614b4504ab2232516660592cec978545dc6d9707c2a846879d5e3a` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/globalnonnegative--f93ecc71ae22d15846bea2f3.md) | 20 | `declaration-track:f93ecc71ae22d15846bea2f38a78fc60bd0498cc695ae17096b17ef18788c420` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/nonvanishingonpositive--493f894ef4f91477a3f6786d.md) | 23 | `declaration-track:493f894ef4f91477a3f6786d09a24979443667c3104bf36081d01f2ef9ddafd9` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture--47e60e98e9fae19b02d36c6b.md) | 26 | `declaration-track:47e60e98e9fae19b02d36c6ba94c4dc071e2ff23c9df70fa70f2907d94f6d794` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture-continuous--09f8e4c0c3b9e8525f74ba7e.md) | 28 | `result-track:09f8e4c0c3b9e8525f74ba7e2d8646bb99d955be199590a3add074dd1a3273ca` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture-smallpositive--36b8af6085aec08c9f401463.md) | 32 | `result-track:36b8af6085aec08c9f4014633b73364f3c78335e5dd67f396924e3d6dc85bc65` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture-later-negative--69aa47dc0f35eb265a19dc8d.md) | 38 | `result-track:69aa47dc0f35eb265a19dc8dd326dd49291c6e224b41da8877a94f96664305e1` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture-not-global--dcc33934b00ca6968ba5f3a4.md) | 41 | `result-track:dcc33934b00ca6968ba5f3a416380a6c5880d6b98c2f8b363310960689fe6309` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/continuous-local-does-not-imply-global--2efebd7a5e1e61ed697ef879.md) | 46 | `result-track:2efebd7a5e1e61ed697ef879457fcd3b975840223cb0138fa9b2e872c292b8ac` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/bounded-window-can-miss-negative--8d76143274e2b291e2e9576b.md) | 55 | `result-track:8d76143274e2b291e2e9576ba2ad3d7f7277a094c0db3ebab894fbfe8d079549` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture-unique-crossing--760e39da3686a602e61cadd7.md) | 68 | `result-track:760e39da3686a602e61cadd7ab71706c44d7394cc404a3fd7b1fd4a80ccfb95a` |
| 12 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/zero-before-negative--6feb66cd4a8835847ce68f9d.md) | 74 | `result-track:6feb66cd4a8835847ce68f9de1469b388a619387d05fc49fe6138bf450007403` |
| 13 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/zero-of-not-global--7a3f4d825fa2c7126116eace.md) | 97 | `result-track:7a3f4d825fa2c7126116eace88a0cccdd61f8d9dc1864db5dd30db7986ea5953` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/positive-everywhere-of-nonvanishing--866ad61e49c4d738d5876540.md) | 108 | `result-track:866ad61e49c4d738d5876540734970736ce1726d9556b84a9d67dc62c270e9d2` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/positive-everywhere-iff-nonvanishing--b144c1ce2168c0d1d9abedbe.md) | 120 | `result-track:b144c1ce2168c0d1d9abedbe239cbb74732955afdeb1f4ed5e9aaecb1bcc9368` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/global-nonnegative-of-nonvanishing--f2ae3d07b9c7ad164de4b093.md) | 127 | `result-track:f2ae3d07b9c7ad164de4b0937be39e722a84bb45e0e2d50386e944241eefa07e` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/lowesteigenvalueprofile--9cb7d4fc162aff84f3c4204d.md) | 134 | `declaration-track:9cb7d4fc162aff84f3c4204d5689fd0f1f23dea13cbcf8f9c76d3fdde1c6407a` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/lowesteigenvalue-crossing--cd7550b945c6e00fa9cb314d.md) | 137 | `result-track:cd7550b945c6e00fa9cb314daa5688856e6751fddb7289937f3b492933f5a461` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/lowesteigenvalue-failure-crossing--ea6bdb1711479fba0863858b.md) | 142 | `result-track:ea6bdb1711479fba0863858bd394785e1cb1034eb611eb1a66f9450bac6deada` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--d3e408f2daf0f792e287b7d9.md) | 147 | `result-track:d3e408f2daf0f792e287b7d9e768252bb2669f4069685b4843dc00184393b8ae` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/declarations/affinefixture-lowesteigenvalueprofile--7422cb2e62dd064dde95bde7.md) | 152 | `result-track:7422cb2e62dd064dde95bde712fb1d2aa4a205f595b7920533c47cfe0ee43a96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
