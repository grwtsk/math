# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d05c0a0a397633e00a1d8024069c57de383eddc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d05c0a0a397633e00a1d8024069c57de383eddc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.step_iterM_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/declarations/list-step-iterm-nil--2125928834b8b5367b127d84.md) | 35 | `result-track:2125928834b8b5367b127d84f8d62e8f7198b70aa82e22245ac3e6de322a1af5` |
| 2 | `theorem` | [List.step_iterM_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/declarations/list-step-iterm-cons--0c929e0eec8a819915563630.md) | 40 | `result-track:0c929e0eec8a8199155636304864842ba77d4ce19f95c89e86da24b882721c37` |
| 3 | `theorem` | [List.step_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/declarations/list-step-iterm--9524cffc8c752d2949c0fbde.md) | 44 | `result-track:9524cffc8c752d2949c0fbdec3ab67768897f32afc50a4dbef810b9fccf5c548` |
| 4 | `theorem` | [List.toArray_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/declarations/list-toarray-iterm--cd02d0beb44ef04c3e0eb840.md) | 51 | `result-track:cd02d0beb44ef04c3e0eb8405a29800a065d7c8ef6e9cc857863088b830d0315` |
| 5 | `theorem` | [List.toList_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/declarations/list-tolist-iterm--5c261c696324fc82632863b6.md) | 62 | `result-track:5c261c696324fc82632863b681f25d0f5f6edaf56c2f1e82c156404d1136cff8` |
| 6 | `theorem` | [List.toListRev_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c.lean/declarations/list-tolistrev-iterm--7d784fabe61ec3b7fa6aa32d.md) | 67 | `result-track:7d784fabe61ec3b7fa6aa32d2f722f3b601a4b969a3e65890083feefacee1e33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
