# Verification target: GRWTSK.Topology.GeneralTopology.CDF.Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fc5a37bbc533122490b00bc8650dc6ead713eaf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fc5a37bbc533122490b00bc8650dc6ead713eaf`.

Source path: `GRWTSK/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean.json)

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
| 1 | `def` | [cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/cdf--ab49522a504cc8bf83883ed1.md) | 57 | `declaration-track:ab49522a504cc8bf83883ed1b85a6dae1923fb1344373ef69e27640f007a2c37` |
| 2 | `lemma` | [cdf_nonneg](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/cdf-nonneg--224a57c186bd4752e0ed02a6.md) | 64 | `result-track:224a57c186bd4752e0ed02a6d80aedb424fac591329987e26719b68e90566424` |
| 3 | `lemma` | [cdf_le_one](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/cdf-le-one--042c719f9bf2b7dfd82fc5ce.md) | 67 | `result-track:042c719f9bf2b7dfd82fc5cedaa10fac5f3bc905d10ef4f3030d159b5f21ce11` |
| 4 | `lemma` | [monotone_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/monotone-cdf--7f17ef8703ffdac559631c4b.md) | 70 | `result-track:7f17ef8703ffdac559631c4b8150e3a87b9724c4d6c721a1979bede3e7c38604` |
| 5 | `lemma` | [tendsto_cdf_atBot](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/tendsto-cdf-atbot--3b841d5001888efb58c08dd4.md) | 73 | `result-track:3b841d5001888efb58c08dd4e34e17ac1bfcea92f4e840a0df4b2bb1c5458a71` |
| 6 | `lemma` | [tendsto_cdf_atTop](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/tendsto-cdf-attop--417282c7698b3cbc7856a591.md) | 76 | `result-track:417282c7698b3cbc7856a591a857a60a6fa67b900bbac9889a37029ab602465e` |
| 7 | `lemma` | [ofReal_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/ofreal-cdf--f1a58aabd1cdc3b84121d519.md) | 78 | `result-track:f1a58aabd1cdc3b84121d519bcea1dce2ba8003c113cdcbebc8432caac28e6b9` |
| 8 | `lemma` | [cdf_eq_real](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/cdf-eq-real--88df46f061d3e6988287fb8e.md) | 82 | `result-track:88df46f061d3e6988287fb8ea3a0f70da95004e4231c2c64008bc8a5bf851017` |
| 9 | `instance` | [instIsProbabilityMeasurecdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/instisprobabilitymeasurecdf--12dc28f16cce345961cb9f59.md) | 85 | `declaration-track:12dc28f16cce345961cb9f59c1f1176edb630fab29c1db3dd40582bb9817c01d` |
| 10 | `lemma` | [measure_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/measure-cdf--831c68c011174a1a5aadbca4.md) | 91 | `result-track:831c68c011174a1a5aadbca4672268d2e4c77e5146835e79734bf185630aac41` |
| 11 | `lemma` | [cdf_measure_stieltjesFunction](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/cdf-measure-stieltjesfunction--efd3dcd2baf18d6412c08de5.md) | 97 | `result-track:efd3dcd2baf18d6412c08de564cecc78a1aff1f9e8d7b94bec4d190a68bded6f` |
| 12 | `lemma` | [unitInterval.cdf_eq_real](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/unitinterval-cdf-eq-real--a7cca34d8ccc394a89f745e4.md) | 106 | `result-track:a7cca34d8ccc394a89f745e4ffb46545f348f885d2a6cfe559db55fffbe3c14b` |
| 13 | `lemma` | [MeasureTheory.Measure.eq_of_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/measuretheory-measure-eq-of-cdf--577bfa32523a0096c9537102.md) | 116 | `result-track:577bfa32523a0096c95371028b10b829b3f50a0850e77d0cdb5f32577fae1e39` |
| 14 | `lemma` | [MeasureTheory.Measure.cdf_eq_iff](../../../../../mathematics/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/declarations/measuretheory-measure-cdf-eq-iff--010ec20dd5e4f6bb299b1962.md) | 120 | `result-track:010ec20dd5e4f6bb299b196222bd0dc288d3183ef0cc6fe11088880535985f4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
