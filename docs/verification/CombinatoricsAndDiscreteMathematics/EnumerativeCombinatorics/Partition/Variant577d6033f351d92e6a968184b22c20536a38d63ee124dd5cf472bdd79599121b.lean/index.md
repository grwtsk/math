# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9f362bf9b19979ece00433c542550fe24c55021",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9f362bf9b19979ece00433c542550fe24c55021`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partition--1ec14bd392613b55b3d2b696.md) | 66 | `declaration-track:1ec14bd392613b55b3d2b69657dae7893a709ee90fd8a95c2f9d33278929a57f` |
| 2 | `def` | [Partition.PartsCardLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partition-partscardle--86006d56524745c86a8183ce.md) | 77 | `declaration-track:86006d56524745c86a8183ce9dadc0ab653471f212fdbac560a76dcced28ba3c` |
| 3 | `def` | [Partitionable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partitionable--825fa96477fccb2bd0705d15.md) | 82 | `declaration-track:825fa96477fccb2bd0705d153e54e5961faabc1e55513e89ba654718b3dc2b32` |
| 4 | `def` | [partOfVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partofvertex--5f3eb0ce4a75201adec980c3.md) | 90 | `declaration-track:5f3eb0ce4a75201adec980c3c244c4c1e051bae33df6cfb17576558dbe9561c0` |
| 5 | `theorem` | [partOfVertex_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partofvertex-mem--07ffd6288ed4b3c62e03ac71.md) | 92 | `result-track:07ffd6288ed4b3c62e03ac7190f275c4c89d11655cf6665d9b5335315496c1ba` |
| 6 | `theorem` | [mem_partOfVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/mem-partofvertex--9daf351ff7c31d191d506f3e.md) | 96 | `result-track:9daf351ff7c31d191d506f3ef88bba1536e1a54ba40e67ffa593144f98026dc2` |
| 7 | `theorem` | [partOfVertex_ne_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partofvertex-ne-of-adj--22ae7071afed4b96984defc5.md) | 100 | `result-track:22ae7071afed4b96984defc54a8514e56093807e7b0a25d43de7dc40faf1c021` |
| 8 | `def` | [toColoring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/tocoloring--687e0ca06115ed3b636e11de.md) | 108 | `declaration-track:687e0ca06115ed3b636e11de2347494317fc8c06c177837321763da33f9874af` |
| 9 | `def` | [toColoring'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/tocoloring--906e476caac738091eb55b88.md) | 114 | `declaration-track:906e476caac738091eb55b88244dd258abd7d4c391c6eac05d9e239a751af282` |
| 10 | `theorem` | [colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/colorable--115e114352b2215741e5bd87.md) | 117 | `result-track:115e114352b2215741e5bd87ad0422130499df979e4c205d52a9abeda90b6ae9` |
| 11 | `def` | [Coloring.toPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/coloring-topartition--16a0ca81128b2a0dd278d24a.md) | 126 | `declaration-track:16a0ca81128b2a0dd278d24a9f322b5fd25fa3d812f2135e2151fac516f7b1c1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/instance--6093ba3001e110ba8159c668.md) | 135 | `declaration-track:6093ba3001e110ba8159c668ae0828973eced3bcb4a70bb1c77e4e70ce87ded1` |
| 13 | `theorem` | [partitionable_iff_colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant577d6033f351d92e6a968184b22c20536a38d63ee124dd5cf472bdd79599121b.lean/declarations/partitionable-iff-colorable--6d1ce6dc8dd9793cf254ca44.md) | 137 | `result-track:6d1ce6dc8dd9793cf254ca44a649e3be0c670a0b2413ac97c1d0dbc736eb927b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
