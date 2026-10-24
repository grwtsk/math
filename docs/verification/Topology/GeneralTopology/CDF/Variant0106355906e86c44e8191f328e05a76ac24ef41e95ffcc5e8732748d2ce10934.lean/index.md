# Verification target: GRWTSK.Topology.GeneralTopology.CDF.Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a915105a21bd554423202d5209610de7713bf0b4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a915105a21bd554423202d5209610de7713bf0b4`.

Source path: `GRWTSK/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean.json)

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
| 1 | `def` | [cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/cdf--2ab72fbb013d33879580e07d.md) | 65 | `declaration-track:2ab72fbb013d33879580e07db37f7a5235a2447d8659605360c082ea80bc43b5` |
| 2 | `lemma` | [cdf_nonneg](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/cdf-nonneg--fe19392b266bf8435f7fd73c.md) | 72 | `result-track:fe19392b266bf8435f7fd73c9b9ec1306933bf4b4cbf52bbc68b0842699b5f10` |
| 3 | `lemma` | [cdf_le_one](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/cdf-le-one--844a5f033c1dc55e007687ab.md) | 75 | `result-track:844a5f033c1dc55e007687ab59bfe59bf8919ada0022c7249f9cfba7d891acb4` |
| 4 | `lemma` | [monotone_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/monotone-cdf--5661a95d1b27318026b8e402.md) | 78 | `result-track:5661a95d1b27318026b8e402b5a3f15e721bddf049ae78f0ee8533a5335a7a5d` |
| 5 | `lemma` | [tendsto_cdf_atBot](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/tendsto-cdf-atbot--04d65360a7947071e5313ee4.md) | 81 | `result-track:04d65360a7947071e5313ee47c9164359950d573ac135665c968c730d948d16a` |
| 6 | `lemma` | [tendsto_cdf_atTop](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/tendsto-cdf-attop--8b56410c2e941581eccc465a.md) | 84 | `result-track:8b56410c2e941581eccc465a14f0e5696a641c5ed62784f9b5c9edd90b97a50d` |
| 7 | `lemma` | [ofReal_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/ofreal-cdf--031e5d9d1944563be299c23e.md) | 86 | `result-track:031e5d9d1944563be299c23e9ced0976506ca47f0cc5adf0b19300d790734908` |
| 8 | `lemma` | [cdf_eq_real](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/cdf-eq-real--9f8eaccd8cd733d6a7b8f4a2.md) | 90 | `result-track:9f8eaccd8cd733d6a7b8f4a21e883390d73a201532c0d415e1552a42f25d0ec0` |
| 9 | `instance` | [instIsProbabilityMeasurecdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/instisprobabilitymeasurecdf--6f3193f63473f8f3dde672e6.md) | 93 | `declaration-track:6f3193f63473f8f3dde672e638e97e2246b943c9fa101625dc691da0d0dee15f` |
| 10 | `lemma` | [measure_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/measure-cdf--05a671f94102a5ecb278fd16.md) | 99 | `result-track:05a671f94102a5ecb278fd1619e28991522c9eeacb7e8f116e6e8faa01faa430` |
| 11 | `lemma` | [cdf_measure_stieltjesFunction](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/cdf-measure-stieltjesfunction--b9b163095859828e9c235fec.md) | 105 | `result-track:b9b163095859828e9c235fec1b724ff34a3bea3ac7077927c6aef4f7fc33dbf4` |
| 12 | `lemma` | [unitInterval.cdf_eq_real](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/unitinterval-cdf-eq-real--c440b9d7c2896290cbeefd3c.md) | 114 | `result-track:c440b9d7c2896290cbeefd3c6921814e116313cc2ef37ad292db6618154ae77b` |
| 13 | `lemma` | [MeasureTheory.Measure.eq_of_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/measuretheory-measure-eq-of-cdf--6374625aaef6ffd9cf9879f3.md) | 124 | `result-track:6374625aaef6ffd9cf9879f33a4669bc3173bfe3cd1fea9be73349c0c33389bb` |
| 14 | `lemma` | [MeasureTheory.Measure.cdf_eq_iff](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant0106355906e86c44e8191f328e05a76ac24ef41e95ffcc5e8732748d2ce10934.lean/declarations/measuretheory-measure-cdf-eq-iff--ae3b94143190bab2f5d5cb39.md) | 128 | `result-track:ae3b94143190bab2f5d5cb3979d5166c346f5a7f06504e48b495bbb156f8c938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
