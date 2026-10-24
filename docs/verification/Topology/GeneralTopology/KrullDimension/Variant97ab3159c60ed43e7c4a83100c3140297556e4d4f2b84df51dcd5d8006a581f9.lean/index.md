# Verification target: GRWTSK.Topology.GeneralTopology.KrullDimension.Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "159580475c13b2b3784c54750fe953b38f9318f8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `159580475c13b2b3784c54750fe953b38f9318f8`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean.json)

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
| 1 | `def` | [topologicalKrullDim](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topologicalkrulldim--a2df5cadb956c927139266a7.md) | 48 | `declaration-track:a2df5cadb956c927139266a7d96b7997751a48ccb1a23f0c6081015a04ee2c05` |
| 2 | `theorem` | [Topology.IsInducing.topologicalKrullDim_le](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topology-isinducing-topologicalkrulldim-le--dfab19816f23f0a5a471c249.md) | 57 | `result-track:dfab19816f23f0a5a471c249430cc9ecd238c4a94acb3f1de53d628bd1646d0c` |
| 3 | `theorem` | [IsHomeomorph.topologicalKrullDim_eq](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/ishomeomorph-topologicalkrulldim-eq--c5a6e1ef5c1a38c6dcd3e20a.md) | 62 | `result-track:c5a6e1ef5c1a38c6dcd3e20ab34ad20d7ab3a74beeea809ad46940bab69d07d3` |
| 4 | `theorem` | [topologicalKrullDim_subspace_le](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topologicalkrulldim-subspace-le--070fc8d0414bc10287ecd0b1.md) | 72 | `result-track:070fc8d0414bc10287ecd0b17d0d9bc2a64fe06e4230578f5b4492282c3949df` |
| 5 | `theorem` | [topologicalKrullDim_zero_of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topologicalkrulldim-zero-of-discretetopology--f08d5d661ebcdf798390ad83.md) | 76 | `result-track:f08d5d661ebcdf798390ad83015f7fb34c5337cd0375c53540d431f4512a52c2` |
| 6 | `lemma` | [Topology.IsOpenEmbedding.coheight_map](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topology-isopenembedding-coheight-map--96c4a44d617f97704c7712de.md) | 83 | `result-track:96c4a44d617f97704c7712de24241e449ebf9503a197a2bdbad6b2c9223e77dd` |
| 7 | `lemma` | [Topology.IsOpenEmbedding.coheight_eq](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topology-isopenembedding-coheight-eq--57a7cdba7be2352b9a47dc15.md) | 92 | `result-track:57a7cdba7be2352b9a47dc15d3ca7905c2ce75932d8e6ec2be6a9aeae177608e` |
| 8 | `def` | [coheightZeroSetOrderIsoIrreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/coheightzerosetorderisoirreduciblecomponents--a21d114f3b072b4f1827b347.md) | 109 | `declaration-track:a21d114f3b072b4f1827b347ae54c4539f7ef8325691e5f97722bb17a7aff780` |
| 9 | `lemma` | [QuasiSober.coheight_eq_zero_subset_of_coheight_eq_one](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/quasisober-coheight-eq-zero-subset-of-coheight-eq-one--31727fafbdf7a38adfb3a92f.md) | 124 | `result-track:31727fafbdf7a38adfb3a92f7fd9efe910e3b1044ad9d8ba426a0b241ad2e822` |
| 10 | `lemma` | [TopologicalSpace.NoetherianSpace.finite_coheight_one_of_closure_ne_univ](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant97ab3159c60ed43e7c4a83100c3140297556e4d4f2b84df51dcd5d8006a581f9.lean/declarations/topologicalspace-noetherianspace-finite-coheight-one-of-closure-ne-univ--3ce6bd7d10bcadc00082bd8f.md) | 140 | `result-track:3ce6bd7d10bcadc00082bd8f0f64f66a50f854a83994dbc308d31816782519da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
