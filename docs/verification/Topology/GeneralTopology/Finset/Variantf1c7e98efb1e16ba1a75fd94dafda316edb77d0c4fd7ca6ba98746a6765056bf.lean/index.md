# Verification target: GRWTSK.Topology.GeneralTopology.Finset.Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bd0a3b0b9d1ef11e9f2b32f3c3c5d01c5fc8547",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bd0a3b0b9d1ef11e9f2b32f3c3c5d01c5fc8547`.

Source path: `GRWTSK/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_piFinset_iff_zero_tail](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/mem-pifinset-iff-zero-tail--cd3fe4d8942141d0359dccc2.md) | 28 | `result-track:cd3fe4d8942141d0359dccc259c0329bfa7a3ab3c99b887114961998d277ff27` |
| 2 | `lemma` | [mem_piFinset_iff_last_init](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/mem-pifinset-iff-last-init--481c794e6066d711c0e2813b.md) | 32 | `result-track:481c794e6066d711c0e2813b6a46b8257308b5349f3d5111795c47c9164495b6` |
| 3 | `lemma` | [mem_piFinset_iff_pivot_removeNth](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/mem-pifinset-iff-pivot-removenth--25848857d3f1365d71c4d2dd.md) | 36 | `result-track:25848857d3f1365d71c4d2dd25619a3dcb7859ca40b3e0ddd0f1e128128b1ab7` |
| 4 | `lemma` | [cons_mem_piFinset_cons](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/cons-mem-pifinset-cons--b8706fa6e8c19136bd4ae199.md) | 40 | `result-track:b8706fa6e8c19136bd4ae199609ec972decf7351dfee8dfeb48d001cfa773483` |
| 5 | `lemma` | [snoc_mem_piFinset_snoc](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/snoc-mem-pifinset-snoc--71ddc7b334be380b53560a21.md) | 46 | `result-track:71ddc7b334be380b53560a21d7b5efab3e2ba4ffecc740ffcecf3cba58e1c8c9` |
| 6 | `lemma` | [insertNth_mem_piFinset_insertNth](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/insertnth-mem-pifinset-insertnth--4a4f524b0548485a080e3db6.md) | 52 | `result-track:4a4f524b0548485a080e3db60af8c8ae4a85cf0c4f6d66ab6893523a0c91ad47` |
| 7 | `lemma` | [map_consEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/map-consequiv-filter-pifinset--ba4e85c715ebac680f900845.md) | 63 | `result-track:ba4e85c715ebac680f9008450cc3d5d8ae3d267ab5c707cacd8535d038b1282f` |
| 8 | `lemma` | [map_snocEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/map-snocequiv-filter-pifinset--7d091d1604885842433d7c01.md) | 68 | `result-track:7d091d1604885842433d7c010d64fd8823476ed4181575a6fa77fcd417f4f2a0` |
| 9 | `lemma` | [map_insertNthEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/map-insertnthequiv-filter-pifinset--0a2debe90ba3e9368d231031.md) | 73 | `result-track:0a2debe90ba3e9368d2310312714cd61be04f28939f24f62f20c08e7e4bce109` |
| 10 | `lemma` | [filter_piFinset_eq_map_consEquiv](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/filter-pifinset-eq-map-consequiv--7b6e4aaa07cc673b0718cdf9.md) | 78 | `result-track:7b6e4aaa07cc673b0718cdf9c13be38bf84964e7185ed5d3412f7f26f41f34b7` |
| 11 | `lemma` | [filter_piFinset_eq_map_snocEquiv](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/filter-pifinset-eq-map-snocequiv--4b23761fd96f67caf77e4127.md) | 83 | `result-track:4b23761fd96f67caf77e4127a084c699b63abc96a25de5d203d81aa63ceead3d` |
| 12 | `lemma` | [filter_piFinset_eq_map_insertNthEquiv](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/filter-pifinset-eq-map-insertnthequiv--d6daf12f2bf71859c417faa0.md) | 88 | `result-track:d6daf12f2bf71859c417faa0942ebd6342e6e8e6f32c3f5269728daf3f047de0` |
| 13 | `lemma` | [card_consEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/card-consequiv-filter-pifinset--8fd0b9af0066dce7084c64aa.md) | 94 | `result-track:8fd0b9af0066dce7084c64aac7dab682e8c516b645b3722dad18fb9cc34a8adf` |
| 14 | `lemma` | [card_snocEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/card-snocequiv-filter-pifinset--3813a553297bad64fad28bbe.md) | 98 | `result-track:3813a553297bad64fad28bbefe1c7d8b7d62ef9b8ecd5128b38d5eb212623a60` |
| 15 | `lemma` | [card_insertNthEquiv_filter_piFinset](../../../../../mathematics/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/declarations/card-insertnthequiv-filter-pifinset--6f85611e0dd557f8a17a2943.md) | 103 | `result-track:6f85611e0dd557f8a17a29434d8f60c458e3762af8d9e456b5dd46c4ba40966d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
