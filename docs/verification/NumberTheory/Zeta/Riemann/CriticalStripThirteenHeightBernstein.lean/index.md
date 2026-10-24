# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8c2b8e4dedcfde88c2983ccae84c3168d7fd07e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8c2b8e4dedcfde88c2983ccae84c3168d7fd07e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenPhase`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/adverse--78a89f813d39853618d01775.md) | 22 | `declaration-track:78a89f813d39853618d017755701c219344d5c0128aa9f9200fde4fe210d1e01` |
| 2 | `def` | [lossGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/lossgap--834064e4cdb5de66349a5668.md) | 25 | `declaration-track:834064e4cdb5de66349a5668e8d20cf13a4d7838656974d69e91c2b47163fbff` |
| 3 | `def` | [tailGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/tailgap--00a9d2a6adafa7f0982a0967.md) | 28 | `declaration-track:00a9d2a6adafa7f0982a0967418c7a849146c3685e43525fb1a8ca8e97370c0d` |
| 4 | `def` | [projectionCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/projectioncoefficients--75769cc2d699c585aa374ce2.md) | 31 | `declaration-track:75769cc2d699c585aa374ce2c38eec57c926dd124eeb58004a4bb6cf81b476b6` |
| 5 | `theorem` | [projection_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/projection-identity--ebd524256592392c38f2eef6.md) | 43 | `result-track:ebd524256592392c38f2eef666a191cb1ae05bee7df4466739d82f9dc259e3db` |
| 6 | `def` | [slopeCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/slopecoefficients--be013d8d475325655d78cecd.md) | 49 | `declaration-track:be013d8d475325655d78cecd582ba47b5bd81fbe94830ecca451705f2dc5704f` |
| 7 | `theorem` | [slope_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/slope-identity--996090943a79bd14def7b40e.md) | 60 | `result-track:996090943a79bd14def7b40e2184bae8bd6304368f977f85cd7bc8479c481f01` |
| 8 | `def` | [lossCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/losscoefficients--362d246557ff178eaac9eb7a.md) | 66 | `declaration-track:362d246557ff178eaac9eb7a0e3d2e61ffde3c9e5ba10fc4bc1fbebcb9a482b0` |
| 9 | `theorem` | [loss_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/loss-identity--dc0d798445174fee14e18b39.md) | 78 | `result-track:dc0d798445174fee14e18b39584624a417a3d21677649841c8f975057cd4d7a7` |
| 10 | `def` | [tailCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/tailcoefficients--d1d1709acc52811fec1349cc.md) | 84 | `declaration-track:d1d1709acc52811fec1349cc9d7464a4dc9cf4f615f65be7f84e28ca37edaf8a` |
| 11 | `theorem` | [tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/tail-identity--82740a282c0304345f7e3266.md) | 101 | `result-track:82740a282c0304345f7e32663737366b413c6e4529f4bfbf33d660b4fa2e91e5` |
| 12 | `theorem` | [bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/bounds--18142ae6c2389c925fcf164a.md) | 107 | `result-track:18142ae6c2389c925fcf164a2b5ba1314f62c8f05f64ea85acea75ceedf82a63` |
| 13 | `theorem` | [tail_gap_negative_at_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/declarations/tail-gap-negative-at-fourteen--d87846f2bcf02cff90284dfd.md) | 133 | `result-track:d87846f2bcf02cff90284dfd4c9b46f654417fc24a482c0b4a31c2f035319321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
