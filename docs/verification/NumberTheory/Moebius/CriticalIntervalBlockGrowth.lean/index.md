# Verification target: GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae1e6fad120bb5621032759f7518995c2d9e011",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae1e6fad120bb5621032759f7518995c2d9e011`.

Source path: `GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickupMertensPrefix_abs_le_natCast](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/declarations/pickupmertensprefix-abs-le-natcast--1c3bd7d6503d8b153a17091c.md) | 30 | `result-track:1c3bd7d6503d8b153a17091cf03ed935c877160beffdc5c1feab94290f5531b5` |
| 2 | `theorem` | [pickupWeightedPrefix_abs_le_two_sqrt](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/declarations/pickupweightedprefix-abs-le-two-sqrt--d4b6290315fa5951356140c1.md) | 47 | `result-track:d4b6290315fa5951356140c1697cb127f01a70597dc651c0e572f8988aabf863` |
| 3 | `theorem` | [criticalIntervalBlock_le_harmonic](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/declarations/criticalintervalblock-le-harmonic--7905aa29a53ede166a3b3bdd.md) | 56 | `result-track:7905aa29a53ede166a3b3bddbe066303c16f311e244f7c830d5536872f11c51d` |
| 4 | `theorem` | [criticalIntervalBlockSum_le_harmonic](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/declarations/criticalintervalblocksum-le-harmonic--52195dc7e63df41274dae044.md) | 108 | `result-track:52195dc7e63df41274dae044ea39e8c71191566e64210f07aed50f20d38ffa43` |
| 5 | `theorem` | [criticalIntervalBlockSum_le_log](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/declarations/criticalintervalblocksum-le-log--fb24d6deb480e90bad55937a.md) | 123 | `result-track:fb24d6deb480e90bad55937ab93e26ae7bac769a215cd4b3af3d28e9abf30f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
