# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryWeightedWeakMertens

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95ff9f421d528818a77cbdc7bb2a521169800453",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95ff9f421d528818a77cbdc7bb2a521169800453`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryTerminalNormalization`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensPrefixSquare](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/weightedmertensprefixsquare--d2e2155c4618746ec1ba97fa.md) | 21 | `declaration-track:d2e2155c4618746ec1ba97fa1fb5578c9363b984fcaac1580234ed6bb0ff5b6d` |
| 2 | `def` | [boundaryLocalizedWeightedMertensSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/boundarylocalizedweightedmertenssquareenergy--f01f691be7dd213286fa5791.md) | 26 | `declaration-track:f01f691be7dd213286fa5791b5198695c9996558032eaac4ccb8f26afe9f9e0e` |
| 3 | `theorem` | [mertensPrefix_sq_eq_weighted_mul](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/mertensprefix-sq-eq-weighted-mul--3f3a5b78b86026aa2d0955f3.md) | 35 | `result-track:3f3a5b78b86026aa2d0955f3536edbe86f37438ad9d5cfda831e5d8a5434ab73` |
| 4 | `theorem` | [mertensPrefix_sq_le_endpoint_mul_weighted](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/mertensprefix-sq-le-endpoint-mul-weighted--3ef5b6b54c55295061fd1f81.md) | 47 | `result-track:3ef5b6b54c55295061fd1f81d95e08c0063dbb7223606af76dcaf833e2c93541` |
| 5 | `theorem` | [logarithmicShallowDepthCount_add_one_le_endpoint](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/logarithmicshallowdepthcount-add-one-le-endpoint--28500bc31cb542a3cfdac426.md) | 63 | `result-track:28500bc31cb542a3cfdac4264d88826f339e494dc57f660933f3bfbfc09ae665` |
| 6 | `theorem` | [boundaryLocalizedMertensSquareEnergy_le_weighted](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/boundarylocalizedmertenssquareenergy-le-weighted--2a972f76e0c056e01b87aebf.md) | 75 | `result-track:2a972f76e0c056e01b87aebf85a04291c06bd19037953b9726b6b182d0a4c8d9` |
| 7 | `def` | [DyadicWeightedWeakMertensBoundarySource](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/dyadicweightedweakmertensboundarysource--00140fa6b4499206350a8870.md) | 122 | `declaration-track:00140fa6b4499206350a8870311addd97e4f38180e43ae385474520f1b6110ad` |
| 8 | `theorem` | [subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/subpolynomialboundarylocalizedmertenssquareenergy-of-weighted--3f4a6c384cac1d9680fcea92.md) | 130 | `result-track:3f4a6c384cac1d9680fcea9215cd4a4acc71af82bf6e66bba11113a5d72fa00c` |
| 9 | `def` | [discreteWeightedWeakMertensToBoundaryLocalizedEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/discreteweightedweakmertenstoboundarylocalizedenergyadapter--76512f530f85843c1c65f019.md) | 173 | `declaration-track:76512f530f85843c1c65f019af89c53c6e83cd6cc1a1a75df4959746b9856dda` |
| 10 | `theorem` | [subpolynomialCoreBoundarySignedPacket_of_weightedWeakMertens](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/subpolynomialcoreboundarysignedpacket-of-weightedweakmertens--c04b64b989e6529cfdf1d8d2.md) | 185 | `result-track:c04b64b989e6529cfdf1d8d27ed9a2c21220fd0947c5d530da79130340b58c75` |
| 11 | `structure` | [ClassicalWeakMertensToDiscreteBoundaryAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/declarations/classicalweakmertenstodiscreteboundaryadapter--f1c626b26e032afce502a6a5.md) | 193 | `declaration-track:f1c626b26e032afce502a6a5a93ca462c472ffba279923b58f936e44ab31d68f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
