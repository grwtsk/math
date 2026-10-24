# Verification target: GRWTSK.Topology.GeneralTopology.Contraction.Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "449b924ca4a98fa36dac3e64a989f2f20aa2b6d9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `449b924ca4a98fa36dac3e64a989f2f20aa2b6d9`.

Source path: `GRWTSK/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Stability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PerturbationKind](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/perturbationkind--dca564e4627c4e4bb51ef5b6.md) | 36 | `declaration-track:dca564e4627c4e4bb51ef5b6904f16dc6727ff0eb6922f56a7cf66296ef9994a` |
| 2 | `structure` | [PerturbationMagnitude](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/perturbationmagnitude--e536488e0b109d66ffd7da90.md) | 47 | `declaration-track:e536488e0b109d66ffd7da9047f066566201dd6e5db70f0bff424e8177ab8207` |
| 3 | `structure` | [ContractionCertificate](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/contractioncertificate--a52831e881531aee0df2e517.md) | 55 | `declaration-track:a52831e881531aee0df2e517287d4b045ddf2ef1139c87665c7182f2216f2124` |
| 4 | `theorem` | [region_isComplete](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/region-iscomplete--9210c4b3f265798841ef33b0.md) | 74 | `result-track:9210c4b3f265798841ef33b0bf655596094a616917e0af575deecea551e7eee0` |
| 5 | `def` | [regionStep](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/regionstep--1b3ad244acfd591936d823e8.md) | 79 | `declaration-track:1b3ad244acfd591936d823e8b9c2402bea4e9387c81683fc1931d32be5ade394` |
| 6 | `theorem` | [one_sub_factor_positive](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/one-sub-factor-positive--25d13a2428cfc1831a1aa86f.md) | 85 | `result-track:25d13a2428cfc1831a1aa86fcdc8215d15aec0355fceb70ac00de519e8dd805b` |
| 7 | `def` | [regionFixedPoint](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/regionfixedpoint--2b274666ff764ab627803ccb.md) | 90 | `declaration-track:2b274666ff764ab627803ccbe8c1c8e8fe7d939989a169c55e87bdad77907a71` |
| 8 | `theorem` | [regionFixedPoint_fixed](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/regionfixedpoint-fixed--426aaa5a10d282de643e7d84.md) | 99 | `result-track:426aaa5a10d282de643e7d84f541db0126c93394135b762a8a166dc6c200fcca` |
| 9 | `def` | [certifiedFixedPoint](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/certifiedfixedpoint--4abc8b73b68cc8dc6c689817.md) | 109 | `declaration-track:4abc8b73b68cc8dc6c68981759c71302be2e7584829d2f90d7121c4fa0b02957` |
| 10 | `theorem` | [certifiedFixedPoint_mem_region](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/certifiedfixedpoint-mem-region--2f9903dd53eb86b27433e05a.md) | 124 | `result-track:2f9903dd53eb86b27433e05ab5cfc1ec6658204a0db3692d4ab81dd5e2aeb36f` |
| 11 | `theorem` | [fixedPoint_unique_in_region](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/fixedpoint-unique-in-region--6726059f7af6945e4e0c120f.md) | 130 | `result-track:6726059f7af6945e4e0c120f66abe30345f640b11f68d08068f400a4a2460b9f` |
| 12 | `theorem` | [tendsto_iterates](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/tendsto-iterates--afcab47c94cc928834eb71bf.md) | 162 | `result-track:afcab47c94cc928834eb71bf13c6779073bd7a064dcceaedd835d4b6cd9d555d` |
| 13 | `theorem` | [iterate_distance_le](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/iterate-distance-le--019195f4b88131e3e0d32692.md) | 177 | `result-track:019195f4b88131e3e0d32692cf50e37448155e05b456f49c0524362852e4fefc` |
| 14 | `structure` | [PointwiseOperatorPerturbationOn](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/pointwiseoperatorperturbationon--6d4d96fb7c32fd2dbbbacba0.md) | 201 | `declaration-track:6d4d96fb7c32fd2dbbbacba009cd82e45b9dfb2085077fca01da329e5a4d8c19` |
| 15 | `theorem` | [fixedPoint_displacement_le](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/declarations/fixedpoint-displacement-le--8dab7edb1a6c8892bc9dfe84.md) | 220 | `result-track:8dab7edb1a6c8892bc9dfe849d38c75946c11a519f2ff413392b93fd1d3c158a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
