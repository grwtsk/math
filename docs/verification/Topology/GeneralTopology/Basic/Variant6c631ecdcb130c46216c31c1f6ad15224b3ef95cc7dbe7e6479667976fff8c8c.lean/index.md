# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf528a132fc9407d9f16afb5f0eb52098416f29",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf528a132fc9407d9f16afb5f0eb52098416f29`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean.json)

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
| 1 | `lemma` | [IsTransitiveRel.prod_subset_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/istransitiverel-prod-subset-trans--a6f8b354ab779cb81d045d0b.md) | 65 | `result-track:a6f8b354ab779cb81d045d0bd0a130a28c1386610f314112fe7fe77ec7b57dfb` |
| 2 | `lemma` | [IsTransitiveRel.mem_filter_prod_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/istransitiverel-mem-filter-prod-trans--8dbcb06c6a54adf305f03e7e.md) | 73 | `result-track:8dbcb06c6a54adf305f03e7e08138c4a06443126cc7da22a996aec4206203b0a` |
| 3 | `lemma` | [ball_subset_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/ball-subset-of-mem--1508bd14a4426c3cfa63360e.md) | 81 | `result-track:1508bd14a4426c3cfa63360e9bea5ef9995c82996deb7a1a7fa15c44c5c53674` |
| 4 | `lemma` | [ball_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/ball-eq-of-mem--128825555a83d9683cdf2f0f.md) | 85 | `result-track:128825555a83d9683cdf2f0f4204d4cd2e4a9c7a72f1f643d866cb0c956e3ef5` |
| 5 | `class` | [IsUltraUniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/isultrauniformity--8574c4ed06b5eefb5d73ed2d.md) | 94 | `declaration-track:8574c4ed06b5eefb5d73ed2de8d1db2cc086bcd3b3405124adec27071c3d3290` |
| 6 | `lemma` | [IsUltraUniformity.mk_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/isultrauniformity-mk-of-hasbasis--b6c49b5aaaf9cf0b3325fb64.md) | 98 | `result-track:b6c49b5aaaf9cf0b3325fb649ad2e2950d262a0c52435be93fbb04cb6146f8ca` |
| 7 | `lemma` | [IsUltraUniformity.mem_nhds_iff_symm_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/isultrauniformity-mem-nhds-iff-symm-trans--26a5d9c28ffbf73b8a8e4c15.md) | 106 | `result-track:26a5d9c28ffbf73b8a8e4c15982d08d1612eb4136613514511e9c66ca844c008` |
| 8 | `lemma` | [isOpen_ball_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/isopen-ball-of-mem-uniformity--fca315fddcd2e5614f414bf9.md) | 119 | `result-track:fca315fddcd2e5614f414bf9662bee7cbf21811467c50f8a324aedd0b2094f5e` |
| 9 | `lemma` | [isClosed_ball_of_isSymm_of_isTrans_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/isclosed-ball-of-issymm-of-istrans-of-mem-uniformity--59410cdeb0ec1c83f9627cda.md) | 125 | `result-track:59410cdeb0ec1c83f9627cda4625199b41f936b3a18bc6d8253cbfca6224621f` |
| 10 | `lemma` | [isClopen_ball_of_isSymm_of_isTrans_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/isclopen-ball-of-issymm-of-istrans-of-mem-uniformity--e976f748df9e60017f41ac69.md) | 131 | `result-track:e976f748df9e60017f41ac699ad5540861b55a4fc1123438d8e4b9ea602f1dc2` |
| 11 | `lemma` | [nhds_basis_clopens](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/nhds-basis-clopens--996ee24a86b3f54e1a6f1996.md) | 138 | `result-track:996ee24a86b3f54e1a6f1996f487c65e98bf46d20123078630fd66ee1a5c7e07` |
| 12 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsUltraUniformity.Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.TopologicalSpace.isTopologicalBasis_clopens](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant6c631ecdcb130c46216c31c1f6ad15224b3ef95cc7dbe7e6479667976fff8c8c.lean/declarations/root-grwtsk-topology-generaltopology-isultrauniformity-variant5826437ebc--2565039c133390dfc74e877b.md) | 148 | `result-track:2565039c133390dfc74e877b935dd13b0ddacf340fb11821be76818b4b83f1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
