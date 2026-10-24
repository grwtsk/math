# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenPhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecc986c09813aee6204c4dd29827daa5b9f24cd0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecc986c09813aee6204c4dd29827daa5b9f24cd0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoPhase`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eighth_angle_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/eighth-angle-bounds--69a91cb0e1df77410cfa0c3c.md) | 20 | `result-track:69a91cb0e1df77410cfa0c3cb8e71144acfdf83d4b347dee462c9a9fab211327` |
| 2 | `lemma` | [reduced_angle_interval](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/reduced-angle-interval--1b47503497748277ec3937c7.md) | 34 | `result-track:1b47503497748277ec3937c7022729aec57c28a9ba38567344cce12fb93a1e5a` |
| 3 | `lemma` | [sector_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/sector-bounds--3b3b835a9036efcbaef8d2f8.md) | 45 | `result-track:3b3b835a9036efcbaef8d2f87118749d80cff388ac14deee62c207c5abf972b3` |
| 4 | `lemma` | [positive_height_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/positive-height-bounds--79be2ed54e1c650c4dde77c1.md) | 58 | `result-track:79be2ed54e1c650c4dde77c122821096198c1dda030a78b9f7e9b56ed75875f1` |
| 5 | `lemma` | [signed_height_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/signed-height-bounds--865e0f8dcf4772b229214c80.md) | 64 | `result-track:865e0f8dcf4772b229214c8019c1d1f168b88b9b6be06c5c39e739a5ef8ba332` |
| 6 | `lemma` | [height_chord](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/height-chord--fe877930ca6db246687e65f2.md) | 77 | `result-track:fe877930ca6db246687e65f2af3aaaec5845c5c9c22747426f0d974626e8dacd` |
| 7 | `def` | [weightRoot](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/weightroot--bd70345576f2440c40d5dc9c.md) | 82 | `declaration-track:bd70345576f2440c40d5dc9c84307d22eaa61558e80d44f0c1b9c255fe3e4c15` |
| 8 | `lemma` | [weightRoot_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/weightroot-bounds--669e0e61f414f13e511553d8.md) | 84 | `result-track:669e0e61f414f13e511553d810b0e5b85bc77400c11666bfb63c8e345f70862d` |
| 9 | `lemma` | [weighted_root](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/weighted-root--ef6d42c7021f535749b86659.md) | 95 | `result-track:ef6d42c7021f535749b86659868f5cbb41e83f953543be78b4764cb00a499ddc` |
| 10 | `lemma` | [power_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/power-norm-le--829557facdee08d2c47c12a7.md) | 103 | `result-track:829557facdee08d2c47c12a78fcdec570d69d5236fa9163fb1c0b6a348f6f67d` |
| 11 | `lemma` | [amplitude_eq_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/declarations/amplitude-eq-norm--ba03687293792aebb8982aa5.md) | 109 | `result-track:ba03687293792aebb8982aa59f4ad7ff9271f4892d966652d001b22cf58e61d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
