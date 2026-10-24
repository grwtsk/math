# GRWTSK.Combinatorics.DirectedGraph.PrefixTableState

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdc163ad6de5c4c0f69405f1d2cdcd20b137d037`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [State](declarations/state--cf6645522db8120b95a81931.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rawPacked](declarations/rawpacked--eda286014dc0678278b2b1a1.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [representation](declarations/representation--5a4ac3bd0fd008ffec53a200.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [decode](declarations/decode--9d502065603bb4d093390196.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [WellFormed](declarations/wellformed--62d08fcacba2ea166dc8ca56.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [node_lookup](declarations/node-lookup--81cbf8e2ce6caf5d035092c0.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parent_lookup](declarations/parent-lookup--e9607289cc680a12180f6b53.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [expand_state](declarations/expand-state--7d51069644c213f5f0984563.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [decodeSlot_state](declarations/decodeslot-state--13248a206cb5365a0949fb88.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [expandDictionary_state](declarations/expanddictionary-state--d934f26085a04f0df3066742.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [expandedPacked_state](declarations/expandedpacked-state--c62eef594761e01fd15af494.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [decode_eq_unpack](declarations/decode-eq-unpack--17d8a7bc69420a266b545066.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unpack_success](declarations/unpack-success--387e38a67289ee1a803e8dfe.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decode_success](declarations/decode-success--23d26a328d26b6f3f348a40c.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [output_valid](declarations/output-valid--12473994b80045f44d4a6c39.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [extendedDictionary](declarations/extendeddictionary--3e257018c4a8b084a809826a.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_extended_iff](declarations/mem-extended-iff--cb810ec349ab79424768e569.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [extendedNodes](declarations/extendednodes--c6b6bf5c4c007d6b497cdda7.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [basePacked](declarations/basepacked--da41130483947a43e266acd7.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [realPacked](declarations/realpacked--135cd209e0d316be6f2f09ce.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [base_valid](declarations/base-valid--2c37e5a9e4faf4dd87d2e18b.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [real_dictionary](declarations/real-dictionary--1ca854ccbdd63a97316be579.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [update](declarations/update--4a00335321aa03338cfde68d.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [old_cell_stable](declarations/old-cell-stable--d79e0c5896ad888b61a754fa.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [extended_cells](declarations/extended-cells--0ce6e6ee4db559ba0474f197.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [update_wellFormed](declarations/update-wellformed--b83fe857dc65ae169c9e6b48.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prefixes_retained](declarations/prefixes-retained--cb7766144811772aec3f2d07.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unpack_base](declarations/unpack-base--9b0deb0e30d48e7275d654d0.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rawPacked_update](declarations/rawpacked-update--d4630b879b7483bb8845aac8.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unpack_update](declarations/unpack-update--777e6e969dc16b64124c175d.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decode_update](declarations/decode-update--7d9940a049e4eece8e97e975.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [decode_two_updates](declarations/decode-two-updates--0eb0bb4f6f03a2029e3c70d7.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [decode_grouped](declarations/decode-grouped--a123915ef1e40b427a73fe8b.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [update_recovers](declarations/update-recovers--4c8930e4ae9634d6406e37a1.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ofOneStep](declarations/ofonestep--2852c51f6b037023c9d8e607.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ofOneStep_wellFormed](declarations/ofonestep-wellformed--a5d554ba9ca5e14d7c924507.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decode_ofOneStep](declarations/decode-ofonestep--257a09ccde2b5d6be59814b7.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [empty](declarations/empty--d4dc079209e24883c5211ac4.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [empty_wellFormed](declarations/empty-wellformed--b5dbcf92047a0c1b592baaad.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [decode_empty](declarations/decode-empty--32f66ad5f0b28c5bbde73bf4.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
