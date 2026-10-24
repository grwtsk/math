# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa7ef00f6b9dcf23aa8d09f6817f9ed03816e919",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa7ef00f6b9dcf23aa8d09f6817f9ed03816e919`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ContourCountDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuartetBandDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/positiveheighthead--a82a6d3ae75925ee0063c1d7.md) | 51 | `declaration-track:a82a6d3ae75925ee0063c1d729cbb3b7a62f254b2176fe6ffea3c4e90287ead8` |
| 2 | `def` | [positiveHeightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/positiveheightcount--24f0c74a15c75e916cfc3d64.md) | 56 | `declaration-track:24f0c74a15c75e916cfc3d64d4bc7852a0a797016a21977d33b5a11ba91337a5` |
| 3 | `theorem` | [mem_positiveHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/mem-positiveheighthead--430823762ca0e48ff1271c08.md) | 59 | `result-track:430823762ca0e48ff1271c082b6d807264430e408ddfcd78acebbbd02d6543cd` |
| 4 | `theorem` | [positiveHeightHead_subset_heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/positiveheighthead-subset-heighthead--23396abb7073cff7876a60a5.md) | 74 | `result-track:23396abb7073cff7876a60a52e3c9c95ee3b621f9e08727c122b799e48be4de2` |
| 5 | `theorem` | [positiveHeightCount_le_heightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/positiveheightcount-le-heightcount--808eb41623be9df1022f79ad.md) | 80 | `result-track:808eb41623be9df1022f79ad401e0dd3e5ae99b2c70ba63a0a556c0310ab9158` |
| 6 | `theorem` | [reflected_mem_positiveHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/reflected-mem-positiveheighthead--4ddb8fe808882d987bc7fd9c.md) | 88 | `result-track:4ddb8fe808882d987bc7fd9c8f91747b188bc5440caa175f32351c80fcd73b34` |
| 7 | `theorem` | [off_line_pair_missing_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/off-line-pair-missing-positive--b3687ffcc88d853b5b65bbcd.md) | 96 | `result-track:b3687ffcc88d853b5b65bbcd6fafceabed9783f3045a4776f4a1661c9961c542` |
| 8 | `theorem` | [all_on_line_of_positive_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/all-on-line-of-positive-credit--e1d238bfa6cfdc84bd8015a1.md) | 104 | `result-track:e1d238bfa6cfdc84bd8015a170ec2174bfbaec943823e9518b3f1a0258cc35a7` |
| 9 | `theorem` | [rhThrough_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/rhthrough-zero--5fe0a396950932e6f6ab8089.md) | 126 | `result-track:5fe0a396950932e6f6ab808964f7e9c1c933b922171a4cc8812f640860064c9c` |
| 10 | `def` | [conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/conjugated--2e2021853c2ee84d40355be3.md) | 135 | `declaration-track:2e2021853c2ee84d40355be39223c369a682099e0d2229756b2dd48969a83c53` |
| 11 | `theorem` | [conjugated_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/conjugated-re--2ec8a98ea50a84b189a919e1.md) | 138 | `result-track:2ec8a98ea50a84b189a919e1bb7bea5214e6c2fb7729b245a9a3aedf26ca2990` |
| 12 | `theorem` | [conjugated_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/conjugated-im--d6d65ba294b429407b58e2f6.md) | 141 | `result-track:d6d65ba294b429407b58e2f68f63f7c07237f2be42a004aabc73b205bc66a11b` |
| 13 | `theorem` | [conjugated_involutive](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/conjugated-involutive--8097018fb45fa9800c1058d0.md) | 144 | `result-track:8097018fb45fa9800c1058d0d9e498cf33149bd47e4ba922c1f813cd62d4f583` |
| 14 | `theorem` | [conjugated_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/conjugated-injective--ef27a7cc11002b67bf301470.md) | 149 | `result-track:ef27a7cc11002b67bf30147075816fbb5e8f2c418d1af8edcf8d5a7d80427897` |
| 15 | `theorem` | [conjugated_mem_positiveHeightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/conjugated-mem-positiveheighthead--fbfd826d3c8c4c739b3c78ac.md) | 153 | `result-track:fbfd826d3c8c4c739b3c78ac362b8b8e3c44bba58132338ba8c4f27aa6c4c83b` |
| 16 | `theorem` | [rhThrough_of_positive_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/rhthrough-of-positive-credit--3c9f7e488b4ec2b92afa0373.md) | 164 | `result-track:3c9f7e488b4ec2b92afa037357f190f13cd546b34491633d70eadebdac15f368` |
| 17 | `theorem` | [rhThrough_of_positive_weighted_inventory](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/rhthrough-of-positive-weighted-inventory--5aed27309f72a6d07b75da65.md) | 195 | `result-track:5aed27309f72a6d07b75da651dd5cdf1fc26700e3851b9842398387f36e07b88` |
| 18 | `theorem` | [riemannHypothesis_of_positive_count_credits](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/riemannhypothesis-of-positive-count-credits--82a5e31743087d67e9a3d1b6.md) | 208 | `result-track:82a5e31743087d67e9a3d1b61d9c1bf5f1b952d6b94e18b0dc49a92ca8e791b1` |
| 19 | `theorem` | [zero_height_not_mem_positive_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/zero-height-not-mem-positive-fixture--144f9d9ea80f7560d3f8e77f.md) | 222 | `result-track:144f9d9ea80f7560d3f8e77fa8d9291afde93a3dca94a39d3f70de81f53d4029` |
| 20 | `theorem` | [negative_height_transport_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/declarations/negative-height-transport-fixture--7f95c977b7ca24b90919abb1.md) | 226 | `result-track:7f95c977b7ca24b90919abb17dc4c48680ab4dd14754ac4d9f126f23289679a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
