# Verification target: GRWTSK.Topology.AlgebraicTopology.Dimension.Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f87b750fcda3ada2c002ea8a57366365ca590a38",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f87b750fcda3ada2c002ea8a57366365ca590a38`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean.json)

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
| 1 | `class` | [HasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt--1979566eeb6776b21643faf2.md) | 40 | `declaration-track:1979566eeb6776b21643faf22f845050acf6f2e64eae439000cd9065aebd0623` |
| 2 | `abbrev` | [HasDimensionLE](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionle--ef014471d18a218ab335a095.md) | 44 | `declaration-track:ef014471d18a218ab335a095af32715484ca961b1e12f0fcf2b29accc16cee20` |
| 3 | `lemma` | [degenerate_eq_univ_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/degenerate-eq-univ-of-hasdimensionlt--85f09e0d414747304d47e3b5.md) | 50 | `result-track:85f09e0d414747304d47e3b5ad10e8c70eb4c75c20dcf0fb9a4e449f09a58673` |
| 4 | `lemma` | [nonDegenerate_eq_empty_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/nondegenerate-eq-empty-of-hasdimensionlt--6e7b663d65385fe3838ed587.md) | 53 | `result-track:6e7b663d65385fe3838ed587898263c22a6f40f13015b23a6f49fe27bd8f354f` |
| 5 | `lemma` | [dim_lt_of_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/dim-lt-of-nondegenerate--a73dc5acb56f8297cd1588fb.md) | 61 | `result-track:a73dc5acb56f8297cd1588fb3d503be5867c7f281da3136a45f1ed4d161ff3b4` |
| 6 | `lemma` | [dim_le_of_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/dim-le-of-nondegenerate--3c65d5624ea26f455ca2bce8.md) | 67 | `result-track:3c65d5624ea26f455ca2bce8177d210f6ce1b02aa2243abd04a090e29c3ecbd8` |
| 7 | `lemma` | [hasDimensionLT_of_le](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt-of-le--483c1845d61081ee396ab448.md) | 71 | `result-track:483c1845d61081ee396ab4487d490d1f9a9b7cfbec8d1137d93548241c5086a5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/instance--38383c3ad6755a8b84d5bfd8.md) | 75 | `declaration-track:38383c3ad6755a8b84d5bfd863bee7fba86c89daa792d78b75a6c85670cd9955` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/instance--02e4eab6ce0ffa4ae081230b.md) | 84 | `declaration-track:02e4eab6ce0ffa4ae081230b1872812ea6c2f2df91e6030dfd642f57f8d5f58b` |
| 10 | `lemma` | [le_iff_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/le-iff-of-hasdimensionlt--b2f78109951bfffa0e402f1c.md) | 89 | `result-track:b2f78109951bfffa0e402f1cccd84e540d62ceb33eb946e2e6f20ec006b5c90d` |
| 11 | `lemma` | [eq_top_iff_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/eq-top-iff-of-hasdimensionlt--5fed5086470348ffcbd4b626.md) | 96 | `result-track:5fed5086470348ffcbd4b626c41b6e4a04aa042bc758b49a6bd891d3f82e42cb` |
| 12 | `lemma` | [hasDimensionLT_of_mono](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt-of-mono--71d6f77e0de01f18f2e4d17e.md) | 102 | `result-track:71d6f77e0de01f18f2e4d17eab1cdf0337e18e451879a76b07c7580af9d4fcb4` |
| 13 | `lemma` | [Subcomplex.hasDimensionLT_of_le](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/subcomplex-hasdimensionlt-of-le--b8dd47648935ad2ff0173086.md) | 110 | `result-track:b8dd47648935ad2ff0173086f53dae81cf24a44c7320c928695d9d64c776c368` |
| 14 | `lemma` | [hasDimensionLT_of_epi](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt-of-epi--9eeb01616a1aedb936d915f3.md) | 115 | `result-track:9eeb01616a1aedb936d915f3732a2f09e1b65eea65db4702470b40b4ce7bd369` |
| 15 | `lemma` | [hasDimensionLT_iff_of_iso](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt-iff-of-iso--5f67c331143d184b8efb72a4.md) | 124 | `result-track:5f67c331143d184b8efb72a482d6c54c24472cedb2a3b5dbc56940a62adbee85` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/instance--691bb1e81a6cce8dd1c260a8.md) | 128 | `declaration-track:691bb1e81a6cce8dd1c260a8f1a87ec40357de213584668bd94a805ecfe75d78` |
| 17 | `lemma` | [hasDimensionLT_iSup_iff](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt-isup-iff--321dc3eee1ad18fead161a29.md) | 132 | `result-track:321dc3eee1ad18fead161a29d67d8791d98f22ed226269325795e2dfd0209610` |
| 18 | `lemma` | [hasDimensionLT_subcomplex_top_iff](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/hasdimensionlt-subcomplex-top-iff--de896362057e34fa20bbc273.md) | 137 | `result-track:de896362057e34fa20bbc2739b3f43372d205a676a3b4dde80a2c3df4b9dbad1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variantccb45c780c8118f5c39c4bee34012513ab21a19b532d1437b9d330805c422fc4.lean/declarations/instance--c079deeda402164350e031d7.md) | 141 | `declaration-track:c079deeda402164350e031d73276d14aebcc00a4f24fc65a48cfab52300c1002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
