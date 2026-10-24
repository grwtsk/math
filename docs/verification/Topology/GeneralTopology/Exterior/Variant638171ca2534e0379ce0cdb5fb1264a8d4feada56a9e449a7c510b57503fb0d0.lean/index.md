# Verification target: GRWTSK.Topology.GeneralTopology.Exterior.Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d704a736db66ec4eab021d0a2296405967e7f64",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d704a736db66ec4eab021d0a2296405967e7f64`.

Source path: `GRWTSK/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.NhdsSet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exterior_singleton_eq_ker_nhds](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-singleton-eq-ker-nhds--a98469fe083ea5ec375ead80.md) | 24 | `result-track:a98469fe083ea5ec375ead80119311bb572f576b63c8e8a90d892e0c6580a48f` |
| 2 | `theorem` | [mem_exterior_singleton](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/mem-exterior-singleton--1af007baa3b6f54786808bcb.md) | 27 | `result-track:1af007baa3b6f54786808bcb97a4515487345903d851f07692dbfb99eb6a909d` |
| 3 | `lemma` | [exterior_def](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-def--ac3c56e24cf351f438a1bfe6.md) | 30 | `result-track:ac3c56e24cf351f438a1bfe6a5232b583e3e82b028173b3d23a15dcfe1d76e6c` |
| 4 | `lemma` | [mem_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/mem-exterior--45d5226b9ff30b8334b5067c.md) | 33 | `result-track:45d5226b9ff30b8334b5067c4bcc628432e1314025f037b36da981bb2a517c25` |
| 5 | `lemma` | [subset_exterior_iff](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/subset-exterior-iff--f438491252d678968c0b8f0c.md) | 35 | `result-track:f438491252d678968c0b8f0c64e539f7cc17cd63a208ccf74a6df5c861e3c121` |
| 6 | `lemma` | [subset_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/subset-exterior--eee63c92da10ae23e64d230c.md) | 38 | `result-track:eee63c92da10ae23e64d230c3acab1857ba44047d4e774cb6322172bcd9ff367` |
| 7 | `lemma` | [exterior_minimal](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-minimal--00493a75e044b56c9ff4c355.md) | 40 | `result-track:00493a75e044b56c9ff4c35576225aef56bd38c3b7d6f5d3784b9c90a861fcf1` |
| 8 | `lemma` | [IsOpen.exterior_eq](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/isopen-exterior-eq--0250365bff153a8633e1db6b.md) | 43 | `result-track:0250365bff153a8633e1db6b2c086a14f2bc13e77e4a7c607073b30db736b7cd` |
| 9 | `lemma` | [IsOpen.exterior_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/isopen-exterior-subset--72ffae7fdf26bf90f6b9bf4e.md) | 46 | `result-track:72ffae7fdf26bf90f6b9bf4e3b7e9409275c44aa7cb1af6054b729cae8ecfdda` |
| 10 | `theorem` | [exterior_iUnion](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-iunion--78fdb4377b34d29b4b45da1d.md) | 50 | `result-track:78fdb4377b34d29b4b45da1da76c318e2ac2c3287850766d2e373e4364e26015` |
| 11 | `theorem` | [exterior_union](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-union--6053f0de6f21da0322980330.md) | 54 | `result-track:6053f0de6f21da0322980330e91d7de8cd8bdfc629646f922ba76e32411b52fe` |
| 12 | `theorem` | [exterior_sUnion](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-sunion--5338e2d4703b8421cc9f0d41.md) | 58 | `result-track:5338e2d4703b8421cc9f0d4139ac273a95bbc2e1733fcf86dc90adf8e468712c` |
| 13 | `theorem` | [mem_exterior_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/mem-exterior-iff-specializes--5d0e37414e2d7254f51d7d28.md) | 61 | `result-track:5d0e37414e2d7254f51d7d2850c35df5c60b5fcfe3bf9dbe56a0c06bac15492c` |
| 14 | `lemma` | [exterior_mono](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-mono--6a64a52d4ef0d0e8e0c6a557.md) | 66 | `result-track:6a64a52d4ef0d0e8e0c6a557cae72dcbb293d65a4ee656ac92f2c28c781c8196` |
| 15 | `lemma` | [exterior_subset_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-subset-exterior--8069c2f9a065299c26c99ed3.md) | 72 | `result-track:8069c2f9a065299c26c99ed372ca7282e015a2b46518eec232eaf57a9be2461f` |
| 16 | `lemma` | [exterior_subset_exterior_iff_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-subset-exterior-iff-nhdsset--4a170fb411e365c3370ba928.md) | 74 | `result-track:4a170fb411e365c3370ba928e4492b4d12b31b7de9d34ea586d41dae20464349` |
| 17 | `theorem` | [exterior_eq_exterior_iff_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-eq-exterior-iff-nhdsset--263649dbdf1f75e0e44b8cb1.md) | 78 | `result-track:263649dbdf1f75e0e44b8cb19ab3b985fb2e46cff94804d39fc44b7eb1184054` |
| 18 | `lemma` | [specializes_iff_exterior_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/specializes-iff-exterior-subset--9c419be5fd3aae5305700753.md) | 81 | `result-track:9c419be5fd3aae53057007537e0933365628fddb94685e1caab242250bdf962e` |
| 19 | `theorem` | [exterior_iInter_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-iinter-subset--49c972a9abb31971118b406e.md) | 84 | `result-track:49c972a9abb31971118b406e18febfe5701fb9d1c2169859a2c5334a5bc3b272` |
| 20 | `theorem` | [exterior_inter_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-inter-subset--198dbdedeabc5f8f5ab02ebe.md) | 87 | `result-track:198dbdedeabc5f8f5ab02ebee00ffbd04a0cd27cb874d24bdff3ad13bc915299` |
| 21 | `theorem` | [exterior_sInter_subset](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-sinter-subset--841259032cdd7709536d2763.md) | 90 | `result-track:841259032cdd7709536d27638b09aff39021d4ff9c9d2da97ee563610d5e29a2` |
| 22 | `lemma` | [exterior_empty](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-empty--23ef4d532f8805f5df140aa4.md) | 93 | `result-track:23ef4d532f8805f5df140aa4b120004af820fded34d0e65226bdf363d98988f7` |
| 23 | `lemma` | [exterior_univ](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-univ--d4c95fd9885e50292d49c4c1.md) | 94 | `result-track:d4c95fd9885e50292d49c4c134634f293336c34da79e726165bcd5fd7c57b0fd` |
| 24 | `lemma` | [exterior_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-eq-empty--b4a15d28eafe1e6440efeb90.md) | 96 | `result-track:b4a15d28eafe1e6440efeb9037c8b1153cd29e61f924761c75a9310828ab4aa7` |
| 25 | `lemma` | [nhdsSet_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/nhdsset-exterior--1fbb01d31ad85384b26c0561.md) | 99 | `result-track:1fbb01d31ad85384b26c05613adf5cfa0fc84b713dee81524af9b82f3cc85f51` |
| 26 | `lemma` | [exterior_exterior](../../../../../mathematics/Topology/GeneralTopology/Exterior/Variant638171ca2534e0379ce0cdb5fb1264a8d4feada56a9e449a7c510b57503fb0d0.lean/declarations/exterior-exterior--a167d3025f26d0586a3495a6.md) | 103 | `result-track:a167d3025f26d0586a3495a630147fd9b7f414da90c5214c2a6dac532726b2bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
