# Verification target: GRWTSK.Topology.GeneralTopology.Attempt03.Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f8222eb327fb6fdc8b8652c9c02107d22f51bc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f8222eb327fb6fdc8b8652c9c02107d22f51bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean.json)

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
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/smallpositive--e67a05d738971a689e5ffa5e.md) | 25 | `declaration-track:e67a05d738971a689e5ffa5eacd10cc220c7c4fc2fd714ce9ab0c6eb8558f392` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/globalnonnegative--411d7ed7ae264e1b0c4f3720.md) | 28 | `declaration-track:411d7ed7ae264e1b0c4f372098e89b2d1c3408fe9c7b67ce79973266c1760e90` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/nonvanishingonpositive--3a96f072abf96c78c2d03450.md) | 31 | `declaration-track:3a96f072abf96c78c2d03450402954e50a120c8e5aaabdfea9ffd699a8c36180` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture--2785dbb42312d6ed243d694e.md) | 34 | `declaration-track:2785dbb42312d6ed243d694e6646a9823c72544c18fabeae7559dba4d1f2a278` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture-continuous--1edb5e2f8e35f2546b335cf7.md) | 36 | `result-track:1edb5e2f8e35f2546b335cf73552b6c3f29c9f1a1cad89415c6966da296eda43` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture-smallpositive--7ff4a5673ac0408f3e52bb94.md) | 40 | `result-track:7ff4a5673ac0408f3e52bb94d11af65dbb4de675f5c7f84bba0c7865f61576a1` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture-later-negative--da80bd41a47573f1c5d1e0ab.md) | 46 | `result-track:da80bd41a47573f1c5d1e0abcf0ab0cc2c4165d9e3499d9c3078dca2a680a38d` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture-not-global--1223abf77473645634963ea4.md) | 49 | `result-track:1223abf77473645634963ea4aefd24c47ce60da3f0aebecb51191135aa12f205` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/continuous-local-does-not-imply-global--89dc8bf1f468bdd66f8c3ad6.md) | 54 | `result-track:89dc8bf1f468bdd66f8c3ad6a27dba9aa028468723b6662d9dd29c8f32d167d7` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/bounded-window-can-miss-negative--b71bad93169593f82993d193.md) | 63 | `result-track:b71bad93169593f82993d193b33182e73d2b066c31802ee34c3c3cb643288dbd` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture-unique-crossing--1a0562c8544662fa0495004c.md) | 76 | `result-track:1a0562c8544662fa0495004cb0a03afecdb3f6e1f9a1d5033f60135a430f0639` |
| 12 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/zero-before-negative--e13968f998e53b58ede1afc5.md) | 82 | `result-track:e13968f998e53b58ede1afc53a0ada25381cc82a4c814e313c1d7bafa15febeb` |
| 13 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/zero-of-not-global--aec079fe3b466f12f432a67a.md) | 105 | `result-track:aec079fe3b466f12f432a67aa882d602da868d88d519356062255ad5ce230011` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/positive-everywhere-of-nonvanishing--b208dbae6236008ae6ecb1c4.md) | 116 | `result-track:b208dbae6236008ae6ecb1c44bd9d24dd4af57749694b0257f46dd7dba82b05e` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/positive-everywhere-iff-nonvanishing--806c710d5b6f5c8e277783e2.md) | 128 | `result-track:806c710d5b6f5c8e277783e2ea8c7c1cef80cec20bd421170eefbf28edcae475` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/global-nonnegative-of-nonvanishing--6340575e1727911848d72e16.md) | 135 | `result-track:6340575e1727911848d72e16644fde0f05317f7875056172b7be7ecbdb2102b8` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/lowesteigenvalueprofile--7fe593c1913305a70af35008.md) | 142 | `declaration-track:7fe593c1913305a70af35008a5329cddcef6309b6036381b6f60fb587c4d8068` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/lowesteigenvalue-crossing--2eae23fddab6ec7e942468f2.md) | 145 | `result-track:2eae23fddab6ec7e942468f265ba5f4cd0d30a0269ff86cd8fe374351875b053` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/lowesteigenvalue-failure-crossing--73f70ddbdaf37cb95fd4e917.md) | 150 | `result-track:73f70ddbdaf37cb95fd4e917485e93b48760b4b2c3233f95ec6061f1e8d88889` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--3a38ddcd776847dbde2d481a.md) | 155 | `result-track:3a38ddcd776847dbde2d481adadf6e5bffcfcdf16d6576cab908042a63197e65` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant674c1e7c34c2356b75d72eaa99c5fd8cd0899c9c6657125908baab1b5ca3c7a3.lean/declarations/affinefixture-lowesteigenvalueprofile--93383b7a1812a3b708e87fd1.md) | 160 | `result-track:93383b7a1812a3b708e87fd14934a76caf1bb8ee86437b36fe00b8e6f31d0b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
