# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryMovingWindowBilinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b392f4003d3136ac4a7ed39d5ad699f9cd17b82",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b392f4003d3136ac4a7ed39d5ad699f9cd17b82`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryPreservingHybrid`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryCoreDepths](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarycoredepths--c43c4803dae142481ab6f85f.md) | 20 | `declaration-track:c43c4803dae142481ab6f85f542ea3426a0837fe9c9a800db0d0a0dc8db288fd` |
| 2 | `def` | [boundaryTerminalDrop](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundaryterminaldrop--312c18d000c48a2de6bf8b81.md) | 25 | `declaration-track:312c18d000c48a2de6bf8b813db44968c432c2f3d79329246ec89f9011750d59` |
| 3 | `def` | [boundaryCumulativeCorrelationPacket](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarycumulativecorrelationpacket--69d69598a28149c7076a18a1.md) | 30 | `declaration-track:69d69598a28149c7076a18a17a5b24a57294bb42bc557dd4f1210c465643bf0b` |
| 4 | `theorem` | [boundaryCoreDepth_left](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarycoredepth-left--19ed964398178acfe77ad003.md) | 35 | `result-track:19ed964398178acfe77ad00348c3de6178f1de95f4bf6c25ae092f7c709f54cc` |
| 5 | `theorem` | [harmonicTerminalCumulativeContribution_eq_boundary](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/harmonicterminalcumulativecontribution-eq-boundary--527714f307c2a3005e4221b0.md) | 49 | `result-track:527714f307c2a3005e4221b08e73f99293c5a31fe9ca6f636fe092086a3b7438` |
| 6 | `theorem` | [coreBoundarySignedPacket_eq_boundaryDepthSum](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/coreboundarysignedpacket-eq-boundarydepthsum--a4bf756533f5f8622194cc78.md) | 75 | `result-track:a4bf756533f5f8622194cc78048086eca2c702cc76436f0748099e53a7aec8b1` |
| 7 | `theorem` | [coreBoundarySignedPacket_eq_commonDrop](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/coreboundarysignedpacket-eq-commondrop--4a8a44920f00d083f8489923.md) | 85 | `result-track:4a8a44920f00d083f84899231bfeb19978e477aa769a7da8958623700a10a8d6` |
| 8 | `def` | [boundaryMovingWindowMertens](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarymovingwindowmertens--3e985580fce6f6b73e33aced.md) | 111 | `declaration-track:3e985580fce6f6b73e33aced19a2f56139479df74e225feb3338fab0ad188449` |
| 9 | `def` | [boundaryTailMertens](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarytailmertens--c668a1bb3ded48cf160d59df.md) | 116 | `declaration-track:c668a1bb3ded48cf160d59dff09106990a4185acf42b3f615995c0f371ba02d3` |
| 10 | `def` | [boundaryMovingWindowBilinearPacket](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarymovingwindowbilinearpacket--4f4db6155ac0702c1462989e.md) | 121 | `declaration-track:4f4db6155ac0702c1462989ead6830a1547921a04b9e9e246bd5c0ddd18a5110` |
| 11 | `structure` | [BoundaryMovingWindowBilinearAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/boundarymovingwindowbilinearadapter--1840aad22897ddc0089d459a.md) | 129 | `declaration-track:1840aad22897ddc0089d459ada62bdd70f6783b8da9a1d8c15c10b76d10d6f4c` |
| 12 | `theorem` | [coreBoundarySignedPacket_eq_movingWindowBilinear](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/coreboundarysignedpacket-eq-movingwindowbilinear--1d18447c5952d5d6e0ecb294.md) | 137 | `result-track:1d18447c5952d5d6e0ecb294e7610766fb71e61c7661686a03021b50ce5201c0` |
| 13 | `def` | [SubpolynomialBoundaryMovingWindowBilinearPacket](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/declarations/subpolynomialboundarymovingwindowbilinearpacket--001be3bd62b39e7715d31e6b.md) | 146 | `declaration-track:001be3bd62b39e7715d31e6b6c18b8caa459fb320600a488bc15d19b21762483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
