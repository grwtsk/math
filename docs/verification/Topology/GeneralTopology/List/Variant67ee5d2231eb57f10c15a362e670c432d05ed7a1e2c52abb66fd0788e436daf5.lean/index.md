# Verification target: GRWTSK.Topology.GeneralTopology.List.Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82b124917ec325df281973b6becb37a035cd47ea",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82b124917ec325df281973b6becb37a035cd47ea`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ListTraverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/instance--ac6046eaedd54499a21be498.md) | 31 | `declaration-track:ac6046eaedd54499a21be49819c5f8225e8dfc46f4184d6110e42a23c480a1cf` |
| 2 | `theorem` | [nhds_list](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/nhds-list--836a7484d4d0f55e46d0bfaa.md) | 34 | `result-track:836a7484d4d0f55e46d0bfaafded491eefe454c8866f2c8cb5572802949aedb4` |
| 3 | `theorem` | [nhds_nil](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/nhds-nil--c58375891edd3412c6f62c57.md) | 72 | `result-track:c58375891edd3412c6f62c57d14499c700b052ec63d9d3a93ec8e8c03f714a80` |
| 4 | `theorem` | [nhds_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/nhds-cons--968cf678212e6759186bdd85.md) | 75 | `result-track:968cf678212e6759186bdd85c13ea7a5c7f0471ee13641eb02222a6484c6ee0c` |
| 5 | `theorem` | [List.tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/list-tendsto-cons--0e5e7331a5031e06850479b3.md) | 78 | `result-track:0e5e7331a5031e06850479b3136af4d5631e61b6a5b32cc024a72df357ad47a7` |
| 6 | `theorem` | [Filter.Tendsto.cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/filter-tendsto-cons--bd230e344b52487c2e7fc036.md) | 82 | `result-track:bd230e344b52487c2e7fc0367ca410ba87be89354194ef35fa621688deb7ede5` |
| 7 | `theorem` | [tendsto_cons_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-cons-iff--29b04ecedf0c348e93a873f4.md) | 89 | `result-track:29b04ecedf0c348e93a873f47f6ea21d329f0735484413d30b4257b82ca0c9a1` |
| 8 | `theorem` | [continuous_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-cons--93327c87f1f880ab611426b6.md) | 97 | `result-track:93327c87f1f880ab611426b6a24e46ffdfb722083f5bfd045c618cd96e64df9f` |
| 9 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-nhds--b877545a9d56711aaada2d28.md) | 100 | `result-track:b877545a9d56711aaada2d286c64d2ce268c987f8a44eec34a1d44aef7d23ac8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/instance--a8f884ea7f08a175f5bf1391.md) | 111 | `declaration-track:a8f884ea7f08a175f5bf1391b9e064ae032d61739ff5273a1486686123534ad7` |
| 11 | `theorem` | [continuousAt_length](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuousat-length--dbd310ddab065ce1a2af6942.md) | 114 | `result-track:dbd310ddab065ce1a2af6942360f2103d2e2ff85c6aec25927ba7431aa8f6e68` |
| 12 | `theorem` | [tendsto_insertIdx'](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-insertidx--46aa30264bf034e75cb5ce46.md) | 124 | `result-track:46aa30264bf034e75cb5ce46ccce0f11d9747c1945802388f66aea94bd2d73c3` |
| 13 | `theorem` | [tendsto_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-insertidx--4e6e955ed120339ecae18077.md) | 139 | `result-track:4e6e955ed120339ecae18077a0cc3bc76917c0c9a33a7faa3d262e8810c6a659` |
| 14 | `theorem` | [continuous_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-insertidx--c3951139bd68965acf090eec.md) | 144 | `result-track:c3951139bd68965acf090eec535e1dd8cf01e9fb5b483f8d645c7ff276e273fa` |
| 15 | `theorem` | [tendsto_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-eraseidx--efc95d0d60dca36f816e3d66.md) | 148 | `result-track:efc95d0d60dca36f816e3d66ff759c33bf21b1d53009b5a6100f93b4cb1c8b72` |
| 16 | `theorem` | [continuous_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-eraseidx--99182dc089407e52bf53a8bd.md) | 157 | `result-track:99182dc089407e52bf53a8bd0b1874016361bca367c3ea88e8b260f70279c621` |
| 17 | `theorem` | [tendsto_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-prod--81a7afd72783771f85f3ff57.md) | 161 | `result-track:81a7afd72783771f85f3ff577028240ef255f9b15071b521bf84507a5d1511a4` |
| 18 | `theorem` | [continuous_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-prod--1976ab8d5b104eeaef5ffe59.md) | 172 | `result-track:1976ab8d5b104eeaef5ffe59faae3349924c35a74582abc5efe387d9cd6383cd` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/instance--5637fed1067b137b5d981692.md) | 181 | `declaration-track:5637fed1067b137b5d981692caa8cf295296171e0b530f217ff025cd21f374ff` |
| 20 | `theorem` | [tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-cons--8bf62769ea4a51ce29d626d3.md) | 183 | `result-track:8bf62769ea4a51ce29d626d36bd841631cdf0d21d6bdd711ad3984bb8fbde031` |
| 21 | `theorem` | [tendsto_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/tendsto-insertidx--97216b933062f3d529ef61c9.md) | 188 | `result-track:97216b933062f3d529ef61c9fbed7f21339e665e7d032e52c0873965dc9361c4` |
| 22 | `theorem` | [continuous_insertIdx'](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-insertidx--cd150f4802ae0f417adcfaf3.md) | 198 | `result-track:cd150f4802ae0f417adcfaf3a2b4e07d636da28c2e9a4318335e4ca7ec607852` |
| 23 | `theorem` | [continuous_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-insertidx--4f6f3242af1a90b574169716.md) | 203 | `result-track:4f6f3242af1a90b574169716f06ec52adea6b544ac7227d88562f9f2fe1a67a4` |
| 24 | `theorem` | [continuousAt_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuousat-eraseidx--2fd091c421285a566b050e32.md) | 207 | `result-track:2fd091c421285a566b050e322d2cd468503a0817458e06041da0bd260b4bd035` |
| 25 | `theorem` | [continuous_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/declarations/continuous-eraseidx--e7a74ada05259e0bf100a1f0.md) | 214 | `result-track:e7a74ada05259e0bf100a1f002dc967f490c58b0b89f59fa446b97b8831cbbea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
