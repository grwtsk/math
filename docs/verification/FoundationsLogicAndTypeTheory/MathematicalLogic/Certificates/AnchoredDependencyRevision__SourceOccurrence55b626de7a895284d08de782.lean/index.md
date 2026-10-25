# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.AnchoredDependencyRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ef05440356a188e80065e2ee4257c41d5787698",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ef05440356a188e80065e2ee4257c41d5787698`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.AnchoredBatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrenced6e36faffda4f3eb7e1d39ed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReplayLedger.correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replayledger-correct--2966909950eef74d6c7cee80.md) | 41 | `declaration-track:2966909950eef74d6c7cee80b91fd6a84f9bdc96f2042583b538e48148def94e` |
| 2 | `def` | [ReplayLedger.correctMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replayledger-correctmany--cf940ef3e5571a2f5ad48ee1.md) | 48 | `declaration-track:cf940ef3e5571a2f5ad48ee1d3196b0de25a90bd1f841609f4bbdae600b9b7d6` |
| 3 | `theorem` | [replay_correction_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correction-preserves-safe--b570339a4b6f1144d35de664.md) | 75 | `result-track:b570339a4b6f1144d35de6647d8b64201c4cbef9e04d5a9dd2247a8d0590cc25` |
| 4 | `theorem` | [replay_correction_verified_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correction-verified-iff--7d52d93ca38422ee59e54b67.md) | 139 | `result-track:7d52d93ca38422ee59e54b677f224495458a3d36abb8bb670b5801f679f79c2f` |
| 5 | `theorem` | [replay_affected_verified_reopened](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-affected-verified-reopened--0f4143c2131b3cfd1ef4b7b9.md) | 148 | `result-track:0f4143c2131b3cfd1ef4b7b940dcda93ca0c8cd5de042113c34cb2e08428593d` |
| 6 | `theorem` | [replay_corrected_current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-corrected-current-target--74615aff813cbd98815c31b1.md) | 157 | `result-track:74615aff813cbd98815c31b1109da808763e45bc0e80cb729c097ef6a4068fb0` |
| 7 | `theorem` | [replay_correction_histories](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correction-histories--c0a2f6db2fa7ee2a10e77ccb.md) | 166 | `result-track:c0a2f6db2fa7ee2a10e77ccbd967d763709e5ffa79d514c96a564e3862c0e346` |
| 8 | `theorem` | [replay_correction_records_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correction-records-append--0ca9423e7dbf3e44adc1fceb.md) | 174 | `result-track:0ca9423e7dbf3e44adc1fcebd9ec7fef24097a0d33e9ca4a5a2ae7ad269faa5d` |
| 9 | `theorem` | [replay_correction_same_snapshot_status](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correction-same-snapshot-status--c9bae384467c007beec1a67a.md) | 185 | `result-track:c9bae384467c007beec1a67ac4705b79eb5c7bf9fbf6575c9feb14482ad76924` |
| 10 | `theorem` | [replay_correctMany_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-nil--83c719a8dabc71166ffe6faf.md) | 192 | `result-track:83c719a8dabc71166ffe6faf8b003547233cbbcd41f81f43ad1d7ddd6762c753` |
| 11 | `theorem` | [replay_correctMany_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-cons--14d23881522af540e44eace7.md) | 196 | `result-track:14d23881522af540e44eace7a3226c9e4cba5550b01873fa07fbc0dc1fdef97f` |
| 12 | `theorem` | [replay_correctMany_base](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-base--a2974bdda5fe2f1ec42b2e31.md) | 203 | `result-track:a2974bdda5fe2f1ec42b2e31d35d977518fb39f80c14040b92f6407ea37e9b96` |
| 13 | `theorem` | [replay_correctMany_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-safe--154f0f6048b56211b6ee9fa3.md) | 213 | `result-track:154f0f6048b56211b6ee9fa31a4f12856a742f348a56e7ccaeb82aa38a90eda3` |
| 14 | `theorem` | [replay_correctMany_replay_archive_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-replay-archive-preserved--ecc119a2983704468fcf9c4d.md) | 223 | `result-track:ecc119a2983704468fcf9c4d8b8ac174c07fa4b9afc9538e9aded1df0c1e2368` |
| 15 | `theorem` | [replay_correctMany_histories](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-histories--3424777b7c5abf0e94e59d7e.md) | 233 | `result-track:3424777b7c5abf0e94e59d7eeb422365a1fd44956a8b97074e3ea77d5e239b75` |
| 16 | `theorem` | [replay_correctMany_correction_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-correction-suffix--f25f2b3d5530a44eb4b89e57.md) | 246 | `result-track:f25f2b3d5530a44eb4b89e57cae840fdeda6cbc4682a0c7e8229880cfe28d42d` |
| 17 | `theorem` | [replay_correctMany_correction_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-correction-prefix--dd40893f1657f202bf1de91c.md) | 253 | `result-track:dd40893f1657f202bf1de91c04bee6ed3a64ba3385db25aae26667642336cc91` |
| 18 | `theorem` | [replay_correctMany_correction_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-correction-length--239bf0150c487f2da8008536.md) | 259 | `result-track:239bf0150c487f2da80085369578ed3f574c14d67fd898e582d86eb5fa12a90f` |
| 19 | `theorem` | [replay_correctMany_status](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-status--9a2e26fe81a3b97a65f9a752.md) | 267 | `result-track:9a2e26fe81a3b97a65f9a75244594939e777df0a4b086d95817db655c05a55c4` |
| 20 | `theorem` | [replay_correctMany_current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-current-target--d60f2f1f09072e80152960f5.md) | 285 | `result-track:d60f2f1f09072e80152960f567dd3a929470806df626f62debc3e7c9a0bc33db` |
| 21 | `theorem` | [replay_correctMany_last_snapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence55b626de7a895284d08de782.lean/declarations/replay-correctmany-last-snapshot--04cc189b47cdd3d29848cc41.md) | 294 | `result-track:04cc189b47cdd3d29848cc419b063410028f846dd4107cfa7e3f55720497fc6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
