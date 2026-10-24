# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.IsUniquelyCodimOneFace.Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d319534ffa2fb9b1e080282105631fe7f1911d3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d319534ffa2fb9b1e080282105631fe7f1911d3`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniquelyCodimOneFace](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/isuniquelycodimoneface--d2573c8f6189110a993069bb.md) | 47 | `declaration-track:d2573c8f6189110a993069bb7d23da5d0a766f5fb9fa3bd1013b70720117a44c` |
| 2 | `lemma` | [iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/iff--a2776c232e81dcd1ac3cd199.md) | 52 | `result-track:a2776c232e81dcd1ac3cd199ab2680f3be667b0e8b3ea8c1a2e84c4b94da8196` |
| 3 | `lemma` | [dim_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/dim-eq--8ff8f0859013697b3ed638f5.md) | 68 | `result-track:8ff8f0859013697b3ed638f5590b5845bf9591a1490aa362ed756026b7ee17df` |
| 4 | `lemma` | [cast](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/cast--7fbc86518c9010d580540d64.md) | 74 | `result-track:7fbc86518c9010d580540d6476754bab34890576325a63eac3c2dfa0ba1c76de` |
| 5 | `lemma` | [existsUnique_δ_cast_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/existsunique-cast-simplex--8258883ae4a2b8dcb8b09acc.md) | 77 | `result-track:8258883ae4a2b8dcb8b09acc723dfb749ed21a7c4b2e650caf46c0dd10f4b201` |
| 6 | `def` | [index](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/index--2b062f1b5fa904cd5282290b.md) | 86 | `declaration-track:2b062f1b5fa904cd5282290bdc316f2f6b7ee654f48be5099ef9d22d5f3ec7f6` |
| 7 | `lemma` | [δ_index](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/index--951ffba03ab9909fb582b106.md) | 89 | `result-track:951ffba03ab9909fb582b1062477add97fe14b8350d0d1332307069348131864` |
| 8 | `lemma` | [δ_eq_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/eq-iff--4548c2873cfef671f40b40f3.md) | 93 | `result-track:4548c2873cfef671f40b40f3bf8ca413c09b05d49c6bd557ec431e7ed774801d` |
| 9 | `lemma` | [le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/le--cf037ce3493a5e8f26418f1f.md) | 100 | `result-track:cf037ce3493a5e8f26418f1f35e34638ebaa17a67686824cc3b4150b4b8bb6e1` |
| 10 | `lemma` | [unique](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/unique--35877b4015fbfcd383d7402c.md) | 108 | `result-track:35877b4015fbfcd383d7402cd8a23e0429e5e31d8c324426c9f96ec2ee886111` |
| 11 | `lemma` | [op](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/op--0c2b4417fece2dc849a2fb75.md) | 117 | `result-track:0c2b4417fece2dc849a2fb75a0af6fcaab985707ea7cfa9b79b41aa67451c229` |
| 12 | `lemma` | [of_iso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/of-iso--308b9d8b3af6bc313bf22e47.md) | 127 | `result-track:308b9d8b3af6bc313bf22e4791107bcbb3fd69775ca7f1bdfef556bf3f302d4f` |
| 13 | `lemma` | [iff_of_iso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/iff-of-iso--e1515be91cb8bc2a678c4646.md) | 135 | `result-track:e1515be91cb8bc2a678c4646df1aec3bb25ce99573e77e66fe26f56bd35253a1` |
| 14 | `lemma` | [index_of_iso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/declarations/index-of-iso--9e6513d26be0a9d562a5b227.md) | 140 | `result-track:9e6513d26be0a9d562a5b2279adc48746f2a21596ef09c2711341d0e70a5d023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
