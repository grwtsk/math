# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandOverlap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d785aef162add7bd7018448c63b8d100675284c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d785aef162add7bd7018448c63b8d100675284c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seam](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/seam--2255fe1282b26ed07141b022.md) | 23 | `declaration-track:2255fe1282b26ed07141b02232c03eeafa004700138034245344fe67cce450cd` |
| 2 | `theorem` | [same_cutoff_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/same-cutoff-telescope--e20f0761f8ac50e14f91b144.md) | 26 | `result-track:e20f0761f8ac50e14f91b14487566898a86a5bcdf0b5bd0bcc8388cb1f5993f1` |
| 3 | `lemma` | [powerError_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/powererror-eq--45364b2666022f12c74d93d2.md) | 31 | `result-track:45364b2666022f12c74d93d26c005801f906e7aab24fd190b294efe6313f2f01` |
| 4 | `lemma` | [finite_seam_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/finite-seam-budget--d0c15b057c7ec8b1021b19ad.md) | 34 | `result-track:d0c15b057c7ec8b1021b19ad76ac7f67b31553191616a9519f8704aed4d18bed` |
| 5 | `theorem` | [model_distance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/model-distance--45d75aadc1db9ed83cfe6eb6.md) | 43 | `result-track:45d75aadc1db9ed83cfe6eb657bddef19a4bd536950d31b7e979953c5f436caf` |
| 6 | `theorem` | [seam_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/seam-nonempty--e4256ef61e58d197bc7488c8.md) | 75 | `result-track:e4256ef61e58d197bc7488c8f3d0a52c0a9c12cd216dbcc00d54deee3f2e9b9b` |
| 7 | `theorem` | [source_lower_on_seam](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/source-lower-on-seam--9eaa792d545cb0cb15c1a1f3.md) | 80 | `result-track:9eaa792d545cb0cb15c1a1f32643b913189afc7b31511af878bd927626f12482` |
| 8 | `theorem` | [same_deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandOverlap.lean/declarations/same-deformation--79f4ced3b4c7c9b0f9794cfc.md) | 86 | `result-track:79f4ced3b4c7c9b0f9794cfccbab582dd76896d13a2143b226add2a324451b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
