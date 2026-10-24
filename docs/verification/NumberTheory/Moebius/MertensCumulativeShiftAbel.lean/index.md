# Verification target: GRWTSK.NumberTheory.Moebius.MertensCumulativeShiftAbel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f84648a1454f439850ac0ba78e3f5320a39a87f1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f84648a1454f439850ac0ba78e3f5320a39a87f1`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensHarmonicWeightedChowlaPacket`](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicShiftLower](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftlower--52c40384e6cc580bc29e45d1.md) | 20 | `declaration-track:52c40384e6cc580bc29e45d1c05e499d5ded955ab3fbdb43e4279689d07f1eb4` |
| 2 | `def` | [harmonicShiftUpper](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftupper--1c648f972d89dbc8f30bfa98.md) | 24 | `declaration-track:1c648f972d89dbc8f30bfa98030d370ca88518553a9a1e72f495f7d69ac1e8a2` |
| 3 | `def` | [harmonicShiftCount](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftcount--67bed7d00330af91cec21984.md) | 28 | `declaration-track:67bed7d00330af91cec21984c64797f7eb18a0dfa619d71c9cc031fa7ce03d0c` |
| 4 | `def` | [harmonicShiftReciprocal](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftreciprocal--0d0742a3fc89cc22516d8ae8.md) | 32 | `declaration-track:0d0742a3fc89cc22516d8ae8b3ea2ef25dbf6830e7f83596eed237413ad1a312` |
| 5 | `def` | [harmonicShiftCorrelation](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftcorrelation--b1263e13d55a5c54b6d6b406.md) | 36 | `declaration-track:b1263e13d55a5c54b6d6b406b4bf163e84b1cc28bcd2905c15ce96cca56c2ed9` |
| 6 | `def` | [cumulativeHarmonicShiftCorrelation](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/cumulativeharmonicshiftcorrelation--5a757c9956b96289668e9163.md) | 41 | `declaration-track:5a757c9956b96289668e91632a5a4d6aaf6d3b5c8523325016a8110a2b17a272` |
| 7 | `theorem` | [finite_second_abel](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/finite-second-abel--5ba74626742f33c08eddd5e9.md) | 48 | `result-track:5ba74626742f33c08eddd5e93f37506fb016233ef1b94b3b84d3d1a906ead93e` |
| 8 | `theorem` | [reciprocal_second_difference_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/reciprocal-second-difference-nonneg--177a540f11e718bcde3f760b.md) | 78 | `result-track:177a540f11e718bcde3f760b074598c04685cc0355ee6983be3b5a7cca3d0325` |
| 9 | `theorem` | [harmonicWeightedMertensTwoPointChowlaAverage_eq_activeRange](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicweightedmertenstwopointchowlaaverage-eq-activerange--6b687953860f6725557cf22b.md) | 93 | `result-track:6b687953860f6725557cf22bad25122992594d5d26de7478bd411da1e7693a55` |
| 10 | `theorem` | [harmonicWeightedMertensTwoPointChowlaAverage_eq_cumulativeShift](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicweightedmertenstwopointchowlaaverage-eq-cumulativeshift--4b10ef3e4c85291ffa40576c.md) | 120 | `result-track:4b10ef3e4c85291ffa40576ceb99d22bf91bb9c414eaa5417b8d39ea51c22a39` |
| 11 | `theorem` | [harmonicShiftReciprocal_secondDifference_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftreciprocal-seconddifference-nonneg--5f12921d991555962754b271.md) | 148 | `result-track:5f12921d991555962754b2714bf08fc343428f116ba7082cd0ad7848edaa6090` |
| 12 | `theorem` | [harmonicShiftReciprocal_terminalDifference_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/harmonicshiftreciprocal-terminaldifference-nonneg--d5e8f8636f85716157890d54.md) | 162 | `result-track:d5e8f8636f85716157890d5455b202558c27bbfcbe1160853dcf88aea0f6d04f` |
| 13 | `def` | [SubpolynomialDyadicCumulativeShiftMertensPacket](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/subpolynomialdyadiccumulativeshiftmertenspacket--2f96aaf6e459f294d31b9b17.md) | 183 | `declaration-track:2f96aaf6e459f294d31b9b177442d5831639604a2786d602d3f5f6a2feb8c0ae` |
| 14 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicCumulativeShiftMertensPacket](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/declarations/riemannhypothesis-of-subpolynomialdyadiccumulativeshiftmertenspacket--88e2203c47456731f100cc35.md) | 188 | `result-track:88e2203c47456731f100cc35bcb419d59e61aecffa2d4caeb0ca93c486134fa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
