# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PoleNormalizedContourBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f9249ae44e52df5b08d04581f30ca6a951912ff",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f9249ae44e52df5b08d04581f30ca6a951912ff`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ClosedDiskCauchy`](../../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analytic_order_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/analytic-order-eq--c8401f5e126a9bb2257a8bef.md) | 30 | `result-track:c8401f5e126a9bb2257a8bef288302a03c81883a6101f8bb353fd4016501974f` |
| 2 | `theorem` | [canonical_weight_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/canonical-weight-eq--f93dd75eb06eaa5d5175e0eb.md) | 42 | `result-track:f93dd75eb06eaa5d5175e0ebb8e5979fc1bc3cfb677979df0eb4a9d5f87bc872` |
| 3 | `theorem` | [order_at_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/order-at-one--2592cac95a7a30d46415035d.md) | 47 | `result-track:2592cac95a7a30d46415035d9129874daea016e997d7e40d017d615e7c64dca1` |
| 4 | `theorem` | [zero_iff_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/zero-iff-target--d8d674b1741d9b7a79d3485a.md) | 52 | `result-track:d8d674b1741d9b7a79d3485a99e23415842293a4dc1202c5ac8242e45ab35fa9` |
| 5 | `theorem` | [norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/norm-le--4dd174298953d3212e70de89.md) | 67 | `result-track:4dd174298953d3212e70de8982f4804547bd36155a075c5881e80be46b965c36` |
| 6 | `theorem` | [disk_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/disk-bounds--d66bad9c8f848d0ffe57eadd.md) | 81 | `result-track:d66bad9c8f848d0ffe57eadd0e115a24bebfe2989460bea43c6650514fa163fd` |
| 7 | `theorem` | [derivative_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/derivative-bound--f30acfc493d7c89df8d01952.md) | 99 | `result-track:f30acfc493d7c89df8d019524cc350a0edc4dba1b0418b6c9c61f3b2f8f1caf3` |
| 8 | `def` | [samplePatch](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/samplepatch--ba012cbfcfce39e8e2a29067.md) | 112 | `declaration-track:ba012cbfcfce39e8e2a29067804793e3970ae93d5ffa0a3b849c2a55b7b9a637` |
| 9 | `theorem` | [pole_variation](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/pole-variation--bc634730d1f6f0383235b6f0.md) | 128 | `result-track:bc634730d1f6f0383235b6f0ac5465b733d0807989b5eab4e1e7626c3d4070f6` |
| 10 | `theorem` | [pole_collar_variation](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/pole-collar-variation--e1a722e2175e79f3b7badb4b.md) | 151 | `result-track:e1a722e2175e79f3b7badb4b2ad8eee509b057c1f8cf8ce74425d5629e650d58` |
| 11 | `def` | [poleCollarPatch](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/polecollarpatch--732fb3769f1cc8d01f500179.md) | 155 | `declaration-track:732fb3769f1cc8d01f50017964a3c6f514dfc2e0ddff23d74ec5e2a45b66060e` |
| 12 | `theorem` | [pole_collar_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/pole-collar-lower--bba3ab39130af4bcc7fe88e3.md) | 167 | `result-track:bba3ab39130af4bcc7fe88e3e26587451cb169a8d38af59276a99927fefda10f` |
| 13 | `theorem` | [no_target_in_pole_collar](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/no-target-in-pole-collar--ce4e3aac32e3ffc8f3c64ce5.md) | 174 | `result-track:ce4e3aac32e3ffc8f3c64ce55d3032ae148c495d049cc5c9489799bec393d9ad` |
| 14 | `theorem` | [punctured_pole_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/declarations/punctured-pole-lower--d3bef8869b80db63ca30d7cc.md) | 182 | `result-track:d3bef8869b80db63ca30d7cc5055886cc7652f40ff415943dd4379e0deac6fad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
