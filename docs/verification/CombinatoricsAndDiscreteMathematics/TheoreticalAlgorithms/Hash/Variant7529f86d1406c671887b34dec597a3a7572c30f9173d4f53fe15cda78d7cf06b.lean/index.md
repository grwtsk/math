# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "953f4215a005fe2be9f92c6532f7303063b61255",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `953f4215a005fe2be9f92c6532f7303063b61255`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean.json)

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
| 1 | `structure` | [Hash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/hash256--e08f46c83f59ea50e0131057.md) | 22 | `declaration-track:e08f46c83f59ea50e0131057a9b4da44c99be23b46157da01d4ddd894283e928` |
| 2 | `def` | [lowerHexAlphabet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/lowerhexalphabet--871346375c57527a4927ee45.md) | 28 | `declaration-track:871346375c57527a4927ee45aeff76a22a31e21becde97c9a8defbb45fc1b77c` |
| 3 | `def` | [IsLowerHexDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/islowerhexdigit--97f07c75af6573ec07a56b9b.md) | 32 | `declaration-track:97f07c75af6573ec07a56b9b6e956d42486149d52483a23958448c5c837cf2a8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/instance--273bc9d9e10e8588cf86d633.md) | 35 | `declaration-track:273bc9d9e10e8588cf86d633e461f2af55803ea3a274c9d1d9c66c5165dcf9f1` |
| 5 | `def` | [Hash256.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/hash256-valid--a8c92a83806fad916d39bfd6.md) | 42 | `declaration-track:a8c92a83806fad916d39bfd6c5bda60447a0c5eec2ff67b94e85068fdfd76bed` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/instance--6687ed8854712bf98eb6741e.md) | 47 | `declaration-track:6687ed8854712bf98eb6741edc1a534a16d1650758fb10e3ee3c308a66946fb1` |
| 7 | `def` | [verifyHash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/verifyhash256--3deda184a1869bbb10caddcd.md) | 52 | `declaration-track:3deda184a1869bbb10caddcd28acaae2633adf129a5871c22412008207e86d73` |
| 8 | `theorem` | [verifyHash256_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean/declarations/verifyhash256-sound--1f4040c5180baee0ce60c809.md) | 57 | `result-track:1f4040c5180baee0ce60c8098c0ef844a7d701663d39045d27a28c8b75efd165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
