# Verification target: GRWTSK.Topology.GeneralTopology.Attempt04.Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/smallpositive--d4cb8a44428c5cc79a08a94e.md) | 25 | `declaration-track:d4cb8a44428c5cc79a08a94e2f23b05acdb1d4138ad2449b886cc7958f19260f` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/globalnonnegative--8b8e891c260ed8fd0b3c6866.md) | 28 | `declaration-track:8b8e891c260ed8fd0b3c68660015ae665303de8cf274fea6ec23c9702998b8dc` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/nonvanishingonpositive--9baeb499c2d6e7ba7b932159.md) | 31 | `declaration-track:9baeb499c2d6e7ba7b932159bdb0f8f23f17ae12ab7ca49ce55651328b614c04` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture--74347e6420a17d46fe749f8b.md) | 34 | `declaration-track:74347e6420a17d46fe749f8b66d3ea045f9b100aadbb43b13f5dc2ead73d0755` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture-continuous--3f64f7a7e0d8ac388687cba3.md) | 36 | `result-track:3f64f7a7e0d8ac388687cba3e4f75f0b2873bab1dfec7505a1ba7c079ca6c493` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture-smallpositive--b34ede6cfa7f33e4188676dc.md) | 40 | `result-track:b34ede6cfa7f33e4188676dc9f714a665cd7b4fe71b4e12e503314f7c4eac590` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture-later-negative--a3ab59bd2d20590b34d8bb47.md) | 46 | `result-track:a3ab59bd2d20590b34d8bb472b9a3a5062d9ba2a7aa7c1296e9a6335eda439ab` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture-not-global--82f1f0f4a0fba078adb25357.md) | 49 | `result-track:82f1f0f4a0fba078adb25357436711d16e5ac681cba4345f4b44b4c8d6d058c5` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/continuous-local-does-not-imply-global--67b842858685e6d3857ebffc.md) | 54 | `result-track:67b842858685e6d3857ebffc262c6b633c249a7917d74c48376b79af253219d3` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/bounded-window-can-miss-negative--e0e05b2d6317f0c646ba4fe3.md) | 63 | `result-track:e0e05b2d6317f0c646ba4fe3793daa6c286aacdd5796055ce6f4cbfc9c9c1dc2` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture-unique-crossing--b53fa072e4aa112e8573819a.md) | 76 | `result-track:b53fa072e4aa112e8573819a4d6e619ccb38fbe4b75d68a2caff40e32cd2f941` |
| 12 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/zero-before-negative--f2277fecc91d63d25fed8daf.md) | 82 | `result-track:f2277fecc91d63d25fed8daf12ff2e965ddf56a09eb22d02ed1325423c1918bd` |
| 13 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/zero-of-not-global--1c8add071a0a7fdd0365c98b.md) | 105 | `result-track:1c8add071a0a7fdd0365c98b42c55669b5d1fe79a4f2dd378f118e454a972860` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/positive-everywhere-of-nonvanishing--7b31ba395deec91fa35803d1.md) | 116 | `result-track:7b31ba395deec91fa35803d132d313ff90de5c5ebb4ed1fb5b61c316fd6dcce1` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/positive-everywhere-iff-nonvanishing--b85e6328ea6607618ae4f287.md) | 128 | `result-track:b85e6328ea6607618ae4f287f3672750598eab0e092f1ae257471990a336cbb0` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/global-nonnegative-of-nonvanishing--8f4ca4c095475d7d3dee8518.md) | 135 | `result-track:8f4ca4c095475d7d3dee8518e41b18f36bdd70aa0c1b25fdfe4df06b23e82d96` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/lowesteigenvalueprofile--fbf5820f03d9018348b41bbb.md) | 142 | `declaration-track:fbf5820f03d9018348b41bbb6b84bbde78f44faccd0fd3acf6cb479c644136fd` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/lowesteigenvalue-crossing--3aad276e3207f1cf20a4eb06.md) | 145 | `result-track:3aad276e3207f1cf20a4eb06b01666b866cd75c5e9a73c21576e89bc6dbd5341` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/lowesteigenvalue-failure-crossing--d0ae63c3e2d610d0021e1f42.md) | 150 | `result-track:d0ae63c3e2d610d0021e1f42bf319b1306a57f12a8dcfbb485183d471091aaf2` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--265d2fb734d504fdf575ba62.md) | 155 | `result-track:265d2fb734d504fdf575ba62de42a8410264e982629e2a5b7680a74a6991dbd8` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/declarations/affinefixture-lowesteigenvalueprofile--2a59bff680161ad1f378426a.md) | 160 | `result-track:2a59bff680161ad1f378426a5961108dfa5344b60793d30d2c5386cea024142e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
