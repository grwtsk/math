# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableState

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7ca2ab0d88aa2c53f1e942fa124042fe453a2ca",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7ca2ab0d88aa2c53f1e942fa124042fe453a2ca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/state--95fdb62d38e14d3571d7a378.md) | 33 | `declaration-track:95fdb62d38e14d3571d7a378b1668f45bc6dcf5d138e32cfbd4a08df3a6f42f9` |
| 2 | `def` | [rawPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/rawpacked--3fbe377da740574d8f8fd449.md) | 39 | `declaration-track:3fbe377da740574d8f8fd4493570263cb9ea998f641dd3fc4848354cab777c93` |
| 3 | `def` | [representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/representation--2e10c6c3a7e7389319475bea.md) | 42 | `declaration-track:2e10c6c3a7e7389319475bea62c3a94868c47275a54ebdf6fbcb5841f7ce225a` |
| 4 | `def` | [decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode--630d1746ae6878eced862600.md) | 45 | `declaration-track:630d1746ae6878eced862600aba66fd833bbcd89e5c61240b347fbbe7ae74c5f` |
| 5 | `structure` | [WellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/wellformed--567abecd2171fb05fc8515a6.md) | 52 | `declaration-track:567abecd2171fb05fc8515a636af0875f3198f543ec719208b32679665f3cd2a` |
| 6 | `theorem` | [node_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/node-lookup--3ec532cf96dbb3418453326a.md) | 60 | `result-track:3ec532cf96dbb3418453326a22dbe35ba3df30cdf7fa4b218a307ad86b300661` |
| 7 | `theorem` | [parent_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/parent-lookup--24dfb3061f321ebf3b2b3889.md) | 67 | `result-track:24dfb3061f321ebf3b2b3889ce7ca1f2fe243e24c269257de149e68859f7fa16` |
| 8 | `theorem` | [expand_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/expand-state--9abe559e995d2f5c84c4846c.md) | 75 | `result-track:9abe559e995d2f5c84c4846c08b08e4676c89a9418dab42ed3a764bde77a70e0` |
| 9 | `theorem` | [decodeSlot_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decodeslot-state--9a86501b5338736943bd85b3.md) | 100 | `result-track:9a86501b5338736943bd85b35769173f20f6b992472be3d19c364c6e4e9f81ef` |
| 10 | `theorem` | [expandDictionary_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/expanddictionary-state--9850412ddc26ff1599eff35f.md) | 108 | `result-track:9850412ddc26ff1599eff35f9d63f870e621fd9cb28e30fb82bb818edef2714d` |
| 11 | `theorem` | [expandedPacked_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/expandedpacked-state--04697fb3bdfa751a35d160c7.md) | 133 | `result-track:04697fb3bdfa751a35d160c7ba013e80eecf103816548ea583671dc8648e98d3` |
| 12 | `theorem` | [decode_eq_unpack](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-eq-unpack--0b678502c144b2908b7d8b9c.md) | 138 | `result-track:0b678502c144b2908b7d8b9ca1ac2680ed0927756b02330c2c47c87b62c0d6c0` |
| 13 | `theorem` | [unpack_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/unpack-success--f9350675d1531833bb901470.md) | 144 | `result-track:f9350675d1531833bb901470f7173f352fb8ead408232adc7a314dbf7155c346` |
| 14 | `theorem` | [decode_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-success--0b475ed201858dc3fbbe3a88.md) | 172 | `result-track:0b475ed201858dc3fbbe3a884f9745ff1ad2c2f66d73587507fbe629084760df` |
| 15 | `theorem` | [output_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/output-valid--a460a892a6be811dc60281d9.md) | 179 | `result-track:a460a892a6be811dc60281d940adf604196a3b2da11c934b252407aa49ca7f3d` |
| 16 | `def` | [extendedDictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/extendeddictionary--8e8650f5c0ff51129f691131.md) | 188 | `declaration-track:8e8650f5c0ff51129f69113133fe5968f3530d933259d192503ad3f5bd05832c` |
| 17 | `theorem` | [mem_extended_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/mem-extended-iff--9b0e7c1c9ae8e14f15ff4284.md) | 193 | `result-track:9b0e7c1c9ae8e14f15ff4284a86ef2bc62f64ae1377dd9a16341d60462e6f4f8` |
| 18 | `def` | [extendedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/extendednodes--612b6af5407fe79553c59cce.md) | 202 | `declaration-track:612b6af5407fe79553c59ccec083aee6e525cd0c2df874e236b45a8b9b5689af` |
| 19 | `def` | [basePacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/basepacked--8c892e07cafefbbef42ba2b6.md) | 208 | `declaration-track:8c892e07cafefbbef42ba2b6409cab12747ce2444af4faaf3d9ec984eb3278da` |
| 20 | `def` | [realPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/realpacked--4ddcfb38518d81fc3f3d02a6.md) | 212 | `declaration-track:4ddcfb38518d81fc3f3d02a686985cb1c232785234d543148a7f1e2322e76a60` |
| 21 | `theorem` | [base_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/base-valid--85865bbe2de45372858db399.md) | 216 | `result-track:85865bbe2de45372858db3998b6ce64cd2eea2372fe7c64a74b89c2074ee63ee` |
| 22 | `theorem` | [real_dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/real-dictionary--80b184a6b03ad2a9b5a934bf.md) | 223 | `result-track:80b184a6b03ad2a9b5a934bf8fec250c2045e8b44bfa278efe9146afd8ba7784` |
| 23 | `def` | [update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/update--5f6a6097ce6b0d754fd7dede.md) | 240 | `declaration-track:5f6a6097ce6b0d754fd7dede89a9291d05fd7b2aa47eb1649e403504a42aed6f` |
| 24 | `theorem` | [old_cell_stable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/old-cell-stable--c9d4a5265716ebd88e78c12e.md) | 245 | `result-track:c9d4a5265716ebd88e78c12eafcad3e1f6c769474f9af8d1bf6083e8a2356e27` |
| 25 | `theorem` | [extended_cells](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/extended-cells--00aca1d7c5671e3a1b58d3dc.md) | 260 | `result-track:00aca1d7c5671e3a1b58d3dc5952b264a40204db021b024df005381d87db6193` |
| 26 | `theorem` | [update_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/update-wellformed--1d0773125675bced66e79de4.md) | 274 | `result-track:1d0773125675bced66e79de4d51bcd711948db12f4b0dd7893e58c0e63fbe972` |
| 27 | `theorem` | [prefixes_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/prefixes-retained--a58aea379a7d4be857412eb2.md) | 293 | `result-track:a58aea379a7d4be857412eb22152596fa0f3946f4c49b763eba3d421d28b741d` |
| 28 | `theorem` | [unpack_base](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/unpack-base--c402b06c4824e39686d61491.md) | 300 | `result-track:c402b06c4824e39686d6149120bc1481c7e3d255882bae585285693107fecf1a` |
| 29 | `theorem` | [rawPacked_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/rawpacked-update--c5d0a40b2134f2575072dba8.md) | 307 | `result-track:c5d0a40b2134f2575072dba86a8c4f6367ffed0f9c11700bf079f4c4a4344718` |
| 30 | `theorem` | [unpack_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/unpack-update--cbd6aaee58090752c5070112.md) | 313 | `result-track:cbd6aaee58090752c507011220c576ab7be9854864bc48d47c7a6e1b5dda7822` |
| 31 | `theorem` | [decode_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-update--5ee2f4df8b19c11e2aafd017.md) | 321 | `result-track:5ee2f4df8b19c11e2aafd0173b0b8182a26d4acc6adb3a43836eda65980fd94b` |
| 32 | `theorem` | [decode_two_updates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-two-updates--dd2f712aef333b8e86b6a78d.md) | 327 | `result-track:dd2f712aef333b8e86b6a78d1e40323ad62a6a19925ea97ac3d2308cc0e6224a` |
| 33 | `theorem` | [decode_grouped](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-grouped--7590692ded661951fd12016a.md) | 338 | `result-track:7590692ded661951fd12016a16614ba420e4764e52490dcd74b13411c798400d` |
| 34 | `theorem` | [update_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/update-recovers--927cf0edf240d31d7c2c4864.md) | 345 | `result-track:927cf0edf240d31d7c2c486405c2c5ad5828087a46d6b4d63adf7dfbcd181cef` |
| 35 | `def` | [ofOneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/ofonestep--0f6e4aa89360d680ad470ce7.md) | 361 | `declaration-track:0f6e4aa89360d680ad470ce7cd94e10913fcb8a8c9e55aeccab3039a70e32656` |
| 36 | `theorem` | [ofOneStep_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/ofonestep-wellformed--f58333b99304a994566b0487.md) | 367 | `result-track:f58333b99304a994566b0487b496edeaa868553ed6f06a197250ad1861c225a6` |
| 37 | `theorem` | [decode_ofOneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-ofonestep--bac9e9b9dfb759d8be5ba014.md) | 380 | `result-track:bac9e9b9dfb759d8be5ba014fc3501f98e5a88faf00b59378a80a3775d4cd1bc` |
| 38 | `def` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/empty--b682cc4ec1d443d1bfd1f37a.md) | 384 | `declaration-track:b682cc4ec1d443d1bfd1f37aec14ea35fbf251895933adeb983f93ae9a90d2f3` |
| 39 | `theorem` | [empty_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/empty-wellformed--30ad1db68706e2a1562c3d94.md) | 386 | `result-track:30ad1db68706e2a1562c3d945b4de85502b9d2e16c67f34f99aeabefedee61b7` |
| 40 | `theorem` | [decode_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/declarations/decode-empty--d70b61679d78c0f6bb4cce0e.md) | 396 | `result-track:d70b61679d78c0f6bb4cce0ebb553c6435b5b2d0cd883d0b7e06a31e4e8b3a1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
