# Verification target: GRWTSK.Analysis.CriticalTwoModeRecordSequence.Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd8fa6390ca22c92f12d6f368cf626d1e210a50f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/index.md) · [Full source](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd8fa6390ca22c92f12d6f368cf626d1e210a50f`.

Source path: `GRWTSK/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeRecords` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [literal_next_unit_record_exists](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-next-unit-record-exists--cb58065f1c6bb40012b8bb34.md) | 22 | `result-track:cb58065f1c6bb40012b8bb3403d69c3bde6500d763c16b9e187b297d35fe62e4` |
| 2 | `def` | [nextRecordState](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/nextrecordstate--ce130a9afd1df8ed5aeabd74.md) | 34 | `declaration-track:ce130a9afd1df8ed5aeabd74d6d15ded6c5a2321816c41af7b15eb02476a3da4` |
| 3 | `def` | [recordState](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/recordstate--79de0d75a81969268f7b5d8c.md) | 41 | `declaration-track:79de0d75a81969268f7b5d8c60cee73432c1f781c98fedbffcb01183cb3f6868` |
| 4 | `def` | [recordTime](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/recordtime--7b5339fe091997351ad7b9b9.md) | 46 | `declaration-track:7b5339fe091997351ad7b9b90800794618134ff546e496d0445f6296262e566c` |
| 5 | `def` | [recordLevel](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/recordlevel--a80ecfe93c63e3878c6a1b1b.md) | 49 | `declaration-track:a80ecfe93c63e3878c6a1b1bb44e888433165a126d96b4b6a04b686d72904064` |
| 6 | `def` | [recordHeight](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/recordheight--fc5070e67544545a512531e1.md) | 52 | `declaration-track:fc5070e67544545a512531e13b3b22d918cb99701a0d495c78a6a59959a82066` |
| 7 | `theorem` | [literal_record_time_zero](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-time-zero--0f2329c23ceef84822f830dc.md) | 55 | `result-track:0f2329c23ceef84822f830dc48f622d77947da715dec000d9852090dd5313b94` |
| 8 | `theorem` | [literal_record_time_initial_le](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-time-initial-le--61e1b3059fd9816794347a5f.md) | 58 | `result-track:61e1b3059fd9816794347a5fee8901c66102d60bf4d3fe1ec74fd2c756ef6692` |
| 9 | `theorem` | [literal_record_time_unit_step](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-time-unit-step--04cb35be9b968f0927790f9e.md) | 61 | `result-track:04cb35be9b968f0927790f9eaba5deffdd7880083ac71e17745eb1d5dc060d87` |
| 10 | `theorem` | [literal_record_height_half_deficit](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-height-half-deficit--0aeefb372828ca469a5d3060.md) | 65 | `result-track:0aeefb372828ca469a5d30607c6af67842a2f701b6f265c0e878337e6336ba75` |
| 11 | `theorem` | [literal_record_time_linear_lower](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-time-linear-lower--20d4927de32103b419e62da5.md) | 69 | `result-track:20d4927de32103b419e62da52a7bfeafe2e11d849acdc7c221efd742a018b38b` |
| 12 | `theorem` | [literal_record_time_tends_to_infinity](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-time-tends-to-infinity--db28e963e996e6857dee75bf.md) | 78 | `result-track:db28e963e996e6857dee75bfc950c1d08e31f2c12764f9306bf291d73072496c` |
| 13 | `theorem` | [literal_record_level_lt_two](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-level-lt-two--fa6b98828efbc9265030f1ff.md) | 88 | `result-track:fa6b98828efbc9265030f1ff49d2259bd2305b3bbaf527b88db1a818f90a2367` |
| 14 | `theorem` | [literal_record_height_pos](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-height-pos--78d66af01e33b013cc130f2d.md) | 92 | `result-track:78d66af01e33b013cc130f2d89b46ccb36390855e1997f26118cabf892a39770` |
| 15 | `theorem` | [literal_record_deficit_geometric_upper](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-deficit-geometric-upper--6448e74ce0a467717a81ea5e.md) | 98 | `result-track:6448e74ce0a467717a81ea5ee9d528242c58f01205d723b054694ae185bd7091` |
| 16 | `theorem` | [literal_record_levels_tend_to_two](../../../../mathematics/Analysis/CriticalTwoModeRecordSequence/Variant1104cea9d0adab2c1589432526062132765b63376a298454c4b9b03a52d5fda4.lean/declarations/literal-record-levels-tend-to-two--b8dd99c1397de7cff6683ed5.md) | 109 | `result-track:b8dd99c1397de7cff6683ed55059912e18ab5d667a5fb0043216a32a174d8a45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
