# Verification target: GRWTSK.Topology.GeneralTopology.Finset.Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc7b56a896a71d437b3d4240a1a5638c4d0fd29",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc7b56a896a71d437b3d4240a1a5638c4d0fd29`.

Source path: `GRWTSK/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_piFinset_iff_zero_tail](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/mem-pifinset-iff-zero-tail--15be1e1a04bb529422ef8f49.md) | 20 | `result-track:15be1e1a04bb529422ef8f49f0be21267dfe95556c98503271b4464aa4163b4c` |
| 2 | `lemma` | [mem_piFinset_iff_last_init](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/mem-pifinset-iff-last-init--efacbdec2720c21ae4d93c1f.md) | 24 | `result-track:efacbdec2720c21ae4d93c1fe5ba8d68b79b579d0d9ce55c7239cedeba38ba39` |
| 3 | `lemma` | [mem_piFinset_iff_pivot_removeNth](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/mem-pifinset-iff-pivot-removenth--0eb2f2d83d1eff448d613254.md) | 28 | `result-track:0eb2f2d83d1eff448d613254bc0ba4be5a2e9ce084ab99efe49dd95eeda57fa0` |
| 4 | `lemma` | [cons_mem_piFinset_cons](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/cons-mem-pifinset-cons--f301bab1208eca4efdb86e46.md) | 32 | `result-track:f301bab1208eca4efdb86e46d0c3ac71d612cad8635c21e285781e22847f7b7e` |
| 5 | `lemma` | [snoc_mem_piFinset_snoc](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/snoc-mem-pifinset-snoc--5774a2f5a7990d6600fa7a72.md) | 38 | `result-track:5774a2f5a7990d6600fa7a72a9b19897184205cb7b2cc33b4640110c73f15de7` |
| 6 | `lemma` | [insertNth_mem_piFinset_insertNth](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/insertnth-mem-pifinset-insertnth--3c660fff926eadd8093f11cd.md) | 44 | `result-track:3c660fff926eadd8093f11cd542f117053bc6e05a9ce3b103031e9844a8b29b8` |
| 7 | `lemma` | [map_consEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/map-consequiv-filter-pifinset--4b42ffae1e05f96f402d1939.md) | 55 | `result-track:4b42ffae1e05f96f402d1939dd2c7b19470cd1e0ae357f5ab8ba4cd09a410a83` |
| 8 | `lemma` | [map_snocEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/map-snocequiv-filter-pifinset--2586b5387964ede7fdd71c0e.md) | 60 | `result-track:2586b5387964ede7fdd71c0e13f9de60f40ec15bc8139041bb0bd76158e01b73` |
| 9 | `lemma` | [map_insertNthEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/map-insertnthequiv-filter-pifinset--35496da83a71cd577dbd2d96.md) | 65 | `result-track:35496da83a71cd577dbd2d965d15b38b686f56fa99b21d28d0ff084b90829e80` |
| 10 | `lemma` | [filter_piFinset_eq_map_consEquiv](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/filter-pifinset-eq-map-consequiv--9487c4d8f845914716d26986.md) | 70 | `result-track:9487c4d8f845914716d2698669c2a203011a913a4441852e14a3454337cbdc2c` |
| 11 | `lemma` | [filter_piFinset_eq_map_snocEquiv](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/filter-pifinset-eq-map-snocequiv--b8966233c328b10ca5f9d4dc.md) | 75 | `result-track:b8966233c328b10ca5f9d4dcdb60aef6eea05aaac40f1a38ac1a51b6ff3b1b12` |
| 12 | `lemma` | [filter_piFinset_eq_map_insertNthEquiv](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/filter-pifinset-eq-map-insertnthequiv--c0372534b1d06f1c65b6c457.md) | 80 | `result-track:c0372534b1d06f1c65b6c45708b360d1aa81416e449e1df83c89272cd98b272a` |
| 13 | `lemma` | [card_consEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/card-consequiv-filter-pifinset--05ee621b3c7b4bccd1bf0710.md) | 86 | `result-track:05ee621b3c7b4bccd1bf071073fb629f7431dc695cd12ce5ac32118d1a5bd8bb` |
| 14 | `lemma` | [card_snocEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/card-snocequiv-filter-pifinset--297bbfe3c4cd4d0bd6cb74ae.md) | 90 | `result-track:297bbfe3c4cd4d0bd6cb74ae4570e77d667151605f46f81b4026db9b2d96ff34` |
| 15 | `lemma` | [card_insertNthEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/declarations/card-insertnthequiv-filter-pifinset--d4d2bd52fcfc88c76f113318.md) | 95 | `result-track:d4d2bd52fcfc88c76f113318351610ab33b0996b14e8f328895804657344c659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
