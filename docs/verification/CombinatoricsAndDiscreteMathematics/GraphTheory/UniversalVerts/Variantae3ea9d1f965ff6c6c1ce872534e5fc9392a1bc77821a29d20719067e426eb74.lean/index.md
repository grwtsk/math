# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UniversalVerts.Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bce72b46714e5f2d5affeff4736eed63de08d82",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bce72b46714e5f2d5affeff4736eed63de08d82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Represents` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Matching` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/declarations/universalverts--59615454a9a16cbf752889b0.md) | 32 | `declaration-track:59615454a9a16cbf752889b00cfa30a0e202b2df7b2a53a2d194e716418b2f7b` |
| 2 | `lemma` | [isClique_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/declarations/isclique-universalverts--21049177848375c9d305b592.md) | 34 | `result-track:21049177848375c9d305b5925a5124e0bc624f02b2186682078b77499d75a16a` |
| 3 | `def` | [deleteUniversalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/declarations/deleteuniversalverts--babb502a7840823bdbbb9453.md) | 41 | `declaration-track:babb502a7840823bdbbb945307f7fd5017d639f5af69cc1763b97f60eafaa7e0` |
| 4 | `lemma` | [Subgraph.IsMatching.exists_of_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/declarations/subgraph-ismatching-exists-of-universalverts--344317993f230d5f5a36d6f0.md) | 44 | `result-track:344317993f230d5f5a36d6f0d3fe20eff69b35d0a5a3205d00233a604b40c6b4` |
| 5 | `lemma` | [disjoint_image_val_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/declarations/disjoint-image-val-universalverts--d06df9e0f5a7e7173fea5b36.md) | 55 | `result-track:d06df9e0f5a7e7173fea5b36fd0beb77f51ddae1090d574a3125bfb6653bd9b5` |
| 6 | `lemma` | [even_ncard_image_val_supp_sdiff_image_val_rep_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variantae3ea9d1f965ff6c6c1ce872534e5fc9392a1bc77821a29d20719067e426eb74.lean/declarations/even-ncard-image-val-supp-sdiff-image-val-rep-union--d1efa3b595d3f41597901829.md) | 65 | `result-track:d1efa3b595d3f4159790182918a5ad12c86d22502707b38b2854ce4a3bc4ba70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
