# Verification target: GRWTSK.Topology.GeneralTopology.PartitionOfUnity.Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da36bee30beecf91a724bedb4aa027c907689d2d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da36bee30beecf91a724bedb4aa027c907689d2d`.

Source path: `GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PartitionOfUnity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_nhds_zero_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/eventually-nhds-zero-forall-closedball-subset--e99b744e04dec3fe09ea1dc4.md) | 48 | `result-track:e99b744e04dec3fe09ea1dc47972e40cbe11cdf3eede078e9a1a9585446927ca` |
| 2 | `theorem` | [exists_forall_closedBall_subset_aux₁](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-forall-closedball-subset-aux--d3c588276fa8a0faa33df75a.md) | 69 | `result-track:d3c588276fa8a0faa33df75a6c372eb3cf3d3f473839d516aa23cb5e3076ba82` |
| 3 | `theorem` | [exists_forall_closedBall_subset_aux₂](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-forall-closedball-subset-aux--2e6935acd20e763c00af0db9.md) | 79 | `result-track:2e6935acd20e763c00af0db9e15331d06366d47a2acb89f0aba32f4294f548ba` |
| 4 | `theorem` | [exists_continuous_real_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-continuous-real-forall-closedball-subset--0bfbc917b09feac009d3833e.md) | 90 | `result-track:0bfbc917b09feac009d3833e9c05fda3cb24f6ac887c0939649abba65f869b3d` |
| 5 | `theorem` | [exists_continuous_nnreal_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-continuous-nnreal-forall-closedball-subset--d09025dd1b37c65c6f798290.md) | 102 | `result-track:d09025dd1b37c65c6f798290c776164b961f49d0db031ad63335f93dd065426e` |
| 6 | `theorem` | [exists_continuous_eNNReal_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-continuous-ennreal-forall-closedball-subset--26998275c6a3b702924a0027.md) | 114 | `result-track:26998275c6a3b702924a002752f61438eef5a597a3481741ae9b8ecba694965b` |
| 7 | `theorem` | [exists_continuous_nnreal_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-continuous-nnreal-forall-closedball-subset--7e65dc7a5a3f34bd0a6d645c.md) | 130 | `result-track:7e65dc7a5a3f34bd0a6d645c5042a8ae54a4cd69dc29a7461b9dfd1b12f14294` |
| 8 | `theorem` | [exists_continuous_real_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/declarations/exists-continuous-real-forall-closedball-subset--661a6028bd803b95ecb9c6c8.md) | 142 | `result-track:661a6028bd803b95ecb9c6c8288201d52a993a77751cbbe55a4913a8cbc628ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
