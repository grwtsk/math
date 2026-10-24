# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BasicAux.Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0819358cba3f7614f488280698f66ae0a8c0181d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0819358cba3f7614f488280698f66ae0a8c0181d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.of_push_eq_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/array-of-push-eq-push--741ae3e1321cf87e54dbc374.md) | 27 | `result-track:741ae3e1321cf87e54dbc374641d486e75e876ceafc11e0a55f98b246cdf6821` |
| 2 | `theorem` | [List.size_toArrayAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/list-size-toarrayaux--3c5e0bd29b462ef15d60a94a.md) | 33 | `result-track:3c5e0bd29b462ef15d60a94a1cbed5ff8d763a86fc109117f6d86ce211125f36` |
| 3 | `theorem` | [List.of_toArrayAux_eq_toArrayAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/list-of-toarrayaux-eq-toarrayaux--abb70ea0c4401f4ef6d86514.md) | 38 | `result-track:abb70ea0c4401f4ef6d865142e69bc83ef5da1765ef6fa017318685ab878af26` |
| 4 | `theorem` | [List.toArray_eq_toArray_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/list-toarray-eq-toarray-eq--42571d275df5fa00659f97d7.md) | 51 | `result-track:42571d275df5fa00659f97d727f049c981a0a1a2d07ca607c6e4901e95110b1b` |
| 5 | `def` | [Array.mapM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/array-mapm--b9da2874b96497165bbe25b5.md) | 59 | `declaration-track:b9da2874b96497165bbe25b5d4750a09eb0994de9b33fd65d3939ec803ea812e` |
| 6 | `def` | [mapMonoMImp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/mapmonomimp--b7ca5dfeac91a23a43d73400.md) | 72 | `declaration-track:b7ca5dfeac91a23a43d73400743e78454e6c5fcde51982043ca85a0a8dd14eb9` |
| 7 | `def` | [Array.mapMonoM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/array-mapmonom--8cd5c402f6bfa5b4669d1bf2.md) | 92 | `declaration-track:8cd5c402f6bfa5b4669d1bf245e7ac4408ecde8e3b9c380fcb580690ef898595` |
| 8 | `def` | [Array.mapMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/declarations/array-mapmono--20dbc0ae6bd7155c6eecbc9f.md) | 101 | `declaration-track:20dbc0ae6bd7155c6eecbc9f7723ed4fe21a6ded5832e427754628e71fa06afb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
