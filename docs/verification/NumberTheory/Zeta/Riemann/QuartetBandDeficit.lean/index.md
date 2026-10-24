# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuartetBandDeficit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2ca8b344529aa6398e414541ca2243059bfcb4e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2ca8b344529aa6398e414541ca2243059bfcb4e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedInventoryQuartet`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryQuartet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ContourCountDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/conjugated--db8155189e581af50e65fa64.md) | 45 | `declaration-track:db8155189e581af50e65fa64237180e28a6a1c5978f61e8efa47aa5c99cab1e5` |
| 2 | `theorem` | [height_conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/height-conjugated--7102fa5e6fb25c5ad219a4b6.md) | 47 | `result-track:7102fa5e6fb25c5ad219a4b67c6898497dee544ea33e3d7f6eab8a313d4566e4` |
| 3 | `abbrev` | [bandHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/bandhead--2018023fe435efccd27a6653.md) | 51 | `declaration-track:2018023fe435efccd27a66538eff264d755f9683a8acc4c51108ea2b1038f511` |
| 4 | `def` | [bandCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/bandcount--b75e302006a43c61699b659c.md) | 55 | `declaration-track:b75e302006a43c61699b659c90f9e4f471e8b7c4df68119a5ea03d1a3b1d1f7f` |
| 5 | `theorem` | [mem_bandHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/mem-bandhead--97b5fd7638fe3462935144ea.md) | 58 | `result-track:97b5fd7638fe3462935144ea44295e4983a5dc5d388f833efbe9cfaf91d4756a` |
| 6 | `theorem` | [bandHead_eq_sdiff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/bandhead-eq-sdiff--2d0b3f16dbaa9d4e221512c9.md) | 63 | `result-track:2d0b3f16dbaa9d4e221512c99448ae2ff8af43c10616374e31a29f75e8c70529` |
| 7 | `theorem` | [heightCount_partition](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/heightcount-partition--3ae84fbbe003b5a86223b3cc.md) | 71 | `result-track:3ae84fbbe003b5a86223b3cc0a20a181510ac9be81d0474c6ecaa45f5ca88db2` |
| 8 | `theorem` | [bandCount_upper_of_endpoint_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/bandcount-upper-of-endpoint-bounds--55200abaf569bdcfc5cbdf0a.md) | 81 | `result-track:55200abaf569bdcfc5cbdf0aec7e3ea6e7d6157db659b6aa49e3636ac376ce82` |
| 9 | `theorem` | [im_ne_zero_of_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/im-ne-zero-of-band--0398d79d64ac3f35423029fd.md) | 90 | `result-track:0398d79d64ac3f35423029fdfb974a2f805ae3cf418303e3776c8bb7438db9f1` |
| 10 | `theorem` | [quartet_distinct](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/quartet-distinct--eda80d99f39c713991fc8df9.md) | 100 | `result-track:eda80d99f39c713991fc8df9de2554d0123ca87c59e952673f0fe5375e543b96` |
| 11 | `theorem` | [all_on_line_of_band_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/all-on-line-of-band-credit--496bd5f4b323897fc5931d36.md) | 117 | `result-track:496bd5f4b323897fc5931d36116bb67a52d135cdb95da38d9a311724e38780ab` |
| 12 | `theorem` | [rhThrough_of_band_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/rhthrough-of-band-credit--d4c2c3fa56b523c481ed2dd3.md) | 153 | `result-track:d4c2c3fa56b523c481ed2dd3ec2eeb468ffcafc797cec4486a616483fc3ae368` |
| 13 | `theorem` | [rhThrough_of_weighted_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/rhthrough-of-weighted-band--73b31e1eac19a9653323dbdc.md) | 172 | `result-track:73b31e1eac19a9653323dbdca7f843ce5c8f4c1199c0b572b9a48e5c2cc0cad9` |
| 14 | `theorem` | [rhThrough_of_endpoint_count_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/rhthrough-of-endpoint-count-bounds--5c631d409bbb4c4618ea1a41.md) | 185 | `result-track:5c631d409bbb4c4618ea1a416ffa3cb2395c320f5a7b94845a9cec22005847bf` |
| 15 | `theorem` | [zero_height_collapse_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/zero-height-collapse-fixture--9e41e45344a423297f53b8da.md) | 202 | `result-track:9e41e45344a423297f53b8daaf61cdf72f8bc85af167eb6bb0d604ce2963e275` |
| 16 | `theorem` | [subtracting_two_upper_bounds_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/declarations/subtracting-two-upper-bounds-fixture--9d8d34a4bb50f8886b57d4e2.md) | 210 | `result-track:9d8d34a4bb50f8886b57d4e2778253c497f699c169ab17317550bdd361f94217` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
