# Verification target: GRWTSK.Topology.GeneralTopology.CantorBendixson.Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1f1cdba86b16f634af58d6f4da03e25af41a2b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1f1cdba86b16f634af58d6f4da03e25af41a2b`.

Source path: `GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean.json)

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
| 1 | `def` | [iteratedDerivedSet](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset--e4c4cd1ad094b74ff8a28d0b.md) | 77 | `declaration-track:e4c4cd1ad094b74ff8a28d0b0fe54b968ed7588cdba6471cf29dae0354acb52f` |
| 2 | `theorem` | [iteratedDerivedSet_zero](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-zero--11a039fde4983067849b692f.md) | 86 | `result-track:11a039fde4983067849b692fa264f2cd3a4b344bce6f8b569628331524bc7117` |
| 3 | `theorem` | [iteratedDerivedSet_succ](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-succ--1f7de4fe2062cb4d84745ad7.md) | 91 | `result-track:1f7de4fe2062cb4d84745ad774f890a38d0dd228d486fa783b3cb62f5e48c45e` |
| 4 | `theorem` | [iteratedDerivedSet_limit](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-limit--498d659742147cbedbbb37ce.md) | 96 | `result-track:498d659742147cbedbbb37ce89f17c8c8e6e129100a659364f8bc7e08cdc762c` |
| 5 | `theorem` | [iteratedDerivedSet_constant_iff_preperfect](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-constant-iff-preperfect--76e1582e6dcb36d7708e73ed.md) | 102 | `result-track:76e1582e6dcb36d7708e73edc4f90461d2093baf4039c272f8cf86ed3c5fcdce` |
| 6 | `theorem` | [isClosed_iteratedDerivedSet](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/isclosed-iteratedderivedset--ea70be82f6984b5699dc0c09.md) | 108 | `result-track:ea70be82f6984b5699dc0c0910e77fa6c5dae06f13b4e7e32666e1615bc98ad6` |
| 7 | `theorem` | [iteratedDerivedSet_antitone](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-antitone--b444e3403da596ed32e31abe.md) | 119 | `result-track:b444e3403da596ed32e31abe63eaa3a9a451a05dcee405bda57f33e0e62667db` |
| 8 | `theorem` | [iteratedDerivedSet_mono](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-mono--b7f01ef1c09d137936cd69b6.md) | 122 | `result-track:b7f01ef1c09d137936cd69b603199cf9e2fc171e0992a3267326ff116051ecc0` |
| 9 | `theorem` | [mem_fixedPoints_of_iteratedDerivedSet_succ_eq](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/mem-fixedpoints-of-iteratedderivedset-succ-eq--4c417574692e4cbb7a2c73cd.md) | 128 | `result-track:4c417574692e4cbb7a2c73cd51832e6a329344296fd69fdea12d2e68aea9c004` |
| 10 | `theorem` | [iteratedDerivedSet_mem_fixedPoints](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/iteratedderivedset-mem-fixedpoints--22e46829f3da33343d479dd8.md) | 133 | `result-track:22e46829f3da33343d479dd8c484f59056b496e48cd292275b6c8acae0dad85c` |
| 11 | `def` | [perfectKernel](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel--db3671e578e3b3318ebe1034.md) | 140 | `declaration-track:db3671e578e3b3318ebe103464e3db4cf87b72a4dcf0d06fa01a892078d2e163` |
| 12 | `theorem` | [perfectKernel_subset_iteratedDerivedSet](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel-subset-iteratedderivedset--c14380f1e3a54feba517ff68.md) | 143 | `result-track:c14380f1e3a54feba517ff68aa96aefa346a5b7a1a09330df972427d06a5c5be` |
| 13 | `theorem` | [perfectKernel_subset](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel-subset--c3b9f91c2c35e160b708b4ab.md) | 147 | `result-track:c3b9f91c2c35e160b708b4abb943c7e8d52abc67a5c495bc8e3cfccbbf294d2f` |
| 14 | `theorem` | [perfectKernel_mono](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel-mono--7a4f3497849a506206f4e04f.md) | 151 | `result-track:7a4f3497849a506206f4e04f815d7cec8c39353f0603de2b95e8bc1e4bea03d7` |
| 15 | `theorem` | [isClosed_perfectKernel](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/isclosed-perfectkernel--8f22a1f6f60626a2e540ec1e.md) | 155 | `result-track:8f22a1f6f60626a2e540ec1efba4c18d54a214500be2390e0b9924c1aacfff4f` |
| 16 | `theorem` | [perfectKernel_empty](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel-empty--a51d76861561940a23133f7c.md) | 160 | `result-track:a51d76861561940a23133f7cec7378e5c327bf195de3fd0656cd027a7fa774dd` |
| 17 | `theorem` | [perfectKernel_eq_iteratedDerivedSet_of_mem_fixedPoints](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel-eq-iteratedderivedset-of-mem-fixedpoints--f35812aaa59f7ca298278fa0.md) | 165 | `result-track:f35812aaa59f7ca298278fa0594b8889e77784b1b7b6819bff46e099e9005a01` |
| 18 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IteratedDerivedSet.Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.Perfect.subset_perfectKernel](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/root-grwtsk-topology-generaltopology-iteratedderivedset-variant98f822458--6657097c6df19053b1d24f21.md) | 175 | `result-track:6657097c6df19053b1d24f21f7c3f8a7a5b23e77f28a5fc413e5445ceffef99b` |
| 19 | `theorem` | [perfect_perfectKernel](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfect-perfectkernel--554eb880264fd3fbc0a6742e.md) | 183 | `result-track:554eb880264fd3fbc0a6742ee1d1f1ceed5b497a6b8277568dbbe5326a81e0b5` |
| 20 | `theorem` | [perfectKernel_idem](../../../../../mathematics/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/declarations/perfectkernel-idem--f8411e72a77c8a0b5b294a3b.md) | 192 | `result-track:f8411e72a77c8a0b5b294a3bfb581340d0efdfe629a1608fdd5302a410080e2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
