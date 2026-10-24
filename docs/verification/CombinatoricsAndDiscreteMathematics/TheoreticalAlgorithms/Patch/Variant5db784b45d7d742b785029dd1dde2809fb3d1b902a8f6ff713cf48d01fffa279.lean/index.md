# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patch.Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5150ee72697b3d076fd98b18b36117f33bb2a34",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5150ee72697b3d076fd98b18b36117f33bb2a34`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean.json)

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
| 1 | `structure` | [LemmaCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/declarations/lemmacandidate--387dbce38a6bce58474579fd.md) | 20 | `declaration-track:387dbce38a6bce58474579fdafaa099fd55c6c9828ed2bf8e57ba990ec0b3338` |
| 2 | `inductive` | [RewriteDirection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/declarations/rewritedirection--d37bac6a5848f67acc58105b.md) | 28 | `declaration-track:d37bac6a5848f67acc58105b984f751e8cdb800caf024959cd3f9ebc8a6d8f8e` |
| 3 | `structure` | [SourceRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/declarations/sourcerange--4ee42906538da0e9fa8efd6f.md) | 34 | `declaration-track:4ee42906538da0e9fa8efd6f9e314f77569399427b01243f0e26839189b7e3e1` |
| 4 | `inductive` | [ProofPatch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/declarations/proofpatch--1b4db74ccdb521ea67803dbc.md) | 41 | `declaration-track:1b4db74ccdb521ea67803dbc83c30654a6c934a372308b3fe7babb3b3aee2892` |
| 5 | `def` | [ProofPatch.applyTask](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/declarations/proofpatch-applytask--82ad4da3af4f76b35069d8eb.md) | 56 | `declaration-track:82ad4da3af4f76b35069d8eb17dbe7e7a33e3bbb964c5400c9deb87ad1c04168` |
| 6 | `theorem` | [ProofPatch.applyTask_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279.lean/declarations/proofpatch-applytask-eq--60f7862d39f04b132d64a041.md) | 59 | `result-track:60f7862d39f04b132d64a0419b8b1196dbbe1fed4065b609780a415aa10e77e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
