# Verification target: GRWTSK.Topology.GeneralTopology.DisjointCover.Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe08aaa7796168c241ab5a2a7dfe6646fb020762",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe08aaa7796168c241ab5a2a7dfe6646fb020762`.

Source path: `GRWTSK/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_finite_clopen_cover](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-finite-clopen-cover--eab63743e1913f469426a09d.md) | 36 | `result-track:eab63743e1913f469426a09dd6f658484f19acd4586d1c3366d86016580b608e` |
| 2 | `lemma` | [exists_finite_nonempty_disjoint_clopen_cover](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-finite-nonempty-disjoint-clopen-cover--b351db91ad1b69e0ce268f0f.md) | 52 | `result-track:b351db91ad1b69e0ce268f0f50d5b1e2982acd2bdd4a436cef5657b8992eaa0c` |
| 3 | `lemma` | [exists_open_prod_subset_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-open-prod-subset-of-mem-nhds-diagonal--d64f415483cb682b3e86c043.md) | 75 | `result-track:d64f415483cb682b3e86c043b094c0dad5ab978c96efd77be6e1ce5b2874f6c0` |
| 4 | `lemma` | [exists_finite_open_cover_prod_subset_of_mem_nhds_diagonal_of_compact](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-finite-open-cover-prod-subset-of-mem-nhds-diagonal-of-compact--04e1aa75fed175b36634b336.md) | 88 | `result-track:04e1aa75fed175b36634b33696ade2045fccd226fac827a8257dc85b719c33e8` |
| 5 | `lemma` | [exists_finite_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal_of_profinite](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-finite-disjoint-nonempty-clopen-cover-of-mem-nhds-diagonal-of-pro--06014fe6b4b2f13208abedc2.md) | 101 | `result-track:06014fe6b4b2f13208abedc29513dfe08dc08a4e00c6d34f5a5395f3bddf482c` |
| 6 | `lemma` | [exists_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-disjoint-nonempty-clopen-cover-of-mem-nhds-diagonal--fbfc6198289e617730804787.md) | 123 | `result-track:fbfc6198289e61773080478732e8a2b963a8e2ac2a368729565daf2651cba3fe` |
| 7 | `lemma` | [exists_finite_approximation_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-finite-approximation-of-mem-nhds-diagonal--1514b3778e8c27621c7180bd.md) | 136 | `result-track:1514b3778e8c27621c7180bd18dd81ce5d7e7261e0ee98c13cd50ae73248b9d8` |
| 8 | `lemma` | [exists_finite_sum_const_mulIndicator_approximation_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/declarations/exists-finite-sum-const-mulindicator-approximation-of-mem-nhds-diagonal--f919da617bf19085e0644499.md) | 163 | `result-track:f919da617bf19085e06444993dd4be19e72dc470617bba89b6d282b28f3f0a17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
