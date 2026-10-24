# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patch.Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3f1e42234ace9517747a3d8734b232d7957866",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3f1e42234ace9517747a3d8734b232d7957866`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean.json)

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
| 1 | `structure` | [LemmaCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/declarations/lemmacandidate--82c5dce14ac92b5e25e85d23.md) | 28 | `declaration-track:82c5dce14ac92b5e25e85d235c973c4284a4da8244cf4765255c5b820f5dd405` |
| 2 | `inductive` | [RewriteDirection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/declarations/rewritedirection--c177513375c000e636def77a.md) | 36 | `declaration-track:c177513375c000e636def77a322abaa8222a6506ce4dccbc83149668068bdf9b` |
| 3 | `structure` | [SourceRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/declarations/sourcerange--5e817fd86a594486b5185fa7.md) | 42 | `declaration-track:5e817fd86a594486b5185fa754cef1f4ed156331e52a0749efc00fe594c24a96` |
| 4 | `inductive` | [ProofPatch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/declarations/proofpatch--f69e65bc91fb85998ea7717e.md) | 49 | `declaration-track:f69e65bc91fb85998ea7717edbd8c03a268593e6fdd70cbaa210567b7ded0ee5` |
| 5 | `def` | [ProofPatch.applyTask](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/declarations/proofpatch-applytask--259c2c839a3304215fdf91bd.md) | 64 | `declaration-track:259c2c839a3304215fdf91bdb32f37748250661fdc55c0a28fb78c65a1e6c338` |
| 6 | `theorem` | [ProofPatch.applyTask_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/declarations/proofpatch-applytask-eq--d8192b26e54d3430446e073c.md) | 67 | `result-track:d8192b26e54d3430446e073c64a91d105ef1b1712b2ebe0384340696dcd6f27f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
