# Verification target: GRWTSK.NumberTheory.Moebius.NonzeroFourierParsevalResidueEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "039b222f2d10086d9481a4d5fc16b3577a006052",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `039b222f2d10086d9481a4d5fc16b3577a006052`.

Source path: `GRWTSK/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric`](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveZModFourier](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/positivezmodfourier--35a70043bf3e2e2dfa476982.md) | 39 | `declaration-track:35a70043bf3e2e2dfa4769821dbaf7549bb4a5c08654ebf0d37dff5666a8bf2c` |
| 2 | `theorem` | [positiveZModFourier_parseval_conj](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/positivezmodfourier-parseval-conj--2b9fe4c4c05b7e2bedfd130d.md) | 46 | `result-track:2b9fe4c4c05b7e2bedfd130de7f0fd863820b10c76ac74e108c4ae6a128ca59e` |
| 3 | `theorem` | [positiveZModFourier_parseval](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/positivezmodfourier-parseval--986505409947dd79456249ca.md) | 79 | `result-track:986505409947dd79456249ca05c799781f294433a663706b3e9de13c4d9e13a0` |
| 4 | `def` | [parityMobiusResidueSum](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/paritymobiusresiduesum--0e6a6dd49565ddd58698ba16.md) | 92 | `declaration-track:0e6a6dd49565ddd58698ba16c271314152df8955f00e44bafcedea57e7981887` |
| 5 | `def` | [paritySquarefreeResidueSum](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/paritysquarefreeresiduesum--d9ed04f14294db7e478a53dc.md) | 101 | `declaration-track:d9ed04f14294db7e478a53dc168d66936909846333274720fa6c0f7e0b82750f` |
| 6 | `theorem` | [parityOnePointMobiusFourierSum_eq_positiveFourier_residues](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/parityonepointmobiusfouriersum-eq-positivefourier-residues--ce1d89b015674e49dc510a87.md) | 111 | `result-track:ce1d89b015674e49dc510a877ce83e0e4fdd5bf4549cde946f1267bdc693144a` |
| 7 | `theorem` | [parityOnePointMobiusFourierDiagonal_eq_positiveFourier_residues](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/parityonepointmobiusfourierdiagonal-eq-positivefourier-residues--d0d8e50fe4770e6794aec4ba.md) | 129 | `result-track:d0d8e50fe4770e6794aec4ba22e1d1439e0c3b5bfe5656c942fde6c8d1245434` |
| 8 | `theorem` | [parityMobiusFourier_parseval](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/paritymobiusfourier-parseval--d166a796fbb3063839a63d79.md) | 147 | `result-track:d166a796fbb3063839a63d79e6b1cb0205088164ddab3b6b5098c3cf22ec7e29` |
| 9 | `def` | [parityMobiusResidueL2Energy](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/paritymobiusresiduel2energy--04011a20d2b4dcacc2ba7d64.md) | 159 | `declaration-track:04011a20d2b4dcacc2ba7d64d422b2dbc30bda246823a830fae4f3f59c93db93` |
| 10 | `def` | [paritySquarefreeResidueL2Energy](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/paritysquarefreeresiduel2energy--35feb32db6768cdf13ff70dd.md) | 166 | `declaration-track:35feb32db6768cdf13ff70dda23b8b83600daff7261f84fa0e9e89aa3848a679` |
| 11 | `def` | [paritySquarefreeDiagonalNonzeroFrequencyL1](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/paritysquarefreediagonalnonzerofrequencyl1--d60022562664b08675acd881.md) | 173 | `declaration-track:d60022562664b08675acd881cb1cd9f7f09e3ce81f8b1a6eaa0d6ab1be17f7cc` |
| 12 | `def` | [parityResidueL2DiagonalL1ModulusMajorant](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/parityresiduel2diagonall1modulusmajorant--69e781973b40d21e0628e50f.md) | 181 | `declaration-track:69e781973b40d21e0628e50fd8692e8c5b26b8866602b0b6e853e9dfaf8910de` |
| 13 | `def` | [parityResidueL2DiagonalL1EndpointMajorant](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/parityresiduel2diagonall1endpointmajorant--b5b7dd3d57e0e7c7a910a072.md) | 191 | `declaration-track:b5b7dd3d57e0e7c7a910a0727f48fd738c08171a711238e9ea712b29e5856c73` |
| 14 | `theorem` | [norm_square_sub_diagonal_le](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/norm-square-sub-diagonal-le--73616522c1cd17a026108a32.md) | 200 | `result-track:73616522c1cd17a026108a32b32d24119f6ae0194333e997577f1f8c550ff9ba` |
| 15 | `theorem` | [normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/normalized-nonzero-parity-majorant-le-residuel2-add-diagonall1--f288321aadc17f08d0feb04b.md) | 210 | `result-track:f288321aadc17f08d0feb04bf12961e61ab9b5372d76218de87284bd840bae06` |
| 16 | `theorem` | [parityFourierNonzeroFrequencyEndpointMajorant_le_residueL2DiagonalL1](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/parityfouriernonzerofrequencyendpointmajorant-le-residuel2diagonall1--cc87e6108e171acd05b7a107.md) | 259 | `result-track:cc87e6108e171acd05b7a107f6239339b10612bd35e8968ceeaea5a85ca68510` |
| 17 | `def` | [DyadicNaturalScaleResidueL2DiagonalL1Budget](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/dyadicnaturalscaleresiduel2diagonall1budget--67abbe22d74b4d7d0c93c267.md) | 283 | `declaration-track:67abbe22d74b4d7d0c93c2674867949401d450f024b2439157d58ecc9982c410` |
| 18 | `theorem` | [nonzeroParityFourierBudget_of_residueL2DiagonalL1](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/nonzeroparityfourierbudget-of-residuel2diagonall1--f0d4a534327e6df82ea2d591.md) | 293 | `result-track:f0d4a534327e6df82ea2d591e955dd94341969ed2e10ba473cccc4e4b613f5e8` |
| 19 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_residueL2DiagonalL1](../../../../mathematics/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-residuel2diagonall1--dbdc3313f004182b7ce87c32.md) | 306 | `result-track:dbdc3313f004182b7ce87c322873a242a955546c8338e74d497a3cd5bcdcb906` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
