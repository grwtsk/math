# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fee17d5e741fa828b16c265d8ae4d677eb6ebad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fee17d5e741fa828b16c265d8ae4d677eb6ebad`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalVariationCorrelation](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalvariationcorrelation--3761aac2b0cd78adb3e1b1fa.md) | 34 | `declaration-track:3761aac2b0cd78adb3e1b1faff3ff2c103bd4b9f28f315ed921a3297410f931c` |
| 2 | `def` | [reciprocalVariationDiagonal](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalvariationdiagonal--106cf10aa6763d7f537757a6.md) | 39 | `declaration-track:106cf10aa6763d7f537757a6855adf3b0ee2832737f12e9f3e69b059937e88cd` |
| 3 | `theorem` | [reciprocalPrefixVariationSquare_succ](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalprefixvariationsquare-succ--a65cdcfa1160e54d9a7823a8.md) | 43 | `result-track:a65cdcfa1160e54d9a7823a8924bfa7e1b3b0a32640b62abab4ddef4a2c36019` |
| 4 | `theorem` | [reciprocalPrefixVariationSquare_eq_correlation_add_diagonal](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalprefixvariationsquare-eq-correlation-add-diagonal--e712d2fcbfb212c9b2ee724e.md) | 88 | `result-track:e712d2fcbfb212c9b2ee724efb2d02315c69a59fc9ebd4400ac98ae897adca21` |
| 5 | `theorem` | [reciprocalVariationDiagonal_le_harmonic](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalvariationdiagonal-le-harmonic--20f58f7c2c60186c518c512b.md) | 101 | `result-track:20f58f7c2c60186c518c512bde368f190daa8e34762f4ba690e73ed391330de9` |
| 6 | `theorem` | [reciprocalVariationDiagonal_le_log](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalvariationdiagonal-le-log--f5e2697ed3ce4293e7d47bf0.md) | 121 | `result-track:f5e2697ed3ce4293e7d47bf0f9f2dacf69fe6c5d6b570db989d0fa7aca9a5e52` |
| 7 | `def` | [ReciprocalMertensCorrelationPowerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalmertenscorrelationpowersaving--00a42d4f1ee04db7d1da01a1.md) | 128 | `declaration-track:00a42d4f1ee04db7d1da01a117b001b5ed7b4899889a4630c7906a0943cbeb63` |
| 8 | `theorem` | [reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/reciprocalvariationpowersaving-of-mertenscorrelationpowersaving--993bf059bf8dd3109c4b9981.md) | 137 | `result-track:993bf059bf8dd3109c4b99817689d8ce1d2b9719f9e466259cc17878bc4c3235` |
| 9 | `theorem` | [criticalBoundary_of_reciprocalMertensCorrelationPowerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/declarations/criticalboundary-of-reciprocalmertenscorrelationpowersaving--5e899364e5ececa33752c54f.md) | 172 | `result-track:5e899364e5ececa33752c54ff62c2f959cf16c8c2aa2ac603083b5eab088781c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
