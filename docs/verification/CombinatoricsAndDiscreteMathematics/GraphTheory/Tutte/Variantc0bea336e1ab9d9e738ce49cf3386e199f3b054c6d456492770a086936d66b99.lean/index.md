# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Tutte.Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a38b5edd15c4705a22ded0e378e628b81e26f27`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean.json)

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
| 1 | `def` | [IsTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/istutteviolator--dfb881f43d4b3c2a3ccbbb87.md) | 36 | `declaration-track:dfb881f43d4b3c2a3ccbbb87c9e1371012c1544f41332da9f7ec9304d91ecfac` |
| 2 | `lemma` | [tutte_exists_isAlternating_isCycles](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/tutte-exists-isalternating-iscycles--36cb3240d14f3fa9c9e493a8.md) | 41 | `result-track:36cb3240d14f3fa9c9e493a84a97d3dc0ed436733a1183e4fc1ee7575648d951` |
| 3 | `lemma` | [IsTutteViolator.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/istutteviolator-mono--04050780b8121698460d4e3d.md) | 60 | `result-track:04050780b8121698460d4e3dad44d11d3deff8bdb1b3a905ff10d1d8e71dd1b0` |
| 4 | `lemma` | [Subgraph.IsMatching.exists_verts_compl_subset_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/subgraph-ismatching-exists-verts-compl-subset-universalverts--0308db99921e816a730afd6b.md) | 77 | `result-track:0308db99921e816a730afd6b7104ecb88227291ebd2626b972ac51892f17d125` |
| 5 | `theorem` | [Subgraph.IsPerfectMatching.exists_of_isClique_supp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/subgraph-isperfectmatching-exists-of-isclique-supp--387bc68d081c5d5d59f1dff2.md) | 123 | `result-track:387bc68d081c5d5d59f1dff24bbe0d47802af9d5f8d8ad68d39e76bdc30d2a9a` |
| 6 | `theorem` | [IsTutteViolator.empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/istutteviolator-empty--4356f22846ea59e1762c7de0.md) | 139 | `result-track:4356f22846ea59e1762c7de032a0228eaeba7572561b0d17fd6694398e5c8620` |
| 7 | `lemma` | [not_isTutteViolator_of_isPerfectMatching](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/not-istutteviolator-of-isperfectmatching--b7de79e1f1e77d5f89a3a6de.md) | 144 | `result-track:b7de79e1f1e77d5f89a3a6de683cd253ca9e39094ef4cf65d49dc8bd264c8c1e` |
| 8 | `theorem` | [tutte_exists_isPerfectMatching_of_near_matchings](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/tutte-exists-isperfectmatching-of-near-matchings--1db96367cc09a6f739b811e9.md) | 157 | `result-track:1db96367cc09a6f739b811e9b23e00181f835dc6fe0abb18770eb8e6868ebf98` |
| 9 | `lemma` | [exists_isTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/exists-istutteviolator--7f2cab9cdae3476ebbe65272.md) | 272 | `result-track:7f2cab9cdae3476ebbe652729fe358c9ed29665fd6a63de388a8e844efe39693` |
| 10 | `theorem` | [tutte](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/declarations/tutte--4834a9a67801a631664537e7.md) | 319 | `result-track:4834a9a67801a631664537e7083bae1ece1acb8ab2aa9638887c22a0d1026a9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
