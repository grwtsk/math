# Verification target: GRWTSK.Topology.GeneralTopology.Ascoli.Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c572a02ab48df44a858d10e229ee913611a5b47",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c572a02ab48df44a858d10e229ee913611a5b47`.

Source path: `GRWTSK/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.CompactConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equicontinuous.comap_uniformFun_eq](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuous-comap-uniformfun-eq--eb431d686f31c745199d70cd.md) | 92 | `result-track:eb431d686f31c745199d70cdc035305cd114a3c32416e66bc19407e077841d95` |
| 2 | `lemma` | [Equicontinuous.isUniformInducing_uniformFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuous-isuniforminducing-uniformfun-iff-pi--8bd0e0aabe8f9457dee0e490.md) | 143 | `result-track:8bd0e0aabe8f9457dee0e4901babde2ffe8f8c96a3a6e607e73a9c0ccba41858` |
| 3 | `lemma` | [Equicontinuous.inducing_uniformFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuous-inducing-uniformfun-iff-pi--9c8e6fbec8f4366f57ded4dc.md) | 159 | `result-track:9c8e6fbec8f4366f57ded4dc72a7bb52c04f7ca77be6bc4b0aba70be9f4c408a` |
| 4 | `theorem` | [Equicontinuous.tendsto_uniformFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuous-tendsto-uniformfun-iff-pi--0247220ed16710dc5ab4ff02.md) | 170 | `result-track:0247220ed16710dc5ab4ff0288f72547f393d49006a9ea0dae528d5248cc1279` |
| 5 | `theorem` | [EquicontinuousOn.comap_uniformOnFun_eq](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-comap-uniformonfun-eq--57f4519a93872e143b2d2d43.md) | 219 | `result-track:57f4519a93872e143b2d2d43c74b0e6334283ca429cb5135d431f77386eb19c8` |
| 6 | `lemma` | [EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-isuniforminducing-uniformonfun-iff-pi--7aabb5e334cc94a11aae56ed.md) | 259 | `result-track:7aabb5e334cc94a11aae56ed9d18c47aa2281978211b0f4d69745b11cc05f860` |
| 7 | `lemma` | [EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-isuniforminducing-uniformonfun-iff-pi--49e5d2a5d575f98c4c3a5959.md) | 275 | `result-track:49e5d2a5d575f98c4c3a595909d5a0dc27642a26df27e0e3026411617c7b1df9` |
| 8 | `lemma` | [EquicontinuousOn.inducing_uniformOnFun_iff_pi'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-inducing-uniformonfun-iff-pi--73b06bb6b8981baddfe850fb.md) | 298 | `result-track:73b06bb6b8981baddfe850fb49be1eaecadfa71ad55b0a164bcacadf9da4d21c` |
| 9 | `lemma` | [EquicontinuousOn.isInducing_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-isinducing-uniformonfun-iff-pi--536905127aede38a9e7ac32d.md) | 314 | `result-track:536905127aede38a9e7ac32d2e6acc838adffcbdd5ca8dac1d9b5f7a667d5fcd` |
| 10 | `theorem` | [EquicontinuousOn.tendsto_uniformOnFun_iff_pi'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-tendsto-uniformonfun-iff-pi--87ba402e98b0f80a6ca1041d.md) | 338 | `result-track:87ba402e98b0f80a6ca1041d25ee5746aaf481cba93017d929a677c6ade184e1` |
| 11 | `theorem` | [EquicontinuousOn.tendsto_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-tendsto-uniformonfun-iff-pi--97637ab0fe26ec28e7fabd63.md) | 365 | `result-track:97637ab0fe26ec28e7fabd635f90095aa8448dfcfdc8a0c5fd5993cca8a406bc` |
| 12 | `theorem` | [EquicontinuousOn.isClosed_range_pi_of_uniformOnFun'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-isclosed-range-pi-of-uniformonfun--4f1ca46d2d35979c1d70d61b.md) | 380 | `result-track:4f1ca46d2d35979c1d70d61b9d1d4fcbfce2052edd945699dde362986de40955` |
| 13 | `theorem` | [EquicontinuousOn.isClosed_range_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/equicontinuouson-isclosed-range-uniformonfun-iff-pi--015f6b0f7228a71ae448bfc6.md) | 401 | `result-track:015f6b0f7228a71ae448bfc6a33f9006bbbc0eaca79ccc3bc4021650ae56c3c7` |
| 14 | `theorem` | [ArzelaAscoli.compactSpace_of_closed_inducing'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/arzelaascoli-compactspace-of-closed-inducing--cb798ac003615e5ee3ab783d.md) | 424 | `result-track:cb798ac003615e5ee3ab783d0a5759cfd4c32bc4c47f97f5b9c7762a49bd304c` |
| 15 | `theorem` | [ArzelaAscoli.compactSpace_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/arzelaascoli-compactspace-of-isclosedembedding--7eefa5bf1c3170a269685760.md) | 459 | `result-track:7eefa5bf1c3170a269685760635bc7d03b8ea0fdad0987b61dfe99188db78c68` |
| 16 | `theorem` | [ArzelaAscoli.isCompact_closure_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/arzelaascoli-iscompact-closure-of-isclosedembedding--cdc3a7594b09dea881764e36.md) | 477 | `result-track:cdc3a7594b09dea881764e36d6a4026d9f99bacb9bc35f2a95c725cfbeadb22b` |
| 17 | `theorem` | [ArzelaAscoli.isCompact_of_equicontinuous](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/declarations/arzelaascoli-iscompact-of-equicontinuous--5833e77a3d3cf645d9972178.md) | 502 | `result-track:5833e77a3d3cf645d99721789f7edbb14ece5f413308835f0708c86b356c9889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
