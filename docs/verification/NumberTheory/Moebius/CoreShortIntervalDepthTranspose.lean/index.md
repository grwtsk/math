# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalDepthTranspose

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81eeb3705d882a8398a97d3e9e038dd7fb3568be",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81eeb3705d882a8398a97d3e9e038dd7fb3568be`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalIncompatibleLinearWitness`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreInteriorLengthCoefficient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/coreinteriorlengthcoefficient--ba4cda5ab2a22348df5aab3a.md) | 21 | `declaration-track:ba4cda5ab2a22348df5aab3a881790db7a09f281c4531f990a38a8813c033763` |
| 2 | `def` | [coreTerminalLengthCoefficient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/coreterminallengthcoefficient--bac235c237a6590ffb22d0bb.md) | 29 | `declaration-track:bac235c237a6590ffb22d0bbf5593b6ed36ae2c675acaf73d18900b7ab3ef65e` |
| 3 | `def` | [coreLengthCoefficientMass](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/corelengthcoefficientmass--5ca05732d2128c721d01a58d.md) | 37 | `declaration-track:5ca05732d2128c721d01a58dd2d0c79bd2bd42c0a33d6bc18cf9539d559fa3c8` |
| 4 | `def` | [incompatibleBlockLengthL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/incompatibleblocklengthl1--9b26522409785a069f5ceef7.md) | 44 | `declaration-track:9b26522409785a069f5ceef7b037429085645ae689a1c0089121f166319483ba` |
| 5 | `def` | [transposedIncompatibleDyadicL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/transposedincompatibledyadicl1packet--a3a992aa53520d9000a2ee7c.md) | 52 | `declaration-track:a3a992aa53520d9000a2ee7c0aa42815fc4694f373256d2f37bb5986568bdd4e` |
| 6 | `theorem` | [coreTerminalLengthCoefficient_nonneg](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/coreterminallengthcoefficient-nonneg--a5284998eee56fb88c43fe0c.md) | 60 | `result-track:a5284998eee56fb88c43fe0ca6dc69417de7068ac2bfe1a490c8221114a22d1e` |
| 7 | `theorem` | [coreInteriorLengthCoefficient_nonneg](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/coreinteriorlengthcoefficient-nonneg--b2da9e4d271c7b01851cc817.md) | 70 | `result-track:b2da9e4d271c7b01851cc81722b008c256188ef758d281216a45098aff676451` |
| 8 | `theorem` | [coreLengthCoefficientMass_nonneg](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/corelengthcoefficientmass-nonneg--27d972f5c533d0530ef48ec4.md) | 85 | `result-track:27d972f5c533d0530ef48ec4f0b9bc44593f67f1afcf9e12b31425e7db3990ef` |
| 9 | `theorem` | [incompatibleBlockLengthL1_eq](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/incompatibleblocklengthl1-eq--1fd5c37d8a3eca94f0456eab.md) | 97 | `result-track:1fd5c37d8a3eca94f0456eab695ac49b1532e06d2f8772cb219ed0ef345e6531` |
| 10 | `def` | [SubpolynomialTransposedIncompatibleDyadicL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/subpolynomialtransposedincompatibledyadicl1packet--d9ac7371fdf42acecf68a222.md) | 108 | `declaration-track:d9ac7371fdf42acecf68a222ff0bc97d5442086b6e0cd4b8da34981f862dccb8` |
| 11 | `structure` | [IncompatibleDepthTransposeAdapter](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/incompatibledepthtransposeadapter--57da093690b82bbb98fc0911.md) | 117 | `declaration-track:57da093690b82bbb98fc0911883e05095c92ae69a3e1dc3087624889d2e396f4` |
| 12 | `theorem` | [subpolynomialIncompatibleDyadicPacket_of_transposed](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/subpolynomialincompatibledyadicpacket-of-transposed--2c836693af5ce0fb9aab02da.md) | 125 | `result-track:2c836693af5ce0fb9aab02da9181071d530f1ce8adf05e274353dc489c26aff6` |
| 13 | `structure` | [IncompatibleLengthwiseSupplier](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDepthTranspose.lean/declarations/incompatiblelengthwisesupplier--1d720dec0e666a3807778e71.md) | 141 | `declaration-track:1d720dec0e666a3807778e71c281443796a0f19cd22c8bbe619453aef7361dde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
