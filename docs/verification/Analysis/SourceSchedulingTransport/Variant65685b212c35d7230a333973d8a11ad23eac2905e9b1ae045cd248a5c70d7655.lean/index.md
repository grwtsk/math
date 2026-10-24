# Verification target: GRWTSK.Analysis.SourceSchedulingTransport.Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f087e18f7d99ddaebe25f08ea63ecd8f03a30bad",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/index.md) · [Full source](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f087e18f7d99ddaebe25f08ea63ecd8f03a30bad`.

Source path: `GRWTSK/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Module` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complete_schedule_sum](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/complete-schedule-sum--eac0fd6d9b29ce5e38e5cbae.md) | 24 | `result-track:eac0fd6d9b29ce5e38e5cbaec87269c9340da9303a8cc393d9f56b051ab645e5` |
| 2 | `theorem` | [fractional_reconstruction](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/fractional-reconstruction--6920b893da59baaecd1dd5a1.md) | 30 | `result-track:6920b893da59baaecd1dd5a166b19a2ced1675681053b3ca2dcc6c5a2edc7daa` |
| 3 | `theorem` | [potential_telescope](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/potential-telescope--08e090d187836674e85171a0.md) | 37 | `result-track:08e090d187836674e85171a047ff6922db4c53dd9f72b362cd7d1670f12ddbf8` |
| 4 | `theorem` | [finite_potential_certificate](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/finite-potential-certificate--d5a84709423804f733cd8cd5.md) | 44 | `result-track:d5a84709423804f733cd8cd5eedf8874f905fb0454ce55e0a2995744e98abdd7` |
| 5 | `def` | [schedulePrefix](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/scheduleprefix--7d7c537d8a9faa74078ae502.md) | 63 | `declaration-track:7d7c537d8a9faa74078ae502d54072d781fa4176eabd5e8ab6de118f8116bbd8` |
| 6 | `theorem` | [weighted_abel](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/weighted-abel--60095805b7056bf0ba2cff6b.md) | 66 | `result-track:60095805b7056bf0ba2cff6bdbdeaa091e3cace1dcf3ca2d90d6dfeaeac8d235` |
| 7 | `theorem` | [weighted_abel_abs_le](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/weighted-abel-abs-le--4b8bc115d73f711639d13b09.md) | 78 | `result-track:4b8bc115d73f711639d13b0948c9c05d8c57bc053ce6a64b491d2980322dc59e` |
| 8 | `theorem` | [emphasis_pairing](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/emphasis-pairing--44323a6c8470e32dcb695f7a.md) | 103 | `result-track:44323a6c8470e32dcb695f7a6a2f24ae41560b4f3467cdde8a3d3b35c08beb95` |
| 9 | `theorem` | [weighted_emphasis_abs_le](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/weighted-emphasis-abs-le--9103514617b2de39808f4e69.md) | 109 | `result-track:9103514617b2de39808f4e6943649f0dee5b926559da5787404169bcb8a0bbbd` |
| 10 | `def` | [readout](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/readout--9b94b5ba2b6035170f717479.md) | 137 | `declaration-track:9b94b5ba2b6035170f717479abbcafe89ab36530fb72f2e545d411bcf7c5f7d0` |
| 11 | `def` | [mass](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/mass--04593b7a1b8f87a678ae1c83.md) | 144 | `declaration-track:04593b7a1b8f87a678ae1c83eff028daa6396ab8a1132dd3242d4453b0a3124c` |
| 12 | `def` | [firstMoment](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/firstmoment--66481ed35715054991677929.md) | 150 | `declaration-track:66481ed357150549916779290598ed2b14c3d9ac0d7ec000a512e4ed90a7a43d` |
| 13 | `theorem` | [affine_carry](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/affine-carry--bf20e3d5b7774ad6ed86184c.md) | 153 | `result-track:bf20e3d5b7774ad6ed86184c461a009bb9413fdd678f5abda636f99017c4a0b3` |
| 14 | `theorem` | [affine_test_readout](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/affine-test-readout--547ec52bc4bed7ea8abda5d5.md) | 173 | `result-track:547ec52bc4bed7ea8abda5d5647dd1826ce57167645325131f5a467a2a11bc84` |
| 15 | `def` | [inducedDrift](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/induceddrift--233dfe1e9cf092900db0cf1d.md) | 187 | `declaration-track:233dfe1e9cf092900db0cf1d7bd1d34b4d3534286d4c9c308d6e31fb022274ff` |
| 16 | `theorem` | [first_transport_identity](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/first-transport-identity--639e671d152c51a9b31d3aed.md) | 191 | `result-track:639e671d152c51a9b31d3aeddc3821918176f7d849f711ca70c2144ea3131801` |
| 17 | `theorem` | [inducedDrift_total](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/induceddrift-total--4cea2f1f8829e52780a0a19d.md) | 219 | `result-track:4cea2f1f8829e52780a0a19dc53136858b4ac2c65d91c1ea828e276a9d79ad21` |
| 18 | `def` | [transportCost](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/transportcost--0f230ed96d7e719f247d409e.md) | 230 | `declaration-track:0f230ed96d7e719f247d409ed8423d8a52a49eb3d0aba49d67fd4b2f03e16e27` |
| 19 | `theorem` | [two_stage_abs_le](../../../../mathematics/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/declarations/two-stage-abs-le--9e0db2ced690b8ccb947d2ca.md) | 235 | `result-track:9e0db2ced690b8ccb947d2ca384d7de06b5b494461ffdd02eae45881ea7fa9f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
