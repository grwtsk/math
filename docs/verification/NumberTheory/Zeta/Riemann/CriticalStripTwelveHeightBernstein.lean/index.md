# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b5ef636b4a618349f33aa53d7888d14d04f310",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b5ef636b4a618349f33aa53d7888d14d04f310`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectionReal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/projectionreal--a5806dbad1fb98629fd12876.md) | 19 | `declaration-track:a5806dbad1fb98629fd12876b0171e19cac0dd40f9f5fea914b930d3b47f06af` |
| 2 | `def` | [projectionSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/projectionslope--bf18ca42548ce3b4dc4f68cc.md) | 22 | `declaration-track:bf18ca42548ce3b4dc4f68cce7042b7338330413bf708256ecadac15ea6958aa` |
| 3 | `def` | [slopeGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/slopegap--d03ae6df810873fccda653c7.md) | 25 | `declaration-track:d03ae6df810873fccda653c7ed379d8adbc8d72f5cca1d280ced40efb185df09` |
| 4 | `def` | [tailGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/tailgap--4eb776336811b6885f072424.md) | 26 | `declaration-track:4eb776336811b6885f072424435787dfcec86af6ab20ad93456e9ba0f626e12d` |
| 5 | `def` | [projectionCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/projectioncoefficients--17d38e7d4110c2fedc6c3661.md) | 29 | `declaration-track:17d38e7d4110c2fedc6c36612052a47506a0ba0bd463d3a38959568f4fec93a6` |
| 6 | `def` | [slopeCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/slopecoefficients--c79b4ee9cc84dd4095d2ab24.md) | 41 | `declaration-track:c79b4ee9cc84dd4095d2ab24cea24e3d590649826442cf69a56071f4f7fe5331` |
| 7 | `def` | [tailCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/tailcoefficients--2aae8a8a6c2aec0b71c33270.md) | 53 | `declaration-track:2aae8a8a6c2aec0b71c33270e7d5d384b57aadc22687824e243eb04b7e081f75` |
| 8 | `theorem` | [projection_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/projection-identity--38bec055e8c7fecb74b54940.md) | 70 | `result-track:38bec055e8c7fecb74b549409288c2a53c8f511f18b399d0040ceee902acfbc4` |
| 9 | `theorem` | [slope_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/slope-identity--b17e960316cbf326a891778b.md) | 75 | `result-track:b17e960316cbf326a891778bc2ab168c8806a0b5954346c5f4a6374e47092645` |
| 10 | `theorem` | [tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/tail-identity--8bc5ac31ce39407d9a82135d.md) | 80 | `result-track:8bc5ac31ce39407d9a82135d926f458b27edb44030b0fdc38131bc3b97e91673` |
| 11 | `theorem` | [bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/bounds--1e05144e51597bd54a1f437c.md) | 85 | `result-track:1e05144e51597bd54a1f437c6641cbc90ff42e8c513e56516883a6e0430465ee` |
| 12 | `theorem` | [tail_gap_negative_at_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/declarations/tail-gap-negative-at-thirteen--9901bd093a0c530de8a74108.md) | 109 | `result-track:9901bd093a0c530de8a74108345f263ed6f5cd607bee5eff993e42584eb54dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
