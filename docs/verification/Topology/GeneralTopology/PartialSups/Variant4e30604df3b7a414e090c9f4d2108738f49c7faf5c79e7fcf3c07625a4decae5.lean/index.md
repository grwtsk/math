# Verification target: GRWTSK.Topology.GeneralTopology.PartialSups.Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ad3b105ec5aa861e55d54736c2897c552e6d77",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ad3b105ec5aa861e55d54736c2897c552e6d77`.

Source path: `GRWTSK/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PartialSups` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/partialsups--18b9026cc283742a5802c5eb.md) | 25 | `result-track:18b9026cc283742a5802c5ebe3d80f1f5ef26f0852a637538c4d53d36332527e` |
| 2 | `lemma` | [partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/partialsups-apply--1889234a2267ae8ab938f6f9.md) | 31 | `result-track:1889234a2267ae8ab938f6f977e72a88e0220b336198d47e40f8e7b8059412c8` |
| 3 | `lemma` | [ContinuousAt.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuousat-partialsups-apply--10bb4bb83d6f7e3b2fb57524.md) | 39 | `result-track:10bb4bb83d6f7e3b2fb575248cfe04ec2c2ca85ff20aafe6b4efc5a269c05ef0` |
| 4 | `lemma` | [ContinuousAt.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuousat-partialsups--e44744075e039549177f4eac.md) | 43 | `result-track:e44744075e039549177f4eac9b1610337034287832037a63eb8fc6974b1528e4` |
| 5 | `lemma` | [ContinuousWithinAt.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuouswithinat-partialsups-apply--b428427ed528c8235b0860f8.md) | 47 | `result-track:b428427ed528c8235b0860f837b8fff83bd10a300621df2fecf8d196a4eea6cb` |
| 6 | `lemma` | [ContinuousWithinAt.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuouswithinat-partialsups--6bbed8caf01d26709f5ed94f.md) | 51 | `result-track:6bbed8caf01d26709f5ed94f2122fa6fa713e41116bdb97a82291162b22d2048` |
| 7 | `lemma` | [ContinuousOn.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuouson-partialsups-apply--88f20a0cc27925161aa47cf2.md) | 55 | `result-track:88f20a0cc27925161aa47cf29dd877084e64c8e5116bc5280834ae738737fd39` |
| 8 | `lemma` | [ContinuousOn.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuouson-partialsups--5709b36bd7c5d6dfe2e9bfce.md) | 59 | `result-track:5709b36bd7c5d6dfe2e9bfceb5f78a39eca1fdbbba7f55391809b4444f955cd6` |
| 9 | `lemma` | [Continuous.partialSups_apply](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuous-partialsups-apply--ba218ff084251dbd0b1c4daf.md) | 63 | `result-track:ba218ff084251dbd0b1c4dafa39b2880f5dcd42d4351d148813a73c8ea3b867a` |
| 10 | `lemma` | [Continuous.partialSups](../../../../../mathematics/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/declarations/continuous-partialsups--c8cdd14d5daf9ad31a09dd18.md) | 68 | `result-track:c8cdd14d5daf9ad31a09dd184b959d17d53a9a7332e388668c44886673bc3a2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
