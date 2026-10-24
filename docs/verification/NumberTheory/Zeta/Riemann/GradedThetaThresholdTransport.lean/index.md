# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b255aa4601e71c26aba1c46684f21f70ca7d7695",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b255aa4601e71c26aba1c46684f21f70ca7d7695`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllDyadicThetaAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/declarations/alldyadicthetaatthreshold--4eef2eca451730f7bf8dbe60.md) | 39 | `declaration-track:4eef2eca451730f7bf8dbe60debe0bdcc878af19954bb986c18f3924b20cf0b9` |
| 2 | `theorem` | [thresholdAmplitude_ge_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/declarations/thresholdamplitude-ge-one--48d93e3eddf0673e8073ef34.md) | 49 | `result-track:48d93e3eddf0673e8073ef34aaaa59bbb047062d469c492d5428695cf613f03a` |
| 3 | `theorem` | [sqrt_twoX_le_two_thresholdAmplitude](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/declarations/sqrt-twox-le-two-thresholdamplitude--832f5851e2656bee1bd97efa.md) | 59 | `result-track:832f5851e2656bee1bd97efa031acee8fa7b264dab488be266739f1a80d09ecd` |
| 4 | `theorem` | [thetaAtThreshold_to_energyAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/declarations/thetaatthreshold-to-energyatthreshold--d4cc88c8bbf95701f678920e.md) | 89 | `result-track:d4cc88c8bbf95701f678920e16b4a35188b343bdda916ebac9343ab26d5fb78f` |
| 5 | `theorem` | [thetaAtThreshold_to_sameZeroFree](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/declarations/thetaatthreshold-to-samezerofree--980a52dccb2c1a5d49935713.md) | 221 | `result-track:980a52dccb2c1a5d49935713d3ff19a0da6a4d5769e141b6fb320d9c42028203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
