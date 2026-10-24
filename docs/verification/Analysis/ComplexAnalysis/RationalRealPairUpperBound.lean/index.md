# Verification target: GRWTSK.Analysis.Complex.RationalRealPairUpperBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab047448d8fa62aadfe341d8976874cc78b361d4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalRealPairUpperBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab047448d8fa62aadfe341d8976874cc78b361d4`.

Source path: `GRWTSK/Analysis/Complex/RationalRealPairUpperBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalRealPairUpperBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRealPairAccumulation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [computeUpper](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/computeupper--256ab45c47b024830d9b95de.md) | 42 | `declaration-track:256ab45c47b024830d9b95de547e710e5cbcc5c7002f423be3cc3e3e7179a937` |
| 2 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/evaluate--29040af75b9ed8a5f79273a5.md) | 51 | `declaration-track:29040af75b9ed8a5f79273a5c2fd01d0ccc6be59d54b0e784ab90123910322e6` |
| 3 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/verify--71cef1504ce78ed08c69a159.md) | 60 | `declaration-track:71cef1504ce78ed08c69a159b603b86904c18b56fbe94538d1740a86fd20ce3e` |
| 4 | `theorem` | [base_le_computeUpper](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/base-le-computeupper--bbb735d6e0e0867cf96f92ee.md) | 66 | `result-track:bbb735d6e0e0867cf96f92ee601d4517e05d3bca271989517d19c2209bd551c6` |
| 5 | `theorem` | [computeUpper_lt_base_add_grid](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/computeupper-lt-base-add-grid--7dc2c437387fa4687904b1ac.md) | 76 | `result-track:7dc2c437387fa4687904b1ac727e3b7b134d33110851b57784265db76e92825c` |
| 6 | `theorem` | [source_re_le_base](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/source-re-le-base--e0f85bbf5894fabe66f08346.md) | 88 | `result-track:e0f85bbf5894fabe66f08346b2d9806f91adbf23b7d6703bdea52b38eb49acbf` |
| 7 | `theorem` | [computeUpper_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/computeupper-sound--3f842f7e635cf16b0769bf0f.md) | 113 | `result-track:3f842f7e635cf16b0769bf0fcc90ceb266f02ef9955ef1d52a4ec15f80acf9ad` |
| 8 | `theorem` | [verify_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/verify-iff--5d09e6e0e10fe6f9d57ea4d7.md) | 130 | `result-track:5d09e6e0e10fe6f9d57ea4d7663c0e01608cfea49d39ce5149d4045ae8b1ee18` |
| 9 | `theorem` | [verify_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/verify-sound--d108a6843dc3613cc4693f12.md) | 142 | `result-track:d108a6843dc3613cc4693f12cb872e795d91e847c965c6140c8ca9ee1250c150` |
| 10 | `theorem` | [verify_limit_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/declarations/verify-limit-sound--f400127814fe9169efda7382.md) | 164 | `result-track:f400127814fe9169efda7382b09d95e7a1c9ce664958f838031553b58f5a47c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
