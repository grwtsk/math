# Verification target: GRWTSK.NumberTheory.Moebius.MertensShortLongShiftThreshold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46d71663f3b635acf82ee1fb841910a5ff8f047",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46d71663f3b635acf82ee1fb841910a5ff8f047`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensCumulativeShiftShortInterval`](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_mertensTwoPointPrefix_le_length](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/abs-mertenstwopointprefix-le-length--fd89d94c12138f63b3daa910.md) | 20 | `result-track:fd89d94c12138f63b3daa9102af0fada8feeef7b4b5ffa6211a44a4b81c1a23a` |
| 2 | `theorem` | [abs_cumulativeHarmonicShiftCorrelation_le_trivial](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/abs-cumulativeharmonicshiftcorrelation-le-trivial--736c6b1edcdbbba8d0988ba6.md) | 40 | `result-track:736c6b1edcdbbba8d0988ba63b1ee80c5fe6406b543e48dd7b33886a24dcadaf` |
| 3 | `def` | [harmonicShiftFirstDifference](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/harmonicshiftfirstdifference--43773842b9fc0c35cc4b08db.md) | 60 | `declaration-track:43773842b9fc0c35cc4b08db32c0198ca60b1aeeddb354f6f8bc33d5154067f5` |
| 4 | `def` | [harmonicShiftSecondDifference](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/harmonicshiftseconddifference--5c5ab43477a2ad40e3018006.md) | 66 | `declaration-track:5c5ab43477a2ad40e3018006008f3c2c02ea8a682e430e7914ee7a181e50034a` |
| 5 | `def` | [harmonicCumulativeShortContribution](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/harmoniccumulativeshortcontribution--1077c10be8738a654f70f9ef.md) | 73 | `declaration-track:1077c10be8738a654f70f9ef16c1bd5eee915d1ee43701ca4303ec7a2e688fab` |
| 6 | `def` | [harmonicCumulativeLongContribution](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/harmoniccumulativelongcontribution--4d8f82ee78c0277f0d60dcfe.md) | 82 | `declaration-track:4d8f82ee78c0277f0d60dcfe2c54ce6c9c0e9d9daba96f8d97c911537cb0ed36` |
| 7 | `theorem` | [harmonicCumulativeInterior_eq_short_add_long](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/harmoniccumulativeinterior-eq-short-add-long--3c48238cc26df0b4f2cd4186.md) | 92 | `result-track:3c48238cc26df0b4f2cd41866eb18a941c391dd5ca44ce7797d46747d53d3a15` |
| 8 | `theorem` | [sum_harmonicShiftSecondDifference_le_first](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/sum-harmonicshiftseconddifference-le-first--2b397e1c87f6d60d1af22440.md) | 113 | `result-track:2b397e1c87f6d60d1af22440dd19b823d86f71729db0187c3eb0e0719f12ed6f` |
| 9 | `theorem` | [abs_harmonicCumulativeShortContribution_le](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/abs-harmoniccumulativeshortcontribution-le--3877fff837dfe667a24e527f.md) | 143 | `result-track:3877fff837dfe667a24e527fb19b24b8d0928bb681dc07c8cb1bad1b5a3bd060` |
| 10 | `structure` | [LongShortIntervalMobiusSource](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/longshortintervalmobiussource--f16da285dddb475f09c9f1d7.md) | 235 | `declaration-track:f16da285dddb475f09c9f1d7895772ae7fcc9de1588e311b818d83c44ee1690c` |
| 11 | `structure` | [LongShortIntervalToHarmonicAdapter](../../../../mathematics/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/declarations/longshortintervaltoharmonicadapter--166112894b1693339cae4e7a.md) | 244 | `declaration-track:166112894b1693339cae4e7adda8546ba7dd103dd6be5f3e951ae2e900a270dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
