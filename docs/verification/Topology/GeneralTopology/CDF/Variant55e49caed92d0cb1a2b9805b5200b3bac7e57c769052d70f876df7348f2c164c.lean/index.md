# Verification target: GRWTSK.Topology.GeneralTopology.CDF.Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb28c631e7ec2b0b168f3529c43cab53d5b844a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb28c631e7ec2b0b168f3529c43cab53d5b844a`.

Source path: `GRWTSK/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration.CondCDF` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/cdf--b198fa51b0d48d95180ac96e.md) | 51 | `declaration-track:b198fa51b0d48d95180ac96ef833a9325fd134c09ff9993a3f6228a5406f9b1b` |
| 2 | `lemma` | [cdf_nonneg](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/cdf-nonneg--a037132fae83c7e0c9d71e59.md) | 58 | `result-track:a037132fae83c7e0c9d71e5941eb9c7bc47a09875b8b8d5fbaf60f429e1a74eb` |
| 3 | `lemma` | [cdf_le_one](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/cdf-le-one--a5a1555ea5c583daedc1b2ff.md) | 61 | `result-track:a5a1555ea5c583daedc1b2ff855eac50f9fd172352172cdeb6382ca26941cc84` |
| 4 | `lemma` | [monotone_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/monotone-cdf--829457cdfd6c7d50cde5e611.md) | 64 | `result-track:829457cdfd6c7d50cde5e611a555936c2b3acfde0b449d170f8cd7eb57563f03` |
| 5 | `lemma` | [tendsto_cdf_atBot](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/tendsto-cdf-atbot--0349116dcb2c5e4b201508ba.md) | 67 | `result-track:0349116dcb2c5e4b201508ba19d8b79f06694f7c8a2ec6a4fb75b56f54a38b25` |
| 6 | `lemma` | [tendsto_cdf_atTop](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/tendsto-cdf-attop--b6b7e57c03bc493c52cc332a.md) | 70 | `result-track:b6b7e57c03bc493c52cc332a9b314fc212ef2a04de05abb4b2478a7fdfaec774` |
| 7 | `lemma` | [ofReal_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/ofreal-cdf--745bb88e965c11c7731a72e4.md) | 72 | `result-track:745bb88e965c11c7731a72e43775996d3c1e26d837c4c0043ebf9492b0b39160` |
| 8 | `lemma` | [cdf_eq_real](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/cdf-eq-real--ccbd9675594e841227ddb30e.md) | 77 | `result-track:ccbd9675594e841227ddb30e4ce6c45c6611c534b6b8544ca6d27024dbcf6c3b` |
| 9 | `instance` | [instIsProbabilityMeasurecdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/instisprobabilitymeasurecdf--533244db435bc6b76810ab14.md) | 82 | `declaration-track:533244db435bc6b76810ab14bca8ed5e88667d2e41ba9d66c209ab78caaa20d8` |
| 10 | `lemma` | [measure_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/measure-cdf--21e0e7b17c1e4859cda30757.md) | 88 | `result-track:21e0e7b17c1e4859cda30757bfacb2656fa6aedd9711f18a46c23a3e17c7e694` |
| 11 | `lemma` | [cdf_measure_stieltjesFunction](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/cdf-measure-stieltjesfunction--9c4768e357a86ce354132b81.md) | 94 | `result-track:9c4768e357a86ce354132b81b46ec8463c7341013eb457f20f295883a2ab9d63` |
| 12 | `lemma` | [MeasureTheory.Measure.eq_of_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/measuretheory-measure-eq-of-cdf--d2bb6ab9a6c22e50fb4be8d9.md) | 107 | `result-track:d2bb6ab9a6c22e50fb4be8d963bddc81ce4480db397d7ebcdd58c2b9edd45898` |
| 13 | `lemma` | [MeasureTheory.Measure.cdf_eq_iff](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c.lean/declarations/measuretheory-measure-cdf-eq-iff--35ae3563b91c0af65541d060.md) | 111 | `result-track:35ae3563b91c0af65541d0603c67a267ddae1181cd8f4219eae425e49dbf3f24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
