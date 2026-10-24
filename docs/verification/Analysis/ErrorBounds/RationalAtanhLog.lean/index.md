# Verification target: GRWTSK.Analysis.ErrorBounds.RationalAtanhLog

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b7d3fc14ca8eb5d5deed04e707550cee1512e9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalAtanhLog.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b7d3fc14ca8eb5d5deed04e707550cee1512e9`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalAtanhLog.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalAtanhLog.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.AtanhLogEnclosure`](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic`](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinate](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/coordinate--183e21e47d408a54c55b97a5.md) | 27 | `declaration-track:183e21e47d408a54c55b97a5542f7ce5287a9997ac7b7c88dda54c149b7fa8e7` |
| 2 | `def` | [lower](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/lower--7d761d41497eb50707215aa5.md) | 29 | `declaration-track:7d761d41497eb50707215aa51235fcfea9db0a444c3b99e1c3a0621f99f02304` |
| 3 | `def` | [remainder](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/remainder--4d920ecfecdd9936bf6f61b8.md) | 32 | `declaration-track:4d920ecfecdd9936bf6f61b81ebd60fbef3aeea1bde7354db7113cc2eafd7987` |
| 4 | `def` | [center](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/center--20e73ebd31fbec979726761f.md) | 36 | `declaration-track:20e73ebd31fbec979726761f10c3458a0c4aac551eaa450a3eb81220ffe19f1c` |
| 5 | `def` | [radius](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/radius--efedd66528af6bfe739a2d0d.md) | 39 | `declaration-track:efedd66528af6bfe739a2d0dfd440bf0e39978f54483e7e3721b189229c5519c` |
| 6 | `def` | [validScale](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/validscale--f34e39ad2f3acaf5e23aec8b.md) | 43 | `declaration-track:f34e39ad2f3acaf5e23aec8b39938aa04d7a5da5fa45041b629bf95f7ed3a6ad` |
| 7 | `def` | [enclosure](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/enclosure--b20250f21af59da2cd61e0af.md) | 45 | `declaration-track:b20250f21af59da2cd61e0af540928b297fa02b7795501e30279f14808971660` |
| 8 | `def` | [checkWithin](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/checkwithin--d20653481d9333f08456b528.md) | 48 | `declaration-track:d20653481d9333f08456b52807d421418d456f3d0fb0258745fd806e622be506` |
| 9 | `theorem` | [cast_lower](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/cast-lower--a61e5b9fe868ed7e69487904.md) | 51 | `result-track:a61e5b9fe868ed7e6948790407d14f32232dbb59aa948c9107c5b21619c6feb4` |
| 10 | `theorem` | [cast_remainder](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/cast-remainder--a6e1c4d8f280caf4a2d7dd90.md) | 55 | `result-track:a6e1c4d8f280caf4a2d7dd90f726f586658e0a07c70ef19eea364522f0443414` |
| 11 | `theorem` | [base_bounds](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/base-bounds--68e72a3b130db6d8e677de2d.md) | 60 | `result-track:68e72a3b130db6d8e677de2df9cf1c731429a4e02f187b878a639f632a7cc10c` |
| 12 | `theorem` | [lower_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/lower-nonneg--46ff7d9b0d40b40c51ca67a6.md) | 66 | `result-track:46ff7d9b0d40b40c51ca67a64c9b015da599c010699708e886306307f2c0bb32` |
| 13 | `theorem` | [remainder_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/remainder-nonneg--93f56d57e241f6d45c69ecb1.md) | 72 | `result-track:93f56d57e241f6d45c69ecb11e2743255c9308f668c2839d3398071e1fdfbcc4` |
| 14 | `theorem` | [scale_bounds](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/scale-bounds--3e61ff8c8561bf2cf9ea0447.md) | 77 | `result-track:3e61ff8c8561bf2cf9ea04478c76c12f36fe1086e2035aa8288cd04dce6f730c` |
| 15 | `theorem` | [log_bounds](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/log-bounds--54b8a12043d6d191ef3d5a4a.md) | 87 | `result-track:54b8a12043d6d191ef3d5a4a47ef1190c6341206f3a72252a9ed819dee7d4186` |
| 16 | `theorem` | [center_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/center-nonneg--a22fba5cb8001b1034a1b4f7.md) | 104 | `result-track:a22fba5cb8001b1034a1b4f71cc1353a0fa2f795147ec9684e00bfd663e70500` |
| 17 | `theorem` | [enclosure_sound](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/enclosure-sound--592f27433e1ba0bf4a475daa.md) | 110 | `result-track:592f27433e1ba0bf4a475daaac54c7d96cda7ddee83fcf05a80496072960b4ee` |
| 18 | `theorem` | [enclosure_center](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/enclosure-center--8749a4c701c075c4d659c92a.md) | 122 | `result-track:8749a4c701c075c4d659c92a09d5b062a55cb368bc360dbee37804cd2c16ddf2` |
| 19 | `theorem` | [checkWithin_sound](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/checkwithin-sound--7979e4b1975b967e3f87ae2f.md) | 127 | `result-track:7979e4b1975b967e3f87ae2f409cf6759fa64166b516c98b5d4142a125f1018f` |
| 20 | `theorem` | [presented_log_error](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/declarations/presented-log-error--b15fdf0930c9d71ee6d6d311.md) | 135 | `result-track:b15fdf0930c9d71ee6d6d31162abaa463c12472375a2f22b499dfbb00da7ef48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
