# Verification target: GRWTSK.Topology.GeneralTopology.Covolume.Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7810ba00e80e2e69c5122f174733290d8d03c1c5`.

Source path: `GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.UnitPartition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume--13e0865caa455ef771e1bc5a.md) | 64 | `declaration-track:13e0865caa455ef771e1bc5a12c2c05e63542462d1ab205264ac779bd570554d` |
| 2 | `theorem` | [covolume_eq_measure_fundamentalDomain](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-eq-measure-fundamentaldomain--7ea5a90e99ec8fa49979245b.md) | 75 | `result-track:7ea5a90e99ec8fa49979245b60fb319cce87c2cb6f0d904669364fd4f484e787` |
| 3 | `theorem` | [covolume_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-ne-zero--9cdf40156147fed8c8c693ad.md) | 81 | `result-track:9cdf40156147fed8c8c693ad4d62aa1bae09f3057fce8c26b147534b40f5b494` |
| 4 | `theorem` | [covolume_pos](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-pos--1ba058526227dd986d8ffa6d.md) | 87 | `result-track:1ba058526227dd986d8ffa6d2b5d9598495d6317eac090b1d083816869da6482` |
| 5 | `theorem` | [covolume_comap](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-comap--3db3af5e6822f5812d117eaa.md) | 90 | `result-track:3db3af5e6822f5812d117eaaa9f963ff20cf818fcc92637502f9fbd6283e273f` |
| 6 | `theorem` | [covolume_eq_det_mul_measureReal](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-eq-det-mul-measurereal--2795d7babaa5e1c3a1af37f1.md) | 102 | `result-track:2795d7babaa5e1c3a1af37f156ea94dcbc6caa76195a9f28c72f063514d36838` |
| 7 | `theorem` | [covolume_eq_det](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-eq-det--2556d65a4541a885e492601f.md) | 115 | `result-track:2556d65a4541a885e492601fda18647fb18d8725c76cdca10b03026211a1619b` |
| 8 | `theorem` | [covolume_eq_det_inv](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/covolume-eq-det-inv--bf72cd140b82640daec4d330.md) | 124 | `result-track:bf72cd140b82640daec4d330324aa4d9ee59c9e9eedf7d8aeda334a88630b9f0` |
| 9 | `theorem` | [volume_image_eq_volume_div_covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/volume-image-eq-volume-div-covolume--399a2f420242c9ee9a882716.md) | 133 | `result-track:399a2f420242c9ee9a882716443977b2292b0fd42598004ab71cf2ee6bea0d57` |
| 10 | `theorem` | [volume_image_eq_volume_div_covolume'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/volume-image-eq-volume-div-covolume--9f883e092f37cb3534e600bf.md) | 143 | `result-track:9f883e092f37cb3534e600bf857a31899bac818d98d55bd81946a46db050c47f` |
| 11 | `theorem` | [tendsto_card_div_pow''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-div-pow--2290700e7f9b71c14b512f6d.md) | 178 | `result-track:2290700e7f9b71c14b512f6da153fe0448d7e89cccd4590fddaf1ccd73781ced` |
| 12 | `theorem` | [tendsto_card_le_div''_aux](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-le-div-aux--f3ba776f4925f17281564f88.md) | 197 | `result-track:f3ba776f4925f17281564f881f84f33525f1faae8e45a103cbe1c32007ec7d92` |
| 13 | `theorem` | [tendsto_card_le_div''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-le-div--e09d1193700efe4db1888f19.md) | 208 | `result-track:e09d1193700efe4db1888f19161571b5a0ec2ae62c0c61b9fc88edaac441d4e6` |
| 14 | `theorem` | [frontier_equivFun](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/frontier-equivfun--e4eb1a4b91a302bacf222764.md) | 253 | `result-track:e4eb1a4b91a302bacf222764f2453d48f6139ceb3da4b72a7d8fdcc98a9ee716` |
| 15 | `theorem` | [tendsto_card_div_pow](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-div-pow--5be712a7fe7e718493b24717.md) | 263 | `result-track:5be712a7fe7e718493b247175452ecc1b53810fcde3c2cb3ec2ec0553dad0e3f` |
| 16 | `theorem` | [tendsto_card_le_div](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-le-div--43344d1bf97667d2fc2e3689.md) | 274 | `result-track:43344d1bf97667d2fc2e3689d13990cde1bccbcf3281aedf40300df6beffbe53` |
| 17 | `theorem` | [tendsto_card_div_pow'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-div-pow--f489ac055dee1650ea7e000b.md) | 304 | `result-track:f489ac055dee1650ea7e000bbc87db3a37770169eb6844d98318f20d1be35e6d` |
| 18 | `theorem` | [tendsto_card_le_div'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/declarations/tendsto-card-le-div--13df8ea76e2302203f704063.md) | 319 | `result-track:13df8ea76e2302203f7040632f4217047e8eba75f34ce0a56bf62b2e56c0845e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
