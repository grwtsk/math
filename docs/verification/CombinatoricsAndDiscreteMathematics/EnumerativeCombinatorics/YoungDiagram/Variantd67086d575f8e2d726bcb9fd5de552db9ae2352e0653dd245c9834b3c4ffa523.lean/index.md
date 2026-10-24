# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.YoungDiagram.Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac23c7777b7fe62455d359a79c1cab5d0e7b8fe0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac23c7777b7fe62455d359a79c1cab5d0e7b8fe0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean.json)

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
| 1 | `def` | [toPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/topartition--b8bd55290919619d8e6f468d.md) | 30 | `declaration-track:b8bd55290919619d8e6f468ddbe3e441c202688a0f55adb2b13eba2edea4e813` |
| 2 | `def` | [ofPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/ofpartition--a44cc70ded98e34251fa2053.md) | 36 | `declaration-track:a44cc70ded98e34251fa2053dd58ebc234dcf03fd6eafb2ff2a270d0a2d407a1` |
| 3 | `theorem` | [rowLens_ofPartition_eq_sort_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/rowlens-ofpartition-eq-sort-parts--08a96866ac154deb07b07bfc.md) | 42 | `result-track:08a96866ac154deb07b07bfc954cc23b2a9f43850f1da8c7f4a03321488c920c` |
| 4 | `theorem` | [card_ofPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/card-ofpartition--a40720a1cadf00d3094df373.md) | 47 | `result-track:a40720a1cadf00d3094df3735223b237189ed0453cc309e7bee98a26db962165` |
| 5 | `theorem` | [ofPartition_toPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/ofpartition-topartition--b473f0e135b342ed92094769.md) | 53 | `result-track:b473f0e135b342ed920947697b898eef433fec7d81fe6fc87b9d30cbc1a2866e` |
| 6 | `theorem` | [toPartition_ofPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/topartition-ofpartition--920fa2c3d4669fc504f38467.md) | 59 | `result-track:920fa2c3d4669fc504f384673993e4fdd2fb8174be664af357eb126449b0e18b` |
| 7 | `def` | [equivPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/equivpartition--2e19b8fe5add3d682d6d09a4.md) | 65 | `declaration-track:2e19b8fe5add3d682d6d09a42f5878fc146dd3a71f4b85a9c9594484bb505b97` |
| 8 | `def` | [conjugate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/conjugate--6f00aded21f98906a2d1e5c0.md) | 76 | `declaration-track:6f00aded21f98906a2d1e5c0023e46938eb0bd52ce220d1dec44fdaa3b5a233c` |
| 9 | `theorem` | [conjugate_conjugate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/declarations/conjugate-conjugate--723041e6767630603128a8b4.md) | 81 | `result-track:723041e6767630603128a8b44de72d6dfd8f3af17cda55da4003353f31baca1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
