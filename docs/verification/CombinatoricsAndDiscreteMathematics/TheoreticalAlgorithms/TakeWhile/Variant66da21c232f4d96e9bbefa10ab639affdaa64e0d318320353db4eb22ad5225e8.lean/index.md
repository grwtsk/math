# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6be77119dc903e613ce9cd26a958d44339b3e07",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6be77119dc903e613ce9cd26a958d44339b3e07`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dropWhile_get_zero_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/dropwhile-get-zero-not--6e19322946e6398e77dc3ac7.md) | 28 | `result-track:6e19322946e6398e77dc3ac7499f4019606182147b7a9021f5cbd290e4ee589f` |
| 2 | `theorem` | [length_dropWhile_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/length-dropwhile-le--3982359ee859c3cd0fcae260.md) | 40 | `result-track:3982359ee859c3cd0fcae2608ade2466781f8e17a6576ea341740091c2a628c8` |
| 3 | `theorem` | [dropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/dropwhile-eq-nil-iff--0e5592c0e06fa9eb98b8e3a5.md) | 52 | `result-track:0e5592c0e06fa9eb98b8e3a57917694809c494cffbe5fe49e142fbc0318bbb13` |
| 4 | `theorem` | [dropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/dropwhile-eq-self-iff--532d964165e622b2ad95ca85.md) | 58 | `result-track:532d964165e622b2ad95ca85c03d4857102a8453340f1dc955c7d3412c2b10f9` |
| 5 | `theorem` | [takeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/takewhile-eq-self-iff--bf9704dd62f962b5c62ef546.md) | 73 | `result-track:bf9704dd62f962b5c62ef546945b032288108fce3972d331bd39d1603c4f211f` |
| 6 | `theorem` | [takeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/takewhile-eq-nil-iff--4ecf6f27cf1e172098449140.md) | 79 | `result-track:4ecf6f27cf1e172098449140ef8477acf9078e6b8b5cea2728fb20862a2dceac` |
| 7 | `theorem` | [mem_takeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/mem-takewhile-imp--9e1c7c5a6953d9bfc4e0d05c.md) | 87 | `result-track:9e1c7c5a6953d9bfc4e0d05c317b0892b3bf9f735432d69979a046552b13345c` |
| 8 | `theorem` | [takeWhile_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/takewhile-takewhile--ce690314e4fe0ecd096cd43d.md) | 97 | `result-track:ce690314e4fe0ecd096cd43d9e319c0827d6191b73dc5dc44952df5a07e39a2d` |
| 9 | `theorem` | [takeWhile_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/takewhile-idem--8692279efc63a6dbf0fe2d27.md) | 103 | `result-track:8692279efc63a6dbf0fe2d2783c97ca76554ccde0f19aec3a8e8c5a8d027b549` |
| 10 | `lemma` | [find?_eq_head?_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/find-eq-head-dropwhile-not--1f7af8faf9652e3a77c6e7ec.md) | 108 | `result-track:1f7af8faf9652e3a77c6e7ec87e166e01b55ec4fff27726bebb482ac785a6cbf` |
| 11 | `lemma` | [find?_not_eq_head?_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/find-not-eq-head-dropwhile--7278910ba9658c98fe715fe0.md) | 123 | `result-track:7278910ba9658c98fe715fe02358fd536b48500af60f406386245a5afd4d5744` |
| 12 | `lemma` | [find?_eq_head_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/find-eq-head-dropwhile-not--c5d07e455263c6a409f87a31.md) | 130 | `result-track:c5d07e455263c6a409f87a31c192f762251ca2c1311c7420b8514812cea50572` |
| 13 | `lemma` | [find?_not_eq_head_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8.lean/declarations/find-not-eq-head-dropwhile--116885c57856c292555a95dd.md) | 134 | `result-track:116885c57856c292555a95dd4e6e60df812a0be7d427d4eee330a839565ad216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
