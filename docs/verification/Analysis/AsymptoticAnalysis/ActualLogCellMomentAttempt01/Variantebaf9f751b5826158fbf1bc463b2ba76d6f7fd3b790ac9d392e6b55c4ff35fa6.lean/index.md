# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellMomentAttempt01.Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a04f00a63c068ef1a429c85f50dd94cae857bf4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a04f00a63c068ef1a429c85f50dd94cae857bf4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell--c9e9f58ef40b0b614ed329bc.md) | 23 | `declaration-track:c9e9f58ef40b0b614ed329bcc32913ebd2949721c6d7e8c4b6b45ed683489066` |
| 2 | `def` | [logCellSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcellsum--978e8e9600d0a5cc7c9b7861.md) | 26 | `declaration-track:978e8e9600d0a5cc7c9b78619665412e6ae462a240628641080e1bf60e836ae6` |
| 3 | `theorem` | [logCell_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell-integrable--c5490e7bb4eca6db7add6f67.md) | 28 | `result-track:c5490e7bb4eca6db7add6f67bcd7b440b7c4fd7055534a5900064f92874306a1` |
| 4 | `theorem` | [logCell_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell-eval--763462aabba23d7ffba5fb7f.md) | 40 | `result-track:763462aabba23d7ffba5fb7fe06e323ef91b96e89933f68416d6392f8f45bcd8` |
| 5 | `theorem` | [logCell_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell-nonneg--51bae7889d5d15b7396b4fc2.md) | 66 | `result-track:51bae7889d5d15b7396b4fc2663290b0963fee6e3002e7a847df66565084bffd` |
| 6 | `theorem` | [logCellSum_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcellsum-eval--690f4501c2cdf4cc2cab731a.md) | 74 | `result-track:690f4501c2cdf4cc2cab731a9a76dbd1409720b568ca744b1e956566661d2956` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcellsum-tendsto--940ec4c618cfde797153b215.md) | 88 | `result-track:940ec4c618cfde797153b2157cd4daf733e214d4a9deeb403684bb44ce448a3c` |
| 8 | `theorem` | [logCell_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell-hassum--8163dca05fcf4464a159ce09.md) | 99 | `result-track:8163dca05fcf4464a159ce095452643d80beaa480c6dd1bd05eb2e90bbd5f26f` |
| 9 | `theorem` | [logCell_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell-summable--95b3512c81a06c9cd35536fc.md) | 105 | `result-track:95b3512c81a06c9cd35536fcdf1e4106e9604936d37ee311b4c0bb6c7fd7d001` |
| 10 | `theorem` | [logCell_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variantebaf9f751b5826158fbf1bc463b2ba76d6f7fd3b790ac9d392e6b55c4ff35fa6.lean/declarations/logcell-tsum--9a3f17c5fe2a4acf8933dff9.md) | 108 | `result-track:9a3f17c5fe2a4acf8933dff9a47ed2be28e337304c99e6a73f65958fc5170226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
