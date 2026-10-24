# Verification target: GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccf125d739b20575c81c45f1ea05ff4c11be35a5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/TurnwiseScalarObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccf125d739b20575c81c45f1ea05ff4c11be35a5`.

Source path: `GRWTSK/NumberTheory/Farey/TurnwiseScalarObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/TurnwiseScalarObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel`](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftStep](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/leftstep--93a842e7536aa1feb8979ec4.md) | 56 | `declaration-track:93a842e7536aa1feb8979ec424e0dd67e174f506370d8051b6cf305833077874` |
| 2 | `def` | [rightStep](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/rightstep--d8b5751e9ac4e41c8d3b1915.md) | 59 | `declaration-track:d8b5751e9ac4e41c8d3b1915f9129e360bfa3b9f1f1eafc5836ecbf6ff8d3adf` |
| 3 | `def` | [leftThird](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/leftthird--a8575453131c5280cc7626a0.md) | 62 | `declaration-track:a8575453131c5280cc7626a01b002e91fa5d150da270e158d1b370e14ba18581` |
| 4 | `theorem` | [leftStep_zero](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/leftstep-zero--df52397d3624224ba54f145e.md) | 64 | `result-track:df52397d3624224ba54f145e033abbb33b657e6af9dfb323feffd7672eb618ec` |
| 5 | `theorem` | [leftStep_one](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/leftstep-one--5c1c4a1b5831b2c877fbfa3e.md) | 70 | `result-track:5c1c4a1b5831b2c877fbfa3edd5006ce3dc3c0c4277d7a94ef654b1337107284` |
| 6 | `theorem` | [leftStep_two](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/leftstep-two--5b2065f554579e9d1170def2.md) | 75 | `result-track:5b2065f554579e9d1170def299c39ca2919c5ea2ab5470cfe1d5ecd825bdd0f7` |
| 7 | `theorem` | [returnStep_zero](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/returnstep-zero--730bb397953f6e6b1efc4f05.md) | 82 | `result-track:730bb397953f6e6b1efc4f05212e8e62d8219eb357c64f613d295d49e6aaafc1` |
| 8 | `theorem` | [no_scalar_left_extension_of_negative_return](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/no-scalar-left-extension-of-negative-return--d5da4deb3c5d61ecf130c418.md) | 93 | `result-track:d5da4deb3c5d61ecf130c418db34260dd904941ec8640e789c8bb0b82e7ac261` |
| 9 | `theorem` | [quadraticReadout_no_scalar_left](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/quadraticreadout-no-scalar-left--7bdbe40ba6b21abfb3de6d91.md) | 145 | `result-track:7bdbe40ba6b21abfb3de6d91a0711b5189840eab2538f849b4ce24636b77ae37` |
| 10 | `theorem` | [quadraticReadout_no_turnwise_scalars](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/quadraticreadout-no-turnwise-scalars--034078422e1f5bd3ca309e43.md) | 161 | `result-track:034078422e1f5bd3ca309e43bb290f46803f352215c56a8435baf23c96d224dd` |
| 11 | `theorem` | [modThreeWord_append](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/modthreeword-append--6de8609b02b42f0073d32c98.md) | 174 | `result-track:6de8609b02b42f0073d32c984fc3126c0a01ff2860f0d58acd174c71790fd4eb` |
| 12 | `def` | [wordState](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/wordstate--58feadebf4ccd75c33e9107a.md) | 181 | `declaration-track:58feadebf4ccd75c33e9107a278a1cf9bc788d6f43d5866ca1bc3f59b6146737` |
| 13 | `theorem` | [wordState_append](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/wordstate-append--3c8de0bc174552de369dd75d.md) | 187 | `result-track:3c8de0bc174552de369dd75d53fe95a32b2e900a79b7b1224adf9f2eba268ab0` |
| 14 | `theorem` | [anyMatrix_mulVec_neg](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/anymatrix-mulvec-neg--0c3aa0b24b7dfe823ea7d268.md) | 197 | `result-track:0c3aa0b24b7dfe823ea7d268a5309b8b4fd73b7049e6d0a17e920f9950111bc6` |
| 15 | `def` | [wordSignal](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/wordsignal--6f619ec04f300c6e55bbf99d.md) | 205 | `declaration-track:6f619ec04f300c6e55bbf99dadff925959adb632b3db6dd2d1db21d5f8af869f` |
| 16 | `theorem` | [wordSignal_append](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/wordsignal-append--a7e0b74b7ce686e9fc5863e3.md) | 210 | `result-track:a7e0b74b7ce686e9fc5863e3247f178fb1af4ba82ee9d11daf44a54d6ff2bb6a` |
| 17 | `theorem` | [wordSignal_sign_invariant](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/wordsignal-sign-invariant--53f6cfa895e0ce68c49ad814.md) | 217 | `result-track:53f6cfa895e0ce68c49ad81483b89184799851612d0385f1098290a7fb4b0053` |
| 18 | `theorem` | [wordSignal_selected_return](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/declarations/wordsignal-selected-return--6bd096964a0e55b42eab2aab.md) | 225 | `result-track:6bd096964a0e55b42eab2aabdb390f8bee70d766aa340521ccb3e031acac4da1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
