# Verification target: GRWTSK.Topology.GeneralTopology.CosetCover.Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b507a6c6f810c77b88bd72a6d78639136ff249`.

Source path: `GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Complement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_leftTransversal_of_FiniteIndex](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/exists-lefttransversal-of-finiteindex--9d058257ffc0f3ee6e2e2f60.md) | 54 | `result-track:9d058257ffc0f3ee6e2e2f607c77673c82417884a99105cbc136c395a95a63c1` |
| 2 | `theorem` | [leftCoset_cover_const_iff_surjOn](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/leftcoset-cover-const-iff-surjon--b53695a7820e5fc5166430b6.md) | 74 | `result-track:b53695a7820e5fc5166430b68b2c931f30b3602e52faeb5c3c2cf8a926f72269` |
| 3 | `theorem` | [finiteIndex_of_leftCoset_cover_const](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/finiteindex-of-leftcoset-cover-const--5b8c5d85346c6048e8d3cd0b.md) | 85 | `result-track:5b8c5d85346c6048e8d3cd0bb72c36e0150b450aa361a5685e84678573bafe6a` |
| 4 | `theorem` | [index_le_of_leftCoset_cover_const](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/index-le-of-leftcoset-cover-const--d285f1f3c29951aeaa820ab3.md) | 91 | `result-track:d285f1f3c29951aeaa820ab30e72b290ec0352cbab8a5f7e3242ea9e984c4246` |
| 5 | `theorem` | [pairwiseDisjoint_leftCoset_cover_const_of_index_eq](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/pairwisedisjoint-leftcoset-cover-const-of-index-eq--5caa38611daca18a89b89161.md) | 99 | `result-track:5caa38611daca18a89b891611a772236da1f9e23dc3eac28a304e23c5e8182b2` |
| 6 | `theorem` | [exists_finiteIndex_of_leftCoset_cover_aux](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/exists-finiteindex-of-leftcoset-cover-aux--fbae28ebcf49b47de1b751ec.md) | 127 | `result-track:fbae28ebcf49b47de1b751ec88f0563095c141c41145afccffb299ac2019545f` |
| 7 | `theorem` | [exists_finiteIndex_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/exists-finiteindex-of-leftcoset-cover--b009c0b881a1b4f533b6fc98.md) | 193 | `result-track:b009c0b881a1b4f533b6fc98abdaa151f36828b13649b2b2ae747ef2c811b011` |
| 8 | `theorem` | [leftCoset_cover_filter_FiniteIndex_aux](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/leftcoset-cover-filter-finiteindex-aux--ae831ab5c7606c584186817e.md) | 207 | `result-track:ae831ab5c7606c584186817efff8d34f54b2fa96b5d6fa185c3f81c389ce86eb` |
| 9 | `theorem` | [leftCoset_cover_filter_FiniteIndex](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/leftcoset-cover-filter-finiteindex--69d537e5f31d53ab9f7bab45.md) | 305 | `result-track:69d537e5f31d53ab9f7bab45ffc21e8606f121d3dea550e2f24924eccc348c00` |
| 10 | `theorem` | [one_le_sum_inv_index_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/one-le-sum-inv-index-of-leftcoset-cover--e574bbb7514db34649968b20.md) | 313 | `result-track:e574bbb7514db34649968b207c379bf35d7bc2de48df7fbb9f63804562b7921c` |
| 11 | `theorem` | [pairwiseDisjoint_leftCoset_cover_of_sum_inv_index_eq_one](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/pairwisedisjoint-leftcoset-cover-of-sum-inv-index-eq-one--2445c3e17b0d9440a9b80d12.md) | 322 | `result-track:2445c3e17b0d9440a9b80d128313406626b9a07147af3ddc6d7a7158e2b8ea13` |
| 12 | `theorem` | [exists_index_le_card_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/exists-index-le-card-of-leftcoset-cover--0a18372a0d315341d31a8ae1.md) | 333 | `result-track:0a18372a0d315341d31a8ae1fd53aeba477850267b6098d0a2897dc11c3b8afd` |
| 13 | `theorem` | [Submodule.exists_finiteIndex_of_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/submodule-exists-finiteindex-of-cover--b6850d3ef3548b43b62581b7.md) | 359 | `result-track:b6850d3ef3548b43b62581b7732d3ca4ca6cf1c81905c77debb407f3ab10d356` |
| 14 | `theorem` | [Subspace.biUnion_ne_univ_of_top_notMem](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/subspace-biunion-ne-univ-of-top-notmem--fca6dd45f98d7f75a12c3e77.md) | 373 | `result-track:fca6dd45f98d7f75a12c3e778b91663a94fc86d3ed6e05ba4bda3db1ac3e7f40` |
| 15 | `theorem` | [Subspace.top_mem_of_biUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/subspace-top-mem-of-biunion-eq-univ--717e92458dfdb60df2c2be49.md) | 387 | `result-track:717e92458dfdb60df2c2be495d3b86b79a47f73e74c111248ffacb463e84e60c` |
| 16 | `theorem` | [Subspace.exists_eq_top_of_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/declarations/subspace-exists-eq-top-of-iunion-eq-univ--66849297433aa9191303a834.md) | 397 | `result-track:66849297433aa9191303a834044641ad3c06565a2d9474c812444f770bf1cfa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
