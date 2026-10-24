# Verification target: GRWTSK.Topology.GeneralTopology.Attempt01.Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b517c0daab0a2e9e3631f03ab90a1d1824cb31e8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b517c0daab0a2e9e3631f03ab90a1d1824cb31e8`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean.json)

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
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/smallpositive--70928f49245963d91a49fb1d.md) | 17 | `declaration-track:70928f49245963d91a49fb1dc55416e2ff9bcd040bedcb0aa32d2b2d46f20f59` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/globalnonnegative--c808f4e1addc57ca6e66e55d.md) | 20 | `declaration-track:c808f4e1addc57ca6e66e55d25644ee002f3f380e71c090d56dcbde34e5f6d28` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/nonvanishingonpositive--1e19d6d753c3ebabed994fc1.md) | 23 | `declaration-track:1e19d6d753c3ebabed994fc1b77471dce2e6edf98260622df03f93d5015e0e7b` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture--7f0c790734bbdeaf0edf2f2c.md) | 26 | `declaration-track:7f0c790734bbdeaf0edf2f2c694aba72e82e4379e42b590949056a2a146a4046` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture-continuous--2d4ec703eb6703b697f82a5d.md) | 28 | `result-track:2d4ec703eb6703b697f82a5df1c28b18424a8996ed169d0e0305229e457a4d09` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture-smallpositive--4253ec50ddda177cf2dff117.md) | 32 | `result-track:4253ec50ddda177cf2dff117cd7adc58a1da623805b82687a2fa4cd8900c553e` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture-later-negative--e1e9e59f441dee678f525459.md) | 38 | `result-track:e1e9e59f441dee678f5254591a70ecaba722941256a497fe2f77d007f427daa0` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture-not-global--2e9b5e9b3f3ed05f62df9d53.md) | 41 | `result-track:2e9b5e9b3f3ed05f62df9d53819228f7c7013fd55644d9aa844c0a81a49fb367` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/continuous-local-does-not-imply-global--e23af71debea04c80c9e47ac.md) | 46 | `result-track:e23af71debea04c80c9e47ac07c2c78733caebf8b9a5e399c9000c7af59be5ae` |
| 10 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture-unique-crossing--bcab386ab94265a84edf6a07.md) | 53 | `result-track:bcab386ab94265a84edf6a07a46722dff99b56af3a8c505eafab065e8edff6d9` |
| 11 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/zero-before-negative--ebdf165ade82619750d83b5a.md) | 59 | `result-track:ebdf165ade82619750d83b5a65880730ec234ed5794a9436e4eac7ef3c38fbaa` |
| 12 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/zero-of-not-global--287b5725663eaa84241ddda4.md) | 82 | `result-track:287b5725663eaa84241ddda4d828d49880e62f040b924bed18be3377e09f4179` |
| 13 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/positive-everywhere-of-nonvanishing--65b87de0421095a1e387d962.md) | 92 | `result-track:65b87de0421095a1e387d9622783f060be4d5f5f5c227e308367c748fe7e90b5` |
| 14 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/positive-everywhere-iff-nonvanishing--c77bc3a8afbb829b33fc30d7.md) | 104 | `result-track:c77bc3a8afbb829b33fc30d770ffb6677069a1662a71c6cf6a556955f7c1f32f` |
| 15 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/global-nonnegative-of-nonvanishing--9bc6c8a1d62e113ba73d8943.md) | 111 | `result-track:9bc6c8a1d62e113ba73d8943946e820f7137e34ac63cd030137250be9c927f99` |
| 16 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/lowesteigenvalueprofile--4e15af7fb96eee019ea5daee.md) | 118 | `declaration-track:4e15af7fb96eee019ea5daeed4abebe809b8d7faa7f6435d03d2405be00e882e` |
| 17 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/lowesteigenvalue-crossing--9d0e9fe62680f03768c68f62.md) | 121 | `result-track:9d0e9fe62680f03768c68f62b55e34ec6bb2a2c57b571e9ec012ec95d4051f26` |
| 18 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/lowesteigenvalue-failure-crossing--5fee98b22ef948fc10696a93.md) | 126 | `result-track:5fee98b22ef948fc10696a938d424a6a598b8bc3c5870a2a1f75e1e528d7b221` |
| 19 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--21946c7cfc842ec98e956411.md) | 131 | `result-track:21946c7cfc842ec98e956411d250bd3e21089b2de22912846d555d15bae0d26b` |
| 20 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/declarations/affinefixture-lowesteigenvalueprofile--f2f60b8128b76f69aaa67ea4.md) | 136 | `result-track:f2f60b8128b76f69aaa67ea497dd99a839d7fc4d6d8934bdcfff1f1896ba0454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
