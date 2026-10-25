# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90346dc4606dc8ed47b44305ce50b8d96e44df2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90346dc4606dc8ed47b44305ce50b8d96e44df2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval--fdebf63384163dfc1133707d.md) | 12 | `declaration-track:fdebf63384163dfc1133707de21bd552f07495af567af631a4a8b34ad14d88f6` |
| 2 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-var--226122f2d1c53237acdc903e.md) | 22 | `result-track:226122f2d1c53237acdc903ed73b3fcea7f4ee566f5388c56452d9248a3044b2` |
| 3 | `theorem` | [eval_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-falsum--2c3e083f6f4a38748712f61b.md) | 25 | `result-track:2c3e083f6f4a38748712f61b8d2dbd6573a5dfd705fbaa0a4372fe806ca22295` |
| 4 | `theorem` | [eval_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-truth--24ca3b321f9117bc8317fc93.md) | 28 | `result-track:24ca3b321f9117bc8317fc9386d8c4793811c138e41fe82ef42acb259909801e` |
| 5 | `theorem` | [eval_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-neg--b70d3eda914c621a63fd9d6b.md) | 31 | `result-track:b70d3eda914c621a63fd9d6bf3696df98bba07b930bc4335df8d560c75fec7ca` |
| 6 | `theorem` | [eval_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-conj--0a7697cf5e57faac8d9864a1.md) | 34 | `result-track:0a7697cf5e57faac8d9864a120ebc1a5441357080adfa91591cfcb3c492c2b47` |
| 7 | `theorem` | [eval_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-disj--afda9c29ea09aa03fe90cb35.md) | 37 | `result-track:afda9c29ea09aa03fe90cb357474ff01e666ef72d4b7024ea403d8f7f83583ed` |
| 8 | `theorem` | [eval_impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-impl--2e84d2904434fb1effeaa04a.md) | 40 | `result-track:2e84d2904434fb1effeaa04adb2941353359b3a1d7d6dfa8699149cc01ef6999` |
| 9 | `theorem` | [eval_eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-eqv--b6d552d5411ce7fa1f07daed.md) | 43 | `result-track:b6d552d5411ce7fa1f07daed0ebb80dd7b647fd7babd3eb27c36a08093856568` |
| 10 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-const--8c120de1043245565fa4b3e5.md) | 46 | `result-track:8c120de1043245565fa4b3e5521be4e83aa297e881140b473a1222f39485f2a7` |
| 11 | `theorem` | [eval_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe.lean/declarations/eval-congr--4f6a218cc59e8026a6d11e3b.md) | 51 | `result-track:4f6a218cc59e8026a6d11e3b207a574d4769e39f00be312447c82600145d4461` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
