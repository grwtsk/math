# Verification target: GRWTSK.Topology.GeneralTopology.KrullDimension.Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1a47b54fc7e3703c402cde02eed6a1fb16ff06",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1a47b54fc7e3703c402cde02eed6a1fb16ff06`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean.json)

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
| 1 | `def` | [topologicalKrullDim](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topologicalkrulldim--9cbea8e28110904ec5a0b43f.md) | 40 | `declaration-track:9cbea8e28110904ec5a0b43f20d677ba44d16c04303295d047c33dec5e059d4b` |
| 2 | `theorem` | [Topology.IsInducing.topologicalKrullDim_le](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topology-isinducing-topologicalkrulldim-le--f5ab2b3001a1108dac6aaf02.md) | 49 | `result-track:f5ab2b3001a1108dac6aaf029ed531ccc63c87bd8bf50a9070c6c875152bb180` |
| 3 | `theorem` | [IsHomeomorph.topologicalKrullDim_eq](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/ishomeomorph-topologicalkrulldim-eq--b16f91577aabf97d956df4b3.md) | 54 | `result-track:b16f91577aabf97d956df4b33ea2f9f03f652f73645ce47935b547c9741b134b` |
| 4 | `theorem` | [topologicalKrullDim_subspace_le](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topologicalkrulldim-subspace-le--25df976fa64a2a3a6e5d9188.md) | 64 | `result-track:25df976fa64a2a3a6e5d9188d4100c78168b8469bd34dd4933623ceca78d9467` |
| 5 | `theorem` | [topologicalKrullDim_zero_of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topologicalkrulldim-zero-of-discretetopology--16ca6634a0f28802c87c5a7d.md) | 68 | `result-track:16ca6634a0f28802c87c5a7d30435f816fe3a66db9ce935a2a83f476ff81ea0d` |
| 6 | `lemma` | [Topology.IsOpenEmbedding.coheight_map](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topology-isopenembedding-coheight-map--ddfcca6417935f839d42ad03.md) | 75 | `result-track:ddfcca6417935f839d42ad035b5b5cebfe5bc5bbaa5c0163af1e88ff66b646c0` |
| 7 | `lemma` | [Topology.IsOpenEmbedding.coheight_eq](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topology-isopenembedding-coheight-eq--cbf7b5f6e866c2eed1805cf8.md) | 84 | `result-track:cbf7b5f6e866c2eed1805cf823d3384823b2444b815ebe2940c8e48ede59b720` |
| 8 | `def` | [coheightZeroSetOrderIsoIrreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/coheightzerosetorderisoirreduciblecomponents--5af6c13954c388338b5ed11e.md) | 101 | `declaration-track:5af6c13954c388338b5ed11ebb6ce23abda758bf238f2b68f0ba1d6dc4d6c822` |
| 9 | `lemma` | [QuasiSober.coheight_eq_zero_subset_of_coheight_eq_one](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/quasisober-coheight-eq-zero-subset-of-coheight-eq-one--b120ad13f26d65ee4255c042.md) | 116 | `result-track:b120ad13f26d65ee4255c042e854e29fcfbabd15ac09380b9858674710cceda9` |
| 10 | `lemma` | [TopologicalSpace.NoetherianSpace.finite_coheight_one_of_closure_ne_univ](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/declarations/topologicalspace-noetherianspace-finite-coheight-one-of-closure-ne-univ--ebe46b9672aa586c235ec17d.md) | 132 | `result-track:ebe46b9672aa586c235ec17dfe4a36145fae2b70514dfc9bf5422493cc059ecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
